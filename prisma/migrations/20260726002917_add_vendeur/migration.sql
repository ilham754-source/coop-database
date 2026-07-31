-- CreateTable
CREATE TABLE "Vendeur" (
    "id" SERIAL NOT NULL,
    "utilisateurId" INTEGER NOT NULL,
    "coopId" INTEGER NOT NULL,
    "statutValidation" TEXT NOT NULL DEFAULT 'en_attente',
    "dateValidation" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Vendeur_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Vendeur_utilisateurId_key" ON "Vendeur"("utilisateurId");

-- AddForeignKey
ALTER TABLE "Vendeur" ADD CONSTRAINT "Vendeur_utilisateurId_fkey" FOREIGN KEY ("utilisateurId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vendeur" ADD CONSTRAINT "Vendeur_coopId_fkey" FOREIGN KEY ("coopId") REFERENCES "Cooperative"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
