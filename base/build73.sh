export RHEL=7.3_HVM-20170613
export RHEL_MAJOR=73
export KERNEL=3.10.0-693.17.1.el7

packer build -machine-readable --only=amazon-ebs packer73.json | tee build.log
ami=$(egrep -m1 -oe 'ami-.{8}' build.log)
rm build.log

echo $ami