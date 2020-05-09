default: build
	dune utop project/lib

build:
	dune build

cli: build
	dune exec project/bin/app.exe "cli"

gui: build
	dune exec project/bin/app.exe "gui"

test:
	dune runtest

bisect:
	BISECT_ENABLE=yes dune runtest --force
	bisect-ppx-report html && bisect-ppx-report summary

docs:
	dune build @doc

zip:
	zip -v -r project_src.zip ./project ./json_files dune-project project.opam Makefile INSTALL.txt 

clean:
	dune clean
	rm -rf _coverage
	rm -rf project_src.zip