ARG PORT=8090
FROM halohub/halo:2.5
# WORKDIR /
# # ENV JVM_OPTS=-Xmx256m HALO_WORK_DIR=/root/.halo2 SPRING_CONFIG_LOCATION=optional:classpath:/;optional:file:/root/.halo2/ TZ=Asia/Shanghai
# COPY application.yml ./
EXPOSE ${PORT}
# ENTRYPOINT ["sh", "-c" ,"java ${JVM_OPTS} org.springframework.boot.loader.JarLauncher ${0} ${@}", "-Duser.timezone=$TZ", "--halo.security.initializer.superadminusername=admin",  "--halo.security.initializer.superadminpassword=P@88w0rd", "--spring.config.location=classpath:/application.yml,file:./application.yml"]
# CMD [ "--spring.config.location=classpath:/application.yml,file:./application.yml" ,"JVM_OPTS=-Xmx256m"]