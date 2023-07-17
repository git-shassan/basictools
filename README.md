# Basictools:
The container has all basic networking tools , ping, wget, curl, tcpdump etc. etc.

# Usage:
The docker image is already posted on quay.io. Some of the ways you can launh it: 

### For OCP: 
```oc run testpod3 -it --image=quay.io/sfhassan/basictools -- /bin/bash```

### For PODMAN: 
```podman run -d -it --name test basictools /bin/bash```

### For Docker: 
```docker run -d -it --name test basictools /bin/bash```

### Sample OCP manifest: 
```
apiVersion: v1
kind: Pod
metadata:
  labels:
    run: testpod
  name: testpod
  namespace: test-ns
spec:
  containers:
  - image: quay.io/sfhassan/newtools
    name: testpod
````

After running, simply attach to the container/pod to make use of the tool. 
