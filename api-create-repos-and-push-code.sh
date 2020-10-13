
repoBaseName="testrepo"

for i in {1..30}; 
do 
    repoName=${repoBaseName}${i}
    curl -u user:password -X POST -H "Content-Type: application/json" https://bitbucketserver/rest/api/1.0/projects/sl3p/repos -d "{\"name\": \"${repoName}\",\"scmId\": \"git\",\"forkable\": true,\"defaultBranch\": \"main\"}"
    mkdir ${repoName}
    cd ${repoName} 
    git init
    touch test1.file${i}
    touch test2.file${i} 
    git add .
    git commit -m "test repo ${i}"
    git remote add origin ssh://git@bitbucketserver:7999/projectcode/${repoName}.git
    git push origin master
    cd ..    
done
