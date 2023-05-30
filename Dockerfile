ARG PORT=8090
FROM halohub/halo:2.5
WORKDIR /
ENV TZ=Asia/Shanghai
COPY application.yml ./
EXPOSE ${PORT}
CMD ["java", "-Duser.timezone=$TZ", "-jar", "/halo.jar", "--spring.config.location=classpath:/application.yml,file:./application.yml"]