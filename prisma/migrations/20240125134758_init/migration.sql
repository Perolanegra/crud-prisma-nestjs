-- CreateEnum
CREATE TYPE "Type" AS ENUM ('DEPILACAO', 'CORTE_CABELO', 'CORTE_BARBA', 'CORTE_COMPLETO');

-- CreateEnum
CREATE TYPE "Barber" AS ENUM ('ALAN', 'MARIA');

-- CreateTable
CREATE TABLE "Scheduling" (
    "id" SERIAL NOT NULL,
    "type" "Type" NOT NULL DEFAULT 'CORTE_CABELO',
    "description" TEXT NOT NULL,
    "appointment_time" TIMESTAMP(3) NOT NULL,
    "instructor" "Barber" NOT NULL DEFAULT 'ALAN',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Scheduling_pkey" PRIMARY KEY ("id")
);
