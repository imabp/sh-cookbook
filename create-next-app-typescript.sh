# create directories
mkdir pages public
mkdir -p pages/api

# create files
touch .gitignore next-env.d.ts next.config.js package.json README.md tsconfig.json .eslintrc.json pages/_app.tsx pages/index.tsx

# add file contents
echo 'import type { AppProps } from "next/app"

function MyApp({ Component, pageProps }: AppProps) {
  return <Component {...pageProps} />
}

export default MyApp
' >> pages/_app.tsx
echo 'import type { NextPage } from "next"

const Home: NextPage = () => {
  return (
    <div>
    </div>
  )
}

export default Home
' >> pages/index.tsx
echo '
{
  "name": "my-next-app",
  "version": "0.1.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint"
  },
  "dependencies": {
    "next": "12.2.2",
    "react": "18.2.0",
    "react-dom": "18.2.0"
  },
  "devDependencies": {
    "@types/node": "18.0.3",
    "@types/react": "18.0.15",
    "@types/react-dom": "18.0.6",
    "eslint": "8.19.0",
    "eslint-config-next": "12.2.2",
    "typescript": "4.7.4"
  }
}
' >> package.json
echo '
{
  "extends": "next/core-web-vitals"
}
' >>.eslintrc.json
echo '/// <reference types="next" />
/// <reference types="next/image-types/global" />

// NOTE: This file should not be edited
// see https://nextjs.org/docs/basic-features/typescript for more information.
' >> next-env.d.ts
echo '/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
}

module.exports = nextConfig
' >> next.config.js
echo '# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# next.js
/.next/
/out/

# production
/build

# misc
.DS_Store
*.pem

# debug
npm-debug.log*
yarn-debug.log*
yarn-error.log*
.pnpm-debug.log*

# local env files
.env*.local

# vercel
.vercel

# typescript
*.tsbuildinfo
' >> .gitignore
echo '# my-next-app created' >> README.md

echo '{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "noEmit": true,
    "esModuleInterop": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "jsx": "preserve",
    "incremental": true
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx"],
  "exclude": ["node_modules"]
}
' >> tsconfig.json
#git init
git init --initial-branch=main

# npm 
npm init -y

# install packages
yarn
