-- CreateTable
CREATE TABLE "ProduitCertification" (
    "produitId" INTEGER NOT NULL,
    "certificationId" INTEGER NOT NULL,
    "organisme" TEXT,

    CONSTRAINT "ProduitCertification_pkey" PRIMARY KEY ("produitId","certificationId")
);

-- CreateTable
CREATE TABLE "Certification" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "organisme" TEXT,
    "description" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Certification_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ProduitCertification" ADD CONSTRAINT "ProduitCertification_produitId_fkey" FOREIGN KEY ("produitId") REFERENCES "Produit"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProduitCertification" ADD CONSTRAINT "ProduitCertification_certificationId_fkey" FOREIGN KEY ("certificationId") REFERENCES "Certification"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
