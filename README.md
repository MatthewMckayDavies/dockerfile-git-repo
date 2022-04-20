# dockerfile-git-repo
Dockerfile for Android Git Repo tool.

Example repo init:

```
docker run -it --rm -v "${PWD}":/home/workspace git-repo init -u https://source.codeaurora.org/external/imx/fsl-arm-yocto-bsp.git -b imx-morty -m imx-4.9.11-1.0.0_ga.xml
```

Example repo sync:

```
docker run -it --rm -v "${PWD}":/home/workspace mmd/git-repo sync
```

Another example:

```
docker run -it --rm -v "${PWD}":/home/workspace mmd/git-repo init -u https://source.codeaurora.org/external/imx/imx-manifest -b imx-linux-hardknott -m imx-5.10.72-2.2.0.xml

docker run -it --rm -v "${PWD}":/home/workspace mmd/git-repo sync
```