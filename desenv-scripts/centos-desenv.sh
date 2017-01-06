# --------------------------------------------------------------------
# Instalar aplicativos
# --------------------------------------------------------------------

sudo yum check-update
sudo yum install git curl

# --------------------------------------------------------------------
# Instalar Docker
# --------------------------------------------------------------------

curl -fsSL https://get.docker.com/ | sh
sudo systemctl start docker
sudo systemctl status docker -l
docker --version

# --------------------------------------------------------------------
# Subir docker
# --------------------------------------------------------------------

mkdir $home/TempDesenv
cd $home/TempDesenv
git clone https://github.com/camillagds/react-todomvc.git
cd react-todomvc

docker build -f Dockerfile -t react-todomvc .
docker run -d --name app -p 8080:8080 react-todomvc
docker ps

#Test
sleep 5
docker ps -a | grep app
curl -l http://localhost:8080
docker exec -d app chmod +x /usr/src/app/test_app.sh
docker exec -d app sh /usr/src/app/test_app.sh