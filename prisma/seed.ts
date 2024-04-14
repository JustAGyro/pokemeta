import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

async function main() {
  const sharpy = await prisma.user.upsert({
    where: { email: 'sharpy@hobocafe.io' },
    update: {},
    create: {
      email: 'sharpy@hobocafe.io',
      name: 'Sharpy',
      password: 'password',
    },
  });
  const carbonara = await prisma.user.upsert({
    where: { email: 'carbonara@hobocafe.io' },
    update: {},
    create: {
      email: 'carbonara@hobocafe.io',
      name: 'Carbonara',
      password: 'password',
    },
  });
  console.log({ sharpy, carbonara });
}
main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
