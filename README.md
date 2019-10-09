packer-vmware-centos
===

# Requirements

* [HashiCorp Packer](https://www.packer.io/downloads.html)
* [VMWare Workstation](https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html) (evaluation version will work as well)

# Quickstart

1. Install requirements
2. Start build: `time PACKER_LOG=1 packer build -on-error=ask centos-7-x64.json`

It will download CentOS install iso, install base system, add some additional software and create OVA template. The result will reside in `output-vmware/linux/centos`.
