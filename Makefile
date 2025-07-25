build:
	ifdef WINDOWS
	gcc -o mbrextractor.exe mbrextractor.c -Imbrexport -Wall -Wextra
	else
		gcc -o mbrextractor mbrextractor.c -Imbrexport -Wall -Wextr
	endif
install:
	ifdef WINDOWS
		
	else
		sudo cp mbrextractor /usr/local/bin/
		sudo chmod +x /usr/local/bin/mbrextractor
		sudo ln -s /usr/local/bin/mbrextractor /usr/bin/mbrextractor
		sudo ln -s /usr/local/bin/mbrextractor /bin/mbrextractor
uninstall:
	ifdef WINDOWS
	del mbrextractor.exe
	else
		rm -f mbrextractor
		sudo rm -f /usr/local/bin/mbrextractor
	endif