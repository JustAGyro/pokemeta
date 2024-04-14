import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

async function main() {
  const moomin = await prisma.user.upsert({
    where: { email: 'moomin@hobocafe.io' },
    update: {},
    create: {
      email: 'moomin@hobocafe.io',
      name: 'Moomin',
      password: 'password',
    },
  });
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
  const memegoblin = await prisma.user.upsert({
    where: { email: 'memegoblin@hobocafe.io' },
    update: {},
    create: {
      email: 'memegoblin@hobocafe.io',
      name: 'Memegoblin',
      password: 'password',
    },
  });
  const arin1a = await prisma.user.upsert({
    where: { email: 'arin1a@hobocafe.io' },
    update: {},
    create: {
      email: 'arin1a@hobocafe.io',
      name: 'Arin1a',
      password: 'password',
    },
  });
  const sunflower = await prisma.user.upsert({
    where: { email: 'sunflower@hobocafe.io' },
    update: {},
    create: {
      email: 'sunflower@hobocafe.io',
      name: 'Sunflower',
      password: 'password',
    },
  });
  const mordion = await prisma.user.upsert({
    where: { email: 'mordion@hobocafe.io' },
    update: {},
    create: {
      email: 'mordion@hobocafe.io',
      name: 'Mordion',
      password: 'password',
    },
  });
  const babytruck = await prisma.user.upsert({
    where: { email: 'babytruck@hobocafe.io' },
    update: {},
    create: {
      email: 'babytruck@hobocafe.io',
      name: 'Babytruck',
      password: 'password',
    },
  });
  const luisAlicea = await prisma.user.upsert({
    where: { email: 'luisalicea@hobocafe.io' },
    update: {},
    create: {
      email: 'luisalicea@hobocafe.io',
      name: 'Luisalicea',
      password: 'password',
    },
  });
  const kodred = await prisma.user.upsert({
    where: { email: 'kodred@hobocafe.io' },
    update: {},
    create: {
      email: 'kodred@hobocafe.io',
      name: 'Kodred',
      password: 'password',
    },
  });
  console.log({
    sharpy,
    carbonara,
    babytruck,
    arin1a,
    kodred,
    luisAlicea,
    moomin,
    sunflower,
    mordion,
    memegoblin,
  });
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
