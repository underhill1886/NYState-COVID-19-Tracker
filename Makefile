DATE=`date`

upload:
	git add plots/
	git add data/
	git commit -m "Update plot at ${DATE}"
	git push origin master

update:
	python3 scripts/update_v4.py
	python3 scripts/parse_v4.py
	python3 scripts/plot.py
	python3 scripts/plot2.py