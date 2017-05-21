FROM ubuntu:17.10

RUN apt-get update && apt-get install -y python3 python3-pip python3-dev build-essential git libboost-program-options-dev zlib1g-dev libboost-python-dev

RUN  pip3 install --upgrade pip
RUN pip3 install tqdm numpy scikit-learn scipy pandas matplotlib statsmodels seaborn

RUN git clone git://github.com/cortwave/vowpal_wabbit.git && cd vowpal_wabbit/python && export PYTHON_VERSION=3.6 && export PYTHON_LIBS="-l boost_python-py34" && python3 setup.py clean && python3 setup.py install

RUN git clone --recursive https://github.com/dmlc/xgboost && cd xgboost; make -j4 && cd python-package; python3 setup.py install

RUN pip3 install jupyter && jupyter notebook --allow-root --generate-config -y

RUN echo "c.NotebookApp.ip = '127.0.0.1'" >> ~/.jupyter/jupyter_notebook_config.py

RUN pip3 install joblib luigi watermark

EXPOSE 8888
ENTRYPOINT ["jupyter", "notebook", "--allow-root", "--ip='*'"]
