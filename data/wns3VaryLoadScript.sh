#!/usr/bin/env bash
set -euo pipefail

# Always write logs next to this script, no matter where we run it from
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTDIR="$SCRIPT_DIR/logs"
mkdir -p "$OUTDIR"

# master log (optional – comment out if you don’t want one big file)
MASTER="$OUTDIR/master.log"
: > "$MASTER"

logFileName="$OUTDIR/wns3VaryLoadListOfSims.txt"
simulationTime=40
: > "$logFileName"    # start fresh each run

NS3BIN="$SCRIPT_DIR/ns3"

# 110000 - useCase=dTwt1
simId=110000
nStations=1
scenario=wns3VaryLoad_dTwt1
videoQuality=1
useCase=dTwt1

for randSeed in {1000..1009}
do
    for nStations in 4 8 12 16 20
    do
        echo "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase}  --videoQuality=${videoQuality} --parallelSim=false" >> ${logFileName}
        echo "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase}  --videoQuality=${videoQuality} --parallelSim=false"
        ./ns3 run "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase} --videoQuality=${videoQuality} --parallelSim=false" \
  | tee -a "$MASTER"
        simId=$(($simId+1))
    done
done


# 120000 - useCase=dTwt2
simId=120000
nStations=1
scenario=wns3VaryLoad_dTwt2
videoQuality=1
useCase=dTwt2

for randSeed in {1000..1009}
do
    for nStations in 4 8 12 16 20
    do
        echo "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase}  --videoQuality=${videoQuality} --parallelSim=false" >> ${logFileName}
        echo "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase}  --videoQuality=${videoQuality} --parallelSim=false"
        ./ns3 run "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase} --videoQuality=${videoQuality} --parallelSim=false" \
  | tee -a "$MASTER"
        simId=$(($simId+1))
    done
done


# 130000 - useCase=dTwt3
simId=130000
nStations=1
scenario=wns3VaryLoad_dTwt3
videoQuality=1
useCase=dTwt3

for randSeed in {1000..1009}
do
    for nStations in 4 8 12 16 20
    do
        echo "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase}  --videoQuality=${videoQuality} --parallelSim=false" >> ${logFileName}
        echo "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase}  --videoQuality=${videoQuality} --parallelSim=false"
        ./ns3 run "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase} --videoQuality=${videoQuality} --parallelSim=false" \
  | tee -a "$MASTER"
        simId=$(($simId+1))
    done
done



# 140000 - useCase=cam
simId=140000
nStations=1
scenario=wns3VaryLoad_cam
videoQuality=1
useCase=cam

for randSeed in {1000..1009}
do
    for nStations in 4 8 12 16 20
    do
        echo "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase}  --videoQuality=${videoQuality} --parallelSim=false" >> ${logFileName}
        echo "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase}  --videoQuality=${videoQuality} --parallelSim=false"
        ./ns3 run "wns3VaryLoad --simulationTime=${simulationTime} --simId=${simId} --nStations=${nStations} --scenario=${scenario} --randSeed=${randSeed} --useCase=${useCase} --videoQuality=${videoQuality} --parallelSim=false" \
  | tee -a "$MASTER"
        simId=$(($simId+1))
    done
done
