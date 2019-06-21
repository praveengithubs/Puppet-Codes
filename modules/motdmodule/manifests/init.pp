class motdmodule {
  $filemotd = "/etc/motd"
  $messages = "This is Node informations"

file {"$filemotd":
  ensure  => "present",
  content => "$messages of ${facts['networking']['hostname']} and FQDN is ${facts['networking']['fqdn']} and ip address is ${facts['networking']['ip']}
  Total system memory  ${facts['memory']['total']} and kernel relase is  ${facts['kernelrelease']}\n",  
}
}
