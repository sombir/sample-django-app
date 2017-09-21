-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2017 at 07:23 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample_django_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add articles', 7, 'add_articles'),
(20, 'Can change articles', 7, 'change_articles'),
(21, 'Can delete articles', 7, 'delete_articles'),
(22, 'Can add pages', 8, 'add_pages'),
(23, 'Can change pages', 8, 'change_pages'),
(24, 'Can delete pages', 8, 'delete_pages'),
(25, 'Can add contacts', 9, 'add_contacts'),
(26, 'Can change contacts', 9, 'change_contacts'),
(27, 'Can delete contacts', 9, 'delete_contacts');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$EkIKlPfkwdPP$W+gotrWi8sGdFQUl/13iz6xcqrE/7HHPREjHYJq4OJU=', '2017-09-20 07:27:14.475656', 1, 'admin', '', '', 'sombir@gmail.com', 1, 1, '2017-09-20 07:26:48.612412');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_articles`
--

CREATE TABLE `blog_articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `summary` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_articles`
--

INSERT INTO `blog_articles` (`id`, `title`, `description`, `created_at`, `summary`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p> \r\n\r\n<p>Phasellus commodo sem sapien, in dapibus tellus placerat id. Proin in massa id massa ornare sollicitudin. Fusce sed venenatis mi. Integer a ante felis. Donec sit amet porttitor orci. Etiam et ex fringilla, sagittis lorem sit amet, condimentum dui. Curabitur tincidunt facilisis suscipit. Nullam nec sapien eu tellus rhoncus commodo. Ut ullamcorper placerat luctus.</p> \r\n\r\n<p>Etiam nec lacinia lorem, eu scelerisque justo. Vestibulum vulputate laoreet nibh, eu congue dolor pretium non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas vel augue nec turpis rhoncus facilisis. Nulla facilisi. Duis congue, magna vel consequat vulputate, arcu enim tempus dui, id ultricies risus arcu non nisi. Nam commodo feugiat hendrerit. Nam porta massa sem, eu efficitur nisl tristique sed. Pellentesque nec urna eget lacus lobortis varius ac tempus leo. Phasellus eget velit nunc. Nunc bibendum, augue sed scelerisque suscipit, mi risus faucibus nisi, a vehicula massa urna non felis. Pellentesque ullamcorper viverra pulvinar. Ut vel velit enim. Etiam vehicula fermentum ex, hendrerit luctus erat pretium non.</p> \r\n\r\n<p>Duis justo orci, mattis vel aliquam nec, rutrum vel purus. Nam dignissim turpis id sapien eleifend pulvinar. Donec eu orci in quam maximus eleifend. Etiam convallis aliquet neque, eget rutrum nulla. Aliquam nibh neque, commodo id massa ac, condimentum vehicula ligula. Praesent faucibus odio at auctor tincidunt. Cras ac purus faucibus, dictum lacus id, elementum nunc. Cras mollis lorem augue, vel accumsan nunc faucibus sed. Curabitur eros quam, mollis nec erat eget, sollicitudin congue lorem. Mauris sagittis at velit id hendrerit. Morbi et elit a arcu semper lacinia. Quisque eget massa non magna rhoncus pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eu neque et arcu iaculis commodo. Ut et lacus nec nisi tincidunt pellentesque hendrerit non lectus.</p> \r\n\r\n<p>Vestibulum sollicitudin, risus ut auctor aliquet, lacus nisi sodales libero, id commodo dolor urna ut nulla. Praesent pellentesque, risus faucibus accumsan gravida, magna tellus tempus justo, sed sollicitudin tellus elit sed ligula. Suspendisse potenti. In laoreet risus at auctor euismod. Duis viverra mollis est sed dapibus. Nunc rutrum massa laoreet, viverra augue eget, commodo mauris. Sed efficitur vehicula odio sed sagittis. Vestibulum at consectetur nunc, vitae venenatis justo.</p> \r\n\r\n<p>In et egestas nisl, mattis porta magna. Quisque mattis convallis justo vitae elementum. Suspendisse efficitur vel arcu vel aliquet. Phasellus vitae urna tortor. Morbi tincidunt quam et tristique venenatis. Pellentesque efficitur, nunc sit amet porttitor ultricies, tellus justo venenatis neque, ac rhoncus leo orci vitae est. Integer tincidunt velit sed dui ultricies ultrices. Suspendisse pharetra tincidunt aliquet. Vivamus bibendum dolor eu neque bibendum, ut eleifend sapien faucibus. Suspendisse dictum ullamcorper egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ut augue ut nisi suscipit egestas in id tortor. Nullam finibus elementum tellus, a gravida ex pharetra sit amet. Integer a tempus ipsum. Praesent laoreet dapibus ligula, posuere volutpat felis mollis sit amet.</p> \r\n\r\n<p>Nullam vel cursus risus. Morbi id ligula purus. Ut vitae elit tristique, ultricies odio quis, ultrices justo. Aliquam hendrerit nulla in turpis congue, in consectetur libero congue. Integer dapibus ex quis tellus fermentum, eget blandit massa tempor. Aliquam ut justo a diam semper facilisis. Nulla ut libero quis libero ornare tincidunt eget vitae enim. Vestibulum tincidunt rhoncus egestas. Sed tellus metus, sodales at ligula nec, consectetur fermentum ante.</p> \r\n\r\n<p>Ut dictum tellus non felis vulputate, hendrerit egestas sem pulvinar. Mauris ligula urna, sagittis nec dui non, rutrum molestie nibh. Donec at rutrum augue. Morbi pulvinar felis ut neque malesuada, semper suscipit ante bibendum. Vivamus pretium mauris sit amet dolor congue, ut luctus est volutpat. Nullam varius non purus non semper. Integer ultricies nisl id lacus ultricies euismod. Cras eget quam sed quam porta dapibus quis sed ante. Nulla facilisi.</p> \r\n\r\n<p>Mauris gravida neque et turpis vestibulum vestibulum. Pellentesque risus nunc, bibendum sit amet elit sed, finibus lobortis mauris. Duis nec odio ante. Nulla hendrerit ipsum ac venenatis rhoncus. Morbi porta porttitor metus non malesuada. Donec accumsan magna leo, a convallis metus fringilla sit amet. Sed quis augue et dolor facilisis malesuada.</p> \r\n\r\n<p>Curabitur lobortis efficitur elit. Sed eu neque laoreet, ultrices libero eget, laoreet est. Proin finibus eget felis sit amet mattis. Morbi aliquam tincidunt nisi, eget consectetur dolor condimentum id. Quisque in tellus sit amet turpis dignissim tristique. Proin sit amet urna eleifend, vulputate metus non, maximus est. Sed ullamcorper tortor vel risus molestie, id vulputate arcu feugiat. Mauris quis est urna. Nam in neque nec eros condimentum viverra a id ipsum. In sagittis commodo gravida.</p> ', '2017-09-20 00:00:00.000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. '),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p> \r\n\r\n<p>Phasellus commodo sem sapien, in dapibus tellus placerat id. Proin in massa id massa ornare sollicitudin. Fusce sed venenatis mi. Integer a ante felis. Donec sit amet porttitor orci. Etiam et ex fringilla, sagittis lorem sit amet, condimentum dui. Curabitur tincidunt facilisis suscipit. Nullam nec sapien eu tellus rhoncus commodo. Ut ullamcorper placerat luctus.</p> \r\n\r\n<p>Etiam nec lacinia lorem, eu scelerisque justo. Vestibulum vulputate laoreet nibh, eu congue dolor pretium non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas vel augue nec turpis rhoncus facilisis. Nulla facilisi. Duis congue, magna vel consequat vulputate, arcu enim tempus dui, id ultricies risus arcu non nisi. Nam commodo feugiat hendrerit. Nam porta massa sem, eu efficitur nisl tristique sed. Pellentesque nec urna eget lacus lobortis varius ac tempus leo. Phasellus eget velit nunc. Nunc bibendum, augue sed scelerisque suscipit, mi risus faucibus nisi, a vehicula massa urna non felis. Pellentesque ullamcorper viverra pulvinar. Ut vel velit enim. Etiam vehicula fermentum ex, hendrerit luctus erat pretium non.</p> \r\n\r\n<p>Duis justo orci, mattis vel aliquam nec, rutrum vel purus. Nam dignissim turpis id sapien eleifend pulvinar. Donec eu orci in quam maximus eleifend. Etiam convallis aliquet neque, eget rutrum nulla. Aliquam nibh neque, commodo id massa ac, condimentum vehicula ligula. Praesent faucibus odio at auctor tincidunt. Cras ac purus faucibus, dictum lacus id, elementum nunc. Cras mollis lorem augue, vel accumsan nunc faucibus sed. Curabitur eros quam, mollis nec erat eget, sollicitudin congue lorem. Mauris sagittis at velit id hendrerit. Morbi et elit a arcu semper lacinia. Quisque eget massa non magna rhoncus pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eu neque et arcu iaculis commodo. Ut et lacus nec nisi tincidunt pellentesque hendrerit non lectus.</p> \r\n\r\n<p>Vestibulum sollicitudin, risus ut auctor aliquet, lacus nisi sodales libero, id commodo dolor urna ut nulla. Praesent pellentesque, risus faucibus accumsan gravida, magna tellus tempus justo, sed sollicitudin tellus elit sed ligula. Suspendisse potenti. In laoreet risus at auctor euismod. Duis viverra mollis est sed dapibus. Nunc rutrum massa laoreet, viverra augue eget, commodo mauris. Sed efficitur vehicula odio sed sagittis. Vestibulum at consectetur nunc, vitae venenatis justo.</p> \r\n\r\n<p>In et egestas nisl, mattis porta magna. Quisque mattis convallis justo vitae elementum. Suspendisse efficitur vel arcu vel aliquet. Phasellus vitae urna tortor. Morbi tincidunt quam et tristique venenatis. Pellentesque efficitur, nunc sit amet porttitor ultricies, tellus justo venenatis neque, ac rhoncus leo orci vitae est. Integer tincidunt velit sed dui ultricies ultrices. Suspendisse pharetra tincidunt aliquet. Vivamus bibendum dolor eu neque bibendum, ut eleifend sapien faucibus. Suspendisse dictum ullamcorper egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ut augue ut nisi suscipit egestas in id tortor. Nullam finibus elementum tellus, a gravida ex pharetra sit amet. Integer a tempus ipsum. Praesent laoreet dapibus ligula, posuere volutpat felis mollis sit amet.</p> \r\n\r\n<p>Nullam vel cursus risus. Morbi id ligula purus. Ut vitae elit tristique, ultricies odio quis, ultrices justo. Aliquam hendrerit nulla in turpis congue, in consectetur libero congue. Integer dapibus ex quis tellus fermentum, eget blandit massa tempor. Aliquam ut justo a diam semper facilisis. Nulla ut libero quis libero ornare tincidunt eget vitae enim. Vestibulum tincidunt rhoncus egestas. Sed tellus metus, sodales at ligula nec, consectetur fermentum ante.</p> \r\n\r\n<p>Ut dictum tellus non felis vulputate, hendrerit egestas sem pulvinar. Mauris ligula urna, sagittis nec dui non, rutrum molestie nibh. Donec at rutrum augue. Morbi pulvinar felis ut neque malesuada, semper suscipit ante bibendum. Vivamus pretium mauris sit amet dolor congue, ut luctus est volutpat. Nullam varius non purus non semper. Integer ultricies nisl id lacus ultricies euismod. Cras eget quam sed quam porta dapibus quis sed ante. Nulla facilisi.</p> \r\n\r\n<p>Mauris gravida neque et turpis vestibulum vestibulum. Pellentesque risus nunc, bibendum sit amet elit sed, finibus lobortis mauris. Duis nec odio ante. Nulla hendrerit ipsum ac venenatis rhoncus. Morbi porta porttitor metus non malesuada. Donec accumsan magna leo, a convallis metus fringilla sit amet. Sed quis augue et dolor facilisis malesuada.</p> \r\n\r\n<p>Curabitur lobortis efficitur elit. Sed eu neque laoreet, ultrices libero eget, laoreet est. Proin finibus eget felis sit amet mattis. Morbi aliquam tincidunt nisi, eget consectetur dolor condimentum id. Quisque in tellus sit amet turpis dignissim tristique. Proin sit amet urna eleifend, vulputate metus non, maximus est. Sed ullamcorper tortor vel risus molestie, id vulputate arcu feugiat. Mauris quis est urna. Nam in neque nec eros condimentum viverra a id ipsum. In sagittis commodo gravida.</p> ', '2017-09-20 00:00:00.000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. '),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p> \r\n\r\n<p>Phasellus commodo sem sapien, in dapibus tellus placerat id. Proin in massa id massa ornare sollicitudin. Fusce sed venenatis mi. Integer a ante felis. Donec sit amet porttitor orci. Etiam et ex fringilla, sagittis lorem sit amet, condimentum dui. Curabitur tincidunt facilisis suscipit. Nullam nec sapien eu tellus rhoncus commodo. Ut ullamcorper placerat luctus.</p> \r\n\r\n<p>Etiam nec lacinia lorem, eu scelerisque justo. Vestibulum vulputate laoreet nibh, eu congue dolor pretium non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas vel augue nec turpis rhoncus facilisis. Nulla facilisi. Duis congue, magna vel consequat vulputate, arcu enim tempus dui, id ultricies risus arcu non nisi. Nam commodo feugiat hendrerit. Nam porta massa sem, eu efficitur nisl tristique sed. Pellentesque nec urna eget lacus lobortis varius ac tempus leo. Phasellus eget velit nunc. Nunc bibendum, augue sed scelerisque suscipit, mi risus faucibus nisi, a vehicula massa urna non felis. Pellentesque ullamcorper viverra pulvinar. Ut vel velit enim. Etiam vehicula fermentum ex, hendrerit luctus erat pretium non.</p> \r\n\r\n<p>Duis justo orci, mattis vel aliquam nec, rutrum vel purus. Nam dignissim turpis id sapien eleifend pulvinar. Donec eu orci in quam maximus eleifend. Etiam convallis aliquet neque, eget rutrum nulla. Aliquam nibh neque, commodo id massa ac, condimentum vehicula ligula. Praesent faucibus odio at auctor tincidunt. Cras ac purus faucibus, dictum lacus id, elementum nunc. Cras mollis lorem augue, vel accumsan nunc faucibus sed. Curabitur eros quam, mollis nec erat eget, sollicitudin congue lorem. Mauris sagittis at velit id hendrerit. Morbi et elit a arcu semper lacinia. Quisque eget massa non magna rhoncus pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eu neque et arcu iaculis commodo. Ut et lacus nec nisi tincidunt pellentesque hendrerit non lectus.</p> \r\n\r\n<p>Vestibulum sollicitudin, risus ut auctor aliquet, lacus nisi sodales libero, id commodo dolor urna ut nulla. Praesent pellentesque, risus faucibus accumsan gravida, magna tellus tempus justo, sed sollicitudin tellus elit sed ligula. Suspendisse potenti. In laoreet risus at auctor euismod. Duis viverra mollis est sed dapibus. Nunc rutrum massa laoreet, viverra augue eget, commodo mauris. Sed efficitur vehicula odio sed sagittis. Vestibulum at consectetur nunc, vitae venenatis justo.</p> \r\n\r\n<p>In et egestas nisl, mattis porta magna. Quisque mattis convallis justo vitae elementum. Suspendisse efficitur vel arcu vel aliquet. Phasellus vitae urna tortor. Morbi tincidunt quam et tristique venenatis. Pellentesque efficitur, nunc sit amet porttitor ultricies, tellus justo venenatis neque, ac rhoncus leo orci vitae est. Integer tincidunt velit sed dui ultricies ultrices. Suspendisse pharetra tincidunt aliquet. Vivamus bibendum dolor eu neque bibendum, ut eleifend sapien faucibus. Suspendisse dictum ullamcorper egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ut augue ut nisi suscipit egestas in id tortor. Nullam finibus elementum tellus, a gravida ex pharetra sit amet. Integer a tempus ipsum. Praesent laoreet dapibus ligula, posuere volutpat felis mollis sit amet.</p> \r\n\r\n<p>Nullam vel cursus risus. Morbi id ligula purus. Ut vitae elit tristique, ultricies odio quis, ultrices justo. Aliquam hendrerit nulla in turpis congue, in consectetur libero congue. Integer dapibus ex quis tellus fermentum, eget blandit massa tempor. Aliquam ut justo a diam semper facilisis. Nulla ut libero quis libero ornare tincidunt eget vitae enim. Vestibulum tincidunt rhoncus egestas. Sed tellus metus, sodales at ligula nec, consectetur fermentum ante.</p> \r\n\r\n<p>Ut dictum tellus non felis vulputate, hendrerit egestas sem pulvinar. Mauris ligula urna, sagittis nec dui non, rutrum molestie nibh. Donec at rutrum augue. Morbi pulvinar felis ut neque malesuada, semper suscipit ante bibendum. Vivamus pretium mauris sit amet dolor congue, ut luctus est volutpat. Nullam varius non purus non semper. Integer ultricies nisl id lacus ultricies euismod. Cras eget quam sed quam porta dapibus quis sed ante. Nulla facilisi.</p> \r\n\r\n<p>Mauris gravida neque et turpis vestibulum vestibulum. Pellentesque risus nunc, bibendum sit amet elit sed, finibus lobortis mauris. Duis nec odio ante. Nulla hendrerit ipsum ac venenatis rhoncus. Morbi porta porttitor metus non malesuada. Donec accumsan magna leo, a convallis metus fringilla sit amet. Sed quis augue et dolor facilisis malesuada.</p> \r\n\r\n<p>Curabitur lobortis efficitur elit. Sed eu neque laoreet, ultrices libero eget, laoreet est. Proin finibus eget felis sit amet mattis. Morbi aliquam tincidunt nisi, eget consectetur dolor condimentum id. Quisque in tellus sit amet turpis dignissim tristique. Proin sit amet urna eleifend, vulputate metus non, maximus est. Sed ullamcorper tortor vel risus molestie, id vulputate arcu feugiat. Mauris quis est urna. Nam in neque nec eros condimentum viverra a id ipsum. In sagittis commodo gravida.</p> ', '2017-09-20 00:00:00.000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. '),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p> \r\n\r\n<p>Phasellus commodo sem sapien, in dapibus tellus placerat id. Proin in massa id massa ornare sollicitudin. Fusce sed venenatis mi. Integer a ante felis. Donec sit amet porttitor orci. Etiam et ex fringilla, sagittis lorem sit amet, condimentum dui. Curabitur tincidunt facilisis suscipit. Nullam nec sapien eu tellus rhoncus commodo. Ut ullamcorper placerat luctus.</p> \r\n\r\n<p>Etiam nec lacinia lorem, eu scelerisque justo. Vestibulum vulputate laoreet nibh, eu congue dolor pretium non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas vel augue nec turpis rhoncus facilisis. Nulla facilisi. Duis congue, magna vel consequat vulputate, arcu enim tempus dui, id ultricies risus arcu non nisi. Nam commodo feugiat hendrerit. Nam porta massa sem, eu efficitur nisl tristique sed. Pellentesque nec urna eget lacus lobortis varius ac tempus leo. Phasellus eget velit nunc. Nunc bibendum, augue sed scelerisque suscipit, mi risus faucibus nisi, a vehicula massa urna non felis. Pellentesque ullamcorper viverra pulvinar. Ut vel velit enim. Etiam vehicula fermentum ex, hendrerit luctus erat pretium non.</p> \r\n\r\n<p>Duis justo orci, mattis vel aliquam nec, rutrum vel purus. Nam dignissim turpis id sapien eleifend pulvinar. Donec eu orci in quam maximus eleifend. Etiam convallis aliquet neque, eget rutrum nulla. Aliquam nibh neque, commodo id massa ac, condimentum vehicula ligula. Praesent faucibus odio at auctor tincidunt. Cras ac purus faucibus, dictum lacus id, elementum nunc. Cras mollis lorem augue, vel accumsan nunc faucibus sed. Curabitur eros quam, mollis nec erat eget, sollicitudin congue lorem. Mauris sagittis at velit id hendrerit. Morbi et elit a arcu semper lacinia. Quisque eget massa non magna rhoncus pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eu neque et arcu iaculis commodo. Ut et lacus nec nisi tincidunt pellentesque hendrerit non lectus.</p> \r\n\r\n<p>Vestibulum sollicitudin, risus ut auctor aliquet, lacus nisi sodales libero, id commodo dolor urna ut nulla. Praesent pellentesque, risus faucibus accumsan gravida, magna tellus tempus justo, sed sollicitudin tellus elit sed ligula. Suspendisse potenti. In laoreet risus at auctor euismod. Duis viverra mollis est sed dapibus. Nunc rutrum massa laoreet, viverra augue eget, commodo mauris. Sed efficitur vehicula odio sed sagittis. Vestibulum at consectetur nunc, vitae venenatis justo.</p> \r\n\r\n<p>In et egestas nisl, mattis porta magna. Quisque mattis convallis justo vitae elementum. Suspendisse efficitur vel arcu vel aliquet. Phasellus vitae urna tortor. Morbi tincidunt quam et tristique venenatis. Pellentesque efficitur, nunc sit amet porttitor ultricies, tellus justo venenatis neque, ac rhoncus leo orci vitae est. Integer tincidunt velit sed dui ultricies ultrices. Suspendisse pharetra tincidunt aliquet. Vivamus bibendum dolor eu neque bibendum, ut eleifend sapien faucibus. Suspendisse dictum ullamcorper egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ut augue ut nisi suscipit egestas in id tortor. Nullam finibus elementum tellus, a gravida ex pharetra sit amet. Integer a tempus ipsum. Praesent laoreet dapibus ligula, posuere volutpat felis mollis sit amet.</p> \r\n\r\n<p>Nullam vel cursus risus. Morbi id ligula purus. Ut vitae elit tristique, ultricies odio quis, ultrices justo. Aliquam hendrerit nulla in turpis congue, in consectetur libero congue. Integer dapibus ex quis tellus fermentum, eget blandit massa tempor. Aliquam ut justo a diam semper facilisis. Nulla ut libero quis libero ornare tincidunt eget vitae enim. Vestibulum tincidunt rhoncus egestas. Sed tellus metus, sodales at ligula nec, consectetur fermentum ante.</p> \r\n\r\n<p>Ut dictum tellus non felis vulputate, hendrerit egestas sem pulvinar. Mauris ligula urna, sagittis nec dui non, rutrum molestie nibh. Donec at rutrum augue. Morbi pulvinar felis ut neque malesuada, semper suscipit ante bibendum. Vivamus pretium mauris sit amet dolor congue, ut luctus est volutpat. Nullam varius non purus non semper. Integer ultricies nisl id lacus ultricies euismod. Cras eget quam sed quam porta dapibus quis sed ante. Nulla facilisi.</p> \r\n\r\n<p>Mauris gravida neque et turpis vestibulum vestibulum. Pellentesque risus nunc, bibendum sit amet elit sed, finibus lobortis mauris. Duis nec odio ante. Nulla hendrerit ipsum ac venenatis rhoncus. Morbi porta porttitor metus non malesuada. Donec accumsan magna leo, a convallis metus fringilla sit amet. Sed quis augue et dolor facilisis malesuada.</p> \r\n\r\n<p>Curabitur lobortis efficitur elit. Sed eu neque laoreet, ultrices libero eget, laoreet est. Proin finibus eget felis sit amet mattis. Morbi aliquam tincidunt nisi, eget consectetur dolor condimentum id. Quisque in tellus sit amet turpis dignissim tristique. Proin sit amet urna eleifend, vulputate metus non, maximus est. Sed ullamcorper tortor vel risus molestie, id vulputate arcu feugiat. Mauris quis est urna. Nam in neque nec eros condimentum viverra a id ipsum. In sagittis commodo gravida.</p> ', '2017-09-20 00:00:00.000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. '),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p> \r\n\r\n<p>Phasellus commodo sem sapien, in dapibus tellus placerat id. Proin in massa id massa ornare sollicitudin. Fusce sed venenatis mi. Integer a ante felis. Donec sit amet porttitor orci. Etiam et ex fringilla, sagittis lorem sit amet, condimentum dui. Curabitur tincidunt facilisis suscipit. Nullam nec sapien eu tellus rhoncus commodo. Ut ullamcorper placerat luctus.</p> \r\n\r\n<p>Etiam nec lacinia lorem, eu scelerisque justo. Vestibulum vulputate laoreet nibh, eu congue dolor pretium non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas vel augue nec turpis rhoncus facilisis. Nulla facilisi. Duis congue, magna vel consequat vulputate, arcu enim tempus dui, id ultricies risus arcu non nisi. Nam commodo feugiat hendrerit. Nam porta massa sem, eu efficitur nisl tristique sed. Pellentesque nec urna eget lacus lobortis varius ac tempus leo. Phasellus eget velit nunc. Nunc bibendum, augue sed scelerisque suscipit, mi risus faucibus nisi, a vehicula massa urna non felis. Pellentesque ullamcorper viverra pulvinar. Ut vel velit enim. Etiam vehicula fermentum ex, hendrerit luctus erat pretium non.</p> \r\n\r\n<p>Duis justo orci, mattis vel aliquam nec, rutrum vel purus. Nam dignissim turpis id sapien eleifend pulvinar. Donec eu orci in quam maximus eleifend. Etiam convallis aliquet neque, eget rutrum nulla. Aliquam nibh neque, commodo id massa ac, condimentum vehicula ligula. Praesent faucibus odio at auctor tincidunt. Cras ac purus faucibus, dictum lacus id, elementum nunc. Cras mollis lorem augue, vel accumsan nunc faucibus sed. Curabitur eros quam, mollis nec erat eget, sollicitudin congue lorem. Mauris sagittis at velit id hendrerit. Morbi et elit a arcu semper lacinia. Quisque eget massa non magna rhoncus pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eu neque et arcu iaculis commodo. Ut et lacus nec nisi tincidunt pellentesque hendrerit non lectus.</p> \r\n\r\n<p>Vestibulum sollicitudin, risus ut auctor aliquet, lacus nisi sodales libero, id commodo dolor urna ut nulla. Praesent pellentesque, risus faucibus accumsan gravida, magna tellus tempus justo, sed sollicitudin tellus elit sed ligula. Suspendisse potenti. In laoreet risus at auctor euismod. Duis viverra mollis est sed dapibus. Nunc rutrum massa laoreet, viverra augue eget, commodo mauris. Sed efficitur vehicula odio sed sagittis. Vestibulum at consectetur nunc, vitae venenatis justo.</p> \r\n\r\n<p>In et egestas nisl, mattis porta magna. Quisque mattis convallis justo vitae elementum. Suspendisse efficitur vel arcu vel aliquet. Phasellus vitae urna tortor. Morbi tincidunt quam et tristique venenatis. Pellentesque efficitur, nunc sit amet porttitor ultricies, tellus justo venenatis neque, ac rhoncus leo orci vitae est. Integer tincidunt velit sed dui ultricies ultrices. Suspendisse pharetra tincidunt aliquet. Vivamus bibendum dolor eu neque bibendum, ut eleifend sapien faucibus. Suspendisse dictum ullamcorper egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ut augue ut nisi suscipit egestas in id tortor. Nullam finibus elementum tellus, a gravida ex pharetra sit amet. Integer a tempus ipsum. Praesent laoreet dapibus ligula, posuere volutpat felis mollis sit amet.</p> \r\n\r\n<p>Nullam vel cursus risus. Morbi id ligula purus. Ut vitae elit tristique, ultricies odio quis, ultrices justo. Aliquam hendrerit nulla in turpis congue, in consectetur libero congue. Integer dapibus ex quis tellus fermentum, eget blandit massa tempor. Aliquam ut justo a diam semper facilisis. Nulla ut libero quis libero ornare tincidunt eget vitae enim. Vestibulum tincidunt rhoncus egestas. Sed tellus metus, sodales at ligula nec, consectetur fermentum ante.</p> \r\n\r\n<p>Ut dictum tellus non felis vulputate, hendrerit egestas sem pulvinar. Mauris ligula urna, sagittis nec dui non, rutrum molestie nibh. Donec at rutrum augue. Morbi pulvinar felis ut neque malesuada, semper suscipit ante bibendum. Vivamus pretium mauris sit amet dolor congue, ut luctus est volutpat. Nullam varius non purus non semper. Integer ultricies nisl id lacus ultricies euismod. Cras eget quam sed quam porta dapibus quis sed ante. Nulla facilisi.</p> \r\n\r\n<p>Mauris gravida neque et turpis vestibulum vestibulum. Pellentesque risus nunc, bibendum sit amet elit sed, finibus lobortis mauris. Duis nec odio ante. Nulla hendrerit ipsum ac venenatis rhoncus. Morbi porta porttitor metus non malesuada. Donec accumsan magna leo, a convallis metus fringilla sit amet. Sed quis augue et dolor facilisis malesuada.</p> \r\n\r\n<p>Curabitur lobortis efficitur elit. Sed eu neque laoreet, ultrices libero eget, laoreet est. Proin finibus eget felis sit amet mattis. Morbi aliquam tincidunt nisi, eget consectetur dolor condimentum id. Quisque in tellus sit amet turpis dignissim tristique. Proin sit amet urna eleifend, vulputate metus non, maximus est. Sed ullamcorper tortor vel risus molestie, id vulputate arcu feugiat. Mauris quis est urna. Nam in neque nec eros condimentum viverra a id ipsum. In sagittis commodo gravida.</p> ', '2017-09-20 00:00:00.000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ');

-- --------------------------------------------------------

--
-- Table structure for table `blog_contacts`
--

CREATE TABLE `blog_contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_contacts`
--

INSERT INTO `blog_contacts` (`id`, `name`, `email`, `phone_number`, `subject`, `message`, `created_at`) VALUES
(1, 'Sombir', 'sombir@gmail.com', '9990216777', 'Subject', 'asdasd', '2017-09-21 12:38:03.954240'),
(2, 'Vinod', 'vinod@gmail.com', '9990216777', 'Subject', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutru', '2017-09-21 12:38:59.717169'),
(3, 'Vinod', 'vikram@gmail.com', '9990216777', 'Subject', 'zxczxczxc', '2017-09-21 12:42:06.746192'),
(4, 'Vinod', 'vikram@gmail.com', '9990216777', 'Subject', 'zxczxczxc', '2017-09-21 12:43:47.063525');

-- --------------------------------------------------------

--
-- Table structure for table `blog_pages`
--

CREATE TABLE `blog_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `summary` longtext NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_pages`
--

INSERT INTO `blog_pages` (`id`, `title`, `summary`, `description`, `created_at`) VALUES
(1, 'About Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p> \r\n\r\n<p>Phasellus commodo sem sapien, in dapibus tellus placerat id. Proin in massa id massa ornare sollicitudin. Fusce sed venenatis mi. Integer a ante felis. Donec sit amet porttitor orci. Etiam et ex fringilla, sagittis lorem sit amet, condimentum dui. Curabitur tincidunt facilisis suscipit. Nullam nec sapien eu tellus rhoncus commodo. Ut ullamcorper placerat luctus.</p> \r\n\r\n<p>Etiam nec lacinia lorem, eu scelerisque justo. Vestibulum vulputate laoreet nibh, eu congue dolor pretium non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas vel augue nec turpis rhoncus facilisis. Nulla facilisi. Duis congue, magna vel consequat vulputate, arcu enim tempus dui, id ultricies risus arcu non nisi. Nam commodo feugiat hendrerit. Nam porta massa sem, eu efficitur nisl tristique sed. Pellentesque nec urna eget lacus lobortis varius ac tempus leo. Phasellus eget velit nunc. Nunc bibendum, augue sed scelerisque suscipit, mi risus faucibus nisi, a vehicula massa urna non felis. Pellentesque ullamcorper viverra pulvinar. Ut vel velit enim. Etiam vehicula fermentum ex, hendrerit luctus erat pretium non.</p> \r\n\r\n<p>Duis justo orci, mattis vel aliquam nec, rutrum vel purus. Nam dignissim turpis id sapien eleifend pulvinar. Donec eu orci in quam maximus eleifend. Etiam convallis aliquet neque, eget rutrum nulla. Aliquam nibh neque, commodo id massa ac, condimentum vehicula ligula. Praesent faucibus odio at auctor tincidunt. Cras ac purus faucibus, dictum lacus id, elementum nunc. Cras mollis lorem augue, vel accumsan nunc faucibus sed. Curabitur eros quam, mollis nec erat eget, sollicitudin congue lorem. Mauris sagittis at velit id hendrerit. Morbi et elit a arcu semper lacinia. Quisque eget massa non magna rhoncus pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eu neque et arcu iaculis commodo. Ut et lacus nec nisi tincidunt pellentesque hendrerit non lectus.</p> \r\n\r\n<p>Vestibulum sollicitudin, risus ut auctor aliquet, lacus nisi sodales libero, id commodo dolor urna ut nulla. Praesent pellentesque, risus faucibus accumsan gravida, magna tellus tempus justo, sed sollicitudin tellus elit sed ligula. Suspendisse potenti. In laoreet risus at auctor euismod. Duis viverra mollis est sed dapibus. Nunc rutrum massa laoreet, viverra augue eget, commodo mauris. Sed efficitur vehicula odio sed sagittis. Vestibulum at consectetur nunc, vitae venenatis justo.</p> \r\n\r\n<p>In et egestas nisl, mattis porta magna. Quisque mattis convallis justo vitae elementum. Suspendisse efficitur vel arcu vel aliquet. Phasellus vitae urna tortor. Morbi tincidunt quam et tristique venenatis. Pellentesque efficitur, nunc sit amet porttitor ultricies, tellus justo venenatis neque, ac rhoncus leo orci vitae est. Integer tincidunt velit sed dui ultricies ultrices. Suspendisse pharetra tincidunt aliquet. Vivamus bibendum dolor eu neque bibendum, ut eleifend sapien faucibus. Suspendisse dictum ullamcorper egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ut augue ut nisi suscipit egestas in id tortor. Nullam finibus elementum tellus, a gravida ex pharetra sit amet. Integer a tempus ipsum. Praesent laoreet dapibus ligula, posuere volutpat felis mollis sit amet.</p> \r\n\r\n<p>Nullam vel cursus risus. Morbi id ligula purus. Ut vitae elit tristique, ultricies odio quis, ultrices justo. Aliquam hendrerit nulla in turpis congue, in consectetur libero congue. Integer dapibus ex quis tellus fermentum, eget blandit massa tempor. Aliquam ut justo a diam semper facilisis. Nulla ut libero quis libero ornare tincidunt eget vitae enim. Vestibulum tincidunt rhoncus egestas. Sed tellus metus, sodales at ligula nec, consectetur fermentum ante.</p> \r\n\r\n<p>Ut dictum tellus non felis vulputate, hendrerit egestas sem pulvinar. Mauris ligula urna, sagittis nec dui non, rutrum molestie nibh. Donec at rutrum augue. Morbi pulvinar felis ut neque malesuada, semper suscipit ante bibendum. Vivamus pretium mauris sit amet dolor congue, ut luctus est volutpat. Nullam varius non purus non semper. Integer ultricies nisl id lacus ultricies euismod. Cras eget quam sed quam porta dapibus quis sed ante. Nulla facilisi.</p> \r\n\r\n<p>Mauris gravida neque et turpis vestibulum vestibulum. Pellentesque risus nunc, bibendum sit amet elit sed, finibus lobortis mauris. Duis nec odio ante. Nulla hendrerit ipsum ac venenatis rhoncus. Morbi porta porttitor metus non malesuada. Donec accumsan magna leo, a convallis metus fringilla sit amet. Sed quis augue et dolor facilisis malesuada.</p> \r\n\r\n<p>Curabitur lobortis efficitur elit. Sed eu neque laoreet, ultrices libero eget, laoreet est. Proin finibus eget felis sit amet mattis. Morbi aliquam tincidunt nisi, eget consectetur dolor condimentum id. Quisque in tellus sit amet turpis dignissim tristique. Proin sit amet urna eleifend, vulputate metus non, maximus est. Sed ullamcorper tortor vel risus molestie, id vulputate arcu feugiat. Mauris quis est urna. Nam in neque nec eros condimentum viverra a id ipsum. In sagittis commodo gravida.</p> ', '2017-09-20 00:00:00.000000'),
(2, 'Services', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p> \r\n\r\n<p>Phasellus commodo sem sapien, in dapibus tellus placerat id. Proin in massa id massa ornare sollicitudin. Fusce sed venenatis mi. Integer a ante felis. Donec sit amet porttitor orci. Etiam et ex fringilla, sagittis lorem sit amet, condimentum dui. Curabitur tincidunt facilisis suscipit. Nullam nec sapien eu tellus rhoncus commodo. Ut ullamcorper placerat luctus.</p> \r\n\r\n<p>Etiam nec lacinia lorem, eu scelerisque justo. Vestibulum vulputate laoreet nibh, eu congue dolor pretium non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas vel augue nec turpis rhoncus facilisis. Nulla facilisi. Duis congue, magna vel consequat vulputate, arcu enim tempus dui, id ultricies risus arcu non nisi. Nam commodo feugiat hendrerit. Nam porta massa sem, eu efficitur nisl tristique sed. Pellentesque nec urna eget lacus lobortis varius ac tempus leo. Phasellus eget velit nunc. Nunc bibendum, augue sed scelerisque suscipit, mi risus faucibus nisi, a vehicula massa urna non felis. Pellentesque ullamcorper viverra pulvinar. Ut vel velit enim. Etiam vehicula fermentum ex, hendrerit luctus erat pretium non.</p> \r\n\r\n<p>Duis justo orci, mattis vel aliquam nec, rutrum vel purus. Nam dignissim turpis id sapien eleifend pulvinar. Donec eu orci in quam maximus eleifend. Etiam convallis aliquet neque, eget rutrum nulla. Aliquam nibh neque, commodo id massa ac, condimentum vehicula ligula. Praesent faucibus odio at auctor tincidunt. Cras ac purus faucibus, dictum lacus id, elementum nunc. Cras mollis lorem augue, vel accumsan nunc faucibus sed. Curabitur eros quam, mollis nec erat eget, sollicitudin congue lorem. Mauris sagittis at velit id hendrerit. Morbi et elit a arcu semper lacinia. Quisque eget massa non magna rhoncus pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eu neque et arcu iaculis commodo. Ut et lacus nec nisi tincidunt pellentesque hendrerit non lectus.</p> \r\n\r\n<p>Vestibulum sollicitudin, risus ut auctor aliquet, lacus nisi sodales libero, id commodo dolor urna ut nulla. Praesent pellentesque, risus faucibus accumsan gravida, magna tellus tempus justo, sed sollicitudin tellus elit sed ligula. Suspendisse potenti. In laoreet risus at auctor euismod. Duis viverra mollis est sed dapibus. Nunc rutrum massa laoreet, viverra augue eget, commodo mauris. Sed efficitur vehicula odio sed sagittis. Vestibulum at consectetur nunc, vitae venenatis justo.</p> \r\n\r\n<p>In et egestas nisl, mattis porta magna. Quisque mattis convallis justo vitae elementum. Suspendisse efficitur vel arcu vel aliquet. Phasellus vitae urna tortor. Morbi tincidunt quam et tristique venenatis. Pellentesque efficitur, nunc sit amet porttitor ultricies, tellus justo venenatis neque, ac rhoncus leo orci vitae est. Integer tincidunt velit sed dui ultricies ultrices. Suspendisse pharetra tincidunt aliquet. Vivamus bibendum dolor eu neque bibendum, ut eleifend sapien faucibus. Suspendisse dictum ullamcorper egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ut augue ut nisi suscipit egestas in id tortor. Nullam finibus elementum tellus, a gravida ex pharetra sit amet. Integer a tempus ipsum. Praesent laoreet dapibus ligula, posuere volutpat felis mollis sit amet.</p> \r\n\r\n<p>Nullam vel cursus risus. Morbi id ligula purus. Ut vitae elit tristique, ultricies odio quis, ultrices justo. Aliquam hendrerit nulla in turpis congue, in consectetur libero congue. Integer dapibus ex quis tellus fermentum, eget blandit massa tempor. Aliquam ut justo a diam semper facilisis. Nulla ut libero quis libero ornare tincidunt eget vitae enim. Vestibulum tincidunt rhoncus egestas. Sed tellus metus, sodales at ligula nec, consectetur fermentum ante.</p> \r\n\r\n<p>Ut dictum tellus non felis vulputate, hendrerit egestas sem pulvinar. Mauris ligula urna, sagittis nec dui non, rutrum molestie nibh. Donec at rutrum augue. Morbi pulvinar felis ut neque malesuada, semper suscipit ante bibendum. Vivamus pretium mauris sit amet dolor congue, ut luctus est volutpat. Nullam varius non purus non semper. Integer ultricies nisl id lacus ultricies euismod. Cras eget quam sed quam porta dapibus quis sed ante. Nulla facilisi.</p> \r\n\r\n<p>Mauris gravida neque et turpis vestibulum vestibulum. Pellentesque risus nunc, bibendum sit amet elit sed, finibus lobortis mauris. Duis nec odio ante. Nulla hendrerit ipsum ac venenatis rhoncus. Morbi porta porttitor metus non malesuada. Donec accumsan magna leo, a convallis metus fringilla sit amet. Sed quis augue et dolor facilisis malesuada.</p> \r\n\r\n<p>Curabitur lobortis efficitur elit. Sed eu neque laoreet, ultrices libero eget, laoreet est. Proin finibus eget felis sit amet mattis. Morbi aliquam tincidunt nisi, eget consectetur dolor condimentum id. Quisque in tellus sit amet turpis dignissim tristique. Proin sit amet urna eleifend, vulputate metus non, maximus est. Sed ullamcorper tortor vel risus molestie, id vulputate arcu feugiat. Mauris quis est urna. Nam in neque nec eros condimentum viverra a id ipsum. In sagittis commodo gravida.</p> ', '2017-09-20 00:00:00.000000'),
(3, 'Contact Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce volutpat porta mi, quis tristique est sodales in. In at nisi tortor. In rutrum neque et orci rhoncus tempus. Nunc nisl lectus, tempus eu varius at, mollis a mauris. Nulla venenatis dolor vel posuere gravida. Duis in dui tincidunt, efficitur dolor sed, accumsan quam. Donec lacus purus, pharetra sit amet tincidunt sit amet, mattis nec nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque porta felis neque, eu scelerisque sapien porta aliquam. Sed gravida suscipit nulla, a fermentum dui fermentum vitae. Aliquam mauris ligula, pellentesque a mi et, pellentesque blandit metus. Etiam blandit felis at diam vehicula imperdiet. Mauris a enim a eros tempor pretium vel at nunc. Nulla finibus massa quis elementum ullamcorper. Maecenas aliquet enim vel dapibus semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p> \r\n\r\n<p>Phasellus commodo sem sapien, in dapibus tellus placerat id. Proin in massa id massa ornare sollicitudin. Fusce sed venenatis mi. Integer a ante felis. Donec sit amet porttitor orci. Etiam et ex fringilla, sagittis lorem sit amet, condimentum dui. Curabitur tincidunt facilisis suscipit. Nullam nec sapien eu tellus rhoncus commodo. Ut ullamcorper placerat luctus.</p> \r\n\r\n<p>Etiam nec lacinia lorem, eu scelerisque justo. Vestibulum vulputate laoreet nibh, eu congue dolor pretium non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas vel augue nec turpis rhoncus facilisis. Nulla facilisi. Duis congue, magna vel consequat vulputate, arcu enim tempus dui, id ultricies risus arcu non nisi. Nam commodo feugiat hendrerit. Nam porta massa sem, eu efficitur nisl tristique sed. Pellentesque nec urna eget lacus lobortis varius ac tempus leo. Phasellus eget velit nunc. Nunc bibendum, augue sed scelerisque suscipit, mi risus faucibus nisi, a vehicula massa urna non felis. Pellentesque ullamcorper viverra pulvinar. Ut vel velit enim. Etiam vehicula fermentum ex, hendrerit luctus erat pretium non.</p> ', '2017-09-20 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'blog', 'articles'),
(8, 'blog', 'pages'),
(9, 'blog', 'contacts');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-09-20 07:21:21.346813'),
(2, 'auth', '0001_initial', '2017-09-20 07:21:21.896535'),
(3, 'admin', '0001_initial', '2017-09-20 07:21:22.044542'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-09-20 07:21:22.058296'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-09-20 07:21:22.123767'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-09-20 07:21:22.175408'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-09-20 07:21:22.210055'),
(8, 'auth', '0004_alter_user_username_opts', '2017-09-20 07:21:22.222942'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-09-20 07:21:22.254638'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-09-20 07:21:22.260223'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-09-20 07:21:22.271670'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-09-20 07:21:22.307765'),
(13, 'sessions', '0001_initial', '2017-09-20 07:21:22.353272'),
(14, 'blog', '0001_initial', '2017-09-20 09:42:57.687715'),
(15, 'blog', '0002_pages', '2017-09-20 10:29:03.012839'),
(16, 'blog', '0003_articles_summary', '2017-09-20 11:27:21.527228'),
(18, 'blog', '0004_contacts', '2017-09-21 07:01:37.240408'),
(19, 'blog', '0005_auto_20170921_1235', '2017-09-21 07:06:07.959217');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('39lpyuoh4cmnch3k1yntwnua2dhqnluv', 'Y2I1NDIwNWE4YjU3Mjk2ZjdjNGU1YmI1OTgxYzdmMzg2YWU4OGI2MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZjcwOTQwNWEzNTA3ZTE0OWIzZGYwOGY1ZmZjZGNiMjhmOGQ1NjAyIn0=', '2017-10-04 07:27:14.479481');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `blog_articles`
--
ALTER TABLE `blog_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_contacts`
--
ALTER TABLE `blog_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_pages`
--
ALTER TABLE `blog_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_articles`
--
ALTER TABLE `blog_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blog_contacts`
--
ALTER TABLE `blog_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `blog_pages`
--
ALTER TABLE `blog_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
