# docker-data
Dockerized Jupyter notebook with ML tools

## Installed tools:

- [Jupyter scipy-notebook](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook)
- [Vowpal Wabbit v8.3.2](https://github.com/JohnLangford/vowpal_wabbit)
- [tqdm](https://github.com/noamraph/tqdm)

## How to run

```bash
./run.sh
```

or

```bash
docker run -p $SOME_PORT:8888 cortwave/docker-data
```
