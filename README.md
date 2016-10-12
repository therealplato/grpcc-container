### grpcc-container
This project defines a container for running the command line grpcc client.

Forked from njpatel/grpcc to therealplato/grpcc to fix some linux
containerization problems.

+---docker-machine or k8s pod--------+
| +-therealplato/grpcc-container----+|
| |                                 ||
| |              grpcc              ||
| +---------------------------------+|
+------------------------------------+

##Usage:
Run a shell in this container.
Add it to a network, and mount a volume containing the protodef.
Alternately, git clone the protodef from inside the container.

```
 $ docker run -ti -v /Users/hostmachine:/proto --net=host hub.docker.com/therealplato/grpcc-container:latest bash
```

Connect to another container running on the network from that bash shell:
```
 # grpcc -p /proto/service.proto -a localhost:50051 -i
```

Invoke your grpc server with the grpcc interface. 
Method naming is lowerCamelCase, field naming is lower_snake_case
```
 > client.endPoint({user_name: "asdf", password: "jkl;"}, pr)
```

