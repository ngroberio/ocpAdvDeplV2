#!/bin/bash
echo '>>>>>>>>>> [ SET ANSIBLE LOG ] <<<<<<<<<<<<'
export ANSIBLE_LOG_PATH=/var/log/ansible_uninstall.log

echo '>>>>>>>>>> [ INITIATE ENV VARIABLES - EXPORT GUID ] <<<<<<<<<<<<'
export GUID=`hostname | cut -d"." -f2`; echo "export GUID=$GUID" >> $HOME/.bashrc
echo 'EXPORTED GUID >>> '$GUID

echo '>>>>>>>>>> [ RUN UNINSTALL PLAYBOOK ] <<<<<<<<<<<<'
ansible-playbook /usr/share/ansible/openshift-ansible/playbooks/adhoc/uninstall.yml
