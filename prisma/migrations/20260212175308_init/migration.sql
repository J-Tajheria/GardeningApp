-- CreateTable
CREATE TABLE "Seed" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Seed_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PlantingWindow" (
    "id" SERIAL NOT NULL,
    "seedId" INTEGER NOT NULL,
    "startMonth" INTEGER NOT NULL,
    "endMonth" INTEGER NOT NULL,
    "environment" TEXT NOT NULL,
    "plantingNote" TEXT,

    CONSTRAINT "PlantingWindow_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HarvestWindow" (
    "id" SERIAL NOT NULL,
    "seedId" INTEGER NOT NULL,
    "startMonth" INTEGER NOT NULL,
    "endMonth" INTEGER NOT NULL,
    "harvestingNote" TEXT,

    CONSTRAINT "HarvestWindow_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "PlantingWindow_seedId_idx" ON "PlantingWindow"("seedId");

-- CreateIndex
CREATE INDEX "HarvestWindow_seedId_idx" ON "HarvestWindow"("seedId");

-- AddForeignKey
ALTER TABLE "PlantingWindow" ADD CONSTRAINT "PlantingWindow_seedId_fkey" FOREIGN KEY ("seedId") REFERENCES "Seed"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HarvestWindow" ADD CONSTRAINT "HarvestWindow_seedId_fkey" FOREIGN KEY ("seedId") REFERENCES "Seed"("id") ON DELETE CASCADE ON UPDATE CASCADE;
