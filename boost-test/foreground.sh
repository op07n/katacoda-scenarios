mkdir -p ~/home/

cd /root/home && wget http://downloads.sourceforge.net/project/boost/boost/1.60.0/boost_1_60_0.tar.gz \
  && tar xfz boost_1_60_0.tar.gz \
  && rm boost_1_60_0.tar.gz \
  && cd boost_1_60_0 \
  && ./bootstrap.sh --prefix=/usr/local --with-libraries=program_options \
  && ./b2 install \
  && cd /root/home \
  && rm -rf boost_1_60_0
  
cd /root/home \
  && git clone https://github.com/pblischak/boost-docker-test.git \
  && cd /root/home/boost-docker-test \
  && make linux \
  && make install \
  && cd .. \
  && rm -rf boost-docker-test  
  
  
