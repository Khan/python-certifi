update:
	curl https://mkcert.org/generate/ -o certifi/cacert.pem
	cat certifi/cacert.pem certifi/old_root.pem > certifi/weak.pem

publish:
	python setup.py sdist bdist_wheel
	twine upload --skip-existing --sign dist/*
