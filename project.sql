DROP TABLE movi CASCADE CONSTRAINTS;
DROP TABLE mcountry CASCADE CONSTRAINTS;
DROP TABLE mprodcomp CASCADE CONSTRAINTS;
DROP TABLE mlanguage CASCADE CONSTRAINTS;
DROP TABLE genre CASCADE CONSTRAINTS;
DROP TABLE mgenre CASCADE CONSTRAINTS;
DROP TABLE tvshow CASCADE CONSTRAINTS;
DROP TABLE tvlang CASCADE CONSTRAINTS;
DROP TABLE tvshowc CASCADE CONSTRAINTS;
DROP TABLE tvprodcomp CASCADE CONSTRAINTS;
DROP TABLE tvgenre CASCADE CONSTRAINTS;
DROP TABLE episode CASCADE CONSTRAINTS;
DROP TABLE actor CASCADE CONSTRAINTS;
DROP TABLE actoraw CASCADE CONSTRAINTS;
DROP TABLE actoran CASCADE CONSTRAINTS;
DROP TABLE afilm CASCADE CONSTRAINTS;
DROP TABLE actedinm CASCADE CONSTRAINTS;
DROP TABLE actedintv CASCADE CONSTRAINTS;
DROP TABLE director CASCADE CONSTRAINTS;
DROP TABLE dawnom CASCADE CONSTRAINTS;
DROP TABLE dawwon CASCADE CONSTRAINTS;
DROP TABLE dfilm CASCADE CONSTRAINTS;
DROP TABLE dir_m CASCADE CONSTRAINTS;
DROP TABLE dir_tv CASCADE CONSTRAINTS;


CREATE TABLE movi
(
        Mname VARCHAR2(60),
        Mdescription VARCHAR2(200),
        Mrating VARCHAR2(4),
        Mdate DATE,
        Mbudget NUMBER(30),
        Mduration NUMBER(4),
        CONSTRAINT Movi_Mname_pk PRIMARY KEY (Mname));


CREATE TABLE mcountry
(
        Mname VARCHAR2(60),
        Mvcountry VARCHAR2(30),
        CONSTRAINT Mcountry_Mname_Mvcountry_pk PRIMARY KEY (Mname, Mvcountry));


CREATE TABLE mprodcomp
(
        Mname VARCHAR2(60),
        Mprodcomp VARCHAR2(30),
        CONSTRAINT mprodcomp_Mname_Mprodcomp_pk PRIMARY KEY (Mname, Mprodcomp));


CREATE TABLE mlanguage
(
        Mname VARCHAR2(60),
        Mlang VARCHAR2(40),
        CONSTRAINT mlanguage_Mname_Mlang_pk PRIMARY KEY (Mname,Mlang));


CREATE TABLE genre
(
        Genrename VARCHAR2(10),
        CONSTRAINT genre_Genrename_pk PRIMARY KEY (Genrename));


CREATE TABLE mgenre
(
        Mname VARCHAR2(60),
        Genrename VARCHAR2(10),
        CONSTRAINT mgenre_Mname_Genrename_pk PRIMARY KEY (Mname, Genrename));


CREATE TABLE tvshow
(
        Tvname VARCHAR2(60),
        Showbudget NUMBER(30),
        Tvrating VARCHAR2(4),
        Tvimdb NUMBER(2), 
        Tvdate DATE,
        Tvdescription VARCHAR2(200),
        CONSTRAINT tvshow_Tvname_pk PRIMARY KEY (Tvname));


CREATE TABLE tvlang
(
        Tvname VARCHAR2(60),
        Tvslang VARCHAR2(40),
        CONSTRAINT tvlang_Tvname_Tvslang_pk PRIMARY KEY (Tvname, Tvslang));


CREATE TABLE tvshowc
(
        Tvname VARCHAR2(60),
        Tvc VARCHAR2(30),
        CONSTRAINT tvshowc_Tvname_Tvc_pk PRIMARY KEY (Tvname,Tvc));


CREATE TABLE tvprodcomp
(
        Tvname VARCHAR2(60),
        Tvprodc VARCHAR2(30),
        CONSTRAINT tvprodcomp_Tvname_Tvprodc_pk PRIMARY KEY (Tvname,Tvprodc));


CREATE TABLE tvgenre
(
        Tvname VARCHAR2(60),
        Genrename VARCHAR2(20),
        CONSTRAINT tvgenre_Tvname_Genrename_pk PRIMARY KEY(Tvname,Genrename));


CREATE TABLE episode
(
        Showname VARCHAR2(60),
        Epname VARCHAR2(45),
        Imdb_ep NUMBER(3),
        Eplength NUMBER(4),
        Epdescription VARCHAR2(200),
        Eprelease DATE,
        CONSTRAINT episode_Showname_Epname_pk PRIMARY KEY (Showname,Epname));


CREATE TABLE actor
(
        Actorfname VARCHAR2(20),
        Actorlname VARCHAR2(20),
        Biography VARCHAR2(600),
        Nickname VARCHAR2(20),
        Dob DATE,
        CONSTRAINT actor_Actorlname_pk PRIMARY KEY (Actorlname));
        
CREATE TABLE actoraw
(
        Afname VARCHAR2(20),
        Alname VARCHAR2(20),
        Aname VARCHAR2(20),
        CONSTRAINT actoraw_Afname_Alname_Aname_pk PRIMARY KEY (Afname, Alname, Aname));


CREATE TABLE actoran
(
        Afn VARCHAR2(20),
        Aln VARCHAR2(20),
        Aawardn VARCHAR2(20),
        CONSTRAINT actoran_Afn_Aln_Aawardn_pk PRIMARY KEY(Afn, Aln, Aawardn));


CREATE TABLE afilm
(
        Afname VARCHAR2(20),
        Alname VARCHAR2(20),
        Afilmo VARCHAR2(600),
        CONSTRAINT afilm_Afname_Alname_Afilmo_pk PRIMARY KEY(Afname,Alname,Afilmo));


CREATE TABLE actedinm
(
Afn VARCHAR2(20),
Aln VARCHAR2(20),        
Mvname VARCHAR2(60),
CONSTRAINT actedinm_Afn_Aln_Mvname_pk PRIMARY KEY(Afn,Aln,Mvname));


CREATE TABLE actedintv
(
        Afn VARCHAR2(20),
Aln VARCHAR2(20),
Tname VARCHAR2(60),
CONSTRAINT actedintv_Afn_Aln_Tname_pk PRIMARY KEY(Afn,Aln,Tname));


CREATE TABLE director
(
        Dfn VARCHAR2(30),
        Dln VARCHAR2(30),
        Dirbio VARCHAR2(600),
        Dirdob DATE,
        CONSTRAINT director_Dln_pk PRIMARY KEY (Dln));
        
CREATE TABLE dawnom
(
Dfn VARCHAR2(20),
        Dln VARCHAR2(20),
        Diran VARCHAR2(30),
        CONSTRAINT dawnom_Dfn_Dln_Diran_pk PRIMARY KEY (Dfn, Dln, Diran));


CREATE TABLE dawwon
(
        Dfname VARCHAR2(20),
        Dlname VARCHAR2(20),
        Diraw VARCHAR2(30),
        CONSTRAINT dawwon_Dfname_Dlname_Diraw_pk PRIMARY KEY (Dfname,  Dlname, Diraw));


CREATE TABLE dfilm
(
        Dfn VARCHAR2(20),
        Dln VARCHAR2(20),
        D_filmo VARCHAR2(600),
        CONSTRAINT dfilm_Dfn_Dln_D_filmo_pk PRIMARY KEY(Dfn, Dln, D_filmo));


CREATE TABLE dir_m
(
        Dfname VARCHAR2(20),
        Dlname VARCHAR2(20),
        Mvname VARCHAR2(60),
        CONSTRAINT dir_m_Dfname_Dlname_Mvname_pk PRIMARY KEY(Dfname, Dlname, Mvname));


CREATE TABLE dir_tv
(
        Dfname VARCHAR2(20),
        Dlname VARCHAR2(20),
        Tname VARCHAR2(60),
        CONSTRAINT dir_tv_Dfname_Dlname_Tname_pk PRIMARY KEY(Dfname, Dlname, Tname));
        


ALTER TABLE mcountry
ADD CONSTRAINT mcountry_Mname_fk FOREIGN KEY(Mname)
REFERENCES movi(Mname);
        
ALTER TABLE mprodcomp
ADD CONSTRAINT mprodcomp_Mname_fk FOREIGN KEY(Mname)
REFERENCES movi(Mname);


ALTER TABLE mlanguage
ADD CONSTRAINT mlanguage_Mname_fk FOREIGN KEY(Mname)
REFERENCES movi(Mname);


ALTER TABLE mgenre
ADD CONSTRAINT mgenre_Mname_fk FOREIGN KEY(Mname)
REFERENCES movi(Mname);


ALTER TABLE mgenre
ADD CONSTRAINT mgenre_Genrename_fk FOREIGN KEY(Genrename)
REFERENCES genre(Genrename);


ALTER TABLE tvgenre
ADD CONSTRAINT  tvgenre_Genrename_fk FOREIGN KEY(Genrename)
REFERENCES genre(genrename);


ALTER TABLE tvlang
ADD CONSTRAINT tvlanguage_Tvname_fk FOREIGN KEY(Tvname)
REFERENCES tvshow(Tvname);


ALTER TABLE tvshowc
ADD CONSTRAINT tvshowc_tvname_fk FOREIGN KEY(Tvname)
REFERENCES tvshow(Tvname);


ALTER TABLE tvprodcomp
ADD CONSTRAINT tvprodcomp_Tvname_fk FOREIGN KEY(Tvname)
REFERENCES tvshow(Tvname);


ALTER TABLE tvgenre
ADD CONSTRAINT tvgenre_Tvname_fk FOREIGN KEY(Tvname)
REFERENCES tvshow(Tvname);


ALTER TABLE episode
ADD CONSTRAINT episode_Showname_fk FOREIGN KEY(Showname)
REFERENCES tvshow(Tvname);


ALTER TABLE actedinm
ADD CONSTRAINT actedinm_Mvname_fk FOREIGN KEY(Mvname)
REFERENCES movi(Mname);


ALTER TABLE actedintv
ADD CONSTRAINT actedintv_Tname_fk FOREIGN KEY(Tname)
REFERENCES tvshow(Tvname);


ALTER TABLE dir_m
ADD CONSTRAINT directs_mo_Mvname_fk FOREIGN KEY(Mvname)
REFERENCES movi(Mname);


ALTER TABLE dir_tv
ADD CONSTRAINT dir_tv_Tname_fk FOREIGN KEY(Tname)
REFERENCES tvshow(Tvname);




ALTER TABLE actoraw
ADD CONSTRAINT actoraw_Alname_fk FOREIGN KEY(Alname)
REFERENCES actor(Actorlname);


ALTER TABLE actoran
ADD CONSTRAINT actoran_Aln_fk FOREIGN KEY(Aln)
REFERENCES actor(Actorlname);


ALTER TABLE afilm
ADD CONSTRAINT afilm_Alname_fk FOREIGN KEY(Alname)
REFERENCES actor(Actorlname);


ALTER TABLE actedinm
ADD CONSTRAINT actedinm_Aln_fk FOREIGN KEY(Aln)
REFERENCES actor(Actorlname);

 
ALTER TABLE actedintv
ADD CONSTRAINT actedintv_Aln_fk FOREIGN KEY(Aln)
REFERENCES actor(Actorlname);


ALTER TABLE dawwon
ADD CONSTRAINT dawwon_Dln_fk FOREIGN KEY(Dlname)
REFERENCES director(Dln);


ALTER TABLE dawnom
ADD CONSTRAINT dawnom_Dln_fk FOREIGN KEY(Dln)
REFERENCES director(Dln);


ALTER TABLE dfilm
ADD CONSTRAINT dfilm_Dln_fk FOREIGN KEY(Dln)
REFERENCES director(Dln);


ALTER TABLE dir_m
ADD CONSTRAINT directs_movie_Dlname_fk FOREIGN KEY(Dlname)
REFERENCES director(Dln);

 
ALTER TABLE dir_tv
ADD CONSTRAINT directs_tv_Dlname_fk FOREIGN KEY(Dlname)
REFERENCES director(Dln);

