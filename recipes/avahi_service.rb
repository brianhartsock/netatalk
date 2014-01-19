
include_recipe 'avahi-daemon::enable'

avahi_daemon_service 'afpd' do
  services [
    {
      :type => '_afpovertcp._tcp',
      :port => 548
    },
    {
      :type => '_device-info._tcp',
      :port => 0,
      :txt_records => ['model=Xserve']
    }]
end
