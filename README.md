## Laravel Artisan Queue Listener
Docker container to run [Artisan Queue Listener](http://laravel.com/docs/master/queues)

### Base docker image
* [xaamin/php-cli](https://registry.hub.docker.com/r/xaamin/php)

### Installation
* Install [Docker](https://www.docker.com)
* Pull from [Docker Hub](https://hub.docker.com/r/xaamin/artisan-queue) `docker pull xaamin/artisan-queue`

### Manual build
* Build an image from Dockerfile `docker build -t xaamin/artisan-queue https://github.com/xaamin/artisan-queue.git`

### Volumes
You must provide a volume mounted on **/app** containing **Laravel** project

### Usage
You can specify maximum attemps using env TRIES variable, default is 3. To specify the queue name use env QUEUE variable.

Run the default queue listener
```	
	docker run -d --restart always -v /path/to/laravel/project:/app xaamin/artisan-queue
```

Run custom queue listener specifying maximum attemps and queue name through env vars
```
	docker run -d --restart always -e QUEUE=mailer -e TRIES=5 -v /path/to/laravel/project:/app xaamin/artisan-queue
```