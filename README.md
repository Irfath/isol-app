# isol-app
# isolutions

#########################################################
#########################################################
##################Codeg By : Irfath Ramiz################
                    irfathr@gmail.com





MY NOTES:::::

isol-432616-710d25c7370f.json 


35.244.10.51

talking poins:
1. Key managment

#####################3
Argo
https://34.131.189.205/applications
admin
8DmOofOAQEZNkEQc

Grafana
http://34.131.183.212/connections/datasources/edit/advdmj05ihse8a
admin admin123

################

############
First Push

echo "# isol-application-code" >> README.md
git init
git add README.md

############



https://34.100.153.112/applications 

gcloud config set project isol-432616

gcloud container clusters get-credentials isol-gke-cluster --region asia-south2 --project isol-432616


git config --global user.name "Irfath"
git config --global user.email "irfathr@gmail.com"


gcloud auth login

##################
Git update after edit Code

git branch
git add -A .
git commit -m "isol applicationversion 100.0"
git push --set-upstream origin main



Release 1

docker tag isolapp:100.1  asia-south2-docker.pkg.dev/isol-432616/isolapp/isolapp:100.1
docker push asia-south2-docker.pkg.dev/isol-432616/isolapp/isolapp:100.1

Release 2
docker tag isolapp:100.3  asia-south2-docker.pkg.dev/isol-432616/isolapp/isolapp:100.3
docker push asia-south2-docker.pkg.dev/isol-432616/isolapp/isolapp:100.3

####################


https://www.youtube.com/watch?v=igg8hIVD24c

##################

docker build -t isolapp:100.0 .

asia-south2-docker.pkg.dev/isol-432616/isolapp


######
docker tag isolapp:5.0  asia-south2-docker.pkg.dev/isol-432616/isolapp/isolapp:5.0

docker push asia-south2-docker.pkg.dev/isol-432616/isolapp/isolapp

asia-south1-docker.pkg.dev

gcloud auth configure-docker     asia-south1-docker.pkg.dev


asia-south1-docker.pkg.dev/isol-432616/isolapp/isolapp:1.0
us-docker.pkg.dev/google-samples/containers/gke/hello-app:2.0
######


##############
docker build -t my-flask-app .
docker tag my-flask-app:10.0  asia-south2-docker.pkg.dev/isol-432616/my-flask-app/my-flask-app:10.0

docker push asia-south2-docker.pkg.dev/isol-432616/my-flask-app/my-flask-app:10.0



 DOCKER Push
docker tag isolapp:100.0  asia-south2-docker.pkg.dev/isol-432616/isolapp/isolapp:100.0
docker push asia-south2-docker.pkg.dev/isol-432616/isolapp/isolapp:100.0

##############
CREATE TABLE IF NOT EXISTS user (username VARCHAR(255),userid VARCHAR(255) );
INSERT INTO user (username,userid) VALUES ('irfathisol','fathb');


update user set username='ali',userid='isolutions';
#########



