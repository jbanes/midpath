all:
	cp launcher.sh opk/
	cp -r conf opk/
	cp -r cdc opk/
	cp -r dist opk/
	
	chmod a+x opk/launcher.sh
	mksquashfs opk/ midpath.opk -noappend -no-xattrs
	
	rm opk/launcher.sh
	rm -Rf opk/conf
	rm -Rf opk/cdc
	rm -Rf opk/dist

clean:
	rm -f midpath.opk

