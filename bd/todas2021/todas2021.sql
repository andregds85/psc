-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 19-Mar-2021 às 21:52
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `todas2021`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradors`
--

CREATE TABLE `administradors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `macro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `name`, `cnes`, `macro`, `created_at`, `updated_at`) VALUES
(1, 'Hospital Sul 1', '123', '1', '2021-03-15 23:46:02', '2021-03-15 23:46:02'),
(2, 'Hospital Sul 2', '1234', '1', '2021-03-15 23:47:11', '2021-03-15 23:47:11'),
(3, 'Hospital Leste 1', '123321', '4', '2021-03-15 23:49:37', '2021-03-15 23:49:37'),
(4, 'Hospital Leste 2', '321', '4', '2021-03-15 23:50:02', '2021-03-15 23:50:02'),
(5, 'Hospital do Norte', 'asd23123123123', '2', '2021-03-16 21:07:06', '2021-03-16 21:07:06'),
(6, 'Hospital do noroeste', '1234567788996584', '2', '2021-03-17 15:25:31', '2021-03-17 15:25:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_mapas`
--

CREATE TABLE `categoria_mapas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `macros`
--

CREATE TABLE `macros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `macros`
--

INSERT INTO `macros` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Macro Sul', '2021-03-15 23:01:18', '2021-03-15 23:01:18'),
(2, 'Macro Norte', '2021-03-15 23:01:31', '2021-03-15 23:01:31'),
(3, 'Macro Oeste', '2021-03-15 23:01:44', '2021-03-15 23:01:44'),
(4, 'Macro Leste', '2021-03-15 23:01:56', '2021-03-15 23:01:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mapas`
--

CREATE TABLE `mapas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `especialidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_procedimento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `procedimento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vagas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_09_135732_create_products_table', 1),
(5, '2020_11_02_003433_create_permission_tables', 1),
(6, '2020_11_07_064611_create_categorias_table', 1),
(7, '2020_11_08_022657_create_pacientes_table', 1),
(8, '2021_01_01_065720_create_hospitals_table', 1),
(9, '2021_02_09_201134_create_soudohospitals_table', 1),
(10, '2021_02_15_192108_create_mapas_table', 1),
(11, '2021_03_01_171100_create_categoria_mapas_table', 1),
(12, '2021_03_01_192357_create_administradors_table', 1),
(13, '2021_03_09_172403_create_macros_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacientes`
--

CREATE TABLE `pacientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorias_id` bigint(20) UNSIGNED NOT NULL,
  `macro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solicitacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cns` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomedousuario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datasolicitacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unidadedesejada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacao1` text COLLATE utf8mb4_unicode_ci,
  `observacao2` text COLLATE utf8mb4_unicode_ci,
  `observacao3` text COLLATE utf8mb4_unicode_ci,
  `observacao4` text COLLATE utf8mb4_unicode_ci,
  `observacao5` text COLLATE utf8mb4_unicode_ci,
  `statusSolicitacao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pacientes`
--

INSERT INTO `pacientes` (`id`, `categorias_id`, `macro`, `solicitacao`, `cns`, `nomedousuario`, `municipio`, `datasolicitacao`, `unidadedesejada`, `codigo`, `observacao1`, `observacao2`, `observacao3`, `observacao4`, `observacao5`, `statusSolicitacao`, `label`, `created_at`, `updated_at`) VALUES
(1, 6, '4', '31231212123123', '32131212123312', 'asdsadasdasdasdasdasd', 'dasdasdasdasasdasdasda', '2021-03-15', 'asdasdasdasdasdasd', 'asdasdasdasda', 'sdasdasdas', 'dasdasdasd', 'asdasd', 'asdasdasdasdasd', 'asdasdasdasdasasd', 'Verificada', 1, '2021-03-16 19:18:57', '2021-03-16 22:55:53'),
(2, 6, '4', '23123123123', 'asdasdasdasdas', 'asdasdasdasdasd', 'asdasdasdasd', '2021-03-01', 'asdasdasdasdasdasd', 'asdasdasdasdasdas', 'asdasdasdasdasd', 'asdasdasdasdas', 'asdasdasdas', 'dasdasdasd', 'asdasdasdasd', 'Verificada', 1, '2021-03-16 19:20:36', '2021-03-16 23:56:15'),
(3, 6, '4', 'tesasdasdas', 'asdasdasd', 'adsadasda', 'asdasdasdasda', '2021-04-01', 'asdasdasdasdasd', 'asdasdasdasdasd', 'asdasdasdasdasdasda', 'asdasdasdasdasdasdas', 'asdasdasdasdasdasdasd', 'asdasdasdasdasdadaas', 'asdasdasdasdasdddasd', 'Verificada', 1, '2021-03-16 20:55:22', '2021-03-16 23:56:56'),
(4, 5, '2', '23123123123', '32131212123312', 'Hospital do Norte', 'Hospital do Norte', '2021-02-28', 'asdasdasdasdasdasd', 'asdasdasdasdasdas', 'asdfssafdfas', 'asdasdadfasdfsd', 'adsfasdfadfadafas', 'adfadfdfadfasdsaa', 'asfsdsadafadfas', 'Verificada', 1, '2021-03-16 21:09:16', '2021-03-17 22:34:52'),
(5, 5, '2', 'fufufyfyufyufyuf', 'fdgdfdgfhdfh', 'dgfdghfddhdgh', 'fdfgdhdhdh', '2021-03-07', 'asdasdasdasdasdasd', 'fghjffjgfjfj', 'sadasafasadfasd', 'adsfaasdfsadfsadf', 'asdfasfasdfafaf', 'adfsdfsdfsafda', 'adfasdfsafasfsas', 'Verificada', 1, '2021-03-16 21:10:12', '2021-03-17 21:57:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(2, 'role-create', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(3, 'role-edit', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(4, 'role-delete', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(5, 'Hospital-list', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(6, 'Hospital-create', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(7, 'Hospital-edit', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(8, 'Hospital-delete', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(9, 'regulacao-list', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(10, 'regulacao-create', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(11, 'regulacao-edit', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(12, 'regulacao-delete', 'web', '2021-03-15 22:18:50', '2021-03-15 22:18:50'),
(13, 'administrador-list', 'web', '2021-03-15 22:18:51', '2021-03-15 22:18:51'),
(14, 'administrador-create', 'web', '2021-03-15 22:18:51', '2021-03-15 22:18:51'),
(15, 'administrador-edit', 'web', '2021-03-15 22:18:51', '2021-03-15 22:18:51'),
(16, 'administrador-delete', 'web', '2021-03-15 22:18:51', '2021-03-15 22:18:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', '2021-03-15 22:19:51', '2021-03-15 23:51:40'),
(2, 'Hospital', 'web', '2021-03-15 23:51:27', '2021-03-15 23:51:27'),
(3, 'Regulação', 'web', '2021-03-15 23:52:02', '2021-03-16 00:35:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 3),
(12, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `soudohospitals`
--

CREATE TABLE `soudohospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorias_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `macro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `categorias_id`, `macro`, `created_at`, `updated_at`) VALUES
(1, 'André', 'andregds85@gmail.com', NULL, '$2y$10$71IATsfZvYy1na/Tg4qu7emd0TGiyJxTxVPWf1M7KijdjAxZlV5F6', NULL, NULL, NULL, '2021-03-15 22:19:50', '2021-03-15 22:19:50'),
(2, 'Fulano', 'fulano@fulano.com.br', NULL, '$2y$10$AgJp.IiDBUL7Gf1GtZdXV.08PDIEZ/8opjjX2uDsX3etHP7yXzuTi', NULL, '3', '4', '2021-03-15 23:53:31', '2021-03-16 21:12:13'),
(3, 'Beltrano', 'beltrano@beltrano.com.br', NULL, '$2y$10$A802LN3/ljAzfq.BgDOGvOvWyP.iX3eMwdbla.RAxwZKrt1hxoezi', NULL, 'Hospital Não Selecionado', '4', '2021-03-16 19:21:31', '2021-03-16 19:22:41'),
(4, 'usuarionorte', 'norte@norte.com.br', NULL, '$2y$10$hij3rpnK4./x9Od8hDE1mOPOsC3bJtsv7ZePB9tHM8qOGDNu8nqLi', NULL, 'Hospital Não Selecionado', '2', '2021-03-16 21:08:01', '2021-03-17 15:19:27');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administradors`
--
ALTER TABLE `administradors`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categoria_mapas`
--
ALTER TABLE `categoria_mapas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `macros`
--
ALTER TABLE `macros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mapas`
--
ALTER TABLE `mapas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices para tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices para tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pacientes_categorias_id_foreign` (`categorias_id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índices para tabela `soudohospitals`
--
ALTER TABLE `soudohospitals`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administradors`
--
ALTER TABLE `administradors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `categoria_mapas`
--
ALTER TABLE `categoria_mapas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `macros`
--
ALTER TABLE `macros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `mapas`
--
ALTER TABLE `mapas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `soudohospitals`
--
ALTER TABLE `soudohospitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_categorias_id_foreign` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`);

--
-- Limitadores para a tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
