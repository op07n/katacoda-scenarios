
wget http://download.geofabrik.de/europe/spain-latest.osm.pbf; \
docker volume create openstreetmap-data; \
docker run -v /root/spain-latest.osm.pbf:/data.osm.pbf -v openstreetmap-data:/var/lib/postgresql/12/main overv/openstreetmap-tile-server import; \
docker run -p 80:80 -v openstreetmap-data:/var/lib/postgresql/12/main  -d overv/openstreetmap-tile-server run
