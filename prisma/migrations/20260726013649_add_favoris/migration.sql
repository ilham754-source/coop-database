-- CreateTable
CREATE TABLE "Favoris" (
    "clientId" INTEGER NOT NULL,
    "produitId" INTEGER NOT NULL,
    "dateAjout" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Favoris_pkey" PRIMARY KEY ("clientId","produitId")
);

-- AddForeignKey
ALTER TABLE "Favoris" ADD CONSTRAINT "Favoris_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Favoris" ADD CONSTRAINT "Favoris_produitId_fkey" FOREIGN KEY ("produitId") REFERENCES "Produit"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
