create database dreamcastle;

create table post (
    idPost serial primary key,
    nomPost varchar(50)
);

create table service (
    idService serial primary key,
    nomService varchar(50)
);

create table filiere (
    idFiliere serial primary key,
    nomFiliere varchar(50)
);

create table diplome (
    idDiplome serial primary key,
    nomDiplome varchar(50)
);

create table lieu (
    idLieu serial primary key,
    nomLieu varchar(50)
);

create table requete (
    idRequete serial primary key,
    idPost int,
    idService int,
    idFiliere int,
    idDiplome int,
    idLieu int,
    experience int,
    age int,
    sexe int,
    dateRequete date default current_date,
    timeRequete time default current_time,
    foreign key (idPost) references post(idPost),
    foreign key (idService) references service(idService),
    foreign key (idFiliere) references filiere(idFiliere),
    foreign key (idDiplome) references diplome(idDiplome),
    foreign key (idLieu) references lieu(idLieu)
);

alter table requete 
add column etat int;

alter table requete
add column maxage int;

alter table requete
add column minage int;

alter table requete
drop column age;

create table coefficient (
    idCoefficient serial primary key,   
    idRequete int references requete(idRequete),
    post int,
    filiere int,
    diplome int,
    experience int,
    sexe int,
    age int,
    lieu int
);

alter table coefficient
drop column post;

insert into post values 
    (default,'Informaticien'),
    (default,'Receptionniste');

insert into service values 
    (default,'Economie'),
    (default,'Culinaire');

insert into filiere values
    (default,'Informatique'),
    (default,'Hotelerie');

insert into diplome values
    (default,'Bacc'),
    (default,'License');

insert into lieu values
    (default,'Andoharanofotsy'),
    (default,'Tanjombato');