wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh; \
bash miniconda.sh -b -p $HOME/miniconda; \
source "$HOME/miniconda/etc/profile.d/conda.sh"; \
hash -r ; \
conda config --set always_yes yes --set changeps1 no ; \
conda update -q conda; \
conda info -a; \
conda install -c fastai -c pytorch fastai; \
pip3 install packaging; \
git clone https://github.com/fastai/fastai2; \
cd fastai2; \
pip3 install -e .[dev]; \
pip3 install ipykernel
