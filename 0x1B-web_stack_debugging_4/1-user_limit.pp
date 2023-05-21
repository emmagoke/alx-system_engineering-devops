# This script changes the nofile limit(both soft and hard) of user holberton

exec { 'changing-the-hard-limit-for-holberton':
  command  => "sed -i '/holberton hard/s/5/10000/' /etc/security/limits.conf ",
  provider => shell,
}

exec { 'changing-the-soft-limit-for-holberton':
  command  => "sed -i 's/4/50000/' /etc/security/limits.conf",
  provider => shell,
}
