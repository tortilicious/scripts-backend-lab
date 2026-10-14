# scripts-backend-lab

Scripts de operación de un servidor de laboratorio: Ubuntu 24.04 con Odoo 18, PostgreSQL y nginx.

Cada script resuelve un problema real del servidor y se escribe con un criterio de éxito comprobable antes de empezar. Son ejercicios del carril de scripting, así que el código prioriza que se entienda: comentarios donde hacen falta y sin atajos.

## Scripts

| Fichero | Qué hace |
|---|---|
| `estado.sh` | Resume el estado del servidor: estado de `odoo`, uso del disco `/` y puertos TCP en escucha |

## Requisitos

- Ubuntu 24.04 (bash 5.2), con systemd, `iproute2` (`ss`) y `coreutils` (`df`).
- Algunos comandos necesitan `sudo`. Por ejemplo, `ss -tlnp` solo muestra el proceso de cada puerto con privilegios.

## Uso

```bash
git clone https://github.com/tortilicious/scripts-backend-lab
cd scripts-backend-lab
chmod u+x estado.sh   # solo la primera vez
sudo ./estado.sh odoo
```

Sin `sudo`, el script funciona, pero la columna de proceso de `ss` sale vacía.

## Convenciones

- Primera línea: `#!/usr/bin/env bash`. Así el script se ejecuta con bash aunque la shell del usuario sea otra.
- Un script, un problema. Si un script crece para resolver dos cosas, se parte.
- A partir de la sesión 8 del bloque 1, los scripts pasan `shellcheck` sin avisos.

## Licencia

Código de aprendizaje, sin garantías. Úsalo como ejemplo, no como herramienta de producción sin revisarlo antes.
