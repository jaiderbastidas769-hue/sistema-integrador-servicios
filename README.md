# SmartStock-Core - Sistema Integrador de Servicios

---

### 🚀 Introducción Ejecutiva
**SmartStock-Core** representa la culminación de un proceso de ingeniería de software orientado a la modularidad y la escalabilidad. Este sistema ha sido diseñado para optimizar las operaciones críticas entre la gestión de inventarios y el procesamiento de ventas, integrando procesos robustos bajo una arquitectura de servicios desacoplados. Este repositorio documenta el ciclo de vida completo de un producto diseñado bajo estándares de alta disponibilidad, trazabilidad y automatización.

---

## 📋 1. Descripción del Proyecto
Este repositorio contiene el producto final de la evidencia **GA8-220501096-AA1-EV02**, desarrollada para el programa de formación "Análisis y Desarrollo de Software". El sistema implementa una arquitectura orientada a servicios (SOA) que permite la gestión eficiente de los siguientes módulos:

* 🔐 **Módulo de Autenticación:** Gestión segura de identidad y control de acceso basado en roles (RBAC).
* 📦 **Módulo de Inventario:** Control en tiempo real de existencias y trazabilidad de productos.
* 🛒 **Módulo de Ventas:** Procesamiento transaccional de pedidos con validación de stock integrada.

---

## 🏗️ 2. Arquitectura del Sistema
El proyecto adopta un patrón de **Arquitectura en Capas (N-Tier)**, garantizando la separación de responsabilidades y la modularidad del código fuente, el cual se encuentra centralizado y gestionado exclusivamente a través de **GitHub**.

* **Arquitectura:** Estructura en capas orientada a servicios (SOA) para facilitar la integración y escalabilidad.
* **Control de Versiones:** Repositorio centralizado en **GitHub** utilizando la metodología *GitFlow* (`main`, `develop`, `feature/*`).
* **Integración:** Comunicación basada en servicios **RESTful**, permitiendo interoperabilidad entre el Frontend, Backend y la Base de Datos.
* **Despliegue y Pruebas:** Entorno integrado dentro del ecosistema de **GitHub**, asegurando trazabilidad total desde el código fuente hasta la documentación técnica.

---

## 📂 3. Estructura del Repositorio

A continuación se detalla la organización de los archivos en este repositorio, optimizada para la trazabilidad y el mantenimiento del sistema:

```text
/
├── Script SQL/              # Scripts de base de datos (DDL, Triggers, Procs)
│   ├── 01_esquema_inicial.sql
│   ├── 02_integracion_ventas.sql
│   ├── 03_datos_maestros.sql
│   ├── 04_automatizacion_triggers.sql
│   ├── 05_procedimientos_reportes.sql
│   ├── 06_auditoria_seguridad.sql
│   └── 07_indices_optimizacion.sql
├── LÉAME.md                 # Documentación técnica del proyecto
└── ...
