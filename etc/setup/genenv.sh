CURWDIR="$(cd $(dirname $0)&& pwd)"
echo "export temp_dir=/tmp/gdyshi" > $CURWDIR/env
echo "export config_file_dir=$CURWDIR/conf" >> $CURWDIR/env
echo "export sh_file_dir=$CURWDIR/sh" >> $CURWDIR/env
echo "export setup_file_dir=$(cd $CURWDIR/../../tar;pwd)" >> $CURWDIR/env

source $CURWDIR/env
