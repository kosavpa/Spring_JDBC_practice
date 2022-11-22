CREATE TABLE PERSON(
    ID INT NOT NULL AUTO_INCREMENT,
    FIRST_NAME VARCHAR(60) NOT NULL,
    LAST_NAME VARCHAR(40) NOT NULL,
    BIRTH_DATE DATE,
    UNIQUE UQ_PERSON_l (FIRST_NAME, LAST_NAME),
    PRIMARY KEY (ID)
);

CREATE TABLE ANIMAL(
    ID INT NOT NULL AUTO_INCREMENT,
    PERSON_ID INT NOT NULL,
    FIRST_NAME VARCHAR(60) NOT NULL,
    ANIMAL_TYPE VARCHAR(40) NOT NULL,
    UNIQUE UQ_PERSON_ANIMAL_l (PERSON_ID, FIRST_NAME),
    PRIMARY KEY (ID),
    CONSTRAINT FK_ANIMAL FOREIGN KEY (PERSON_ID) REFERENCES PERSON (ID)
);