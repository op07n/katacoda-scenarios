sudo pip3 install jsonschema
sudo pip3 install --upgrade streamlit

mkdir -p ~/.streamlit/

echo "\
[general]\n\
email = \"your-email@domain.com\"\n\
" > ~/.streamlit/credentials.toml

echo "\
[server]\n\
headless = true\n\
port = $PORT\n\
" > ~/.streamlit/config.toml


streamlit run https://gist.githubusercontent.com/treuille/c633dc8bc86efaa98eb8abe76478aa81/raw/2019640b6a9ff5da5ab6d5b11b3345ddc764b285/cache_example.py
