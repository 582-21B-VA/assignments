CREATE TABLE Clients (
    cid   INTEGER,
    name  TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone INTEGER NOT NULL,

    PRIMARY KEY (cid)
);

CREATE TABLE Reservations (
    date   DATE,
    cid    INTEGER,
    guests INTEGER NOT NULL,

    PRIMARY KEY (date, cid),
    FOREIGN KEY (cid) REFERENCES Clients
);

CREATE TABLE ReservationsRestrictions (
    date DATE,
    cid  INTEGER,
    kind TEXT,

    PRIMARY KEY (date, cid, kind),
    FOREIGN KEY (date, cid) REFERENCES Reservations,
    FOREIGN KEY (kind) REFERENCES Restrictions
);

CREATE TABLE Restrictions (
    kind TEXT,
    description TEXT,

    PRIMARY KEY (kind)
);
