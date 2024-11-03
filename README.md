Building docker image
```
docker build -t flask-app .
```

Running docker image
```
docker run -p 8080:8080 flask-app
```

Setting up custom registry using coolify

Step 1: Install Coolify
Step 2: Setup Registry using template on coolify
Step 3: Setup registry credentials

Create registry username and password
htpasswd -nbB test test

Open the coolify registry in the dashboard

Then go to Storages menu, and in the /auth/registry.password file, simply add the generated user / password. One line per user.

Step 4: login to coolify registry. Follow the example below

```
docker login https://registry-fow0444k4s0s00gcgccosgo4.139.162.175.253.sslip.io
```

Enter username and password e.g test, test

Step 5: Setup tagging
```
docker tag flask-app:latest registry-fow0444k4s0s00gcgccosgo4.139.162.175.253.sslip.io/flask-app:latest
```

Step 6: Push the image to the registry
```
docker push registry-fow0444k4s0s00gcgccosgo4.139.162.175.253.sslip.io/flask-app:latest
```

Now log into the registry on a different machine and pull your image from the registry
```
docker pull registry-fow0444k4s0s00gcgccosgo4.139.162.175.253.sslip.io/flask-app:latest
```