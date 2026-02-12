This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.

# GardeningApp

1. Project Goals:
This project is a simple, clean web-based application highlighting various seeds. The aim is to provide users with clear information
about each seed, including when to sow and when to harvest.

Key Goals:
• Display a catalogue of seeds in a clear, digestible format.
• Present planting and harvest windows.
• Allow user to filter seeds by sow month.
• Keep the scope intentionally small to validate the core concept.

2. Problem Statement
Gardening information is often text-heavy and diDicult to interpret, or it assumes prior knowledge and experience. This can make
gardening intimidating for beginners, who may struggle to understand concepts such as sowing and harvesting times. As a result, there
is a need for an application that simplifies this information and presents it in a clear, accessible, and visual format.

3. Proposed Solution
The proposed solution is a web application that displays a catalogue of seeds along with information on when to sow and harvest them
across a 12-month period. Each seed can have multiple planting and harvest windows, allowing for realistic growing scenarios. The
application prioritises clarity and ease of use over advanced features during the MVP stage.

4. MVP Scope & Features
In Scope (MVP):
• View a list of seeds.
• View detailed information for each seed:
o Seed name.
o Seed description.
o Text-based indication of sowing and harvesting windows.
o Indoor vs Outdoor planting information.
• Filter seeds based on sow month.
• Basic read-only data fetching:
o Fetch all seeds on page load.
o Fetch individual seed data when selected.

5. Tech Stack
Frontend:
    • Next.js (React)
    • TypeScript
Styling:
    • Tailwind CSS
    • shadcn/ui
Backend – API Layer:
    • Next.js Sever Actions / API Routes
Database:
    • PostgreSQL
ORM/Database Layer:
    • Prisma ORM
Hosting:
    • Vercel (application)
    • Supabase (database)

6. Project Structure
gardeningapp/
│
├── prisma/
│   ├── schema.prisma
│   └── seed.ts
│
├── src/
│   ├── app/
│   │   ├── api/
│   │   │   └── seeds/
│   │   │       └── route.ts
│   │   │
│   │   ├── seeds/
│   │   │   └── [id]/
│   │   │       └── page.tsx
│   │   │
│   │   ├── page.tsx          ← Landing page
│   │   ├── layout.tsx
│   │   └── globals.css
│   │
│   ├── components/
│   │   ├── SeedCard.tsx
│   │   ├── Navbar.tsx
│   │
│   ├── lib/
│   │   ├── prisma.ts
│   │   └── monthUtils.ts
│   │
│   └── types/
│       └── index.ts
│
├── .env
├── package.json
└── README.md
