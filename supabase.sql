-- ══════════════════════════════════════════════════
-- TABLAS PARA APP 7 HÁBITOS - ANABELLA VANESA
-- Ejecutar en Supabase → SQL Editor → New Query
-- ══════════════════════════════════════════════════

-- 1. TABLA DE CÓDIGOS (uno por libro)
CREATE TABLE codigos (
  id SERIAL PRIMARY KEY,
  codigo TEXT UNIQUE NOT NULL,
  usado BOOLEAN DEFAULT FALSE,
  fecha_uso TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. TABLA DE REGISTROS (lectores que activaron su código)
CREATE TABLE registros (
  id SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  email TEXT NOT NULL,
  codigo TEXT NOT NULL,
  fecha TIMESTAMPTZ DEFAULT NOW()
);

-- 3. PERMISOS (para que la app pueda leer y escribir)
ALTER TABLE codigos ENABLE ROW LEVEL SECURITY;
ALTER TABLE registros ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Leer codigos" ON codigos FOR SELECT USING (true);
CREATE POLICY "Actualizar codigos" ON codigos FOR UPDATE USING (true);
CREATE POLICY "Insertar registros" ON registros FOR INSERT WITH CHECK (true);

-- 4. CARGAR LOS PRIMEROS 20 CÓDIGOS DE PRUEBA
INSERT INTO codigos (codigo) VALUES
('AV-2025-A001'), ('AV-2025-A002'), ('AV-2025-A003'),
('AV-2025-A004'), ('AV-2025-A005'), ('AV-2025-A006'),
('AV-2025-A007'), ('AV-2025-A008'), ('AV-2025-A009'),
('AV-2025-A010'), ('AV-2025-A011'), ('AV-2025-A012'),
('AV-2025-A013'), ('AV-2025-A014'), ('AV-2025-A015'),
('AV-2025-A016'), ('AV-2025-A017'), ('AV-2025-A018'),
('AV-2025-A019'), ('AV-2025-A020'),
('AV-2025-DEMO');
