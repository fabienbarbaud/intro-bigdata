CREATE TYPE geo (
  latitude int,
  longitude int,
  cp text,
  adresse text,
  ville text
);

CREATE TYPE ouverture (
  debut text,
  fin text,
  jours frozen<set<text>>
);

CREATE TABLE pdv (
  id int PRIMARY KEY,
  geo geo,
  ouverture ouverture,
  services set<text>
);

INSERT INTO pdv (id, geo, ouverture, services) VALUES (
  1000001,
  { 
    latitude : 4620114,
    longitude : 519791,
    cp : '01000',
    adresse : '596 AVENUE DE TREVOUX',
    ville : 'SAINT-DENIS-LES-BOURG'
  },
  {
    debut : '01:00:00',
    fin : '01:00:00',
    jours : { 'Lundi', 'Mardi' }
  },
  { 
    'Station de gonflage',
    'Vente de gaz domestique',
    'Automate CB'
  }
);
