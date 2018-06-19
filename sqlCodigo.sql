-- Table: "Prueba"."Cedulas"

-- DROP TABLE "Prueba"."Cedulas";

CREATE TABLE "Prueba"."Cedulas"
(
    "Id_Cedula" bigint NOT NULL,
    "Numero_Cedula" bigint,
    CONSTRAINT "Cedulas_pkey" PRIMARY KEY ("Id_Cedula"),
    CONSTRAINT relacion_nombres FOREIGN KEY ("Id_Cedula")
        REFERENCES "Prueba"."Nombres" ("Id_Nombre") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "Prueba"."Cedulas"
    OWNER to postgres;
SELECT * FROM "Prueba"."Nombres" INNER JOIN "Prueba"."Cedulas" ON "Id_Cedula" = "Id_Nombre";
SELECT * FROM "Prueba"."Cedulas";

INSERT INTO "Prueba"."Cedulas" ("Id_Cedula", "Numero_Cedula") VALUES (1, 1006810313);
INSERT INTO "Prueba"."Nombres" ("Id_Nombre", "Nombres") VALUES (1, 'Bryson Steven Florez');

UPDATE "Prueba"."Nombres" SET "Nombres" = 'Bryson Florez' WHERE "Id_Nombre" = 1;