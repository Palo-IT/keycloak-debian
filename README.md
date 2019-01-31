# Keycloak Debian package builder

Project to build a Debian package fro Keycloak.

Just run:

```bash 
$ mvn clean package
[INFO] Scanning for projects...
[INFO]
[INFO] ----------------< com.mr.drive:keycloak-debian-builder >----------------
[INFO] Building Keycloak debian builder 4.8.3.Final
[INFO] --------------------------------[ jar ]---------------------------------
[INFO]
[INFO] --- maven-clean-plugin:2.5:clean (default-clean) @ keycloak-debian-builder ---
[INFO] Deleting /Users/blep/dev/mr/kc-deb/target
[INFO]
[INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ keycloak-debian-builder ---
[WARNING] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory /Users/blep/dev/mr/kc-deb/src/main/resources
[INFO]
[INFO] --- maven-compiler-plugin:3.1:compile (default-compile) @ keycloak-debian-builder ---
[INFO] No sources to compile
[INFO]
[INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ keycloak-debian-builder ---
[WARNING] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory /Users/blep/dev/mr/kc-deb/src/test/resources
[INFO]
[INFO] --- maven-compiler-plugin:3.1:testCompile (default-testCompile) @ keycloak-debian-builder ---
[INFO] No sources to compile
[INFO]
[INFO] --- maven-surefire-plugin:2.12.4:test (default-test) @ keycloak-debian-builder ---
[INFO] No tests to run.
[INFO]
[INFO] --- maven-jar-plugin:2.4:jar (default-jar) @ keycloak-debian-builder ---
[WARNING] JAR will be empty - no content was marked for inclusion!
[INFO] Building jar: /Users/blep/dev/mr/kc-deb/target/keycloak-debian-builder-4.8.3.Final.jar
[INFO]
[INFO] --- jdeb:1.7:jdeb (default) @ keycloak-debian-builder ---
[INFO] Creating debian package: /Users/blep/dev/mr/kc-deb/target/keycloak-4.8.3.Final.deb
[INFO] Building conffiles
[INFO] Skipping 'conffiles' generation. No entries defined in maven/pom or ant/build.xml.
[INFO] Creating changes file: /Users/blep/dev/mr/kc-deb/target/keycloak-debian-builder_4.8.3.Final_all.changes
[INFO] Attaching created debian package /Users/blep/dev/mr/kc-deb/target/keycloak-4.8.3.Final.deb
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 16.529 s
[INFO] Finished at: 2019-01-31T14:56:47+01:00
[INFO] ------------------------------------------------------------------------
$ 
```