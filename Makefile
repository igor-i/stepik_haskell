ifndef file
  ghci_command = ghci
else
  ghci_command = ghci /haskell/$(file)
endif

bash:
	docker run -it --rm -w=/haskell \
	  --mount src=`pwd`/part_1,target=/haskell/part_1,type=bind \
	  --mount src=`pwd`/part_2,target=/haskell/part_2,type=bind \
	  haskell:7.8 bash

ghci:
	docker run -it --rm -w=/haskell \
	  --mount src=`pwd`/part_1,target=/haskell/part_1,type=bind \
	  --mount src=`pwd`/part_2,target=/haskell/part_2,type=bind \
	  haskell:7.8 $(ghci_command)
