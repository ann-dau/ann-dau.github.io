#!/bin/bash

# TODO should use site.wxxeibo.short_name defined in _config.yml

photos_yml="../ann-dau.github.io/_galleries/photos.yml"

# yaml file header
cat <<EOT > ${photos_yml}
---
name: "photos"
arts:
EOT

# yaml file content body
cd ../attachments
count=1
for file in *.jpg; do
  echo "process ${file}"
  cat <<EOT >> ${photos_yml}
- image: "${file}"
  order: "${count}"
  title: "Ann Dau (Ann Dâu)"

EOT
  (( count++ ))
done
cd -

# yaml file footer
cat <<EOT >> ${photos_yml}
---

EOT
