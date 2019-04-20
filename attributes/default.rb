# These attributes control the deployment of PDQ. 

# license should be copied from your account on pdq.com, begins with --- START LICENSE ---
# serverhostname is the FQDN of your Central Server, if applicable
# mode is either Client or Server
# port is the port to talk to Central Server on (default is 6336)

default['pdq']['license'] = '--- START LICENSE ---keyhere--- END LICENSE ---'
default['pdq']['serverhostname'] = 'pdq.example.com'
default['pdq']['mode'] = 'Client'
default['pdq']['port'] = '6336'