go install github.com/xuri/xgen/cmd/xgen@latest
mkdir -p dist
~/go/bin/xgen -i tmlu.xsd -o dist/tmlu -l Go