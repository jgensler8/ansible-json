
cp hosts /tmp/hosts
chmod 0600 /tmp/hosts
ansible-playbook -i /tmp/hosts --module-path=../library test.yml
