FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-devel

ENV INPUT_DIR=/data/input/
ENV OUTPUT_DIR=/data/output/

WORKDIR /denoiser/

RUN apt-get update
#RUN apt-get upgrade -y
RUN apt-get install -y git 

RUN git clone https://github.com/facebookresearch/denoiser.git

WORKDIR /denoiser/denoiser/

RUN pip install -r requirements.txt

COPY container_script.sh container_script.sh 
RUN chmod u+x container_script.sh

CMD ["./container_script.sh"]