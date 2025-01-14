# P4D Base Image
FROM docker_p4d-base
#Copy Precompiled binaries to root directory
COPY root/ /
COPY scripts/ /home/p4d/
RUN sudo touch /var/log/p4d.log
# Epose TCP Port 1111
EXPOSE 1111
# Healthcheck
HEALTHCHECK --interval=30s --retries=5 --start-period=10s --timeout=15s CMD sudo /usr/bin/p4 getv -a 1 || exit 1
# Run Daemon
CMD ["sudo","-E","/home/p4d/start.sh"]
