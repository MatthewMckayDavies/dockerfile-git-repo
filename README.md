# dockerfile-git-repo
Dockerfile for Android Git Repo tool.

* [Android Repo reference](https://source.android.com/docs/setup/reference/repo)
* [Repo homepage](https://gerrit.googlesource.com/git-repo/)


## Build
```
docker build -t local/git-repo .
```

## Example repo init:

```
docker run -it --rm -v "${PWD}":/home/workspace local/git-repo init -u https://github.com/nxp-imx/imx-manifest -b imx-linux-hardknott -m imx-5.10.72-2.2.2.xml
```

## Example repo sync:
```
docker run -it --rm -v "${PWD}":/home/workspace local/git-repo sync
```