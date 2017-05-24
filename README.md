# docker-data
Dockerized Jupyter notebook with ML tools

## Installed tools:

- Python 3.5
- [Jupyter notebook](https://github.com/jupyter/notebook)
- [Vowpal Wabbit v8.3.2](https://github.com/JohnLangford/vowpal_wabbit)
- [tqdm](https://github.com/noamraph/tqdm)
- [numpy](http://www.numpy.org/)
- [sckit-learn](http://scikit-learn.org/stable/index.html)
- [scikit-plot](https://github.com/reiinakano/scikit-plot)
- [scipy](https://www.scipy.org/)
- [pandas](http://pandas.pydata.org/)
- [matplotlib](http://matplotlib.org/)
- [statsmodels](http://www.statsmodels.org/stable/index.html)
- [seaborn](http://seaborn.pydata.org/)
- [joblib](https://github.com/joblib/joblib)
- [luigi](https://github.com/spotify/luigi)
- [watermark](https://github.com/rasbt/watermark)

## How to run

```bash
./run.sh
```

or

```bash
docker run -p $SOME_PORT:8888 cortwave/docker-data
```
