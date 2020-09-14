all:
	cp launcher.sh opk/
	cp manager.sh opk/
	cp -r conf opk/
	cp -r cdc opk/
	cp -r dist opk/
	
	./install-repo.sh
	./build-java.sh
	cp components/core/target/midpath-0.3-SNAPSHOT.jar opk/dist/midpath.jar
	
	chmod a+x opk/launcher.sh
	mksquashfs opk/ midpath.opk -noappend -no-xattrs
	
	rm opk/launcher.sh
	rm opk/manager.sh
	rm -Rf opk/conf
	rm -Rf opk/cdc
	rm -Rf opk/dist

clean:
	rm -f midpath.opk
	mvn -f components/core/pom.xml clean

