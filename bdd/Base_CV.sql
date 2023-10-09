CREATE TABLE sexes(
    idSexe SERIAL PRIMARY KEY,
    nom VARCHAR
);

CREATE TABLE nationalites(
    idNationalite SERIAL PRIMARY KEY,
    nom VARCHAR
);

CREATE TABLE diplomes(
    idDiplome SERIAL PRIMARY KEY,
    nom VARCHAR
);

CREATE TABLE filieres(
    idFiliere SERIAL PRIMARY KEY,
    nom VARCHAR
);

CREATE TABLE seriesBacc(
    idSerieBacc SERIAL PRIMARY KEY,
    nom VARCHAR
);

CREATE TABLE adresses(
    idAdresse SERIAL PRIMARY KEY,
    nom VARCHAR
);

CREATE TABLE personnes(
    idPersonne SERIAL PRIMARY KEY,
    nom VARCHAR,
    prenom VARCHAR,
    mail VARCHAR,
    ddn DATE,
    idSexe INT,
    idAdresse INT,
    idNationalite INT,
    FOREIGN KEY (idSexe) REFERENCES sexes(idSexe),
    FOREIGN KEY (idAdresse) REFERENCES adresses(idAdresse),
    FOREIGN KEY (idNationalite) REFERENCES nationalites(idNationalite)
);

CREATE TABLE personneParcours(
    idPersonneParcours SERIAL PRIMARY KEY,
    idPersonne INT,
    idDiplome INT,
    idSerieBacc INT,
    idFiliere INT,
    experience INT,
    FOREIGN KEY (idPersonne) REFERENCES personnes(idPersonne),
    FOREIGN KEY (idDiplome) REFERENCES diplomes(idDiplome),
    FOREIGN KEY (idSerieBacc) REFERENCES seriesBacc(idSerieBacc),
    FOREIGN KEY (idFiliere) REFERENCES filieres(idFiliere)
);