# NGAKKHOR · Guru Rinpoche Mantra

Aplicación minimalista para `https://www.ngakkhor.com/guru` en hosting compartido **PHP + MySQL + JavaScript**.

## Diseño

- Título principal: **NGAKKHOR**
- Subtítulo: **Guru Rinpoche Mantra**
- Menú inferior fijo (Inicio, Recordatorios, Historial, Ajustes)
- Interfaz móvil compacta
- Tipografía Montserrat (Google Fonts) con estética más suave
- Paleta azul rebajada para menor contraste

## Backend MySQL (listo para hosting compartido)

La app usa:

- `index.html` (frontend)
- `api.php` (API de guardado/carga)
- `db_config.php` (tú lo creas con tus credenciales)

### 1) Configura credenciales

Copia `db_config.php.example` a `db_config.php` y rellena tus datos.

### 2) Sube archivos a tu carpeta

Sube todo a:

- `public_html/guru/` (equivalente a `https://www.ngakkhor.com/guru`)

### 3) Tabla en MySQL

`api.php` crea automáticamente la tabla `guru_state` si no existe.

## Recordatorios y email

- CRUD completo de recordatorios (crear, consultar, modificar, activar/pausar, borrar)
- CRUD del histórico diario (corregir o eliminar registros de un día)
- Programación a 60 y 30 min antes
- Envío a `ctk.tn.ktg@pm.me` por EmailJS (configurable desde Ajustes)

## Uso local

```bash
php -S 127.0.0.1:4173
```

Luego abre `http://127.0.0.1:4173`.
