#ELASTIC SEARCH INSTALLATION
#=======================================
helm repo ls # check any helm repos or check the repos that available locally on your machine. 
helm repo add elastic https://helm.elastic.co  # add a repository from the repository's remote location
helm repo update #get the lates update for the repo that has been added. 
helm search repo elastic # search inside the repository to see the charts avaialble. 
helm template elastic/elasticsearch   
helm show values elastic/elasticsearch     # show values that will be used
kubectl get namespace 
kubectl create namespace efk  
helm install elasticsearch -n  efk elastic/elasticsearch -f  elasticsearch_values.yml   

#KIBANA INSTALLATION
#=======================================
helm repo ls # check any helm repos or check the repos that available locally on your machine. 
helm repo add elastic https://helm.elastic.co  # add a repository from the repository's remote location
helm repo update #get the lates update for the repo that has been added. 
helm search repo elastic # search inside the repository to see the charts avaialble. 
helm template elastic/kibana     
helm show values elastic/kibana        # show values that will be used
kubectl get namespace 
kubectl create namespace efk  
helm install kibana -n  efk elastic/kibana  


#FILEBEAT INSTALLATION
#=======================================
helm repo ls # check any helm repos or check the repos that available locally on your machine. 
helm repo add elastic https://helm.elastic.co  # add a repository from the repository's remote location
helm repo update #get the lates update for the repo that has been added. 
helm search repo elastic # search inside the repository to see the charts avaialble. 
helm template elastic/kibana     
helm show values elastic/kibana        # show values that will be used
kubectl get namespace 
kubectl create namespace efk 
helm install filebeat -n  efk elastic/filebeat   #filebeat
