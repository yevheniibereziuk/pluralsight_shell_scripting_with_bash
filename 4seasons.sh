#!/bin/bash
declare -l month=$(date +%b)
case $month in 
  гру | січ | лют )
        echo "Winter";;
  бер | кві | тра )
        echo "Spring";;
  чер | лип | сер )
        echo "Summer";;
  вер | жов | лис )
        echo "Autum";;
esac