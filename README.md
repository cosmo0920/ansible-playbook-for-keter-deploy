Preparing Keter deploy Ansible playbook
===

This is sample preparing keter deployment playbook.

`keter` which is yesod deployment tool is __native binary__, so it should *NOT* install development tool such as haskell-platform and gcc etc in production server.

* Before this playbook run, it needs to put keter binary into binary directory.

* After this playbook running, simply it run scp command to deploy your yesod app.

### LICENSE

[MIT](LICENSE).
