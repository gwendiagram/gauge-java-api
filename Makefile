clean:
	rm -rf log/development.log pkg

prepare: clean
	echo "clean up"

ci-package: prepare
	mkdir -p pkg
	bundle install --without=development test
	tar pczf pkg/${artifact} --exclude=test_harness_service.tar.gz --exclude .git .

.PHONY: clean prepare ci-package