./mvnw clean install

docker cp ./target/streamsets-csv-processor-1.0-SNAPSHOT.jar sdc:/opt/streamsets-datacollector-user-libs/streamsets-csv-processor/lib
docker cp ./target/streamsets-csv-processor-1.0-SNAPSHOT.jar sdc:/opt/streamsets-datacollector-3.13.0/user-libs/streamsets-csv-processor/lib
docker cp ./lib/geohash-1.4.0.jar sdc:/opt/streamsets-datacollector-3.13.0/user-libs/streamsets-csv-processor/lib
docker cp ./lib/geohash-1.4.0.jar sdc:/opt/streamsets-datacollector-3.13.0/user-libs/streamsets-csv-processor/lib