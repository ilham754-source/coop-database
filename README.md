# Coop Database

Base de données du projet **Coop Platform**, basée sur PostgreSQL et Prisma ORM.

## Structure

```text
coop-database/
├── prisma/
│   ├── schema.prisma
│   └── migrations/
│       ├── 20260726000120_init/
│       ├── 20260726001904_add_cooperative/
│       ├── 20260726002917_add_vendeur/
│       ├── ...
│       └── 20260727122848_add_commande/
└── README.md
```

## Technologies

* PostgreSQL
* Prisma ORM
* Prisma Migrate

## Installation

### 1. Cloner le dépôt

```bash
git clone https://github.com/ilham754-source/coop-database.git
cd coop-database
```

### 2. Installer Prisma

Dans le projet backend qui utilise cette base :

```bash
npm install prisma @prisma/client
```

### 3. Configurer PostgreSQL

Créer une base PostgreSQL locale, par exemple :

```text
coop_platform_db
```

Créer ensuite un fichier `.env` dans le projet backend :

```env
DATABASE_URL="postgresql://postgres:VOTRE_MOT_DE_PASSE@localhost:5432/coop_platform_db?schema=public"
```

Ne jamais envoyer le fichier `.env` sur GitHub.

### 4. Appliquer les migrations

Depuis le projet backend contenant Prisma :

```bash
npx prisma migrate deploy
```

Cette commande applique les migrations présentes dans `prisma/migrations/`.

### 5. Vérifier la base

```bash
npx prisma migrate status
```

### 6. Générer Prisma Client

```bash
npx prisma generate
```

## Développement

Pour créer une nouvelle migration après une modification de `schema.prisma` :

```bash
npx prisma migrate dev --name nom_de_la_migration
```

Puis vérifier :

```bash
npx prisma migrate status
```

## Important

Le dossier `prisma/migrations/` doit être conservé dans Git.

## Dépôt

Repository :

https://github.com/ilham754-source/coop-database.git
