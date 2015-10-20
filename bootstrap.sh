BASEDIR=$(dirname $0)

git -C $BASEDIR submodule update --init --recursive 

$BASEDIR/bin/dfm install
