# rsync -aHxv --numeric-ids --progress -e "ssh -T -o 'StrictHostKeyChecking no' -c aes128-gcm@openssh.com -o Compression=no -x" vigi99@10.96.100.112:/Users/vigi99/AirtelDEV/saber/download_scripts/ /tts_data/asrdata/download_scripts/
# rsync -aHxv --numeric-ids --progress -e "ssh -T -o 'StrictHostKeyChecking no' -c aes128-gcm@openssh.com -o Compression=no -x" vigi99@10.96.100.112:/Users/vigi99/AirtelDEV/saber/age_scripts/ /tts_data/asrdata/age_scripts/
# rsync -aHxv --numeric-ids --progress -e "ssh -T -o 'StrictHostKeyChecking no' -c aes128-gcm@openssh.com -o Compression=no -x" --exclude-from=exclude.txt vigi99@10.96.100.112:/Users/vigi99/AirtelDEV/saber/ /tts_data/saber/
cd /tts_data/git_saber
git pull origin master
cd /tts_data/saber
rsync -aHxv --numeric-ids --progress -e "ssh -T -o 'StrictHostKeyChecking no' -c aes128-gcm@openssh.com -o Compression=no -x" --exclude-from=exclude.txt /tts_data/git_saber/ /tts_data/saber/