3 Tier Architecture consists of following:

vNet with 4 subnets one for each web, app,sql and jump.
NSG's on all subnets according to the type of server. 
5 RG's for each type of resources, for manageability. 
2 load balanced web servers.
2 App servers
2 sql servers
1 jump box to take RDP of the machines (jump box has a public IP)


Considerations:
1. Load balancer has been created to accomodate multiple sites (considering 3 sites for the test case).
2. Use case for LB - Web server is hosting 3 websites in IIS which are not host defined and are internally configured on different ports. LB uses the load balancing rules to route the traffic and probe on the particular sites, but the end user connects to the 443 port of the LB frontend IP.
3. ADO pipeline has been written in YAML with staging for infra provisioning for reusability and manageability. 
4. YAML has been created with proper variables for reusability.
5. ARM templates have been created with copy functions (looping) for reusability. 
    a. SQL machines will be provisioned with 4 disks (data, log, temp and OS). The disks are of different sizes as recommended by SQL.
    b. WFE and APP will be provisioned with 2 disks (data and OS).
    c. If condition has been used in the ARM to achieve the same from single template. 
     




