-- CreateTable
CREATE TABLE "investment-goals" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "name" TEXT NOT NULL,
    "months" TEXT[],
    "total_value" DECIMAL(14,2) NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "investment-goals_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "idx_investment-goals_name" ON "investment-goals"("name");

-- CreateIndex
CREATE INDEX "idx_investment-goals_months_gin" ON "investment-goals" USING GIN ("months");
