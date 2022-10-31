# Northwind CRUD

## Aplicación CRUD de Angular consumiendo API Local de .NET

#### ¿Qué encontrás en este proyecto?

- Una app tipo CRUD desarrollada en Angular que consume una API de la entidad Shippers de la base de datos Northwind.
- La API Shippers lista para correr y ser utilizada por la app de Angular

#### ¿Cómo lo ejecuto?

<details><summary><b>Instrucciones para ejecutar la API</b></summary>

## Recursos necesarios
#### Debe descargar e instalar:
* **[VisualStudio](https://visualstudio.microsoft.com/es/)**
* **[SQL Server](https://www.microsoft.com/es-es/sql-server/sql-server-downloads)**
* **[SQL Server Management Studio](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)**

## Usar

#### Crear la base de datos

* Abrir los [scripts](https://github.com/Marcelo1197/northwind-api/tree/main/sql-scripts) de SQL para crear/insertar los datos con SQL Server Management Studio
* Ejecutarlos con F5

#### Configurar conexión a la Base de Datos

* Abrir el archivo [appsettings.json](https://github.com/Marcelo1197/northwind-api/blob/main/NorthwindAPI/NorthwindAPI/appsettings.json)
* Modificar la propiedad [ConnectionStrings](https://github.com/Marcelo1197/northwind-api/blob/7308050eb68ea1013a6b1970755d4e7d9f1b78c0/NorthwindAPI/NorthwindAPI/appsettings.json#L10) con el nombre de tu servidor. Ej:
```
 "Northwind": "Data Source=TU_SERVIDOR_AQUÍ;Initial Catalog=Northwind;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"

```

#### Ejecutar el Proyecto
* Click derecho sobre el proyecto **NorthwindAPI**
* Seleccionar **Set as Startup Project**
* Ejecutar con F5 o el botón de la ToolBar
</details>

<details><summary><b>Instrucciones para ejecutar la App de Angular</b></summary>

### Ejecutar APP Crud Angular
- Posicionarse en la raíz del proyecto /shippers-crud
- Ejecutar `npm i`
- Ejecutar `npm serve` 

### Recursos utilizados en la App de Angular
- [Angular Material](https://material.angular.io/guide/getting-started)
- [Bootstrap](https://getbootstrap.com/)
- [Ngx Awesome Popup](https://costlydeveloper.github.io/ngx-awesome-popup/#/)

</details>

### Demo

https://user-images.githubusercontent.com/42044480/198510814-af928d2f-ebf2-4dfd-b8ed-c56eb79a31aa.mp4
