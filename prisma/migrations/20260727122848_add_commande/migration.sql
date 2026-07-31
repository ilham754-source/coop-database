/*
  Warnings:

  - Added the required column `prixUnitaire` to the `LigneCommande` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Commande" ADD COLUMN     "total" DOUBLE PRECISION NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "LigneCommande" ADD COLUMN     "prixUnitaire" DOUBLE PRECISION NOT NULL;
