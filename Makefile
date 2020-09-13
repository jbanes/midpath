all:
	cp launcher.sh opk/
	cp -r conf opk/
	cp -r cdc opk/
	
	chmod a+x opk/launcher.sh
	mksquashfs opk/ midpath.opk -noappend -no-xattrs
	
	rm opk/launcher.sh
	rm -Rf opk/conf
	rm -Rf opk/cdc

clean:
	rm -f midpath.opk

