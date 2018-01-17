# Consul - Vault
- v0.0.8 - 01/17/2017 - Rick Thiessen
    + Modified Join to point at the Rancher Service Names
        * consul-vault-consul-1

- v0.0.7 - 01/17/2017 - Rick Thiessen
    + removed the un-needed ports.

- v0.0.6 - 01/16/2017 - Rick Thiessen
    + modified names of service containers
    + added registrator as Side-Kick services

- v0.0.5
    +  Modified to add registration connection services
    +  set version for HA-Proxy so update messages goes away.

- v0.0.4 - 01/15/2017 - Jordans Version
    + Initial import

- v0.0.3
    + Moved to a host based model.  This allows us to have containers on each machine.  
    + requires 3 machines to have a quorum.

- v0.0.2
    + 

- v0.0.1 
    + Added initial template elements to YML files.

- v0.0.0 - initial version
    + Installs consul stack with Vault services
    + 
    + Initially consul build
    + Ref: https://gist.github.com/benjamin658/6eac792c3ec95464b9c14d6372128e9c
