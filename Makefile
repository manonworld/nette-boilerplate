install:
	@echo "";
	@echo "-----------------------";
	@echo "--                   --";
	@echo "-- Nette Boilerplate --";
	@echo "--                   --";
	@echo "-----------------------";
	@echo "";
	@echo "Installing Application ...";
	@echo "";
	@docker-compose up -d --build;

clean:
	@echo "";
	@echo "-----------------------";
	@echo "--                   --";
	@echo "-- Nette Boilerplate --";
	@echo "--                   --";
	@echo "-----------------------";
	@echo "";
	@echo "Cleaning Application ...";
	@echo "";
	@docker-compose down;
	@docker system prune --all -f -a;

test:
	@echo "";
	@echo "-----------------------";
	@echo "--                   --";
	@echo "-- Nette Boilerplate --";
	@echo "--                   --";
	@echo "-----------------------";
	@echo "";
	@echo "Testing Application ...";
	@echo "";
	@docker exec -it nette_app vendor/bin/tester -C /usr/local/etc/php/conf.d/coverage.phpunit.ini --coverage coverage.html


