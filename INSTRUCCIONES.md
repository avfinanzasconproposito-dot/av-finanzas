# 7 Hábitos de las Personas Ahorrativas — App
## Anabella Vanesa · Finanzas con Propósito

---

## ESTRUCTURA DEL PROYECTO

```
av-finanzas/
├── public/
│   ├── index.html     ← La app completa
│   ├── manifest.json  ← Configuración PWA
│   ├── sw.js          ← Service Worker (offline)
│   └── logo.png       ← Tu logo (agregar manualmente)
├── vercel.json        ← Configuración Vercel
└── supabase.sql       ← SQL para crear las tablas
```

---

## PASO 1 — CREAR LAS TABLAS EN SUPABASE

1. Entrá a https://supabase.com con tu Gmail
2. Abrí tu proyecto
3. En el menú izquierdo → **SQL Editor**
4. Hacé clic en **New Query**
5. Copiá y pegá TODO el contenido del archivo `supabase.sql`
6. Hacé clic en **Run** (botón verde)
7. Deberías ver: "Success. No rows returned"

---

## PASO 2 — SUBIR EL LOGO

Dentro de la carpeta `public/`, agregá tu logo con el nombre exacto:
```
logo.png
```
Tiene que ser el archivo PNG transparente que ya tenés.

---

## PASO 3 — SUBIR A GITHUB

1. Entrá a https://github.com y creá una cuenta gratuita
   (con el mismo Gmail: avfinanzasconproposito@gmail.com)
2. Creá un repositorio nuevo → llamalo `av-finanzas`
3. Subí todos los archivos de esta carpeta

---

## PASO 4 — PUBLICAR EN VERCEL

1. Entrá a https://vercel.com con tu Gmail
2. Hacé clic en **Add New Project**
3. Conectá tu repositorio de GitHub `av-finanzas`
4. Hacé clic en **Deploy**
5. En 2 minutos tu app va a estar en:
   `https://av-finanzas.vercel.app`

---

## PASO 5 — VERIFICAR QUE FUNCIONA

1. Abrí `https://av-finanzas.vercel.app` desde tu celular
2. Usá el código de prueba: `AV-2025-DEMO`
3. El celular te va a preguntar si querés instalar la app
4. Aceptá → queda el ícono en tu pantalla de inicio

---

## PASO 6 — GENERAR LOS QR PARA EL LIBRO

Cada QR apunta a una URL con el código incluido:
```
https://av-finanzas.vercel.app?codigo=AV-2025-A001
https://av-finanzas.vercel.app?codigo=AV-2025-A002
... etc
```

Para generar los QR gratis:
1. Entrá a https://qr-code-generator.com
2. Pegá la URL con el código
3. Descargá el QR en PNG
4. Imprimilo dentro del libro

---

## AGREGAR MÁS CÓDIGOS (cuando imprimas más libros)

En Supabase → SQL Editor → New Query:
```sql
INSERT INTO codigos (codigo) VALUES
('AV-2025-B001'),
('AV-2025-B002'),
('AV-2025-B003');
```

---

## VER TUS REGISTROS (quién activó la app)

En Supabase → **Table Editor** → tabla **registros**
Vas a ver: nombre, email, código, fecha de cada lector.

Para exportar a Excel:
En la tabla → botón **Export** → CSV → abrís en Excel.

---

## NÚMERO DE WHATSAPP CONFIGURADO
+54 2923 433191

## SUPABASE
URL: https://xwvhtwfumdfgfobqwjxz.supabase.co
