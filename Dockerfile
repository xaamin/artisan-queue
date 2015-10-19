FROM xaamin/php
MAINTAINER Benjamín Martínez Mateos <bmxamin@gmail.com>

# Add env variables
ENV TRIES 3

# Add bootstrap file
ADD start.bash /start.bash

# Add supervisor config file
ADD supervisord.conf /etc/supervisor/supervisord.conf

# Define default command.
CMD ["/bin/bash", "/start.bash"]
