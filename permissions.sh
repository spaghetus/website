#!/bin/bash
chmod -R o-rwx wsrc
chmod -R u+rwx wsrc
chmod o+rx wsrc/{.,index.html,license.html,page,pages-chrono,pages-tree,style.css}
chmod o+rx wsrc/.res_* || true
chmod o+rx wsrc/.logger* || true
chmod o+rx wsrc/.gatekeeper* || true
chmod u+rx wsrc/{index.html,license.html,page,pages-chrono,pages-tree}
chmod -R o+r wsrc/{public,page-src,Makefile,static}
chmod +x $(find wsrc -type d)