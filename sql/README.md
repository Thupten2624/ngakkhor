# Base de datos MySQL para taxonomía Vajrayana

Este paquete incluye:

- `schema_mysql.sql`: esquema relacional completo.
- `seed_mysql.sql`: datos precargados de la taxonomía y prácticas, con relaciones padre/hijo y configuración de práctica.

## Modelo

- `source_pages`: fuente de contenido (URL y respaldo de HTML/texto).
- `taxonomy_nodes`: árbol taxonómico (escuelas, linajes, ciclos, prácticas, nodos auxiliares).
- `practice_profiles`: metadatos de prácticas (unidad, meta, objetivo diario, mantra).
- `practice_days`, `practice_times`, `practice_reminders`: programación y recordatorios.
- `node_types`, `units`: catálogos.

## Carga

```bash
mysql -u root -p < sql/schema_mysql.sql
mysql -u root -p < sql/seed_mysql.sql
```
