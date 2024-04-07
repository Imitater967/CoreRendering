# Connection Types

There are 3 types of connection.  

## FBO Connection

It stands for frame buffer object connect the previous FBO result to next

## Run Order Connection

It's a connection with no data.

When we want to just setup run order, we can make node A depend on node B with no data,
so that, node A will execute after node B

## Buffer Pair Connection

It presents a connection with 2 pair of FBO,
so that you can read from one while writing from another