FROM jupyter/scipy-notebook:eb70bcf1a292

USER root

RUN pip install --upgrade pip

RUN apt-get update

RUN apt-get install -y libboost-program-options-dev zlib1g-dev libboost-python-dev

RUN git clone git://github.com/cortwave/vowpal_wabbit.git

RUN cd vowpal_wabbit/python && export PYTHON_VERSION=3.6 && export PYTHON_LIBS="-l boost_python-py34" && python setup.py clean && python setup.py install
