DELETE FROM Superhero;
DELETE FROM Sidekick;
DELETE FROM PowerType;
DELETE FROM Power;
DELETE FROM SuperheroPower;

DROP TABLE IF EXISTS Superhero;
DROP TABLE IF EXISTS Sidekick;
DROP TABLE IF EXISTS PowerType;
DROP TABLE IF EXISTS Power;
DROP TABLE IF EXISTS SuperheroPower;

CREATE TABLE `Superhero` (
    `SuperheroId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Name` TEXT NOT NULL,
    `Gender` TEXT NOT NULL,
    `Lair` TEXT NOT NULL,
    `CostumeColor` TEXT NOT NULL
);

CREATE TABLE `Sidekick` (
    `SidekickId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Name` TEXT NOT NULL,
    `Gender` TEXT NOT NULL,
    `Profession` TEXT NOT NULL,
    `SuperheroId` INTEGER NOT NULL,
    FOREIGN KEY(`SuperheroId`) REFERENCES `Superhero`(`SuperheroId`)
);

CREATE TABLE `PowerType` (
    `PowerTypeId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Name` TEXT NOT NULL
);

CREATE TABLE `Power` (
    `PowerId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Name` TEXT NOT NULL,
    `PowerTypeId` INTEGER NOT NULL,
    FOREIGN KEY(`PowerTypeId`) REFERENCES `PowerType`(`PowerTypeId`)
);

CREATE TABLE `SuperheroPower` (
    `SuperheroPowerId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `SuperheroId` INTEGER NOT NULL,
    `PowerId` INTEGER NOT NULL,
    FOREIGN KEY(`PowerId`) REFERENCES `Power`(`PowerId`)
    FOREIGN KEY(`SuperheroId`) REFERENCES `Superhero`(`SuperheroId`)
);