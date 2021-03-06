wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && rm -rf packages-microsoft-prod.deb && \
    add-apt-repository universe && \
    apt-get update && apt-get -y -o APT::Install-Suggests="true" install dotnet-sdk-3.1 && \
    rm -rf /var/lib/apt/lists/*;
