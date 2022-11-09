-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 09. lis 2022, 20:17
-- Verze serveru: 10.4.25-MariaDB
-- Verze PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `laraforum`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_resets_table', 1),
(39, '2019_08_19_000000_create_failed_jobs_table', 1),
(40, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(41, '2022_11_07_092217_create_topics_table', 1),
(42, '2022_11_07_124953_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 5, 5, 'Itaque a consequatur qui eaque laborum consequatur. Asperiores ab et ut repudiandae enim. Voluptatem quia sit ullam assumenda et odio. Ea incidunt iste aliquid molestiae unde dicta delectus. Est odit eos quis est numquam est deserunt. Non fuga et repellat enim sint quo ipsum doloribus. Nihil suscipit cum non enim quasi.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(2, 3, 5, 'Quia aliquid sed veritatis sequi ab. Occaecati molestias ea deserunt et aspernatur est ducimus. Voluptatem quia repudiandae autem dolorem aut. Molestiae ipsa corrupti tempora qui eum soluta ut.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(3, 3, 5, 'Sit atque velit ea corporis assumenda. Harum at similique atque totam veritatis non quidem. Id harum qui perferendis. Voluptatem ut commodi ea et consequatur. Aut aut et voluptatem sed. Quasi consequatur ut rem sed laborum maxime. Omnis sunt dolorem quis voluptatum. Dicta itaque quas aut et eum velit.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(4, 3, 1, 'Eaque optio alias et in fugiat non. Cumque quo et et eaque nostrum. Qui aliquam ea enim. Id libero quasi error voluptate nemo fuga. At velit aut dicta est quo fugiat. Sed hic ad iusto. Molestiae unde eveniet qui quod culpa. Quaerat dolores et modi animi.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(5, 5, 8, 'Consequatur veritatis velit ut facere quod repudiandae. Ipsum officia culpa eius ut doloribus ipsam est. Non iusto neque consequatur distinctio aut et. Ut dolores qui corrupti impedit non ut est. Eum voluptatem nemo et voluptatem perspiciatis repudiandae iusto. Dolores est velit velit dolor repellendus illo eligendi. Occaecati perspiciatis est corporis id. Ea quia quo porro ad aut. Id laboriosam vel eum totam inventore et praesentium.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(6, 4, 5, 'Non sit beatae aliquam ea quos qui. Voluptas consequatur eius sunt et velit ut est. Et eaque perspiciatis nihil. Ad voluptatum eveniet enim eveniet possimus est. Similique non animi et sapiente quo.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(7, 2, 9, 'Fugiat placeat distinctio nostrum perspiciatis vitae. Qui praesentium iste earum temporibus molestiae ipsum. Tempora officia sed excepturi commodi est. Mollitia quis cupiditate aut est saepe. Nostrum voluptatem officiis sit delectus. Rem molestiae perspiciatis totam optio molestiae nobis et. Ratione odit deserunt voluptatem sint officiis reprehenderit. Iusto tempore velit ex molestias commodi et maiores.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(8, 1, 7, 'Consequatur rerum incidunt culpa molestiae aut. Accusamus est qui consequatur tempora vitae dolor. Possimus eius architecto corporis quo enim nobis. At nostrum et exercitationem eaque aut. Quae itaque velit ratione nihil ea ipsam. Et autem sed tenetur aut qui.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(9, 2, 5, 'Autem perferendis repellendus corporis non. Ab et ea rerum. Omnis et dolor unde non pariatur. Cumque nisi nulla incidunt et reiciendis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(10, 1, 8, 'Accusamus accusantium quia corporis tenetur. Voluptatibus ea odio consequuntur ut aliquid. Ut blanditiis aut qui placeat. Provident quia ut quia ea impedit tenetur.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(11, 2, 5, 'Aut et voluptatem aliquid possimus consequatur omnis repellat. Non sapiente odit quia quia minima nobis. Qui magni unde asperiores ut. Est voluptates minus quaerat cum tenetur unde. Explicabo voluptas voluptas dolor eum sunt provident. Laudantium quia enim vel libero similique provident ipsam. Nam explicabo voluptas dolor non dolores reprehenderit vitae est.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(12, 2, 9, 'Autem voluptatem rerum facilis ipsa facilis. Quae ut et sed quidem. Aliquid ipsam rerum totam rerum. Libero dolor ut maiores illum. Possimus placeat natus a nesciunt.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(13, 3, 10, 'Nihil id qui fugiat expedita at dicta sed. Adipisci ea et illo culpa. Nihil sed consectetur autem error tempora amet ut. Unde consequatur rem est harum suscipit in. Nesciunt laboriosam blanditiis delectus voluptatum.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(14, 5, 1, 'In adipisci porro in iusto vel eius minus qui. Repudiandae labore non perspiciatis autem voluptatibus. Perspiciatis nesciunt dolorem cum magni. Autem assumenda fugiat cum alias voluptatum animi soluta eum. Ea laboriosam molestiae animi sint qui. Perferendis possimus quo adipisci dolorem ipsa nostrum enim. Et a aut voluptates sapiente sint veritatis dolores numquam. Consequuntur iure expedita a perspiciatis. Non sunt rem suscipit veniam et id nobis at.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(15, 4, 5, 'Repellat id culpa doloribus odio eveniet facere dolorum. Cumque ipsum alias sit voluptas. Voluptate tempore ratione voluptas aliquam recusandae voluptates quos. Aut impedit laboriosam repellendus.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(16, 2, 7, 'Quia quae delectus non quis tempore. Sapiente aliquid dolore omnis et et eaque maxime natus. Sapiente rem in et voluptatum eveniet et. Numquam qui maiores soluta. Officia dignissimos necessitatibus unde sit.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(17, 3, 9, 'Nihil assumenda praesentium consectetur eum. Velit ab tempore sint praesentium incidunt. Laboriosam aut consequatur earum similique omnis facilis. Non magnam culpa eaque ullam soluta vitae. Quia quod mollitia unde temporibus. Nostrum quia reiciendis officia nihil. Soluta nostrum exercitationem fugit reiciendis voluptas. Possimus sed totam cupiditate blanditiis id libero non.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(18, 3, 3, 'Quas recusandae inventore maiores. Et nostrum atque quidem. Architecto consequatur laborum necessitatibus perferendis doloremque deserunt numquam. Facere doloremque non eos quo debitis aut nobis. Rerum omnis labore hic aut non numquam. Et alias tempore quae quibusdam veritatis nisi tenetur. Ipsum unde sequi minus et voluptatem qui.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(19, 1, 5, 'Nostrum ea qui nobis rerum vero. Doloremque unde aspernatur modi id dignissimos soluta id. Ipsam at in saepe sed excepturi et sunt. Voluptatem harum qui aut veniam beatae beatae. Facere voluptatum labore et vitae voluptates et aliquam. Quia in veritatis unde id. Possimus ad delectus asperiores quos error eum qui.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(20, 2, 2, 'Necessitatibus aut dolores aspernatur in nulla dolorum eum. Quis minus quod corporis officiis suscipit et. Est et recusandae possimus quia deserunt sit. Omnis qui incidunt voluptatem magni.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(21, 3, 3, 'Consectetur corporis praesentium assumenda. Dolorem expedita debitis maxime cumque. Corporis praesentium inventore rerum aut maxime saepe. Aut harum aut reprehenderit asperiores quae. Est vitae magnam qui eos. Quos similique dolores labore dolorem aut. Consequatur labore voluptatem ratione eaque et.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(22, 5, 9, 'Quibusdam molestiae sunt qui quo. Itaque repellat eveniet fugit. Tempora consectetur nam eius dignissimos. Eaque error fuga consequatur et mollitia quae. Sit temporibus veritatis facilis quis dolorem eius totam et. Repudiandae facere commodi et distinctio.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(23, 4, 4, 'Fugiat architecto cupiditate vel impedit qui aperiam. Totam excepturi dolorem in consequatur incidunt. Ipsam expedita alias velit consequuntur dolores. Qui officiis voluptate harum deleniti eius. Mollitia voluptatum voluptates ut sunt quisquam ratione perspiciatis ipsam. Molestiae enim adipisci voluptatem aut. Doloribus aut deserunt nisi voluptatum ratione consectetur qui.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(24, 5, 7, 'Omnis fugit minima qui est quaerat quia delectus. Veritatis id sint id et voluptatem rem nesciunt modi. Repellat quibusdam et sequi aut repellendus id quia. Saepe rerum vero sit harum labore quia nihil. Rerum porro veritatis reprehenderit unde sequi a. Velit nisi ut error culpa corporis pariatur. Perferendis voluptate ullam magni quos magni odio aut cumque.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(25, 2, 1, 'Id exercitationem dolor dolores aspernatur fugit totam rerum quos. Rerum in quisquam qui non unde fugit ut ducimus. Sit repudiandae sunt ut odit. Et repudiandae dolore perspiciatis deleniti eos exercitationem vitae. Placeat odit nihil rem earum similique aliquam eius. Rem molestiae maxime alias necessitatibus tempore fugit. Architecto ipsum quia sequi et fuga itaque tempora debitis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(26, 4, 2, 'Voluptatem qui ut eligendi rerum impedit. Ut accusamus sint ut sequi natus et aut. Ut nam veniam et at asperiores voluptatum eos voluptatem. Illo nihil quia in voluptatem voluptatem ipsum. Odit minima eos corporis. Totam voluptas quo quis aut et optio vero voluptate.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(27, 3, 10, 'Nihil dignissimos qui cupiditate autem accusantium voluptatem. Facere rerum qui totam. Eius sit natus corrupti quo et aliquam et. Qui velit ex sunt non iure. Consequatur quis sint veniam qui aliquam. Similique rem qui nihil molestiae corrupti ipsam suscipit.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(28, 5, 3, 'Quod et quia non praesentium eius numquam sed. Iste praesentium voluptatem commodi sequi eum. Ipsam commodi velit fuga saepe et et esse. Possimus perspiciatis voluptatem recusandae alias quaerat quasi. Temporibus dolores officia assumenda libero sapiente numquam. Enim quidem nostrum qui porro eveniet in. Eligendi ut beatae a. Unde voluptas amet porro eum.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(29, 1, 6, 'Tempore optio sapiente modi. Maiores temporibus assumenda ut magni dolor assumenda voluptates. Corrupti quia ex soluta suscipit natus quo exercitationem. Earum natus nisi facere nam. Nostrum aspernatur ab vero architecto qui est sed.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(30, 3, 6, 'Facere et quibusdam deserunt voluptatum quae. Perferendis error dolor quod ipsa suscipit quia. Et est qui est veritatis eos. Deserunt adipisci enim excepturi qui. Qui earum officiis maxime ea est ipsam et maiores.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(31, 3, 6, 'Voluptatem qui nesciunt adipisci. Aut in et quos aperiam repellendus. Minus quam veritatis consequatur rerum ipsa optio possimus voluptatem. Tenetur cupiditate aut eius pariatur. Totam enim explicabo corrupti sit. Ipsum totam porro et aut. Illum ab qui vitae pariatur.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(32, 5, 4, 'Optio dolor laboriosam vel. Ad aut culpa voluptatem ipsa culpa sit. Fuga aliquam aliquid provident qui non optio. Aut saepe voluptas vel officiis est sed. Sequi molestiae consequatur asperiores est eum. Rerum natus eum optio et. Veniam perspiciatis quam perspiciatis sit commodi voluptas alias. Doloremque laudantium sequi nobis velit facilis nemo.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(33, 2, 7, 'Illum et iure dolor nam a. Eum adipisci qui animi et corporis. Eius commodi tempora necessitatibus ratione. Qui ex dolorem alias fugiat consequatur. Quia omnis quo distinctio ut consequuntur et non. Explicabo et dolorem ut dolore vel qui.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(34, 3, 5, 'Adipisci exercitationem sit deserunt sapiente quisquam sapiente accusantium. Nihil et ipsum accusamus. Molestiae et accusamus molestias ea. Dolor inventore mollitia quibusdam quasi dolorem sed ea aperiam. Dolores qui est aperiam dolore sit optio sunt. Non necessitatibus itaque qui inventore animi velit.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(35, 4, 4, 'Veritatis et assumenda fugit quas officiis. Deleniti voluptas officiis eius fugiat rerum est. Tempore ut molestias nesciunt est nemo vero. Facilis deserunt at rerum veniam aut voluptates non. Natus assumenda consectetur commodi qui. Ut qui quo dolorum in dolorem nulla veniam. Blanditiis inventore sit voluptatibus quo ad est et nobis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(36, 4, 8, 'Tempore libero amet nostrum eligendi sed reiciendis fuga nam. Temporibus et expedita ut animi harum quis dolor minus. Pariatur est nulla iure suscipit non vel. Veniam tempore voluptatem dolorem quas.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(37, 2, 5, 'Dolores a consequatur quia et error molestias. Placeat voluptatem beatae quasi veritatis doloremque voluptatibus. Quia ab aperiam reiciendis doloribus rem quisquam qui. Voluptatem quo laudantium corrupti minima et modi aspernatur. Autem officia ut eos harum consectetur. Voluptas ipsam eos vitae et. Fugit ut exercitationem consequatur.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(38, 2, 10, 'Tempora perspiciatis asperiores ut rerum pariatur. Cupiditate in asperiores sint quae. Eos quas rerum blanditiis eos qui. Velit quia vel optio vero ad ex. Mollitia beatae omnis ut dignissimos vel.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(39, 1, 2, 'Animi aut optio accusamus temporibus ut et occaecati. In est fugit sit itaque distinctio et. Est dicta consequatur minima aut odio ut. Voluptates fugiat repellendus est minus. Dolor quo dolores possimus quos nobis quaerat velit.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(40, 5, 8, 'Architecto culpa necessitatibus expedita est. Enim magni aspernatur vel nulla. Dolor sit laudantium dolores deserunt. Officiis exercitationem sit a repellendus harum reiciendis impedit. Ex quidem laboriosam est sapiente. Facilis sit qui sapiente vero rerum voluptates. Nesciunt temporibus veritatis repellat aut et ipsa.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(41, 3, 6, 'Et reprehenderit ipsa illum. Voluptas nisi provident at in consequatur similique aut. Ab id cumque sit repellendus libero perferendis libero. Qui tenetur rerum dicta qui eum exercitationem. Debitis quas ipsa quae voluptatibus veritatis exercitationem. Omnis consequatur consequatur hic iste ratione eaque. Et quia iure praesentium quam.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(42, 3, 9, 'Est neque aut sint tenetur fuga repudiandae est. At beatae nobis quibusdam eaque. Ut quia similique nemo enim ipsa. Maxime assumenda illum sunt expedita. Facilis enim quis et quam ipsam dolor corporis. Voluptas quibusdam ab a tempora.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(43, 3, 6, 'Deserunt praesentium quas et consequuntur. Omnis sapiente nam vitae nihil rerum. Illum magni velit omnis aut sint molestiae blanditiis. Ab et possimus minus. Et deleniti placeat voluptate. Quod aut est qui esse qui culpa incidunt. Ut ut sequi sequi molestiae. Sequi officiis maiores et dignissimos nemo eveniet voluptates.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(44, 1, 6, 'Repellendus qui doloremque accusantium aut. Ea illum excepturi consequuntur reiciendis. Temporibus alias aut omnis. Cum quo maiores voluptates autem. Ducimus cumque omnis ut esse quidem deleniti laborum. Nihil non voluptas aut quidem repellendus. Error nulla et vitae minus quis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(45, 2, 5, 'Aut culpa quo magnam inventore. Quisquam et et consectetur blanditiis. Aut enim sapiente reiciendis reprehenderit qui delectus in dolor. Iusto labore nesciunt et veniam dolorem qui. Corporis quod et perspiciatis similique atque eius sit. Labore consectetur aut labore atque nostrum consequatur esse ducimus. Tempore qui voluptas dicta iste ea. Et aut consectetur aut veniam.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(46, 1, 2, 'Recusandae eos magnam illum repudiandae id est qui. Asperiores minima assumenda quod dignissimos nesciunt nam. Optio id officia iste error. Debitis ut nemo ex et et laborum reprehenderit. Sint possimus expedita molestiae. Consequatur sint aut dolor ad eos sed. Molestiae non eveniet recusandae voluptatem qui occaecati.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(47, 2, 10, 'Cum quibusdam odio laborum illum id pariatur. Autem consequatur quos placeat assumenda nulla et sit. Voluptatem aut voluptas veritatis nostrum eligendi ut consequuntur inventore. Doloremque rem repellendus ullam. Magnam ab dolor repellat blanditiis rerum possimus non. Error consequatur error quia dolor quibusdam nam. Et debitis rem adipisci soluta. Aut ut sed recusandae impedit illum tenetur. Quaerat tempore possimus expedita fuga maxime sapiente est quia.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(48, 4, 1, 'Similique aperiam molestias velit est laudantium expedita et. Est sint vel esse possimus ex. Sed pariatur iure est sint ducimus tenetur. Aut dolores veniam quas est corporis. Rerum quia molestiae illo maxime cumque exercitationem similique. Natus delectus est suscipit quo.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(49, 4, 3, 'Non optio sed nemo dolorum minus. Aliquid magnam eius sed omnis et et. Molestiae perspiciatis quae est itaque consequatur laborum quod. Totam dolorum saepe fugit. Tempora aperiam non dicta nam.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(50, 4, 7, 'Minus laudantium ratione autem doloremque harum. Est voluptatem eaque deleniti dolor blanditiis. Est autem eius et. Eum cum facilis reprehenderit labore minus sint quia. Vel est dolores quo pariatur ex voluptatem autem. Dolor eos nesciunt qui necessitatibus. Itaque molestias et qui sint consequatur. Voluptas placeat consequatur corporis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(51, 3, 9, 'Voluptatem voluptate iste ut. A quod voluptas aut deleniti laboriosam voluptates qui. Ipsam omnis velit sunt blanditiis ut. In ipsum autem praesentium in earum. Neque dolore nobis voluptatum deleniti eveniet laborum. Beatae quia deserunt rerum dolorem. Ex illo ad dignissimos nesciunt maiores corporis. Sint et odio deserunt totam optio similique sint distinctio. Sint sunt odio laudantium.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(52, 3, 8, 'Omnis ex non quis nobis. Ducimus nostrum nesciunt consequuntur laudantium aut. Eum eos natus rerum dignissimos fugiat. Reprehenderit non in quis repellat. Consequatur expedita consequatur in recusandae. Nemo qui aspernatur voluptatem ratione ipsa. Eos pariatur nemo dolor sapiente ipsum. Est odio velit eveniet et nesciunt et. Qui eum voluptatum ipsa error.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(53, 3, 6, 'Sint omnis commodi non quasi beatae non. Laboriosam non et placeat vel omnis adipisci. Corrupti adipisci eum eius in quaerat. Ex expedita distinctio vel debitis perferendis rerum. Et deleniti numquam ut et temporibus vitae. Et aperiam aut rerum enim totam omnis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(54, 3, 10, 'Aliquid consequatur quaerat reiciendis tempora ullam illum. Nesciunt dolorem et et a omnis eum nam dolores. Est vel voluptatem quia necessitatibus. Facere sint animi tempore minus. Assumenda molestiae qui natus ex laboriosam eius. Rerum neque cum qui ab accusantium. Ea quisquam cum aut voluptas aut. Veniam eos expedita id at est dolorem. Recusandae vero ea cupiditate.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(55, 5, 4, 'Est quo et reiciendis et quia et voluptate. Ut magnam consequatur qui accusantium quia. Fuga ea totam quos nihil quo eligendi doloribus. Facere dolorem cumque ut et adipisci et sed. Eveniet aperiam est pariatur atque. Labore voluptatibus voluptas amet quasi. Error nam eaque qui. Beatae delectus sunt libero quae qui.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(56, 4, 8, 'Error provident sequi sit consequatur. Aut omnis voluptate dolore. Qui totam occaecati iusto. At minima cumque qui ut adipisci labore officia maxime. Quibusdam autem aut autem dolores. Et tempora qui accusamus aut.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(57, 4, 6, 'Vero eveniet ullam voluptatum voluptate. In consequatur soluta fuga dicta eligendi qui nostrum et. Tempore nulla omnis quia facere voluptatibus facilis occaecati saepe. In blanditiis ut architecto pariatur perferendis occaecati. Nesciunt ab aut aut voluptatibus et eius. Voluptatem vitae sed molestiae doloribus aliquam molestias. Quo voluptas doloremque voluptatem aut incidunt.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(58, 3, 7, 'Nisi ullam consequatur veritatis nulla ut tenetur sed. Ea et minus sunt. Voluptate voluptas animi omnis ullam quia iusto nesciunt. Vel voluptatem molestias et optio. Quidem enim sit voluptate molestias sed similique a. Voluptatem rerum pariatur soluta quae. Debitis id recusandae pariatur qui.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(59, 3, 8, 'Enim assumenda expedita est. Reprehenderit dolore repellat doloribus inventore itaque quod corporis. Est natus iste ea animi. Vel officia omnis minus repellendus non veritatis nemo amet. Sed commodi ut et qui architecto sunt est incidunt.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(60, 4, 10, 'Ab magni eaque facilis. Laboriosam et aut atque eos nisi. Velit iusto quis quisquam odio ad animi id eos. Voluptate suscipit vel ea debitis error qui harum. Et aperiam occaecati totam quo explicabo.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(61, 5, 1, 'Omnis dolores nostrum quaerat corrupti placeat quidem quos. Dicta totam eum placeat earum occaecati accusantium ea. Rem numquam veritatis ducimus veritatis quos et rerum. Ut iste et hic culpa reiciendis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(62, 2, 8, 'Temporibus voluptas fugiat quas eos. Asperiores facere nulla est reprehenderit est. Possimus consectetur modi et consequatur non porro. Reiciendis facilis et est et libero. Facere natus illo ex. Similique eum aliquid voluptatem veniam autem harum voluptatem. Maxime dolores alias dolor consequatur eveniet.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(63, 1, 6, 'Saepe laborum officia dolores ut ut suscipit delectus ut. Ducimus cum quo quos ipsa maiores id sed. Aut distinctio et beatae voluptatem. Aliquam temporibus nemo vero maiores tempore dicta ipsum. Animi sint tempore et eligendi ipsum id officia necessitatibus. Corrupti harum eligendi ut asperiores perspiciatis facere. Qui deleniti eveniet modi voluptate.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(64, 3, 3, 'Delectus harum odio cupiditate. Sit ut quam veritatis perferendis. Quae architecto reiciendis maiores dolores. Nisi iure atque tenetur harum et. Iure aut et itaque iusto iste illo cum modi. Repudiandae sunt molestiae eaque magnam et qui soluta. Sunt inventore vel omnis doloribus.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(65, 1, 2, 'Ullam sit repellat et quam. Esse rerum itaque natus temporibus qui autem. Voluptas voluptatum voluptatem est repellat aut commodi corrupti voluptate. Aut corporis voluptatem optio ab qui maxime in. Voluptates sapiente aut tempora odio fuga. Ex omnis veniam laudantium suscipit enim magnam quia. Quia distinctio eum ullam voluptatibus iusto esse eum molestiae.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(66, 5, 5, 'Minima optio enim ullam quasi qui. Aut unde aperiam voluptatem eveniet rem cumque. Deleniti omnis magni magni deserunt sint nisi. Ut architecto eos deserunt sapiente perferendis veniam. Et et ut rerum quasi officiis sit enim. Sint eius illo sit eos. Earum sed sunt totam occaecati vero. Eos voluptatem eveniet consectetur ab temporibus.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(67, 2, 2, 'Ut reiciendis sunt mollitia dolores numquam omnis alias. Quo deserunt asperiores quo doloribus ducimus. Ex voluptas voluptatem voluptate quae eos. Excepturi vel quasi rerum et sint saepe repellendus ut. Tenetur animi nisi cupiditate et.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(68, 2, 6, 'Dolorem adipisci quas eum corporis. Expedita itaque veniam aut deserunt inventore sit. Velit repellat et eligendi consectetur fugit porro et. Voluptatem necessitatibus aut suscipit et. Excepturi ea fuga odio vel. Illo ut non eos iste a blanditiis tempore expedita. Quo et voluptas ex rem eveniet. Quo et quisquam incidunt soluta repudiandae.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(69, 5, 4, 'Cum natus et cupiditate ut. Temporibus quia consequuntur dolores iusto in. Recusandae quia doloribus minus maxime. In suscipit corrupti sunt ut id perferendis dolores. Et impedit minus sit omnis nihil saepe est. Et laborum omnis aliquam asperiores eaque consequatur ratione. Eum repudiandae cumque quam enim doloremque. Qui distinctio sint ut sit eos qui ipsum.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(70, 5, 10, 'Eos optio rerum fugit soluta. Molestias adipisci laborum nesciunt. Voluptatem dolores cupiditate ad dolore dolorem animi alias delectus. Enim sunt tempora sunt eum earum velit amet. Maiores eveniet eos laudantium. Fugit vel eos voluptatem corporis alias quod officia. In magnam id non amet eum. Deleniti cum voluptas ut quidem explicabo voluptatem natus maiores. Sit veniam sint iste illo consequuntur.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(71, 2, 6, 'Facere et quidem reprehenderit eligendi. Qui corrupti dolorem voluptates reprehenderit. Expedita accusantium aspernatur a rerum modi. Sint ut officiis eveniet voluptas. Totam dicta provident quisquam sit voluptatem. Ut temporibus quam consectetur rerum rerum labore harum.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(72, 1, 3, 'Accusantium ipsum incidunt porro at porro laborum sed. Harum perferendis laborum est magnam. Rerum qui nulla perferendis est vel itaque. Non voluptatem sint consequatur eveniet placeat in in id. Ipsa vel suscipit et. Harum suscipit deleniti ab vel ratione omnis quo. Voluptatem sit voluptatem dicta omnis necessitatibus dolore. Aspernatur consectetur illo eum recusandae recusandae animi ducimus. Rem eaque qui aut qui voluptates iusto.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(73, 1, 8, 'Tempora dolor eaque quisquam architecto. Beatae consequatur a dignissimos sapiente placeat. Mollitia consequatur consequatur ipsum necessitatibus assumenda autem. Id ut est perferendis explicabo deserunt magni. Vero aut voluptas ipsum repellendus quia labore. Sapiente iusto voluptas qui. Facilis dicta est explicabo veniam omnis esse. Totam quaerat vitae et natus molestias maxime.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(74, 2, 6, 'Corrupti recusandae eum iure hic sit voluptas consequatur. Alias libero dolore quod rerum dignissimos ad. Est eos perspiciatis suscipit nulla ex. Officia omnis dolorem soluta enim hic nihil. Deleniti unde architecto modi similique neque similique.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(75, 2, 6, 'Iure ut aut accusantium fuga maiores. Sequi cum dolorem repellat ut et ad quia. Ab tempore dolore ut dolorum. Facilis ipsum nihil temporibus perspiciatis incidunt et et. Voluptas aut explicabo omnis quia quia.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(76, 2, 7, 'Non blanditiis voluptates laboriosam omnis. Ut cum nemo officia non aut voluptate non officiis. Minus aliquam rem iste dolor. Qui facere ducimus voluptas eos illum est. Est reprehenderit sapiente repellendus expedita repellendus reprehenderit recusandae et. Incidunt aut maxime eligendi suscipit id voluptatum. Quaerat enim esse quod ex optio. Mollitia quisquam omnis dolores laboriosam.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(77, 2, 1, 'Et ut delectus unde sunt enim. Culpa nostrum velit et pariatur iusto explicabo eos. Qui labore rem vero cum sed fugit aliquid quas. Qui natus aut sint et beatae consequatur. Non odio libero occaecati placeat sed.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(78, 4, 6, 'Iusto sint nihil ut id dignissimos vitae et. Ea quia voluptate quo quis aut reiciendis dicta. Quia et inventore unde dolores itaque accusantium sed. Facilis accusantium est error sunt accusantium et. Et aut quo et inventore.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(79, 2, 8, 'Sit ut labore similique dolorum. Ullam ut eveniet nulla atque accusamus quod numquam. Odit et velit fugiat deserunt beatae. Maxime accusamus quia voluptatem omnis. Tenetur numquam et voluptas recusandae consequatur corrupti modi. Asperiores doloribus molestias aut nihil qui eum. Omnis aut sit quasi sapiente qui. Et voluptatibus molestiae dolorum illo dolor aut libero.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(80, 4, 10, 'Dolorem esse blanditiis numquam rerum ut. Illum facilis provident aut consequatur. Veniam quam est deserunt perspiciatis neque. Incidunt nihil hic incidunt aut quasi et. Sint excepturi itaque qui laborum molestiae. Aperiam quasi distinctio delectus dolorem illo. Necessitatibus dolor non in expedita optio rem. Minima harum doloribus et vel qui ea sed rerum. Aspernatur tempora explicabo totam in neque et.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(81, 3, 1, 'Molestiae repellendus quia esse molestiae assumenda. Distinctio voluptates cum nesciunt saepe rerum veritatis. Adipisci ducimus et quos consectetur. Laudantium itaque veritatis laborum aperiam est cumque sint eum. Delectus assumenda rem expedita ipsam consequatur iste aliquam. Vel quos necessitatibus non velit nobis accusamus voluptatem et. Consequatur id aut eaque officia facere voluptas ducimus et.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(82, 5, 3, 'Quo quia nostrum qui sit omnis. Sed eius aliquam excepturi officia assumenda voluptas ipsa. Facilis nemo voluptas et et unde ea. Recusandae ea qui nisi eos voluptatem. Rerum dignissimos aut nesciunt maxime non sunt. Et atque veritatis perferendis deserunt sit. Praesentium est qui commodi est rerum. Ut ab et iusto assumenda. Animi voluptates et exercitationem corporis facilis et sit.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(83, 5, 4, 'Quia officia dolorem aut quia molestiae. Incidunt magnam maiores esse illo ex magnam sit. Quisquam earum rerum qui. Quibusdam similique iste facilis enim quam error. Reiciendis totam voluptatem temporibus impedit dolor nobis. Sunt harum ea totam placeat.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(84, 2, 5, 'Totam delectus ipsam adipisci nihil qui reiciendis. Autem inventore aliquam quo consequatur. Nobis dolor ea aut voluptatem rerum velit. Deleniti corporis reprehenderit quisquam dolor et ratione.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(85, 5, 2, 'Doloribus voluptate vel dolor ad architecto quaerat. Quia officiis consequatur iure ullam voluptatem voluptatem et. Beatae nihil cum dicta in nobis et. Fuga quia minus quo quis error eaque et aliquid. Neque quos sint asperiores unde et. Ipsa rerum est cupiditate illum veritatis consequuntur tenetur. Quis fugiat placeat impedit dolorum corporis. Ut ipsa qui ut qui.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(86, 5, 4, 'Autem laudantium non quibusdam aut vel aliquam. Impedit impedit ut quia dolor et libero. Et recusandae assumenda dolore soluta. Voluptas harum aut consequuntur exercitationem aperiam quia nesciunt. Nobis minima voluptatem fuga. Ut itaque quia delectus. Aut sequi voluptatum et dolores est culpa non.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(87, 4, 10, 'Inventore magni architecto repudiandae aliquam odio. Ad ipsam quod aliquid reprehenderit excepturi et consequatur. Nulla omnis similique qui architecto sit vel quaerat. Et tenetur odio necessitatibus exercitationem autem deserunt amet. Ab magnam nisi sed necessitatibus sed ut deleniti distinctio. Fuga et sit et maxime. Sint corrupti molestiae laudantium quasi ullam.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(88, 2, 8, 'Quo sequi autem maxime sit. Quia non rem ipsum natus qui fugit. Debitis corporis non sunt hic. Culpa aut recusandae fugit doloremque repudiandae soluta incidunt dolor. Ut tempora est quod omnis voluptate eaque. Et laudantium velit porro tenetur facilis excepturi.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(89, 4, 2, 'Harum facilis amet cumque mollitia. Nam maiores maiores et eos illum et similique perspiciatis. Sequi nisi sit nesciunt maxime deserunt nisi. Id omnis sint non qui. Sequi alias qui esse deleniti natus qui placeat enim.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(90, 2, 7, 'Veritatis corrupti praesentium quod qui omnis quia. Voluptatem et consequatur cumque nesciunt. Dicta qui enim occaecati dolorem similique aspernatur. Laboriosam minima quo illo dolores nobis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(91, 3, 6, 'Fugit consequuntur voluptatibus et. Assumenda maiores ut id explicabo laboriosam distinctio culpa. Laboriosam eius amet maiores facilis. Blanditiis perferendis et enim et occaecati et. Et reprehenderit perspiciatis et quaerat quibusdam minus. Veniam earum odio eum culpa sed. Veritatis laudantium nesciunt optio reiciendis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(92, 1, 6, 'Incidunt quis et veniam cum deleniti corporis. Voluptas nemo expedita voluptatum possimus sed iste. Laboriosam nam consequuntur ea officia nemo possimus iste. Consectetur vero est aut voluptatem cupiditate. Provident nihil quibusdam nam. Voluptas dignissimos est dolorem delectus pariatur modi illo cupiditate. Expedita nulla dignissimos recusandae qui dolor autem. Ut atque non sunt asperiores placeat eius.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(93, 2, 4, 'Fugiat quas quam est et porro qui error. Sint voluptate alias quaerat dolor corrupti. Fugiat tempore eligendi commodi sequi. Ea quis aliquid voluptas aut nobis eum. Consequuntur tenetur illum quia sit corrupti.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(94, 4, 1, 'Ratione libero adipisci earum commodi odit enim. Sit velit ut nulla voluptate veniam. Eos ullam aspernatur et. Voluptatem vero voluptate blanditiis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(95, 1, 3, 'Aliquid dolorum aut optio et dolores. Provident hic amet reprehenderit aut velit. Et quis placeat fuga neque architecto fuga quos quia. Incidunt consequatur repellendus voluptatem officia dicta adipisci sunt. Ipsum aperiam perspiciatis iste quo. Aliquid similique quis eos qui aut aut.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(96, 5, 9, 'Repellat perspiciatis amet necessitatibus dolorem rerum minima qui. Vel optio earum laborum et. Tempore omnis et assumenda dolore et blanditiis. Enim corrupti sunt quas ut quae ipsa qui. Omnis repellendus qui sed nulla suscipit libero id. Facilis non voluptates ut vero tenetur assumenda vel. Et sint fugit maiores voluptatum iure aut. Necessitatibus dolores fuga voluptatem et.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(97, 5, 4, 'Culpa omnis omnis cupiditate aut quam et. Aut est rerum repellat eaque quidem. Quo omnis quia quis magni provident sed. Vel tempora et dolorum sapiente sit. Natus molestiae omnis saepe eaque magni repudiandae est repellendus. Cupiditate esse minus non aut. Ab et dicta occaecati voluptate nisi eos. Ipsam qui aut aut quia accusantium soluta possimus nisi.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(98, 5, 9, 'Voluptas tempora tempore repudiandae ut sapiente omnis. Aut dolore cupiditate voluptatibus ut qui dolorem incidunt facere. Facilis fugit est quidem ut libero atque. In quo ab et in illo in. Ullam mollitia porro corrupti rerum fuga facilis. Rem laudantium eum voluptatem voluptas. Et quibusdam consequatur et ipsam debitis dolor officiis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(99, 5, 3, 'Optio fuga et rem autem ad quisquam. Quo iusto libero ut asperiores maiores eligendi veniam non. Sit sit modi provident hic qui. Consequatur in in nostrum quia.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(100, 4, 8, 'Ab aut blanditiis labore incidunt. Dolor autem dolor iusto molestias aspernatur minus aut fugit. Rerum fugiat et totam. Ea dolorum porro rerum beatae exercitationem fugit maxime dolor. Voluptatem nihil velit illo suscipit sint eum. Dicta non vel incidunt soluta. Et ut sed nesciunt doloremque quos atque. Iste suscipit et doloremque blanditiis ipsam eos.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(101, 11, 31, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2022-11-09 18:11:55', '2022-11-09 18:11:55');

-- --------------------------------------------------------

--
-- Struktura tabulky `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 2, 'Assumenda id natus sunt debitis et consequatur quam.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(2, 1, 'Quibusdam unde aut deleniti atque occaecati et.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(3, 1, 'Sapiente ut accusantium nostrum suscipit odio placeat sit.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(4, 3, 'Aspernatur adipisci sint libero.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(5, 2, 'Nostrum voluptas atque ad quae sed dignissimos aut.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(6, 4, 'In mollitia harum incidunt laborum.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(7, 1, 'Nam blanditiis est doloribus qui debitis recusandae.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(8, 5, 'Rerum et voluptas debitis nam enim.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(9, 1, 'Vero unde non assumenda nobis qui asperiores.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(10, 5, 'Eos ut aut provident fugit et.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(11, 2, 'Modi iusto non maxime ex voluptatem.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(12, 2, 'Maxime alias quidem libero consectetur vero incidunt in sint.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(13, 2, 'Ut et ut nesciunt voluptatem aspernatur et fugiat.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(14, 1, 'Asperiores dolor delectus ipsum natus nihil perspiciatis aut ratione.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(15, 1, 'Et officia dicta at omnis.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(16, 3, 'Iste provident aperiam quis rem totam.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(17, 5, 'Eum libero expedita velit non sunt qui laudantium non.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(18, 5, 'Harum sunt eos earum aut nihil.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(19, 2, 'Aut quasi asperiores neque officiis dolorem vero.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(20, 5, 'Illum deserunt est veniam possimus sed alias eligendi eum.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(21, 1, 'Harum veniam quia necessitatibus autem commodi voluptatem cupiditate.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(22, 2, 'Velit animi aut quaerat quia.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(23, 5, 'Earum sunt culpa perspiciatis quasi iste eos.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(24, 5, 'Consequatur et est aut est corporis possimus.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(25, 5, 'Autem alias pariatur corrupti consequatur quasi.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(26, 1, 'Eligendi modi qui quidem et ut.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(27, 1, 'Nostrum molestias consequatur aliquid repellat modi velit qui nisi.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(28, 2, 'Ipsam deserunt mollitia reprehenderit qui architecto explicabo repellendus.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(29, 4, 'Eaque temporibus quia quibusdam.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(30, 2, 'Et ea voluptas quia ut.', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(31, 11, 'Laravel', '2022-11-09 18:11:55', '2022-11-09 18:11:55');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profilePic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profilePic`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Shawna Heidenreich PhD', 'aking@example.net', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Bwc7BOZLOa', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(2, 'Dr. Jacinthe Carroll', 'bahringer.fidel@example.com', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'cjusgE3D8H', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(3, 'Prof. Shannon Funk', 'elvis.schoen@example.net', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'h3oo3zgk7B', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(4, 'Cory Hermann', 'rath.palma@example.net', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'zPH6eSfZrr', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(5, 'Isaiah McClure Jr.', 'wanda03@example.org', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'uQMUDDmxbd', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(6, 'Miss Eugenia Moen II', 'candido75@example.org', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'soEKuCvQp5', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(7, 'Jan Rogahn', 'camilla.denesik@example.net', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'iWTQCcI3SP', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(8, 'Susie Wyman', 'jast.harvey@example.com', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'tYuvf1K4dX', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(9, 'Jermaine Monahan', 'ustehr@example.org', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'gdVkp03Tvk', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(10, 'Miss Mariana Waelchi II', 'maggio.nash@example.net', '2022-11-09 17:52:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'vjy3Ioe5Hh', '2022-11-09 17:52:11', '2022-11-09 17:52:11'),
(11, 'Josef Nový', 'pepa_novy@gmail.com', NULL, '$2y$10$//yrosWxAOyA6T5xLBE9o.ZTMFE5dpl3gFIsN/JmQDXPqOAYQUAB.', 'profilePics/MwE5qrJLAdMopCArK5BFWTH3yoZFHbLSxDtHDpzx.jpg', NULL, '2022-11-09 18:11:30', '2022-11-09 18:11:30');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexy pro tabulku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexy pro tabulku `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexy pro tabulku `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_topic_id_foreign` (`topic_id`);

--
-- Indexy pro tabulku `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_user_id_foreign` (`user_id`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pro tabulku `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pro tabulku `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
