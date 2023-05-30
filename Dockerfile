ARG PORT=8090
FROM halohub/halo:2.5
WORKDIR /
ENV TZ=Asia/Shanghai
COPY application.yml ./
EXPOSE ${PORT}
CMD ["-Duser.timezone=$TZ","--halo.security.initializer.superadminusername=admin", "--halo.security.initializer.superadminpassword=P@88w0rd", "--spring.config.location=classpath:/application.yml,file:./application.yml"]