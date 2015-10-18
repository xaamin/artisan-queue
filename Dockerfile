FROM xaamin/php
MAINTAINER Benjamín Martínez Mateos <bmxamin@gmail.com>

# Set memory limit
RUN sed -i 's/memory_limit = .*/memory_limit = -1/' /etc/php5/cli/php.ini

# Add env variables
ENV TRIES 5

# Add bootstrap file
ADD start.bash /start.bash

# Add supervisor config file
ADD supervisord.conf /etc/supervisor/supervisord.conf

# Define default command.
CMD ["/bin/bash", "/start.bash"]
