FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-runtime

# Install system packages
# RUN apt-get update && apt-get install -y --no-install-recommends \
#       bzip2 \
#       g++ \
#       git \
#       graphviz \
#       libgl1-mesa-glx \
#       libhdf5-dev \
#       openmpi-bin \
#       screen \
#       wget && \
#     rm -rf /var/lib/apt/lists/* \
#     apt-get upgrade

# ENV TENSOR_HOME /home/isr
# WORKDIR $TENSOR_HOME

# COPY ISR ./ISR
# COPY scripts ./scripts
# COPY weights ./weights
# COPY config.yml ./
# COPY setup.py ./
COPY codes ./codes

# RUN pip install --upgrade pip
# RUN pip install -e ".[gpu]" --ignore-installed

# ENV PYTHONPATH ./ISR/:$PYTHONPATH
# ENTRYPOINT ["sh", "./scripts/entrypoint.sh"]