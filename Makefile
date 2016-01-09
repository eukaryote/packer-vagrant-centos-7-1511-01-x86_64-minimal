# Use shared packer_cache dir to reuse downloaded isos across packer builds
export PACKER_CACHE_DIR:=/var/tmp/packer_cache

centos7:
	packer build centos7-packer.json

clean:
	rm -rf ./*.box
	rm -rf ./packer_cache
