-- CreateTable
CREATE TABLE "Livraison" (
    "id" SERIAL NOT NULL,
    "commandeId" INTEGER NOT NULL,
    "adresse" TEXT NOT NULL,
    "statut" TEXT NOT NULL DEFAULT 'preparee',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Livraison_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Livraison_commandeId_key" ON "Livraison"("commandeId");

-- AddForeignKey
ALTER TABLE "Livraison" ADD CONSTRAINT "Livraison_commandeId_fkey" FOREIGN KEY ("commandeId") REFERENCES "Commande"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
