-- CreateTable
CREATE TABLE "coach" (
    "coachid" VARCHAR NOT NULL,
    "name" VARCHAR NOT NULL,
    "ex" VARCHAR,
    "nation" VARCHAR,

    CONSTRAINT "coach_pkey" PRIMARY KEY ("coachid")
);

-- CreateTable
CREATE TABLE "huanluyen" (
    "coachid_teamid" VARCHAR NOT NULL,
    "year" VARCHAR NOT NULL,
    "coachid" VARCHAR NOT NULL,
    "teamid" VARCHAR NOT NULL,

    CONSTRAINT "huanluyen_pkey" PRIMARY KEY ("coachid_teamid")
);

-- CreateTable
CREATE TABLE "league" (
    "leagueid" VARCHAR NOT NULL,
    "name" VARCHAR NOT NULL,
    "quantity" VARCHAR NOT NULL,

    CONSTRAINT "league_pkey" PRIMARY KEY ("leagueid")
);

-- CreateTable
CREATE TABLE "match" (
    "matchid" VARCHAR NOT NULL,
    "ngay" DATE,
    "win" VARCHAR,
    "teamid1" VARCHAR NOT NULL,
    "teamid2" VARCHAR NOT NULL,
    "results" VARCHAR,
    "leagueid" VARCHAR NOT NULL,
    "stadiumid" VARCHAR NOT NULL,

    CONSTRAINT "match_pkey" PRIMARY KEY ("matchid")
);

-- CreateTable
CREATE TABLE "player" (
    "playerid" VARCHAR NOT NULL,
    "name" VARCHAR,
    "position" VARCHAR,
    "weight" VARCHAR,
    "height" VARCHAR,
    "dob" DATE,
    "nation" VARCHAR,

    CONSTRAINT "player_pkey" PRIMARY KEY ("playerid")
);

-- CreateTable
CREATE TABLE "stadium" (
    "stadiumid" VARCHAR NOT NULL,
    "name" VARCHAR NOT NULL,
    "address" VARCHAR NOT NULL,

    CONSTRAINT "stadium_pkey" PRIMARY KEY ("stadiumid")
);

-- CreateTable
CREATE TABLE "team" (
    "teamid" VARCHAR NOT NULL,
    "name" VARCHAR NOT NULL,
    "city" VARCHAR,
    "country" VARCHAR,
    "dof" DATE NOT NULL,
    "stadiumid" VARCHAR,

    CONSTRAINT "team_pkey" PRIMARY KEY ("teamid")
);

-- CreateTable
CREATE TABLE "thamgia" (
    "teamid_leagueid" VARCHAR NOT NULL,
    "year" VARCHAR NOT NULL,
    "teamid" VARCHAR NOT NULL,
    "leagueid" VARCHAR NOT NULL,

    CONSTRAINT "thamgia_pkey" PRIMARY KEY ("teamid_leagueid")
);

-- CreateTable
CREATE TABLE "thidau" (
    "playerid_teamid" VARCHAR NOT NULL,
    "year" VARCHAR NOT NULL,
    "playerid" VARCHAR NOT NULL,
    "teamid" VARCHAR NOT NULL,
    "value" VARCHAR NOT NULL,

    CONSTRAINT "thidau_pkey" PRIMARY KEY ("playerid_teamid")
);

-- CreateTable
CREATE TABLE "vodich" (
    "leagueid" VARCHAR NOT NULL,
    "teamid" VARCHAR NOT NULL,
    "year" VARCHAR NOT NULL,
    "id" VARCHAR NOT NULL,

    CONSTRAINT "vodich_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "huanluyen" ADD CONSTRAINT "fk_huanluyen_coach" FOREIGN KEY ("coachid") REFERENCES "coach"("coachid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "huanluyen" ADD CONSTRAINT "fk_huanluyen_team" FOREIGN KEY ("teamid") REFERENCES "team"("teamid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "match" ADD CONSTRAINT "fk_match_league" FOREIGN KEY ("leagueid") REFERENCES "league"("leagueid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "match" ADD CONSTRAINT "fk_match_stadium" FOREIGN KEY ("stadiumid") REFERENCES "stadium"("stadiumid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "match" ADD CONSTRAINT "fk_match_team1" FOREIGN KEY ("teamid1") REFERENCES "team"("teamid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "match" ADD CONSTRAINT "fk_match_team2" FOREIGN KEY ("teamid2") REFERENCES "team"("teamid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "team" ADD CONSTRAINT "fk_team_stadium" FOREIGN KEY ("stadiumid") REFERENCES "stadium"("stadiumid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "thamgia" ADD CONSTRAINT "fk_thamgia_league" FOREIGN KEY ("leagueid") REFERENCES "league"("leagueid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "thamgia" ADD CONSTRAINT "fk_thamgia_team" FOREIGN KEY ("teamid") REFERENCES "team"("teamid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "thidau" ADD CONSTRAINT "fk_thidau_player" FOREIGN KEY ("playerid") REFERENCES "player"("playerid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "thidau" ADD CONSTRAINT "fk_thidau_team" FOREIGN KEY ("teamid") REFERENCES "team"("teamid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "vodich" ADD CONSTRAINT "fk_vodich_league" FOREIGN KEY ("leagueid") REFERENCES "league"("leagueid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "vodich" ADD CONSTRAINT "fk_vodich_team" FOREIGN KEY ("teamid") REFERENCES "team"("teamid") ON DELETE NO ACTION ON UPDATE NO ACTION;

