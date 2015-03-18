CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "clients" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nome" varchar(255), "endereco" varchar(255), "bairro" varchar(255), "cidade" varchar(255), "uf" varchar(255), "cep" varchar(255), "tel" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "order_services" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "client_id" integer, "part_id" integer, "service_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_order_services_on_client_id" ON "order_services" ("client_id");
CREATE INDEX "index_order_services_on_part_id" ON "order_services" ("part_id");
CREATE INDEX "index_order_services_on_service_id" ON "order_services" ("service_id");
CREATE TABLE "parts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "descricao" varchar(255), "modelo" varchar(255), "p_compra" varchar(255), "p_venda" varchar(255), "quantidade" integer, "lucro" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "services" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "descricao" varchar(255), "valor" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO schema_migrations (version) VALUES ('20140730183657');

INSERT INTO schema_migrations (version) VALUES ('20140730192915');

INSERT INTO schema_migrations (version) VALUES ('20140730195109');

INSERT INTO schema_migrations (version) VALUES ('20140731152742');

