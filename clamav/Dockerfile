FROM mgit/squidclamav:7.1-bionic
USER root
RUN sed -i -e "s/^#\tServiceAlias/ServiceAlias/" /etc/c-icap/c-icap.conf && echo "Service squidclamav squidclamav.so" >> /etc/c-icap/c-icap.conf
RUN sed -i -e "s/^clamd_local/#clamd_local/" /etc/c-icap/squidclamav.conf && sed -i -e "s/^#clamd_port/clamd_port/" /etc/c-icap/squidclamav.conf && sed -i -e "s/^#clamd_ip 192.168.1.5,127.0.0.1/clamd_ip utils-antivirus/" /etc/c-icap/squidclamav.conf
EXPOSE 1344
 
