#!/bin/bash
chmod -R o-rwx wsrc
chmod -R u+rwx wsrc
chmod o+rx wsrc/{.,index,license,page,pages-chrono,pages-tree,style}
chmod u+rx wsrc/{index,license,page,pages-chrono,pages-tree}
chmod -R o+r wsrc/{public,page-src,Makefile,static,style,font}
chmod -R o+rx wsrc/page-settings
chmod +x $(find wsrc -type d)
chmod -R o+r wsrc/code-styles
chmod o+rx wsrc/code-styles/langs