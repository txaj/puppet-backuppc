Facter.add('backuppc_pubkey_rsa') do
  setcode do
    if File.exists?('/var/lib/backuppc/.ssh/id_rsa.pub')
      File.open('/var/lib/backuppc/.ssh/id_rsa.pub').read.split(' ')[1]
    end
  end
end