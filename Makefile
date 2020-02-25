help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "seed:       create and seed db"
	@echo "lite:       connect w/ litecli"
	@echo "vd:         connect w/ visidata"
	@echo "lint:       lint using sqlfluff"
	@echo "todo:       view todos"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "env:        show environment info"
	@echo "deps:       list prod dependencies"
	@echo
	@echo "======================================================================"
	@echo

#
# 🛠 UTILS
#

seed:
	rm local.db 2> /dev/null; sqlite3 local.db < seed.sql

lite:
	poetry run litecli local.db

vd:
	poetry run vd local.db

lint:
	poetry run sqlfluff lint *.sql

todo:
	rg -i todo *.sql

#
# 📦 DEPENDENCIES
#

env:
	poetry env info

deps:
	poetry show --tree
