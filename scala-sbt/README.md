# Docker image for Scala SBT 0.13.13

### How to run image
```
docker run --rm \
	-v /path/to/host/mount:/ivy2:Z \
	-v ${PWD}:/app:Z \
	pvansia/scala-sbt:0.13.13 \
	-p 9000:9000 \
	sbt -ivy /ivy2
```

`ivy2` path is explicitly supplied and mounted to host volume to prevent `sbt` command from downloading jar files every time it is run.
Please don't forget `:Z` option with mount to enable container to write data to volume if SELinux is preventing it.

For convinience you can add following to your `.bashrc`

```
alias sbt='docker run -it --rm -v /path/to/host/mount:/ivy2:Z -v ${PWD}:/app:Z pvansia/scala-sbt:0.13.13 -p 9000:9000 sbt -ivy /ivy2'
```