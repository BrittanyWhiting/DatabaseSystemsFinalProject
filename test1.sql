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

INSERT INTO movi
VALUES ('The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'R','10-MAR-95',25000000,142);

INSERT INTO movi
VALUES ('The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.','R','24-MAR-72',6000000,175);

INSERT INTO movi
VALUES ('The Dark Knight','When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.','PG-12','16-JUL-08',185000000,152);

INSERT INTO movi
VALUES ('12 Angry Men','A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.','Not Rated','10-APR-57',350000,96);

INSERT INTO movi
VALUES('Schindler's List','In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.','R-15','04-FEB-94',22000000,195);

INSERT INTO movi
VALUES('Pulp Fiction','The lives of two mob hitmen, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.','R-18','09-DEC-94',8000000,154);

INSERT INTO movi
VALUES('Fight Club','An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.','R-18','11-NOV-99',63000000,139);

INSERT INTO movi
VALUES('Forrest Gump','The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.','PG-13','15-OCT-94',55000000,142);

INSERT INTO movi
VALUES('Inception','A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.','PG-12','16-JUL-10',160000000,148);

INSERT INTO movi
VALUES('The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.','R','04-JUN-99',63000000,136);

INSERT INTO genre
VALUES('Action');

INSERT INTO genre
VALUES('Drama');

INSERT INTO genre
VALUES('Crime');

INSERT INTO genre
VALUES('Biography');

INSERT INTO genre
VALUES('History');

INSERT INTO genre
VALUES('Romance');

INSERT INTO genre
VALUES('Adventure');

INSERT INTO genre
VALUES('Sci-Fi');

INSERT INTO genre
VALUES('Mystery');

INSERT INTO genre
VALUES('Thriller');

INSERT INTO genre
VALUES('Family');

INSERT INTO genre
VALUES('Fantasy');

INSERT INTO genre
VALUES('Comedy');

INSERT INTO genre
VALUES('Animation');

INSERT INTO genre
VALUES('War');

INSERT INTO genre
VALUES('Horror');

INSERT INTO genre
VALUES('Western');

INSERT INTO genre
VALUES('Music');

INSERT INTO genre
VALUES('Film-Noir');

INSERT INTO genre
VALUES('Musical');

INSERT INTO mgenre
VALUES('The Shawshank Redemption','Drama');

INSERT INTO mgenre
VALUES('The Godfather','Crime');

INSERT INTO mgenre
VALUES('The Dark Knight','Action');

INSERT INTO mgenre
VALUES('12 Angry Men','Drama');

INSERT INTO mgenre
VALUES('Schindler's List','Biography');

INSERT INTO mgenre
VALUES('Pulp Fiction','Crime');

INSERT INTO mgenre
VALUES('Fight Club','Drama');

INSERT INTO mgenre
VALUES('Forrest Gump','Romance');

INSERT INTO mgenre
VALUES('Inception','Adventure');

INSERT INTO mgenre
VALUES('The Matrix','Sci-Fi');

INSERT INTO mcountry
VALUES('The Shawshank Redemption','USA');

INSERT INTO mcountry
VALUES('The Godfather','USA');

INSERT INTO mcountry
VALUES('The Dark Knight','UK');

INSERT INTO mcountry
VALUES('12 Angry Men','USA');

INSERT INTO mcountry
VALUES('Schindler's List','USA');

INSERT INTO mcountry
VALUES('Pulp Fiction','USA');

INSERT INTO mcountry
VALUES('Fight Club','Germany');

INSERT INTO mcountry
VALUES('Forrest Gump','USA');

INSERT INTO mcountry
VALUES('Inception','UK');

INSERT INTO mcountry
VALUES('The Matrix','USA');

INSERT INTO mprodcomp
VALUES('The Shawshank Redemption','Castle Rock Entertainment');

INSERT INTO mprodcomp
VALUES('The Godfather',' Paramount Pictures');

INSERT INTO mprodcomp
VALUES('The Dark Knight','Legendary Entertainment');

INSERT INTO mprodcomp
VALUES('12 Angry Men','Orion-Nova Productions');

INSERT INTO mprodcomp
VALUES('Schindler's List','Universal Pictures');

INSERT INTO mprodcomp
VALUES('Pulp Fiction','Jersey Films');

INSERT INTO mprodcomp
VALUES('Fight Club','Linson Films');

INSERT INTO mprodcomp
VALUES('Forrest Gump',' Paramount Pictures');

INSERT INTO mprodcomp
VALUES('Inception','Warner Bros.');

INSERT INTO mprodcomp
VALUES('The Matrix','Village Roadshow Pictures');

INSERT INTO mlanguage
VALUES('The Shawshank Redemption','English');

INSERT INTO mlanguage
VALUES('The Godfather','Italian');

INSERT INTO mlanguage
VALUES('The Dark Knight','English');

INSERT INTO mlanguage
VALUES('12 Angry Men','English');

INSERT INTO mlanguage
VALUES('Schindler's List','Hebrew');

INSERT INTO mlanguage
VALUES('Pulp Fiction','Spanish');

INSERT INTO mlanguage
VALUES('Fight Club','English');

INSERT INTO mlanguage
VALUES('Forrest Gump','English');

INSERT INTO mlanguage
VALUES('Inception','French');

INSERT INTO mlanguage
VALUES('The Matrix','English');

INSERT INTO tvshow
VALUES ('Game of Thrones', 'TV-MA', 9.5, '17-APR-11', 'Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.');

INSERT INTO tvshow
VALUES ('Chilling Adventures of Sabrina', 'TV-14', 7.8, '5-OCT-18', 'As her 16th birthday nears, Sabrina must choose between the witch world of her family and the human world of her friends. Based on the Archie comic.');

INSERT INTO tvshow
VALUES ('The Walking Dead', 'TV-MA', 8.3, '31-OCT-10', 'Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.');

INSERT INTO tvshow
VALUES ('Black Summer', 'TV-MA', 6.5, '11-APR-19', 'A mother searches for her daughter after civilization collapses due to a Zombie outbreak.');

INSERT INTO tvshow
VALUES ('The Act', 'TV-MA', 8.5, '20-MAR-19', 'An anthology series that tells startling, stranger-than-fiction true crime stories, including a girl trying to escape her overprotective and abusive mother.');

INSERT INTO tvshow
VALUES ('Santa Clarita Diet', 'TV-MA', 7.9, '3-FEB-19', 'Sheila and Joel are married real estate agents in Santa Clarita, California. When Sheila dies, their lives take a dark turn.');

INSERT INTO tvshow
VALUES ('Killing Eve', 'TV-14', 8.3, '8-APR-18', 'After a series of events, the lives of a security operative and an assassin become inextricably linked.');

INSERT INTO tvshow
VALUES ('Hanna', 'TV-MA', 7.7, '29-MAR-19', 'In equal parts high-concept thriller and coming-of-age drama, HANNA follows the journey of an extraordinary young girl raised in the forest, as she evades the relentless pursuit of an off-book CIA agent and tries to unearth the truth behind who she is.');

INSERT INTO tvshow
VALUES ('The OA', 'TV-MA', 7.8, '16-DEC-16', 'Having gone missing seven years ago, the previously blind Prairie returns home, now in her twenties with her sight restored. While many believe she is a miracle, others worry that she could be dangerous.');

INSERT INTO tvshow
VALUES ('Quicksand', 'TV-MA', 7.7, '5-APR-19', 'Maja, a student in Stockholm, finds herself on trial for murder after a tragedy at her school. More doubts and suspicions arise when new revelations are made.');

INSERT INTO tvshow
VALUES ('The Twilight Zone', 'TV-MA', 6.5, '1-APR-19', 'An updated version of the classic TV series featuring various tales of science fiction, horror and mystery.');

INSERT INTO tvshow
VALUES ('Star Trek: Discovery', 'TV-14', 7.4, '19-SEP-17', 'Ten years before Kirk, Spock, and the Enterprise, the USS Discovery discovers new worlds and lifeforms as one Starfleet officer learns to understand all things alien.');

INSERT INTO tvshow
VALUES ('Orville', );

INSERT INTO tvshow
VALUES ('The Umbrella Academy', );

INSERT INTO tvshow
VALUES ('The Big Bang Theory', );


INSERT INTO tvlang
VALUES ('Game of Thrones', 'English');


INSERT INTO tvlang
VALUES ('The Walking Dead', 'English');

INSERT INTO tvlang
VALUES ('The Act', 'English');

INSERT INTO tvlang
VALUES ('Santa Clarita Diet', 'English');

INSERT INTO tvlang
VALUES ('Killing Eve', 'English');

INSERT INTO tvlang
VALUES ('Hanna', 'English');

INSERT INTO tvlang
VALUES ('The OA', 'English');

INSERT INTO tvlang
VALUES ('Killing Eve, 'English');

INSERT INTO tvlang
VALUES ('Quicksand', 'English');

INSERT INTO tvlang
VALUES ('The Twilight Zone', 'English');

INSERT INTO tvlang
VALUES ('Star Trek: Discovery', 'English');

INSERT INTO tvlang
VALUES ('The Orville', 'English');

INSERT INTO tvlang
VALUES ('The Umbrella Academy', 'English');

INSERT INTO tvlang
VALUES ('The Big Bang Theory', 'English');

INSERT INTO tvshowc
VALUES ('Game of Thrones', 'USA');

INSERT INTO tvshowc
VALUES ('Game of Thrones', 'UK');
 
INSERT INTO tvshowc
VALUES ('The Walking Dead', 'USA');
 
INSERT INTO tvshowc
VALUES ('The Act', 'USA');
 
INSERT INTO tvshowc
VALUES ('Santa Clarita Diet', 'USA');
 
INSERT INTO tvshowc
VALUES ('Killing Eve, 'USA');

INSERT INTO tvshowc
VALUES ('Killing Eve, 'Italy');

INSERT INTO tvshowc
VALUES ('Killing Eve, 'UK');
 
INSERT INTO tvshowc
VALUES ('Quicksand', 'Sweden');
 
INSERT INTO tvshowc
VALUES ('The Twilight Zone', 'USA');
 
INSERT INTO tvshowc
VALUES ('Star Trek: Discovery', 'USA');
 
INSERT INTO tvshowc
VALUES ('The Orville', 'USA');
 
INSERT INTO tvshowc
VALUES ('The Umbrella Academy', 'USA');
 
INSERT INTO tvshowc
VALUES ('The Big Bang Theory', 'USA');

INSERT INTO tvprodcomp
VALUES ('Game of Thrones', 'Home Box Office (HBO)');
 
INSERT INTO tvprodcomp
VALUES ('The Walking Dead', 'American Movie Classics (AMC');
 
INSERT INTO tvprodcomp
VALUES ('The Act', 'Eat The Cat');
 
INSERT INTO tvprodcomp
VALUES ('Santa Clarita Diet', 'Garfield Grove Productions');
 
INSERT INTO tvprodcomp
VALUES ('Hanna', 'Amazon Studios');
 
INSERT INTO tvprodcomp
VALUES ('The OA', 'Plan B Entertainment');

INSERT INTO tvprodcomp
VALUES ('The OA', 'Anonymous Content');
 
INSERT INTO tvprodcomp
VALUES ('Killing Eve, 'BBC America');

INSERT INTO tvprodcomp
VALUES ('Killing Eve, 'Sid Gentle Films');

INSERT INTO tvprodcomp
VALUES ('Killing Eve, 'Endeavor Content');
 
INSERT INTO tvprodcomp
VALUES ('Quicksand', 'FLX');
 
INSERT INTO tvprodcomp
VALUES ('The Twilight Zone', 'CBS Television Studios');

INSERT INTO tvprodcomp
VALUES ('The Twilight Zone', 'Monkeypaw Productions');
 
 
INSERT INTO tvprodcomp
VALUES ('Star Trek: Discovery', 'CBS Television Studios');

INSERT INTO tvprodcomp
VALUES ('Star Trek: Discovery', 'Living Dead Guy Productions');

INSERT INTO tvprodcomp
VALUES ('Star Trek: Discovery', 'Roddenberry Entertainment');
 
INSERT INTO tvprodcomp
VALUES ('The Orville', 'Fuzzy Door Productions');

INSERT INTO tvprodcomp
VALUES ('The Orville', '20th Century Fox Television');

 INSERT INTO tvprodcomp
VALUES ('The Umbrella Academy', 'Dark Horse Entertainment');

INSERT INTO tvprodcomp
VALUES ('The Umbrella Academy', 'Netflix');

INSERT INTO tvprodcomp
VALUES ('The Umbrella Academy', 'Universal Cable Production');
 
INSERT INTO tvprodcomp
VALUES ('The Big Bang Theory', 'Chuck Lorre Productions');
 
 INSERT INTO tvprodcomp
VALUES ('The Big Bang Theory', 'Warner Bros. Television');

INSERT INTO tvgenre
VALUES ('Game of Thrones', 'Action');

INSERT INTO tvgenre
VALUES ('Game of Thrones', 'Adventure');

INSERT INTO tvgenre
VALUES ('The Walking Dead', 'Drama');
 
INSERT INTO tvgenre
VALUES ('The Act', 'Crime');
 
INSERT INTO tvgenre
VALUES ('Santa Clarita Diet', 'Comedy');
 
INSERT INTO tvgenre
VALUES ('Hanna', 'Action');
 
INSERT INTO tvgenre
VALUES ('The OA', 'Drama');

INSERT INTO tvgenre
VALUES ('Killing Eve, 'Drama');
 
INSERT INTO tvgenre
VALUES ('Quicksand', 'Drama');
 
INSERT INTO tvgenre
VALUES ('The Twilight Zone', 'Fantasy');

INSERT INTO tvgenre
VALUES ('The Twilight Zone', 'Horror');
  
INSERT INTO tvgenre
VALUES ('Star Trek: Discovery', 'Action');

INSERT INTO tvgenre
VALUES ('Star Trek: Discovery', 'Adventure');
 
INSERT INTO tvgenre
VALUES ('The Orville', 'Adventure');

 INSERT INTO tvgenre
VALUES ('The Umbrella Academy', 'Action');
 
INSERT INTO tvgenre
VALUES ('The Big Bang Theory', 'Comedy');








INSERT INTO episode
VALUES ('Game of Thrones', 'Winterfell', 8.6, 54, 'Jon and Daenerys arrive in Winterfell and are met with skepticism. Sam learns about the fate of his family. Cersei gives Euron the reward he aims for. Theon follows his heart.', '14-APR-19').


INSERT INTO episode
VALUES ('The Walking Dead', 'Mercy', 6.9, 47, 'Rick and his group, along with the Kingdom and Hilltop, band together to bring the fight to Negan and the Saviors.', '22-OCT-17').

INSERT INTO episode
VALUES ('The Walking Dead', 'Mercy', 6.9, 47, 'Rick and his group, along with the Kingdom and Hilltop, band together to bring the fight to Negan and the Saviors.', '22-OCT-17').

INSERT INTO episode
VALUES ('KIlling Eve', 'Nice and Neat', 8.5, 42, 'Villanelle finds a Good Samaritan to take her in, while Carolyn introduces Eve to her new team.', '14-APR-19').

INSERT INTO episode
VALUES ('The OA', 'Angel of Death', 9.1, 69, 'While private eye Karim Washington scours San Francisco for a missing teen who was involved in a cryptic game, OA wakes up in unfamiliar surroundings.', '12-MAR-19').

INSERT INTO episode
VALUES ('The Big Bang Theory', 'The Conjugal Configuration', 7.2, 20, 'After their wedding, Amy and Sheldon go on their honeymoon.', '24-SEP-18').

INSERT INTO episode
VALUES ('Hannah', 'Forest', 8.0, 48, 'After their wedding, Amy and Sheldon go on their honeymoon.', '24-SEP-18').

INSERT INTO episode
VALUES ('Chilling Adventures of Sabrina', 'Chapter Twelve: The Epiphany', 8.0, 60, 'As Sabrina prepares for a spellbinding showcase, Susie embraces a series of new beginnings, and Ms. Wardwell finds greater purpose at Baxter High.', '5-APR-19').

INSERT INTO episode
VALUES ('Star Trek: Discovery', 'Brother', 7.4, 61, 'The crew of the U.S.S. Discovery joins forces with Captain Pike to unravel the mystery of seven mysterious red signals that have appeared across the universe.', '17-JAN-19').

INSERT INTO episode
VALUES ('Santa Clarita Diet', 'Wuffenloaf', 8.2, 30, 'God, why me? That's what Sheila wants to know. Meanwhile, Joel feels a smidge threatened, Anne spreads the gospel, and Abby and Eric pretend to date.', '29-MAR-19').






INSERT INTO actor
VALUES('Morgan','Freeman','With an authoritative voice and calm demeanor, this ever popular American actor has grown into one of the most respected figures in modern US cinema.','01-JUN-37');

INSERT INTO actor
VALUES('Marlon','Brando','Marlon Brando is widely considered the greatest movie actor of all time, rivaled only by the more theatrically oriented Laurence Olivier in terms of esteem.','03-APR-24');

INSERT INTO actor
VALUES('Christian', 'Bale','Christian Charles Philip Bale was born in Pembrokeshire, Wales, UK on January 30, 1974, to English parents Jennifer "Jenny" (James) and David Bale.','30-JAN-74');
INSERT INTO actor
VALUES('Martin','Balsam','Martin Henry Balsam was born on November 4, 1919 in the Bronx, New York City, to Lillian (Weinstein) and Albert Balsam, a manufacturer of women's sportswear.','04-NOV-19');

INSERT INTO actor
VALUES('Liam', 'Neeson','Liam Neeson was born on June 7, 1952 in Ballymena, Northern Ireland, to Katherine (Brown), a cook, and Bernard Neeson, a school caretaker.','07-JUN-52');

INSERT INTO actor
VALUES('Tim','Roth','Often mistaken for an American because of his skill at imitating accents, actor Tim Roth was born Timothy Simon Roth on May 14, 1961 in Lambeth, London, England.','14-MAY-61');

INSERT INTO actor
VALUES('Edward','Norton','American actor, filmmaker and activist Edward Harrison Norton was born on August 18, 1969, in Boston, Massachusetts, and was raised in Columbia, Maryland.','18-AUG-69');

INSERT INTO actor
VALUES('Tom','Hanks','Thomas Jeffrey Hanks was born in Concord, California, to Janet Marylyn (Frager), a hospital worker, and Amos Mefford Hanks, an itinerant cook.','09-JUL-56');

INSERT INTO actor
VALUES('Leonardo','DiCaprio','DiCaprio has gone from relatively humble beginnings, as a supporting cast member of the sitcom Growing Pains (1985) and low budget horror movies, such as Critters 3 (1991), to a major teenage heartthrob in the 1990s, as the hunky lead actor in movies such as Romeo + Juliet (1996) and Titanic (1997), to then become a leading man in Hollywood blockbusters, made by internationally renowned directors such as Martin Scorsese and Christopher Nolan.','11-NOV-74');

INSERT INTO actor
VALUES('Keanu','Reeves','Keanu Charles Reeves, whose first name means cool breeze over the mountains in Hawaiian, was born September 2, 1964 in Beirut, Lebanon. He is the son of Patricia Taylor, a showgirl and costume designer, and Samuel Nowlin Reeves, a geologist.','02-SEP-64');

INSERT INTO actor
VALUES('Peter','Dinklage','Peter Dinklage is an American actor. Since his breakout role in The Station Agent (2003), he has appeared in numerous films and theatre plays.','11-JUN-69');

INSERT INTO actor
VALUES('Kiernan','Shipka','Kiernan Brennan Shipka is an American actress. She is known for playing Sally Draper on the AMC series Mad Men (2007), B. D. Hyman in the FX anthology series Feud (2017), and voicing Jinora in the Avatar: The Last Airbender (2003) spin-off, The Legend of Korra (2012).','10-NOV-99');

INSERT INTO actor
VALUES('Norman','Reedus','Norman Reedus was born in Hollywood, Florida, to Marianne and Norman Reedus. He is of Italian (from his paternal grandmother), English, Scottish, and Irish descent.','06-JAN-69');

INSERT INTO actor
VALUES('Jaime','King','Jaime King was born on April 23, 1979 in Omaha, Nebraska, USA. She is an actress and producer, known for My Bloody Valentine (2009), Sin City (2005) and White Chicks (2004).','23-APR-79');

INSERT INTO actor
VALUES('Joey','King','Joey King started acting professionally when she was four years old. A national spot for Life Cereal was Joey's first commercial.','30-JUL-99');

INSERT INTO actor
VALUES('Drew','Barrymore','Since melting audiences' hearts - at the age of six - in Steven Spielberg's beloved sci-fi blockbuster, E.T. the Extra-Terrestrial (1982), Drew Barrymore has emerged as one of the most endearing and talented actresses of her generation.','22-FEB-75');

INSERT INTO actor
VALUES('Sandra','Oh','Sandra Oh was born to Korean parents in the Ottawa suburb of Nepean, Ontario, Canada. Her father, Oh Junsu, a businessman, and her mother, Oh Young-Nam, a biochemist, were married in Seoul, Korea.','20-JUL-71');

INSERT INTO actor
VALUES('Mireille','Enos','Mireille Enos was born in Houston, Texas, to Monique, a teacher, and Jon Goree Enos. Her Texas-born American father, and French mother, met while her father was serving on a Mission for the Church of Jesus Christ of Latter Day Saints.', '22-SEP-75');

INSERT INTO actor
VALUES('Brit','Marling','Brit Heyworth Marling was born in Chicago, Illinois, to Heidi (Johnson) and John Marling, both of whom work in real estate.','07-AUG-82');

INSERT INTO actor
VALUES('David','Dencik','David Dencik was born on October 31, 1974 in Sweden as Karl David Sebastian Dencik. He is an actor, known for McMafia (2018), Top of the Lake (2013) and Tinker Tailor Soldier Spy(2011).','31-OCT-74');

INSERT INTO actedinm
VALUES('Morgan','Freeman','The Shawshank Redemption');

INSERT INTO actedinm
VALUES('Marlon','Brando','The Godfather');
INSERT INTO actedinm
VALUES('Christian','Bale','The Dark Knight');

INSERT INTO actedinm
VALUES('Martin','Balsam','12 Angry Men');

INSERT INTO actedinm
VALUES('Liam','Neeson','Schindler's List');

INSERT INTO actedinm
VALUES('Tim','Roth','Pulp Fiction';

INSERT INTO actedinm
VALUES('Edward','Norton','Fight Club');

INSERT INTO actedinm
VALUES('Tom','Hanks','Forrest Gump');

INSERT INTO actedinm
VALUES('Leonardo','DiCaprio','Inception');

INSERT INTO actedinm
VALUES('Keanu','Reeves','The Matrix');




























INSERT INTO actedintv
VALUES('Peter','Dinklage','Game of Thrones');

INSERT INTO actedintv
VALUES('Kiernan','Shipka','Chilling Adventures of Sabrina');

INSERT INTO actedintv
VALUES('Norman','Reedus','The Walking Dead');

INSERT INTO actedintv
VALUES('Jaime','King','Black Summer');

INSERT INTO actedintv
VALUES('Joey','King','The Act');

INSERT INTO actedintv
VALUES('Drew','Barrymore','Santa Clarita Diet');

INSERT INTO actedintv
VALUES('Sandra','Oh','Killing Eve');

INSERT INTO actedintv
VALUES('Mireille','Enos''Hanna');

INSERT INTO actedintv
VALUES('Brit','Marling', The OA');

INSERT INTO actedintv
VALUES('David','Dencik','Quicksand');


INSERT INTO director
VALUES('Frank', 'Darabont','Three-time Oscar nominee Frank Darabont was born in a refugee camp in 1959 in Montbeliard, France, the son of Hungarian parents who had fled Budapest during the failed 1956 Hungarian revolution.','28-JAN-59');

INSERT INTO director
VALUES('Francis','Coppola','Francis Ford Coppola was born in 1939 in Detroit, Michigan, but grew up in a New York suburb in a creative, supportive Italian-American family.','7-APR-39');


INSERT INTO director
VALUES('Christopher','Nolan','Best known for his cerebral, often nonlinear, storytelling, acclaimed writer-director Christopher Nolan was born on July 30, 1970 in London, England.','30-JUL-1970'); 

INSERT INTO director
VALUES('Sidney','Lumet',Sidney Lumet was a master of cinema, best known for his technical knowledge and his skill at getting first-rate performances from his actors.','25-JUN-24');

INSERT INTO director
VALUES('Steven','Spielberg','One of the most influential personalities in the history of cinema, Steven Spielberg is Hollywood's best known director and one of the wealthiest filmmakers in the world.','18-DEC-46');

INSERT INTO director
VALUES('Quentin','Tarantino',Quentin Jerome Tarantino was born in Knoxville, Tennessee. His father, Tony Tarantino, is an Italian-American actor and musician from New York.','27-MAR-63');


INSERT INTO director
VALUES('David','Fincher','David Fincher was born in 1962 in Denver, Colorado, and was raised in Marin County, California. When he was 18 years old he went to work for John Korty at Korty Films in Mill Valley.','28-AUG-62');

INSERT INTO director
VALUES('Robert','Zemeckis','A whiz-kid with special effects, Robert is from the Spielberg camp of film-making (Steven Spielberg produced many of his films).','14-MAY-51');

INSERT INTO director
VALUES('Christopher','Nolan','Best known for his cerebral, often nonlinear, storytelling, acclaimed writer-director Christopher Nolan was born on July 30, 1970 in London, England.','30-JUL-1970'); 

INSERT INTO director
VALUES('Lana','Wachowski','Lana Wachowski and her sister Lilly Wachowski, (also known as 'The Wachowskis') are the duo behind ground-breaking movies such as The Matrix (1999) and Cloud Atlas (2012).','21-JUN-65');

INSERT INTO director
VALUES('David','Benioff','David Benioff was born on September 25, 1970 in New York City, New York, USA as David Friedman. He is a writer and producer, known for Game of Thrones, and The Kite Runner','25-SEP-1970');

INSERT INTO director
VALUES('Roberto','Aguirre-Sacasa','Roberto Aguirre-Sacasa is a producer and writer, known for Chilling Adventures of Sabrina(2018), Carrie (2013) and Riverdale (2016).','15-NOV-1973');

INSERT INTO director
VALUES('Frank','Darabont','Three-time Oscar nominee Frank Darabont was born in a refugee camp in 1959 in Montbeliard, France, the son of Hungarian parents who had fled Budapest during the failed 1956 Hungarian revolution.','28-JAN-59');


INSERT INTO director
VALUES('John','Hyams','Beginning his career in the fine arts, John Hyams graduated from Syracuse University's School of Visual and Performing Arts, earning top awards in painting and sculpture.','19-DEC-64');

INSERT INTO director
VALUES('Nick','Antosca','Nick Antosca is a writer and producer, known for The Act(2019), Channel Zero (2016) and Hannibal (2013).','23-JAN-1983');

INSERT INTO director
VALUES('Victor','Fresco','Victor Fresco is a television writer, producer and show creator.','9-JAN-58');

INSERT INTO director
VALUES('Phoebe','Waller-Bridge','Phoebe Waller-Bridge was born on July 14, 1985 in London, England as Phoebe Mary Waller-Bridge. She is an actress and producer, known for Solo: A Star Wars Story (2018), Fleabag(2016) and Killing Eve (2018).','14-JUL-85');

INSERT INTO director
VALUES('David','Farr','David Farr was born in 1969 in Guildford, Surrey, England. He is a writer and producer, known for The Night Manager (2016), Hanna (2011) and Hanna (2019).','29-OCT-69');

INSERT INTO director
VALUES('Zal','Batmanglij','Zal Batmanglij is a writer and director, known for The OA(2016), The East (2013) and Sound of My Voice (2011).','7-APR-1980');

INSERT INTO director
VALUES('Simon','Kinberg','Simon Kinberg was born on August 2, 1973 in London, England. He is a producer and writer, known for The Martian (2015), Logan (2017) and Fantastic Four (2015).','2-AUG-73');

INSERT INTO director
VALUES('Bryan','Fuller','Self professed Star Trek geek who watched and loved the Trek series "Deep Space Nine" and set out to write for them.','27-JUL-69');













INSERT INTO dir_m
VALUES('Frank', 'Darabont','The Shawshank Redemption');

INSERT INTO dir_m
VALUES('Francis','Coppola','The Godfather');

INSERT INTO dir_m
VALUES('Christopher','Nolan','The Dark Knight');

INSERT INTO dir_m
VALUES(('Steven','Spielberg','Schindler's List');

INSERT INTO dir_m
VALUES('Sidney','Lumet','12 Angry Men');

INSERT INTO dir_m
VALUES(('Quentin','Tarantino','Pulp Fiction');

INSERT INTO dir_m
VALUES('David','Fincher','Fight Club');

INSERT INTO dir_m
VALUES('Robert','Zemeckis','Forrest Gump');

INSERT INTO dir_m
VALUES('Lana','Wachowski','The Matrix');

INSERT INTO dir_m
VALUES('Christopher','Nolan','Inception');

INSERT INTO dir_m
VALUES('Lana','Wachowski','The Matrix');


INSERT INTO dir_tv
VALUES('David','Benioff','Game of Thrones');

INSERT INTO dir_tv
VALUES('Roberto','Aguirre-Sacasa','Chilling Adventures of Sabrina');


INSERT INTO dir_tv
VALUES('Frank','Darabont','The Walking Dead');


INSERT INTO dir_tv
VALUES('John','Hyams','Black Summer');


INSERT INTO dir_tv
VALUES('Nick','Antosca','The Act');


INSERT INTO dir_tv
VALUES('Victor','Fresco','Santa Clarita Diet');


INSERT INTO dir_tv
VALUES('Phoebe','Waller-Bridge','Killing Eve');


INSERT INTO dir_tv
VALUES('David','Farr','Hanna');


INSERT INTO dir_tv
VALUES('Zal','Batmanglij','The OA');


INSERT INTO dir_tv
VALUES(Simon','Kinberg','The Twilight Zone');


INSERT INTO dir_tv
VALUES('Bryan','Fuller','Star Trek: The Discovery');







INSERT INTO actoraw
VALUES('Morgan','Freeman','Oscar');

INSERT INTO actoraw
VALUES('Marlon','Brando','Oscar');

INSERT INTO actoraw
VALUES('Christian', 'Bale','Oscar');

INSERT INTO actoraw
VALUES('Martin','Balsam','Oscar');


INSERT INTO actoraw
VALUES('Liam', 'Neeson','AARP Movies for Grownups Awards');

INSERT INTO actoraw
VALUES('Tim','Roth','BAFTA Awards');

INSERT INTO actoraw
VALUES('Edward','Norton','Golden Globe');

INSERT INTO actoraw
VALUES('Tom','Hanks','Oscar');

INSERT INTO actoraw
VALUES('Leonardo','DiCaprio','Oscar');


INSERT INTO actoraw
VALUES('Keanu','Reeves','Blockbuster Entertainment Awards');

INSERT INTO actoraw
VALUES('Peter','Dinklage','Golden Globe');


INSERT INTO actoraw
VALUES('Kiernan','Shipka','BTVA People's Choice Voice Acting Award');


INSERT INTO actoraw
VALUES('Jaime','King','Young Hollywood Award');


INSERT INTO actoraw
VALUES('Norman','Reedus','IGN's People Choice Award');



INSERT INTO actoraw
VALUES('Joey','King','BTVA Voice Acting Award');

INSERT INTO actoraw
VALUES('Drew','Barrymore','Golden Globe');

INSERT INTO actoraw
VALUES('Sandra','Oh','Golden Globe');

INSERT INTO actoraw
VALUES('Brit','Marling','SDFCS Award');

INSERT INTO actoraw
VALUES('David','Dencik','Grand Prix Art Film Award');


INSERT INTO dawwon
VALUES('Frank', 'Darabont','Awards Circuit Community Awards');

INSERT INTO dawwon
VALUES('Francis','Coppola','Oscar');

INSERT INTO dawwon
VALUES('Christopher','Nolan','AATCA International Award');

INSERT INTO dawwon
VALUES('Sidney','Lumet','Golden Berlin Bear');

INSERT INTO dawwon
VALUES('Steven','Spielberg','Oscar');

INSERT INTO dawwon
VALUES('Quentin','Tarantino','Oscar');

INSERT INTO dawwon
VALUES('David','Fincher','Golden Globe');

INSERT INTO dawwon
VALUES('Robert','Zemeckis','Oscar');

INSERT INTO dawwon
VALUES('Lana','Wachowski','International Fantasy Film Award');

INSERT INTO dawwon
VALUES('David','Benioff','Primetime Emmy');

INSERT INTO dawwon
VALUES('Frank','Darabont','Awards Circuit Community Awards');

INSERT INTO dawwon
VALUES('John','Hyams','Monmouth Film Festival Jury Award);

INSERT INTO dawwon
VALUES('Phoebe','Waller-Bridge','BAFTA TV Award');

INSERT INTO dawwon
VALUES('David','Farr','British Screenwriters' Award');

INSERT INTO dawwon
VALUES('Zal','Batmanglij','Traverse City Film Festival Founders Award');

INSERT INTO dawwon
VALUES('Simon','Kinberg','George Pal Memorial Award');

INSERT INTO dawwon
VALUES('Bryan','Fuller','Academy of Science Fiction, Fantasy and Horror Films Award');


INSERT INTO dawnom
VALUES('Frank', 'Darabont','Oscar');

INSERT INTO dawnom
VALUES('Francis','Coppola','Golden Globe');

INSERT INTO dawnom
VALUES('Christopher','Nolan','Oscar');

INSERT INTO dawnom
VALUES('Sidney','Lumet','Oscar');

INSERT INTO dawnom
VALUES('Steven','Spielberg','Golden Globe');

INSERT INTO dawnom
VALUES('Quentin','Tarantino','Golden Globe');

INSERT INTO dawnom
VALUES('David','Fincher','Oscar');

INSERT INTO dawnom
VALUES('Robert','Zemeckis','Golden Globe');

INSERT INTO dawnom
VALUES('Lana','Wachowski','Academy of Science Fiction, Fantasy and Horror Award');

INSERT INTO dawnom
VALUES('David','Benioff','BAFTA Award');

INSERT INTO actoran
VALUES('Morgan','Freeman',Golden Globes');

INSERT INTO actoran
VALUES('Marlon','Brando','Golden Globes');

INSERT INTO actoran
VALUES('Christian', 'Bale','Golden Globes');

INSERT INTO actoran
VALUES('Martin','Balsam','Primetime Emmy Award');


INSERT INTO actoran
VALUES('Liam', 'Neeson','Oscar');

INSERT INTO actoran
VALUES('Tim','Roth','Oscar');

INSERT INTO actoran
VALUES('Edward','Norton','Oscar');

INSERT INTO actoran
VALUES('Tom','Hanks',Golden Globe');

INSERT INTO actoran
VALUES('Leonardo','DiCaprio','Golden Globe');


INSERT INTO actoran
VALUES('Keanu','Reeves','Kids' Choice Award');

INSERT INTO actoran
VALUES('Peter','Dinklage','Primetime Emmy Award');


INSERT INTO afilm
VALUES('Morgan','Freeman','Invictus, Se7en, Driving Miss Daisy, Million Dollar Baby');

INSERT INTO afilm
VALUES('Marlon','Brando','Apocalypse Now, The Godfather, Last Tango in Paris, On the Waterfront');

INSERT INTO afilm
VALUES('Christian', 'Bale','The Dark Knight, Batman Begins, American Hustle, Vice');


INSERT INTO afilm
VALUES('Martin','Balsam','All the President's Men, 12 Angry Men, A Thousand Clowns, Psycho');

INSERT INTO afilm
VALUES('Liam', 'Neeson','Kinsey, Schindler's List, The Grey, The A-Team');

INSERT INTO afilm
VALUES('Tim','Roth','Rob Roy, The Hateful Eight, Pulp Fiction, Planet of the Apes');

INSERT INTO afilm
VALUES('Edward','Norton','Keeping the Faith, American X, Primal Fear, Birdman');

INSERT INTO afilm
VALUES('Tom','Hanks','Castaway, Big, Saving Private Ryan, Forrest Gump');


INSERT INTO afilm
VALUES('Leonardo','DiCaprio','Inception, The Departed, Wolf Of Wall Street, Titanic');


INSERT INTO afilm
VALUES('Keanu','Reeves','The Matrix, Speed, Point Break, The Matrix Reloaded');

INSERT INTO dfilm
VALUES('Frank', 'Darabont','The Green Mile, The Walking Dead, The Shawshank Redemption, The Mist');

INSERT INTO dfilm
VALUES('Francis','Coppola','Apocalypse Now, The Conversation, The Godfather II, The Godfather');

INSERT INTO dfilm
VALUES('Christopher','Nolan','Dunkirk, The Prestige, Following, Inception');

INSERT INTO dfilm
VALUES('Sidney','Lumet','12 Angry Men, Don't Let the Devil Know You're Dead, Dog Day Afternoon, Murder on the Orient Express');

INSERT INTO dfilm
VALUES('Steven','Spielberg','Schindler's List, E.T. The Extraterrestrial, Saving Private Ryan, Indiana Jones and the Raiders of the Lost Ark');

INSERT INTO dfilm
VALUES('Quentin','Tarantino','Reservoir Dogs, Pulp Fiction, The Hateful Eight, From Dusk til Dawn');

INSERT INTO dfilm
VALUES('David','Fincher','Se7en, Gone Girl, The Social Network, Zodiac');

INSERT INTO dfilm
VALUES('Robert','Zemeckis','Back to the Future, Forrest Gump, Contact, Cast Away');

INSERT INTO dfilm
VALUES('Christopher','Nolan','Dunkirk, The Prestige, The Following, Inception');

INSERT INTO dfilm
VALUES('Lana','Wachowski','The Matrix, Bound, Cloud Atlas, Jupiter Ascending');

