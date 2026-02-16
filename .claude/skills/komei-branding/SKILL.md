---
name: komei-branding
description: Guías de marca y diseño para el sitio web de Komei Juku. Incluye información sobre el logo, colores, tipografía y elementos visuales del sitio.
---

# Komei Juku - Guías de Marca y Diseño

## Identidad Visual

### Logo Oficial
- **Archivo**: `komei-logo.png` (39 KB, PNG con transparencia)
- **Ubicaciones en el proyecto**:
  - `/Komei_Juku_mon.svg` (acceso directo)
  - `/wp-content/themes/Newspaper/Komei_Juku_mon.svg` (tema)
  - `/wp-content/uploads/komei-logo.png` (WordPress media library)

### Descripción del Logo
El logo es un **mon** (紋) - emblema familiar japonés tradicional - que representa a Komei Juku:
- Diseño circular con simetría radial
- Patrón geométrico de tres pétalos estilizados
- Representa equilibrio, armonía y los pilares de la enseñanza

### Paleta de Colores Principal

**Azul Komei** (del logo):
- Hex: `#5B9BD5`
- RGB: `91, 155, 213`
- Uso: Color principal de marca, elementos destacados

**Blanco**:
- Hex: `#FFFFFF`
- Uso: Fondos, contraste con azul

**Colores Complementarios** (para considerar):
- Azul oscuro: `#2E5C8A` - Para textos y elementos secundarios
- Gris suave: `#F5F5F5` - Para fondos alternativos
- Azul claro: `#E3F2FD` - Para hover states y backgrounds sutiles

### Tipografía Recomendada

Siguiendo las guías de frontend-design, evitar fuentes genéricas. Sugerencias para Komei Juku:

**Para títulos/headers**:
- Opción 1: Fuentes con carácter japonés/asiático que evoquen tradición
- Opción 2: Fuentes geométricas limpias que hagan eco del diseño del mon
- Evitar: Inter, Roboto, Arial (muy genéricos)

**Para cuerpo de texto**:
- Fuentes legibles con personalidad sutil
- Que complementen pero no compitan con los títulos

### Elementos de Diseño

**Inspiración del Mon**:
- Usar formas geométricas circulares y simétricas
- Patrones de tres elementos (reflejando el diseño del logo)
- Líneas limpias y precisas

**Atmósfera Visual**:
- Equilibrio entre tradición japonesa y modernidad
- Sensación de estructura y disciplina (dojo/educación)
- Elegancia refinada sin exceso de ornamentación

### Aplicaciones del Logo

**Tamaños Recomendados**:
```css
/* Header principal */
.site-logo {
  width: 120px;
  height: 120px;
}

/* Header reducido (scroll) */
.site-logo-small {
  width: 60px;
  height: 60px;
}

/* Footer */
.footer-logo {
  width: 80px;
  height: 80px;
}

/* Favicon */
favicon: 32x32px, 16x16px
```

**Código de ejemplo HTML**:
```html
<div class="site-header">
  <img src="/Komei_Juku_mon.svg" 
       alt="Komei Juku - Escuela de Artes Marciales" 
       class="site-logo">
</div>
```

**Código de ejemplo WordPress**:
```php
<img src="<?php echo get_template_directory_uri(); ?>/Komei_Juku_mon.svg" 
     alt="Komei Juku" 
     class="site-logo">
```

### Variaciones del Logo (para crear si es necesario)

1. **Logo invertido**: Blanco sobre azul para fondos oscuros
2. **Logo simplificado**: Solo el símbolo central sin círculo exterior
3. **Favicon**: Versión optimizada 32x32 y 16x16
4. **Logo horizontal**: Con texto "Komei Juku" al lado del mon

### Elementos Decorativos

Inspirados en el diseño del mon:
- Separadores con formas geométricas circulares
- Botones con esquinas sutilmente redondeadas
- Patrones de fondo con geometría sutil
- Sombras suaves que sugieren profundidad sin ser pesadas

### Principios de Diseño para el Sitio

1. **Simetría y Balance**: Como el mon, el diseño debe tener equilibrio visual
2. **Espacio Negativo**: Usar generosamente para crear sensación de calma
3. **Jerarquía Clara**: Información organizada de manera estructurada
4. **Respeto por la Tradición**: Elementos que honren la cultura japonesa sin caer en clichés
5. **Modernidad Funcional**: Interface clara y usable

### Contexto del Sitio

**Komei Juku Argentina** es la escuela argentina de **Musô Jikiden Eishin Ryu iaijutsu** (無双直傳英信流居合術), un koryu (escuela tradicional) de iaijutsu fundado en la Era Eiroku (hacia 1568) por Hayashizaki Jinsuke no Shigenobu.

**Características del arte**:
- **Iaijutsu**: Arte del desenvaine del sable japonés
- **Especialización**: Primera escuela centrada específicamente en Iai
- **Linaje**: 21 generaciones desde el fundador hasta Sekiguchi Takaaki Komei Sensei (actual Sôke)
- **Rama**: Yamauchi ha (Tokyo), fundada por Yamauchi Toyotake (18° Sôke)

**El diseño debe reflejar**:
- Tradición samurái y disciplina marcial
- Linaje histórico de más de 450 años
- Elegancia y refinamiento (no brutalidad)
- Respeto por la cultura japonesa sin caer en clichés
- Wabi-sabi: belleza en la simplicidad y lo efímero
- Comunidad y transmisión de conocimiento

**Definición de Iai** (según Sekiguchi Sensei):
> "Iai es el arte de envainar rápido"

### Secciones del Sitio

- **Home**: Presentación general de Komei Juku Argentina
- **Sensei**: Sekiguchi Takaaki Komei Sensei (21° Sôke)
- **Komei Juku**: Historia y filosofía de la escuela
- **Linaje**: Los 21 sucesores desde Hayashizaki hasta Sekiguchi Sensei
- **Katas**: Series técnicas del koryu
- **Dojos**: Ubicaciones en Argentina (Buenos Aires y regiones)
- **Galería**: Fotografías de seminarios y práctica
- **Cultura**: Aspectos de la cultura japonesa relacionados con el arte
- **Contacto**: Información para contactar y participar

### Notas para Desarrollo

Cuando trabajes en el sitio de Komei Juku:
1. Consulta primero el skill `frontend-design` para principios generales
2. Aplica esta guía de marca para mantener consistencia
3. Usa el logo desde las rutas especificadas
4. Mantén el balance entre tradición y modernidad
5. Prioriza la usabilidad sin sacrificar la estética

---
*Skill creado: 14 de febrero de 2026*
*Logo agregado exitosamente al proyecto*
