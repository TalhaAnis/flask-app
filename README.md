# Flask-app 
This flask app has one POST endpoint, it takes a string as a POST value and stores it in a file on the server, and returns the status.

The Docker container is listening on 5000 port. 

The docker image is then deployed on Kubernetes.

Jenkins pipeline creates docker image, pushes it to Dockerhub, and deploys the app on Kubernetes.

After deployment run `kubectl describe ingress` and add the address of ingress to /etc/hosts file with name flask.pvt

To test the API-endpoint after deployment run this script: 
`curl -X POST http://flask.pvt/ -d "Hello there"`