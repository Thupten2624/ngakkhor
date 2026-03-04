# Vajrayana · Práctica v2

PWA completa para registro de prácticas Vajrayana con familias, horarios y recordatorios.

## Contenido del ZIP

```
vajrayana-v2/
├── index.html       ← app completa
├── manifest.json    ← configuración PWA
├── sw.js            ← offline + recordatorios
├── icons/           ← iconos para iPhone
└── README.md
```

## Subir a GitHub Pages (paso a paso)

1. Ve a **github.com** → New repository → nombre: `vajrayana` → Public → Create
2. Pulsa **"uploading an existing file"** → arrastra todos los archivos y la carpeta `icons/`
3. **Settings** → **Pages** → Branch: **main** / **root** → Save
4. Espera 1-2 min → tu URL: `https://TU_USUARIO.github.io/vajrayana/`

## Instalar en iPhone

1. Abre la URL en **Safari**
2. Compartir (icono cuadrado con flecha) → **"Añadir a pantalla de inicio"**
3. Aparece como app nativa con icono azul lapislázuli

## Activar recordatorios

Los recordatorios funcionan con **Web Push** (iOS 16.4+, solo si está instalada como PWA):
- Al abrir la app por primera vez te pedirá permiso para notificaciones
- Acepta para recibir los recordatorios configurados en cada práctica

## Funcionalidades

- **Familias de prácticas**: Ngöndro, Yidam, o las que crees
- **Prácticas por familia**: CRUD completo con metas y progreso
- **Días de práctica**: marca qué días de la semana se practica
- **Horarios**: añade una o varias horas por práctica
- **Recordatorios**: 5, 10, 15, 30, 60 o 120 min antes
- **Destacar prácticas de hoy** al abrir una familia
- **Historial** con filtros y estadísticas
- **Funciona offline**
- **Datos en el dispositivo** (localStorage, sin servidor)
