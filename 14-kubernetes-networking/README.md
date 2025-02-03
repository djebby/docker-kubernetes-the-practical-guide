## SECTION 14 - KUBERNETES NETWORKING

Case 1) - two containers in the same pod => localhost:<port>
Case 2) - Pod to Pod communication 
            - use auto assigned service ip
            - auto generated environment variable => <SERVICE_NAME>_SERVICE_HOST
            - automatically generated domaine names using CoreDNS https://coredns.io/  => ip = <service-name>.<service-namespace>

