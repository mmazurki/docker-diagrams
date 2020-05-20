# docker-diagrams

docker-diagrams is an unofficial docker image for [diagrams](https://github.com/mingrammer/diagrams).

## Installation

Pull the image from Docker Hub

```
docker pull mmazurki/docker-diagrams:latest
```

## Usage

Mount your files to `/home/pyuser/diagrams` and run the image. The generated images will be in the folder you mounted !

```
docker run -v $(pwd)/mydiagrams:/home/pyuser/diagrams mmazurki/docker-diagrams:latest
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)