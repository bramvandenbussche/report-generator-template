#!/bin/bash
cd "$(dirname "$0")"
java -jar /opt/plantuml/plantuml.jar -o ./report/diagrams -I *.puml -r ./report/