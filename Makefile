all: prep-opk install-repo build-java

prep-opk:
	cp launcher.sh opk/
	cp manager.sh opk/
	cp -r conf opk/
	cp -r cdc opk/
	cp -r dist opk/
	
install-repo:
	./install-repo.sh

build-java:
	./build-java.sh
	
opk: prep-opk
	cp components/core/target/midpath-0.3-SNAPSHOT.jar opk/dist/midpath.jar
#	cp components/microbackend/target/microbackend-0.3-SNAPSHOT.jar opk/dist/microbackend.jar
	
	chmod a+x opk/launcher.sh
	chmod a+x opk/manager.sh
	mksquashfs opk/ midpath.opk -noappend -no-xattrs
	
	rm opk/launcher.sh
	rm opk/manager.sh
	rm -Rf opk/conf
	rm -Rf opk/cdc
	rm -Rf opk/dist

build: prep-opk build-java opk

clean:
	rm -f midpath.opk
	mvn -f components/core/pom.xml clean
#	mvn -f components/microbackend/pom.xml clean
