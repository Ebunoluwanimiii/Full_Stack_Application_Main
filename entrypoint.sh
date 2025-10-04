#!/bin/sh
export HOST=0.0.0.0
export PORT=8080
exec your-app-binary --host=$HOST --port=$PORT
