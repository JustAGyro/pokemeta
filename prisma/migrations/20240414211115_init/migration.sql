/*
  Warnings:

  - A unique constraint covering the columns `[hashed_password]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "User" ADD COLUMN "hashed_password" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "User_hashed_password_key" ON "User"("hashed_password");
