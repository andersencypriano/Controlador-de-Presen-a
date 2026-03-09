-- CreateTable
CREATE TABLE "aluno" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "aluno_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "presenca" (
    "id" TEXT NOT NULL,
    "data" TIMESTAMP(3) NOT NULL,
    "presente" BOOLEAN NOT NULL,
    "alunoId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "presenca_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "aluno_cpf_key" ON "aluno"("cpf");

-- CreateIndex
CREATE INDEX "presenca_alunoId_idx" ON "presenca"("alunoId");

-- AddForeignKey
ALTER TABLE "presenca" ADD CONSTRAINT "presenca_alunoId_fkey" FOREIGN KEY ("alunoId") REFERENCES "aluno"("id") ON DELETE CASCADE ON UPDATE CASCADE;
