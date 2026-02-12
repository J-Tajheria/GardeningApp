// export const runtime = "nodejs";

// import { NextResponse } from "next/server";

// export async function GET() {
//   const { prisma } = await import("@/lib/prisma");
//   const seeds = await prisma.seed.findMany();
//   return NextResponse.json(seeds);
// }

export const runtime = "nodejs";

import { NextResponse } from "next/server";

export async function GET() {
  const { prisma } = await import("@/lib/prisma");
  const seeds = await prisma.seed.findMany();

  return NextResponse.json({
    firstSeed: seeds[0] ?? null,
    firstSeedKeys: seeds[0] ? Object.keys(seeds[0]) : [],
  });
}
