# CSV Streamsets processor
This project is a part of a data pipeline, in general pipeline moves data from HDFS in HDP 3.1 to 
Apache Kafka. In the pipeline there was a need of custom Streamsets processor.
Processor maps fields '/Latitude', '/Longitude' of an input csv to a Geohash 
and creates additional column in output csv with geohash.

Environment:
Windows 10, Streamsets 3.13.0, HDP 3.1(running as docker container), Docker 2.2, Apache Kafka is a part of HDP 3.1 distribution.

Streamsets for this pipeline was deployed as docker container, notice that streamsets container
must be in the same docker network as HDP for successful reading from HDFS and successful writes to
Apache Kafka.(default network for HDP 3.1 distribution is "cda")

Type the next command for starting Streamsets container.
> docker run -d -p 18630:18630 --name=sdc --net=cda streamsets/datacollector dc

After the container startup you will be able to see Streamsets UI on localhost:18630. 

You need 'sdc' docker container for deploying with script, provided in root directory. 
>sh create-custom-streamsets-processor.sh

This script will build jar and copy it to the folder of 'sdc' container with user processors.