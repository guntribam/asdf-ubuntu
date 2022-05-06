FROM vborja/asdf-ubuntu:latest

ADD java .asdf/toolset/java

USER root
RUN bash .asdf/toolset/java/build-deps
USER asdf
RUN asdf-install-toolset java
