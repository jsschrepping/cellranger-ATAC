FROM cumulusprod/cellranger-atac:2.0.0

MAINTAINER Jonas Schulte-Schrepping

# This will make apt-get install without question
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y alien

COPY ./bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm /software/

RUN alien -i /software/bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm


