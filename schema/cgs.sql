CREATE TABLE `cgs_audio_site` (
    `id` BINARY(16) NOT NULL,
    `customer_id` VARCHAR(255) NOT NULL,
    `status` TINYINT(1) NULL DEFAULT '0',
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NULL,
    PRIMARY KEY (`id`),
    KEY `fk.cgs_audio_site.customer_id` (`customer_id`),
    CONSTRAINT `fk.cgs_audio_site.customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;