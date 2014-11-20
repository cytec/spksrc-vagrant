# execute 'update pip' do
#     command 'sudo pip install -U pip==1.5.4 wheel==0.23 httpie'
# end

python_pip "wheel" do
  action :upgrade
  version '0.23'
end

python_pip "httpie" do
  action :upgrade
  version '0.8.0'
end

%w{ build-essential debootstrap python-pip automake libgmp3-dev libltdl-dev libunistring-dev libffi-dev ncurses-dev imagemagick libssl-dev pkg-config zlib1g-dev gettext git curl subversion check intltool gperf flex bison xmlto php5 expect libgc-dev mercurial cython lzip cmake }.each do |pkg|
  package pkg
end

execute 'pull in spksrc' do
    command 'git clone https://github.com/SynoCommunity/spksrc.git /home/vagrant/spksrc'
    not_if { ::File.exists?("/home/vagrant/spksrc")}
end

execute 'spksrc setup' do
    command 'cd /home/vagrant/spksrc && make setup'
    not_if { ::File.exists?("/home/vagrant/spksrc/local.mk")}
end