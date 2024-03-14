-- CreateTable
CREATE TABLE "Utilisateur" (
    "id_utilisateur" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "mot_de_passe" TEXT NOT NULL,
    "role" TEXT NOT NULL,

    CONSTRAINT "Utilisateur_pkey" PRIMARY KEY ("id_utilisateur")
);

-- CreateTable
CREATE TABLE "Payement" (
    "id_payement" SERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "montant" DOUBLE PRECISION NOT NULL,
    "id_utilisateur" INTEGER NOT NULL,

    CONSTRAINT "Payement_pkey" PRIMARY KEY ("id_payement")
);

-- CreateTable
CREATE TABLE "Type" (
    "id_type" SERIAL NOT NULL,
    "type" TEXT NOT NULL,

    CONSTRAINT "Type_pkey" PRIMARY KEY ("id_type")
);

-- CreateTable
CREATE TABLE "Pourcentage" (
    "id_pourcentage" SERIAL NOT NULL,
    "id_type" INTEGER NOT NULL,
    "date_debut" TIMESTAMP(3) NOT NULL,
    "date_fin" TIMESTAMP(3) NOT NULL,
    "pourcentage" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Pourcentage_pkey" PRIMARY KEY ("id_pourcentage")
);

-- CreateIndex
CREATE UNIQUE INDEX "Utilisateur_email_key" ON "Utilisateur"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Type_type_key" ON "Type"("type");

-- AddForeignKey
ALTER TABLE "Payement" ADD CONSTRAINT "Payement_id_utilisateur_fkey" FOREIGN KEY ("id_utilisateur") REFERENCES "Utilisateur"("id_utilisateur") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pourcentage" ADD CONSTRAINT "Pourcentage_id_type_fkey" FOREIGN KEY ("id_type") REFERENCES "Type"("id_type") ON DELETE RESTRICT ON UPDATE CASCADE;
