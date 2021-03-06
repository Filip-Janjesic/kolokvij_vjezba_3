drop database if exists kolokvij_vjezba_3;
create database kolokvij_vjezba_3;
use kolokvij_vjezba_3;

create table svekar(
	sifra int not null primary key auto_increment,
	novcica decimal (16,8) not null,
	suknja varchar (46) not null,
	bojakose varchar(36),
	prstena int,
	narukvica int not null,
	cura int not null
);

create table cura(
	sifra int not null primary key auto_increment,
	dukserica varchar(49),
	maraka decimal(13,7),
	drugiputa datetime,
	majica varchar(49),
	novcica decimal(15,8),
	ogrlica int not null
);

alter table svekar add foreign key (cura) references cura(sifra);

create table snasa(
	sifra int not null primary key auto_increment,
	introventno bit,
	kuna decimal(15,6) not null,
	euro decimal (12,9) not null,
	treciput datetime,
	ostavljena int not null
);

create table punica(
	sifra int not null primary key auto_increment,
	asocijalno bit,
	kratkamajca varchar(44),
	kuna decimal(13,8) not null,
	vesta varchar(32) not null,
	snasa int
);

alter table punica add foreign key (snasa) references snasa(sifra);



