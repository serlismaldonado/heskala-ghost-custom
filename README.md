# 🎨 Heskala Ghost - Tema Bulletin Personalizado

Este repositorio contiene el tema **Bulletin personalizado** para Ghost, deployado en Fly.io.

## 📁 Estructura

```
heskala-ghost-custom/
├── themes/
│   └── bulletin/
│       ├── assets/
│       │   ├── css/
│       │   │   ├── style.css          # Estilos base (no editar)
│       │   │   └── bulletin-custom.css # Tus personalizaciones
│       │   ├── js/
│       │   └── images/
│       ├── partials/                  # Componentes reutilizables
│       ├── post.hbs                   # Template para posts individuales
│       ├── index.hbs                  # Template para portada
│       └── package.json               # Metadata del tema
├── Dockerfile                         # Construcción del contenedor
├── fly.toml                           # Configuración Fly.io
└── README.md                          # Este archivo
```

## 🚀 Cómo Usar

### Modificar el Tema Localmente

1. **Edita los archivos**:
   - `themes/bulletin/assets/css/bulletin-custom.css` → Estilos personalizados
   - `themes/bulletin/post.hbs` → Template de posts
   - `themes/bulletin/index.hbs` → Template de inicio
   - `themes/bulletin/partials/` → Componentes reutilizables

2. **Prueba cambios** (si tienes Ghost instalado):
   ```bash
   ghost start
   ```

3. **Commitea los cambios**:
   ```bash
   git add .
   git commit -m "feat: personalizaciones de estilos"
   git push origin main
   ```

### Deploy en Fly.io

**Opción 1: Auto-deploy desde GitHub** (recomendado)
```bash
# Fly.io automáticamente detectará cambios en GitHub
git push origin main
# → Fly.io construye nueva imagen y despliega
```

**Opción 2: Deploy manual**
```bash
flyctl deploy
```

### Ver Logs
```bash
flyctl logs -a heskala-ghost
```

### Acceder a Admin
```
https://blog.heskala.com/ghost
```

---

## 🎨 Guía de Personalización

### Cambiar Colores

Edita `themes/bulletin/assets/css/bulletin-custom.css`:

```css
:root {
    --color-primary: #1f2937;      /* Color principal */
    --color-secondary: #6b7280;    /* Color secundario */
    --color-accent: #3b82f6;       /* Color de énfasis */
    --color-bg: #ffffff;           /* Fondo */
    --color-text: #1f2937;         /* Texto */
}
```

### Cambiar Tipografía

```css
:root {
    --font-family: 'Georgia', serif; /* Tu fuente favorita */
}
```

### Agregar Modo Oscuro

Descomenta el bloque `@media (prefers-color-scheme: dark)` en `bulletin-custom.css`.

---

## 📝 Workflow de Desarrollo

```
1. Haz cambios en local
   ↓
2. git add . && git commit -m "..."
   ↓
3. git push origin main
   ↓
4. Fly.io construye automáticamente
   ↓
5. Nuevo tema deployado en blog.heskala.com
   ↓
6. ✅ En vivo
```

---

## 🔧 Archivos Importantes

| Archivo | Propósito |
|---------|-----------|
| `themes/bulletin/post.hbs` | Diseño de posts individuales |
| `themes/bulletin/index.hbs` | Diseño de portada/listado |
| `themes/bulletin/assets/css/style.css` | Estilos base (no tocar) |
| `themes/bulletin/assets/css/bulletin-custom.css` | **Edita aquí tus estilos** |
| `Dockerfile` | Cómo se construye la imagen |
| `fly.toml` | Configuración de Fly.io |

---

## 🐛 Troubleshooting

### El tema no se actualiza
```bash
# Limpia cache y redeploy
flyctl deploy --force-machines
```

### Errores de estilos no se ven
```bash
# Asegúrate de que bulletin-custom.css esté en:
# themes/bulletin/assets/css/bulletin-custom.css

# Y que esté vinculado en post.hbs e index.hbs:
# <link rel="stylesheet" href="{{asset 'css/bulletin-custom.css'}}" />
```

### Quiero revertir cambios
```bash
git log --oneline
git revert <commit-hash>
git push origin main
```

---

## 📚 Recursos

- [Ghost Theme Documentation](https://ghost.org/docs/themes/)
- [Handlebars Helpers](https://ghost.org/docs/themes/helpers/)
- [Fly.io Docs](https://fly.io/docs/)
- [Docker Reference](https://docs.docker.com/)

---

## 📞 Soporte

Para problemas:
1. Revisa los logs: `flyctl logs -a heskala-ghost`
2. Verifica GitHub Actions (si está conectado)
3. Usa `flyctl ssh console` para acceder al contenedor

---

**Última actualización:** 13 de Abril de 2026  
**Tema:** Bulletin v1.0.0  
**Status:** ✅ Activo en blog.heskala.com
