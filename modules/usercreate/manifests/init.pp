class usercreate {
  $username  = "userone"
  $username2 = "usertwo"
  $g1    = "groupone"
  $g2    = "grouptwo"
  $user1     = "1111"
  $user2     = "2222"
  $groupid   = "6666"
  $groupid2  = "7777"
  $shellfile = "/bin/bash"
 
group {"$g1":
  ensure  => "present",
  gid     => "$groupid",
}

group {"$g2":
  ensure  => "present",
  gid     => "$groupid2",
}

user {"$username":
  ensure  => "present",
  uid     => "$user1",
  groups  => "$g1",
  shell   => "$shellfile",
}  

user {"$username2":
  ensure  => "present",
  uid     => "$user2",
  groups  => "$g2",
  shell   => "$shellfile",
}
}

