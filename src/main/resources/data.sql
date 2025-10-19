
-- Categorías
INSERT INTO `category`(`id_category`, `description`, `name`) VALUES
(1, 'Productos de uso farmacéutico', 'Farmacéutico'),
(2, 'Productos alimenticios', 'Alimentación'),
(3, 'Productos de higiene personal', 'Higiene'),
(4, 'Cosméticos y cuidado personal', 'Cosméticos'),
(5, 'Equipos médicos', 'Equipos Médicos'),
(6, 'Suplementos alimenticios', 'Suplementos')
ON DUPLICATE KEY UPDATE `id_category` = `id_category`;

-- Familias
INSERT INTO `family`(`id_family`, `description`, `name`) VALUES
(1, 'Medicamentos genéricos y de marca', 'Medicamentos'),
(2, 'Suplementos vitamínicos y minerales', 'Suplementos'),
(3, 'Alimentos procesados y no procesados', 'Alimentos'),
(4, 'Artículos de higiene personal', 'Higiene'),
(5, 'Cosméticos y productos de belleza', 'Cosméticos'),
(6, 'Equipos y dispositivos médicos', 'Equipos Médicos'),
(7, 'Productos naturales y herbolarios', 'Herbolarios'),
(8, 'Medicamentos para animales', 'Veterinarios'),
(9, 'Productos de limpieza y desinfección', 'Limpieza'),
(10, 'Artículos para bebés y niños', 'Bebés')
ON DUPLICATE KEY UPDATE `id_family` = `id_family`;

-- Laboratorios
INSERT INTO `laboratory`(`id_laboratory`, `address`, `email`, `name`, `phone`) VALUES
(1, 'Av. Javier Prado Este 1500, San Isidro, Lima', 'contacto@laboratorio1.pe', 'Laboratorio FarmaPerú', '01-3456789'),
(2, 'Av. La Marina 1300, San Miguel, Lima', 'info@laboratorio2.pe', 'Laboratorio BioLife', '01-9876543'),
(3, 'Calle Los Pinos 220, Miraflores, Lima', 'atencion@laboratorio3.pe', 'Laboratorio SaludTotal', '01-7654321'),
(4, 'Av. Universitaria 1300, San Juan de Lurigancho, Lima', 'contacto@laboratorio4.pe', 'Laboratorio Medic Perú', '01-3214321'),
(5, 'Calle San Martín 1030, Pueblo Libre, Lima', 'ventas@laboratorio5.pe', 'Laboratorio BioMedica', '01-6543210'),
(6, 'Av. Bolívar 2400, Callao', 'soporte@laboratorio6.pe', 'Laboratorio PharmaCallao', '01-1112233'),
(7, 'Jr. Tacna 1450, Arequipa', 'consulta@laboratorio7.pe', 'Laboratorio Andina', '054-123456'),
(8, 'Calle 28 de Julio 1950, Trujillo', 'contacto@laboratorio8.pe', 'Laboratorio Costa Norte', '044-678910'),
(9, 'Av. Pardo 820, San Isidro, Lima', 'servicio@laboratorio9.pe', 'Laboratorio BioFarma', '01-2223334'),
(10, 'Calle Enrique Palacios 700, San Miguel, Lima', 'informes@laboratorio10.pe', 'Laboratorio Medicosa', '01-3334445')
ON DUPLICATE KEY UPDATE `id_laboratory` = `id_laboratory`;

-- Productos 
INSERT INTO `product`(`id_product`, `description`, `expired`, `name`, `presentation`, `stock`, `unit_price`, `id_category`, `id_family`, `id_laboratory`) VALUES
(1, 'Antibiótico genérico de uso común', '2025-12-31', 'Amoxicilina 500mg', 'Caja x 20 tabletas', 150, 25.00, 1, 1, 1),
(2, 'Suplemento vitamínico para el sistema inmune', '2026-06-30', 'Multivitaminas Peruanas', 'Frasco x 60 cápsulas', 200, 45.00, 6, 2, 2),
(3, 'Crema humectante para piel sensible', '2025-08-15', 'Crema Hidratante Andina', 'Tarro 250g', 120, 15.50, 4, 4, 3),
(4, 'Jugo natural de naranja con vitaminas', '2025-04-20', 'Jugo Naranja Total', 'Botella x 500ml', 300, 5.00, 2, 3, 4),
(5, 'Cepillo dental con cerdas suaves', '2026-01-10', 'Cepillo Dental Bio', 'Unidad', 500, 4.00, 3, 4, 5),
(6, 'Suplemento para mejorar la digestión', '2026-03-01', 'DigestActive', 'Frasco x 30 tabletas', 180, 38.00, 6, 2, 6),
(7, 'Desinfectante multiuso con aroma a limón', '2025-11-30', 'Desinfectante ProClean', 'Botella x 1L', 220, 7.00, 3, 9, 7),
(8, 'Antiinflamatorio de acción rápida', '2026-02-28', 'Ibuprofeno 400mg', 'Caja x 10 tabletas', 100, 12.00, 1, 1, 8),
(9, 'Leche en polvo para bebé de 6 a 12 meses', '2025-05-20', 'Leche VitalBebé', 'Envase x 400g', 250, 35.00, 2, 10, 9),
(10, 'Crema para quemaduras y heridas menores', '2026-07-15', 'Crema Regenera', 'Tubo 100g', 75, 18.00, 4, 4, 10)
ON DUPLICATE KEY UPDATE `id_product` = `id_product`;
