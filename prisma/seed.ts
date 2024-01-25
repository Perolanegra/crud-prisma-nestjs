// prisma/seed.ts
import { PrismaClient } from '@prisma/client';

// initialize Prisma Client
const prisma: any = new PrismaClient();

async function main() {
  const storedData = await prisma.scheduling.create({
    data: {
      description: 'Corte Semanal',
      appointment_time: new Date('01/27/2024').toISOString(),
    },
  });

  console.log({ storedData });
}

// execute the main function
main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    // close Prisma Client at the end
    await prisma.$disconnect();
  });
