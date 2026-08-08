import { defineConfig } from 'prisma/config';

const url =
  process.env.DATABASE_URL ??
  'postgres://postgres:postgres@localhost:5433/investment-goals';

export default defineConfig({
  schema: 'prisma/schema.prisma',
  migrations: {
    path: 'prisma/migrations',
  },
  engine: 'classic',
  datasource: {
    url,
  },
});
