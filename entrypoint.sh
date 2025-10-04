#!/bin/sh
export HOST=0.0.0.0
export PORT=8080
exec java -jar /app/app.jar --server.address=$HOST --server.port=$PORT
