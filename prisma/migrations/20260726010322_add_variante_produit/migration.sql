-- CreateTable
CREATE TABLE "VarianteProduit" (
    "id" SERIAL NOT NULL,
    "produitId" INTEGER NOT NULL,
    "quantite" DOUBLE PRECISION NOT NULL,
    "unite" TEXT NOT NULL,
    "prix" DOUBLE PRECISION NOT NULL,
    "stock" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "VarianteProduit_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "VarianteProduit_produitId_quantite_unite_key" ON "VarianteProduit"("produitId", "quantite", "unite");

-- AddForeignKey
ALTER TABLE "VarianteProduit" ADD CONSTRAINT "VarianteProduit_produitId_fkey" FOREIGN KEY ("produitId") REFERENCES "Produit"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
