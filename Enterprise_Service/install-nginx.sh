
if [[ -f /etc/debian_version ]]; then
    # Install for Debian-based systems (like Ubuntu)
    apt-get update
    apt-get install -y nginx
    apt-get clean
    rm -rf /var/lib/apt/lists/*
elif [[ -f /etc/redhat-release ]]; then
    # Install for RedHat-based systems (like CentOS)
    yum install -y epel-release
    yum install -y nginx
    yum clean all
else
    echo "Unsupported OS."
    exit 1
fi
