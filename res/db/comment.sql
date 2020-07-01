CREATE TABLE "pool" (
"PoolID"  TEXT(32) NOT NULL,
"AnimeTitle"  TEXT,
"Title"  TEXT,
PRIMARY KEY ("PoolID") ON CONFLICT REPLACE
);
CREATE UNIQUE INDEX "PoolID"
ON "pool" ("PoolID" ASC);

CREATE TABLE "danmu_0" (
"PoolID"  TEXT(32) NOT NULL,
"Time"  INTEGER,
"Date"  INTEGER,
"Color"  INTEGER,
"Mode"  INTEGER,
"Size"  INTEGER,
"Source"  INTEGER,
"User"  TEXT,
"Text"  TEXT,
CONSTRAINT "PoolID" FOREIGN KEY ("PoolID") REFERENCES "pool" ("PoolID") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX "PoolID_0"
ON "danmu_0" ("PoolID" ASC, "Source" ASC);

CREATE TABLE "danmu_1" (
"PoolID"  TEXT(32) NOT NULL,
"Time"  INTEGER,
"Date"  INTEGER,
"Color"  INTEGER,
"Mode"  INTEGER,
"Size"  INTEGER,
"Source"  INTEGER,
"User"  TEXT,
"Text"  TEXT,
CONSTRAINT "PoolID" FOREIGN KEY ("PoolID") REFERENCES "pool" ("PoolID") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX "PoolID_1"
ON "danmu_1" ("PoolID" ASC, "Source" ASC);

CREATE TABLE "danmu_2" (
"PoolID"  TEXT(32) NOT NULL,
"Time"  INTEGER,
"Date"  INTEGER,
"Color"  INTEGER,
"Mode"  INTEGER,
"Size"  INTEGER,
"Source"  INTEGER,
"User"  TEXT,
"Text"  TEXT,
CONSTRAINT "PoolID" FOREIGN KEY ("PoolID") REFERENCES "pool" ("PoolID") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX "PoolID_2"
ON "danmu_2" ("PoolID" ASC, "Source" ASC);

CREATE TABLE "danmu_3" (
"PoolID"  TEXT(32) NOT NULL,
"Time"  INTEGER,
"Date"  INTEGER,
"Color"  INTEGER,
"Mode"  INTEGER,
"Size"  INTEGER,
"Source"  INTEGER,
"User"  TEXT,
"Text"  TEXT,
CONSTRAINT "PoolID" FOREIGN KEY ("PoolID") REFERENCES "pool" ("PoolID") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX "PoolID_3"
ON "danmu_3" ("PoolID" ASC, "Source" ASC);

CREATE TABLE "danmu_4" (
"PoolID"  TEXT(32) NOT NULL,
"Time"  INTEGER,
"Date"  INTEGER,
"Color"  INTEGER,
"Mode"  INTEGER,
"Size"  INTEGER,
"Source"  INTEGER,
"User"  TEXT,
"Text"  TEXT,
CONSTRAINT "PoolID" FOREIGN KEY ("PoolID") REFERENCES "pool" ("PoolID") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX "PoolID_4"
ON "danmu_4" ("PoolID" ASC, "Source" ASC);

CREATE TABLE "source" (
"PoolID"  TEXT(32),
"ID"  INTEGER,
"Name"  TEXT,
"Delay"  INTEGER,
"URL"  TEXT,
"TimeLine"  TEXT,
CONSTRAINT "PoolID" FOREIGN KEY ("PoolID") REFERENCES "pool" ("PoolID") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX "PoolID_S"
ON "source" ("PoolID" ASC);

CREATE TABLE "match" (
"MD5"  TEXT NOT NULL ON CONFLICT REPLACE,
"PoolID"  TEXT(32) NOT NULL ON CONFLICT IGNORE,
PRIMARY KEY ("MD5" ASC),
CONSTRAINT "PoolID" FOREIGN KEY ("PoolID") REFERENCES "pool" ("PoolID") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX "Match_MD5"
ON "match" ("MD5" ASC);
