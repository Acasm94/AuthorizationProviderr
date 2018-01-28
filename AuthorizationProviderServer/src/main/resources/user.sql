-- Korisnici
insert into user(id, email, name, password, surname) values (1, 'b@b.com', 'B', 'b', 'Bb'); -- Prodavac
insert into user(id, email, name, password, surname) values (2, 'c@c.com', 'C', 'c', 'Cc'); -- Finansijski analiticar

insert into user(id, email, name, password, surname) values (3, 'sbk@uniqu.com', 'Sundjer Bob', 'Sundjerbob1!', 'Kockalone'); -- Finansijski analiticar
insert into user(id, email, name, password, surname) values (4, 'pz@uniqu.com', 'Patrik', 'Patrik1!', 'Zvezda'); -- Finansijski analiticar
insert into user(id, email, name, password, surname) values (5, 'lp@uniqu.com', 'Lignjoslav', 'Lignjoslav1!', 'Pipak'); -- Finansijski analiticar
insert into user(id, email, name, password, surname) values (6, 'ek@uniqu.com', 'Evgenije', 'Evgenije1!', 'Kraba'); -- Finansijski analiticar
insert into user(id, email, name, password, surname) values (7, 'so@uniqu.com', 'Sendi', 'Sendio1!', 'Obrascic'); -- Finansijski analiticar
insert into user(id, email, name, password, surname) values (8, 'sp@uniqu.com', 'Seldon', 'Plankton1!', 'sp@uniqu.com'); -- Prodavac
insert into user(id, email, name, password, surname) values (9, 'uh@uniqu.com', 'Ukleti', 'Holandjanin1!', 'Holandjanin'); -- Prodavac
insert into user(id, email, name, password, surname) values (10, 'gp@uniqu.com', 'Gospodja', 'Gpufna1!', 'Pufna'); -- Prodavac

insert into user(id, email, name, password, surname) values (11, 'admin@uniqu.com', 'admin', 'admin', 'admin'); -- Admin

-- Role
insert into role(id, name) values (1, 'Prodavac');
insert into role(id, name) values (2, 'FinansijskiAnaliticar');
insert into role(id, name) values (3, 'Admin');

insert into users_roles (user_id, role_id) values (1, 1);
insert into users_roles (user_id, role_id) values (2, 2);

insert into users_roles (user_id, role_id) values (3, 2);
insert into users_roles (user_id, role_id) values (4, 2);
insert into users_roles (user_id, role_id) values (5, 2);
insert into users_roles (user_id, role_id) values (6, 2);
insert into users_roles (user_id, role_id) values (7, 2);

insert into users_roles (user_id, role_id) values (8, 1);
insert into users_roles (user_id, role_id) values (9, 1);
insert into users_roles (user_id, role_id) values (10, 1);

insert into users_roles (user_id, role_id) values (11, 3);

-- PRIVILEGIJE: 

	--PriceManagement:
		-- Cenovnik
		insert into privilege(id, name) values (1, 'readCenovniciZaOK');
		insert into privilege(id, name) values (2, 'readCenovniciZaOKPoDatumu');
		insert into privilege(id, name) values (3, 'getAktuelanCenovniciZaOK');
		insert into privilege(id, name) values (4, 'setAktuelanCenovniciZaOK');
		insert into privilege(id, name) values (5, 'createCenovnik');
		insert into privilege(id, name) values (6, 'updateCenovnik');
		
		-- PredefinisanaVrednost
		insert into privilege(id, name) values (7, 'readPredefinisaneVrednosti');
		insert into privilege(id, name) values (8, 'readPredefinisaneVrednostiZaTipAtributa');
		
		-- StavkaCenovnika
		insert into privilege(id, name) values (9, 'readStavkeZaCenovnik');
		insert into privilege(id, name) values (10, 'readStavkeZaCenovnikIPredVrednost');
		insert into privilege(id, name) values (11, 'addStavkuCenovnika');
		insert into privilege(id, name) values (12, 'updateStavkuCenovnika');
		
		-- TipAtributa
		insert into privilege(id, name) values (13, 'readTipoveAtributaZaTipOsiguranja');
		insert into privilege(id, name) values (14, 'readTipoveAtributaZaTipOsigUticuNaCenu');
		
		-- TipOsiguranja
		insert into privilege(id, name) values (15, 'readTipoveOsiguranjaZaOK');
		
		-- JBossDrools
		insert into privilege(id, name) values (16, 'createOsiguranje');
		insert into privilege(id, name) values (17, 'setAktuelanCenovnikZaOsiguravajucuKucu');
		insert into privilege(id, name) values (18, 'getFajlove');
		insert into privilege(id, name) values (19, 'getSadrzajPravila');
		insert into privilege(id, name) values (20, 'sacuvajPravilo');
	
	
	insert into roles_privileges(role_id, privilege_id) values(2, 1);
	insert into roles_privileges(role_id, privilege_id) values(2, 2);
	insert into roles_privileges(role_id, privilege_id) values(2, 3);
	insert into roles_privileges(role_id, privilege_id) values(2, 4);
	insert into roles_privileges(role_id, privilege_id) values(2, 5);
	insert into roles_privileges(role_id, privilege_id) values(2, 6);
	insert into roles_privileges(role_id, privilege_id) values(2, 7);
	insert into roles_privileges(role_id, privilege_id) values(2, 8);
	insert into roles_privileges(role_id, privilege_id) values(2, 9);
	insert into roles_privileges(role_id, privilege_id) values(2, 10);
	insert into roles_privileges(role_id, privilege_id) values(2, 11);
	insert into roles_privileges(role_id, privilege_id) values(2, 12);
	insert into roles_privileges(role_id, privilege_id) values(2, 13);
	insert into roles_privileges(role_id, privilege_id) values(2, 14);
	insert into roles_privileges(role_id, privilege_id) values(2, 15);
	insert into roles_privileges(role_id, privilege_id) values(2, 16);
	insert into roles_privileges(role_id, privilege_id) values(2, 17);
	insert into roles_privileges(role_id, privilege_id) values(2, 18);
	insert into roles_privileges(role_id, privilege_id) values(2, 19);
	insert into roles_privileges(role_id, privilege_id) values(2, 20);
	
	
	insert into roles_privileges(role_id, privilege_id) values(3, 1);
	insert into roles_privileges(role_id, privilege_id) values(3, 2);
	insert into roles_privileges(role_id, privilege_id) values(3, 3);
	insert into roles_privileges(role_id, privilege_id) values(3, 4);
	insert into roles_privileges(role_id, privilege_id) values(3, 5);
	insert into roles_privileges(role_id, privilege_id) values(3, 6);
	insert into roles_privileges(role_id, privilege_id) values(3, 7);
	insert into roles_privileges(role_id, privilege_id) values(3, 8);
	insert into roles_privileges(role_id, privilege_id) values(3, 9);
	insert into roles_privileges(role_id, privilege_id) values(3, 10);
	insert into roles_privileges(role_id, privilege_id) values(3, 11);
	insert into roles_privileges(role_id, privilege_id) values(3, 12);
	insert into roles_privileges(role_id, privilege_id) values(3, 13);
	insert into roles_privileges(role_id, privilege_id) values(3, 14);
	insert into roles_privileges(role_id, privilege_id) values(3, 15);
	insert into roles_privileges(role_id, privilege_id) values(3, 16);
	insert into roles_privileges(role_id, privilege_id) values(3, 17);
	insert into roles_privileges(role_id, privilege_id) values(3, 18);
	insert into roles_privileges(role_id, privilege_id) values(3, 19);
	insert into roles_privileges(role_id, privilege_id) values(3, 20);

	
	--InsurancePointOfSale:
	
		-- KontekstAtributa
		insert into privilege(id, name) values (21, 'readOsiguravajuceKuce');
		
		-- KontrolniAtribut
		insert into privilege(id, name) values (22, 'readAtributiZaKontekst');
		
		-- TipOsiguranja
		insert into privilege(id, name) values (23, 'readTipoviOsiguranja');
		
		-- TipAtributa
		insert into privilege(id, name) values (24, 'readTipoviAtributaZaTipOsiguranja');
		insert into privilege(id, name) values (25, 'readTipoviAtributaZaKontekstAtributa');
		
		-- Osiguranje
		insert into privilege(id, name) values (26, 'createOsiguranje1');
		
		-- OsiguravajucaKuca
		insert into privilege(id, name) values (27, 'readOsiguravajucaKuca');
		
		-- PredefinisanaVrednost
		insert into privilege(id, name) values (28, 'readPredefinisaneVrednosti1');
		insert into privilege(id, name) values (29, 'readPredefinisaneVrednostiZaTipAtributa1');
	
	insert into roles_privileges(role_id, privilege_id) values(1, 21);
	insert into roles_privileges(role_id, privilege_id) values(1, 22);
	insert into roles_privileges(role_id, privilege_id) values(1, 23);
	insert into roles_privileges(role_id, privilege_id) values(1, 24);
	insert into roles_privileges(role_id, privilege_id) values(1, 25);
	insert into roles_privileges(role_id, privilege_id) values(1, 26);
	insert into roles_privileges(role_id, privilege_id) values(1, 27);
	insert into roles_privileges(role_id, privilege_id) values(1, 28);
	insert into roles_privileges(role_id, privilege_id) values(1, 29);
	
	insert into roles_privileges(role_id, privilege_id) values(3, 21);
	insert into roles_privileges(role_id, privilege_id) values(3, 22);
	insert into roles_privileges(role_id, privilege_id) values(3, 23);
	insert into roles_privileges(role_id, privilege_id) values(3, 24);
	insert into roles_privileges(role_id, privilege_id) values(3, 25);
	insert into roles_privileges(role_id, privilege_id) values(3, 26);
	insert into roles_privileges(role_id, privilege_id) values(3, 27);
	insert into roles_privileges(role_id, privilege_id) values(3, 28);
	insert into roles_privileges(role_id, privilege_id) values(3, 29);
	