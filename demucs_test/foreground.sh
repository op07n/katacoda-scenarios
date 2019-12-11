
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh; \
bash miniconda.sh -b -p $HOME/miniconda; \
source "$HOME/miniconda/etc/profile.d/conda.sh"; \
hash -r ; \
conda config --set always_yes yes --set changeps1 no ; \
conda update -q conda; \
conda info -a; \
git clone https://github.com/facebookresearch/demucs; \
cd demucs; \
conda env update -f environment-cpu.yml; \
conda activate demucs; \
wget https://github.com/delthas/JavaMP3/raw/master/src/test/resources/mp3/joint_stereo_kikuo.mp3; \
python3 -m demucs.separate --dl joint_stereo_kikuo.mp3
