CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "check_ins"(
    "depature" NUMERIC NOT NULL DEFAULT CURRENCT_TIMESTAMP,
    "arrival" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "flight" TEXT,
    "destination" TEXT NOT NULL,
    PRIMARY KEY ("flight")
);

CREATE TABLE "airlines"(
    "name" TEXT,
    "concourse" TEXT CHECK("concourse" IN ('A','B','C','D','E','F','T')),
    "passengers_id" INTEGER,
    FOREIGN KEY ("passengers_id") REFERENCES "passengers"("id")
);

CREATE TABLE "flights"(
    "flight" TEXT NOT NULL CHECK("flights" IN (100, 200, 300,400, 500, 600, 700, 800, 800, 900, 1000)),
    "airline" TEXT DEFAULT 1,
    "depature_code" TEXT,
    "arrival_code" TEXT,
    "depature_time" NUMERIC,
    "arrival_time" NUMERIC,
    FOREIGN KEY("depature_time") REFERENCES "check_ins"("depature"),
    FOREIGN KEY ("arrival_time") REFERENCES "check_ins"("arrival")
);
