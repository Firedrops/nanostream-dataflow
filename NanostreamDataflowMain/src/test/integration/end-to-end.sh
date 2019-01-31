#!/usr/bin/env bash
# fail on error
set -e

java -cp NanostreamDataflowMain.jar com.theappsolutions.nanostream.NanostreamApp \
--runner=org.apache.beam.runners.dataflow.DataflowRunner \
--project=upwork-nano-stream \
--streaming=true \
--processingMode=species \
--inputDataSubscription=projects/upwork-nano-stream/subscriptions/species_fastq_paths_emitter_x1_subscription_1 \
--alignmentWindow=60 \
--statisticUpdatingDelay=60 \
--servicesUrl=http://35.241.15.140 \
--bwaEndpoint=/cgi-bin/bwa.cgi \
--bwaDatabase=genomeDB.fasta \
--kAlignEndpoint=/cgi-bin/kalign.cgi \
--outputFirestoreDbUrl=https://upwork-nano-stream.firebaseio.com \
--outputFirestoreSequencesStatisticCollection=sequences_statistic \
--outputFirestoreSequencesBodiesCollection=sequences_bodies \
--outputFirestoreGeneCacheCollection=gene_cache