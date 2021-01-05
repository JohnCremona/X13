# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile
# (copied from https://github.com/sagemath/sage-binder-env/blob/master/Dockerfile)

FROM sagemath/sagemath

RUN sage -pip install jupyterlab

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
