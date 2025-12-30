# Function to toggle system-wide proxy for mitmproxy
x_proxy() {
    if [ "$1" = "on" ]; then
        echo "Enabling system-wide proxy..."
        sudo tee /etc/profile.d/proxy.sh > /dev/null <<EOF
export http_proxy="http://127.0.0.1:8080"
export https_proxy="http://127.0.0.1:8080"
export ftp_proxy="http://127.0.0.1:8080"
export no_proxy="localhost,127.0.0.1,::1"
EOF
        echo "Proxy enabled. Please log out/in or reboot for GUI apps to use it."
    elif [ "$1" = "off" ]; then
        echo "Disabling system-wide proxy..."
        sudo rm -f /etc/profile.d/proxy.sh
        echo "Proxy disabled. Please log out/in or reboot for GUI apps to stop using it."
    else
        echo "Usage: toggle_proxy on|off"
    fi
}
