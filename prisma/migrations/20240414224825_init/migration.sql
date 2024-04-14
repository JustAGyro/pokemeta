-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "password" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Team" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "teamName" TEXT,
    "teamSummary" TEXT,
    "teamOwnerId" INTEGER NOT NULL,
    CONSTRAINT "Team_teamOwnerId_fkey" FOREIGN KEY ("teamOwnerId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Pokemon" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "pokeDex" INTEGER NOT NULL,
    "name" TEXT,
    "nickName" TEXT,
    "gender" TEXT,
    "shiny" BOOLEAN NOT NULL DEFAULT false,
    "typeOne" TEXT,
    "typeTwo" TEXT,
    "teraType" TEXT,
    "item" TEXT,
    "ability" TEXT,
    "nature" TEXT,
    "moveOne" TEXT,
    "moveTwo" TEXT,
    "moveThree" TEXT,
    "moveFour" TEXT,
    "baseHp" INTEGER NOT NULL DEFAULT 1,
    "baseAtk" INTEGER NOT NULL DEFAULT 1,
    "baseDef" INTEGER NOT NULL DEFAULT 1,
    "baseSpAtk" INTEGER NOT NULL DEFAULT 1,
    "baseSpDef" INTEGER NOT NULL DEFAULT 1,
    "baseSpeed" INTEGER NOT NULL DEFAULT 1,
    "evHp" INTEGER NOT NULL DEFAULT 0,
    "evAtk" INTEGER NOT NULL DEFAULT 0,
    "evDef" INTEGER NOT NULL DEFAULT 0,
    "evSpAtk" INTEGER NOT NULL DEFAULT 0,
    "evSpDef" INTEGER NOT NULL DEFAULT 0,
    "evSpeed" INTEGER NOT NULL DEFAULT 0,
    "ivHp" INTEGER NOT NULL DEFAULT 1,
    "ivAtk" INTEGER NOT NULL DEFAULT 1,
    "ivDef" INTEGER NOT NULL DEFAULT 1,
    "ivSpAtk" INTEGER NOT NULL DEFAULT 1,
    "ivSpDef" INTEGER NOT NULL DEFAULT 1,
    "ivSpeed" INTEGER NOT NULL DEFAULT 1,
    "pokemonOwnerId" INTEGER NOT NULL,
    CONSTRAINT "Pokemon_pokemonOwnerId_fkey" FOREIGN KEY ("pokemonOwnerId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Party" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "partyTeamId" INTEGER NOT NULL,
    "partyPokemonId" INTEGER NOT NULL,
    CONSTRAINT "Party_partyTeamId_fkey" FOREIGN KEY ("partyTeamId") REFERENCES "Team" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Party_partyPokemonId_fkey" FOREIGN KEY ("partyPokemonId") REFERENCES "Pokemon" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
