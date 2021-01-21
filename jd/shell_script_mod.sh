# perl -i -p0e 's/let invite_pins = \[.*?\]/let invite_pins = \["jd_543a487b48ed9,jd_7f66376fa1beb,jd_oemXUqdshpnh,zhaosudan2016,jd_CtqOVvfkzuZV,那长,jd_5aa7dedadcfa1"\]/s' /scripts/jd_joy_run.js
# perl -i -p0e 's/let run_pins = \[.*?\]/let run_pins = \["jd_543a487b48ed9,jd_7f66376fa1beb,jd_oemXUqdshpnh,zhaosudan2016,jd_CtqOVvfkzuZV,那长,jd_5aa7dedadcfa1"\]/s' /scripts/jd_joy_run.js

echo -e >> /scripts/docker/merged_list_file.sh
echo "*/15 14-15 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1" >> /scripts/docker/merged_list_file.sh
curl https://raw.githubusercontent.com/shylocks/Loon/main/docker/crontab_list.sh >> /scripts/docker/merged_lis
t_file.sh
