
#include <ros/ros.h>
#include <serial/serial.h>
#include <std_msgs/String.h>

/*
 * Create a global serial object to be visible by our callback function.
 */
serial::Serial interface;

/*
 * Our callback function is called everytime we get a new command from talker
 * so it makes sense to use it for writing to our serial port.
 */
void write(const std_msgs::String::ConstPtr& msg)
{
    ROS_INFO("Writing to serial port: %s", msg->data.c_str());
    interface.write(msg->data);
    interface.write("\n");
}

int main (int argc, char** argv)
{
    /*
     * argc = argument count (ie. the number of command line arguments passed in).
     * argv = pointer to vector of arguments (note: argv[0] is always the program name)
     * In our program we can pass in up to three arguments
     * argv[1] = port name. defualt = /dev/ttyUSB0
     * argv[2] = baud rate. default = 9600
     * argv[3] = timeout (in ms) default = 500 ms.
     */
    std::string port = argv[1];
    unsigned long baud = strtoul(argv[2], NULL, 0);
    serial::Timeout to = serial::Timeout::simpleTimeout(strtoul(argv[3], NULL, 0));

    ros::init(argc, argv, "serializer");
    ros::NodeHandle nh;

    /*
     * A single NodeHandle can be used to interact with all subscribers and publishers
     * Remember, a nodehandle is a connection from your program into the roscore.
     */
    ros::Subscriber write_sub = nh.subscribe("serial_tx", 1000, write);
    ros::Publisher read_pub = nh.advertise<std_msgs::String>("serial_rx", 1000);

    /*
     * Attempt to configure the port and open it. Catch the exception if it fails.
     */
    try
    {
        interface.setPort(port);
        interface.setBaudrate(baud);
        interface.setTimeout(to);
        interface.open();
    }
    catch (serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open port ");
        return -1;
    }

    /*
     * Make sure the port is stable.
     */
    if(interface.isOpen())
    {
        ROS_INFO("Serial Port initialized");
    }
    else
    {
        return -1;
    }

    /*
     * Microcontrollers can take a while to intialize their serial UART. For this
     * reason tehre is a short 2 second sleep before the meat of our code.
     */
    ros::Duration(2.0).sleep();
    ros::Rate loop_rate(5);

    while(ros::ok())
    {
        /*
         * Refreshes callbacks.
         */
        ros::spinOnce();

        /*
         * Check if there is data in our serial buffer. If there is read it out
         * and publish it for our listener to hear.
         */
        if(interface.available())
        {
            ROS_INFO("Reading from serial port");
            std_msgs::String result;
            result.data = interface.read(interface.available());
            ROS_INFO("Read: %s", result.data.c_str());
            read_pub.publish(result);
        }

        loop_rate.sleep();
    }
    return 0;
}
