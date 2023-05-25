# README

Pasos a seguir para la creación de un crud sencillo con Ruby on Rails y Active Admin


La presente guia esta redactada sobre:

* Ruby 3.2.2
* Rails 7.0.4.3
* Active Admin 2.13.1

Para verificar las versiones, en terminal escribe:
```sh
ruby -v 
rails -v 
bundle show activeadmin
```

## Gemas

Agregar las siguientes gemas al archivo Gemfile.
```sh
gem "activeadmin"
gem "devise"
gem 'devise-i18n'
gem 'i18n'
gem 'rails-i18n'
gem 'mysql'
```
## Configuraciones
Para crear el proyecto inicial y levantar el servidor:
```sh
rails new nombre_del_proyecto

rails s
```

## Creacion de la Base de datos
Rails permite la creacion rapida de las tablas para la base de datos, gracias a `Active Record`

Ejemplo
```sh
rails g model Material nombre:string codigo:string precio_unitario:decimal cantidad:string categoria:string

rails db:migrate
raild db:seed

```
Para generar los menus necesarios a partir de la tabla o base de datos y que se muestren en el dashboard principal.

```sh
rails generate active_admin:resource Material
```
El sistema es reutilizable con nuevas bases de datos y podemos usar el mismo dashboard eliminando la BD generada y purgando el modelo antes de migrar la BD al sistema.

Seleccionamos dentro de la carpeta `db/migrate` los archivos generados por el comando `rails g model`

Ejemplo:
```sh
rails destroy 20230524234411_create_material
rails db:drop:_unsafe
rails tmp:clear
```