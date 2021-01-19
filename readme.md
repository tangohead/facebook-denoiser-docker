# Facebook Denoiser in Docker

A small repo to wrap [Facebook Denoiser](https://github.com/facebookresearch/denoiser) in Docker, to make it easy to run anywhere.

It will enhance all the files in data/input, and output them into data/output. As such, create `data/input` and `data/output` directories inside your clone of this repo, as follows:

```
facebook-denoiser-docker/
├── data/
│   ├── input/
│   │   ├── INPUT_WAV_1.WAV
│   │   ├── INPUT_WAV_2.WAV
│   │   └── ...
│   └── output/
│       └── OUTPUT_GOES_HERE
├── .gitignore
├── container_script.sh
├── run.sh
├── docker-compose.yml
├── facebook-denoiser.dockerfile
└── readme.md
```

Note that input files should be 16KHz WAV files.

To run, you can either use:
```
docker-compose build
docker-compose up
```

Or you can directly build the container, as follows:
```
chmod u+x run.sh
docker build -f facebook-denoiser.docker -t denoiser:0.1 .
./run.sh
```
`run.sh` wraps the docker command so you don't need to type out the full run each time.

