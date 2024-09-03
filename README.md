# Intro to Cs via Python

- [Intro to Cs via Python](#intro-to-cs-via-python)
- [Set up cuz lazy](#set-up-cuz-lazy)
- [Basics](#basics)
- [Variables](#variables)
- [Print](#print)
- [Testing](#testing)

# Set up cuz lazy

```
docker build . -t sholden3/intro-cs-linux-python
```
```
docker run --rm -d -t --name=linux-python -p 8888:8888 --mount type=bind,source=%cd%,target=/app sholden3/intro-cs-linux-python
```
```
docker exec -ti linux-python bash
```
```
jupyter lab --ip='0.0.0.0' --port=8888 --no-browser --allow-root
```

# Basics

# Variables

# Print

# Testing