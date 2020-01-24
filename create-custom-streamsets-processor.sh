./mvnw clean install

docker exec sdc bash -c 'cd /opt/streamsets-datacollector-user-libs && mkdir streamsets-csv-processor && cd streamsets-csv-processor && mkdir lib'

docker cp ./target/streamsets-csv-processor-1.0-SNAPSHOT.jar sdc:/opt/streamsets-datacollector-user-libs/streamsets-csv-processor/lib
docker cp ./lib/geohash-1.4.0.jar sdc:/opt/streamsets-datacollector-user-libs/streamsets-csv-processor/lib