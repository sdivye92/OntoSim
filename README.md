# OntoSim

This ros pkg was created with following command
```sh
catkin_create_pkg ros_nodes std_msgs rospy message_generation message_runtime
```
run `catkin_make`

Once pkg was created and compiled, `source devel/setup.sh` file.
Change dir to the pkg with `roscd ros_nodes`

Custom msg was create as follows

```sh
mkdir msg && cd msg
touch Communication.msg
```

Add following to creates msg file

```
string agentid
string uri
```

Once custom msg is created, these were added to CMakeList.txt

Uncomment `add_message_files` section and add the msg file to it. It would look like this
```sh
add_message_file(
    FILES
    Communication.msg
)
```

Also uncomment `generate_messages` section. It would look like this
```sh
generate_messages(
  DEPENDENCIES
  std_msgs
)
```
Now save and exit the File.

Once again compile the pkg with `catkin_make` and custom msg is created.

To add this msg into the ros node file, simply import it as follow

```py
from ros_nodes.msg import Communication
```

And ros node with custom msg is done.


