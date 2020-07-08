/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.49 : Database - jnfabricdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jnfabricdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jnfabricdb`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add user dashboard module',1,'add_userdashboardmodule');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (2,'Can change user dashboard module',1,'change_userdashboardmodule');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (3,'Can delete user dashboard module',1,'delete_userdashboardmodule');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (4,'Can add bookmark',2,'add_bookmark');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (5,'Can change bookmark',2,'change_bookmark');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (6,'Can delete bookmark',2,'delete_bookmark');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (7,'Can add pinned application',3,'add_pinnedapplication');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (8,'Can change pinned application',3,'change_pinnedapplication');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (9,'Can delete pinned application',3,'delete_pinnedapplication');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (10,'Can add log entry',4,'add_logentry');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (11,'Can change log entry',4,'change_logentry');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (12,'Can delete log entry',4,'delete_logentry');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (13,'Can add permission',5,'add_permission');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (14,'Can change permission',5,'change_permission');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (15,'Can delete permission',5,'delete_permission');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (16,'Can add group',6,'add_group');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (17,'Can change group',6,'change_group');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (18,'Can delete group',6,'delete_group');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (19,'Can add user',7,'add_user');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (20,'Can change user',7,'change_user');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (21,'Can delete user',7,'delete_user');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (22,'Can add content type',8,'add_contenttype');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (23,'Can change content type',8,'change_contenttype');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (24,'Can delete content type',8,'delete_contenttype');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (25,'Can add session',9,'add_session');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (26,'Can change session',9,'change_session');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (27,'Can delete session',9,'delete_session');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (28,'Can add img',10,'add_img');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (29,'Can change img',10,'change_img');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (30,'Can delete img',10,'delete_img');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'pbkdf2_sha256$100000$ltwKfP9t6MF5$wvnDqo6FK0PGfNnHHOl4GAvX5UejPpWV988B1lWbFJc=','2019-10-20 06:37:05',1,'admin','','','admin@123.com',1,1,'2019-10-09 11:46:09');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `dashboard_userdashboardmodule` */

DROP TABLE IF EXISTS `dashboard_userdashboardmodule`;

CREATE TABLE `dashboard_userdashboardmodule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `app_label` varchar(255) DEFAULT NULL,
  `user` int(10) unsigned NOT NULL,
  `column` int(10) unsigned NOT NULL,
  `order` int(11) NOT NULL,
  `settings` longtext NOT NULL,
  `children` longtext NOT NULL,
  `collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `dashboard_userdashboardmodule` */

insert  into `dashboard_userdashboardmodule`(`id`,`title`,`module`,`app_label`,`user`,`column`,`order`,`settings`,`children`,`collapsed`) values (1,'Quick links','jet.dashboard.modules.LinkList',NULL,1,0,0,'{\"draggable\": false, \"deletable\": false, \"collapsible\": false, \"layout\": \"inline\"}','[{\"title\": \"Return to site\", \"url\": \"/\"}, {\"title\": \"\\u4fee\\u6539\\u5bc6\\u7801\", \"url\": \"/admin/password_change/\"}, {\"title\": \"\\u6ce8\\u9500\", \"url\": \"/admin/logout/\"}]',0);
insert  into `dashboard_userdashboardmodule`(`id`,`title`,`module`,`app_label`,`user`,`column`,`order`,`settings`,`children`,`collapsed`) values (2,'Applications','jet.dashboard.modules.AppList',NULL,1,1,0,'{\"models\": null, \"exclude\": [\"auth.*\"]}','',0);
insert  into `dashboard_userdashboardmodule`(`id`,`title`,`module`,`app_label`,`user`,`column`,`order`,`settings`,`children`,`collapsed`) values (3,'管理','jet.dashboard.modules.AppList',NULL,1,2,0,'{\"models\": [\"auth.*\"], \"exclude\": null}','',0);
insert  into `dashboard_userdashboardmodule`(`id`,`title`,`module`,`app_label`,`user`,`column`,`order`,`settings`,`children`,`collapsed`) values (4,'Recent Actions','jet.dashboard.modules.RecentActions',NULL,1,0,1,'{\"limit\": 10, \"include_list\": null, \"exclude_list\": null, \"user\": null}','',0);
insert  into `dashboard_userdashboardmodule`(`id`,`title`,`module`,`app_label`,`user`,`column`,`order`,`settings`,`children`,`collapsed`) values (5,'Latest Django News','jet.dashboard.modules.Feed',NULL,1,1,1,'{\"feed_url\": \"http://www.djangoproject.com/rss/weblog/\", \"limit\": 5}','',0);
insert  into `dashboard_userdashboardmodule`(`id`,`title`,`module`,`app_label`,`user`,`column`,`order`,`settings`,`children`,`collapsed`) values (6,'Support','jet.dashboard.modules.LinkList',NULL,1,2,1,'{\"draggable\": true, \"deletable\": true, \"collapsible\": true, \"layout\": \"stacked\"}','[{\"title\": \"Django documentation\", \"url\": \"http://docs.djangoproject.com/\", \"external\": true}, {\"title\": \"Django \\\"django-users\\\" mailing list\", \"url\": \"http://groups.google.com/group/django-users\", \"external\": true}, {\"title\": \"Django irc channel\", \"url\": \"irc://irc.freenode.net/django\", \"external\": true}]',0);
insert  into `dashboard_userdashboardmodule`(`id`,`title`,`module`,`app_label`,`user`,`column`,`order`,`settings`,`children`,`collapsed`) values (7,'Application models','jet.dashboard.modules.ModelList','auth',1,0,0,'{\"models\": [\"auth.*\"], \"exclude\": null}','',0);
insert  into `dashboard_userdashboardmodule`(`id`,`title`,`module`,`app_label`,`user`,`column`,`order`,`settings`,`children`,`collapsed`) values (8,'Recent Actions','jet.dashboard.modules.RecentActions','auth',1,1,0,'{\"limit\": 10, \"include_list\": [\"auth.*\"], \"exclude_list\": null, \"user\": null}','',0);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (4,'admin','logentry');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (6,'auth','group');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (5,'auth','permission');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (7,'auth','user');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (8,'contenttypes','contenttype');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'dashboard','userdashboardmodule');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (10,'fabric','img');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (2,'jet','bookmark');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (3,'jet','pinnedapplication');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (9,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'jet','0001_initial','2019-10-09 11:42:22');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (2,'jet','0002_delete_userdashboardmodule','2019-10-09 11:42:23');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (3,'dashboard','0001_initial','2019-10-09 11:42:29');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (4,'contenttypes','0001_initial','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (5,'auth','0001_initial','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (6,'admin','0001_initial','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (7,'admin','0002_logentry_remove_auto_add','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (8,'contenttypes','0002_remove_content_type_name','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (9,'auth','0002_alter_permission_name_max_length','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (10,'auth','0003_alter_user_email_max_length','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (11,'auth','0004_alter_user_username_opts','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (12,'auth','0005_alter_user_last_login_null','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (13,'auth','0006_require_contenttypes_0002','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (14,'auth','0007_alter_validators_add_error_messages','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (15,'auth','0008_alter_user_username_max_length','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (16,'auth','0009_alter_user_last_name_max_length','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (17,'sessions','0001_initial','2019-10-09 11:44:34');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (18,'fabric','0001_initial','2019-10-10 10:48:32');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('et7658m2h1jffp9pmrrtcpdjta7g89gn','ZTRkMTRhNTZmZDUzM2VhOWU3MmJiMjQ2MDY3ZThmZDdlYWI5MWJjMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxOGJhMDJlZTViNTI3ZDkxNzY3MGQ4NzEwNDY3MzI1NWU2YWQzZGU0In0=','2019-11-03 06:37:05');
insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('wpvavtytk4ll7d94aeefn61ttqrm1coe','ZTRkMTRhNTZmZDUzM2VhOWU3MmJiMjQ2MDY3ZThmZDdlYWI5MWJjMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxOGJhMDJlZTViNTI3ZDkxNzY3MGQ4NzEwNDY3MzI1NWU2YWQzZGU0In0=','2019-10-23 11:46:46');

/*Table structure for table `fabric_img` */

DROP TABLE IF EXISTS `fabric_img`;

CREATE TABLE `fabric_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

/*Data for the table `fabric_img` */

insert  into `fabric_img`(`id`,`img_url`) values (1,'');
insert  into `fabric_img`(`id`,`img_url`) values (2,'img/9d4d78f0f736afc3a09a7edfbd19ebc4b64512fc.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (3,'img/0cc8a9d428e62375e0768cee8661507.bmp');
insert  into `fabric_img`(`id`,`img_url`) values (4,'img/0cc8a9d428e62375e0768cee8661507_cWDkB0F.bmp');
insert  into `fabric_img`(`id`,`img_url`) values (5,'img/0cc8a9d428e62375e0768cee8661507_9LLuKRN.bmp');
insert  into `fabric_img`(`id`,`img_url`) values (6,'img/123.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (7,'img/9d4d78f0f736afc3a09a7edfbd19ebc4b64512fc_Z0zkUU8.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (8,'img/0cc8a9d428e62375e0768cee8661507_ucU4RnG.bmp');
insert  into `fabric_img`(`id`,`img_url`) values (9,'img/1.png');
insert  into `fabric_img`(`id`,`img_url`) values (10,'img/0cc8a9d428e62375e0768cee8661507_YsuPQuN.bmp');
insert  into `fabric_img`(`id`,`img_url`) values (11,'img/0cc8a9d428e62375e0768cee8661507_knPJGPm.bmp');
insert  into `fabric_img`(`id`,`img_url`) values (12,'img/9d4d78f0f736afc3a09a7edfbd19ebc4b64512fc_2Uy4vAN.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (13,'img/111.png');
insert  into `fabric_img`(`id`,`img_url`) values (14,'img/9d4d78f0f736afc3a09a7edfbd19ebc4b64512fc_Z7FPADn.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (15,'');
insert  into `fabric_img`(`id`,`img_url`) values (16,'img/1_oKlZtjH.png');
insert  into `fabric_img`(`id`,`img_url`) values (17,'img/91I95rJ40IL._SS500_.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (18,'img/9d4d78f0f736afc3a09a7edfbd19ebc4b64512fc_5oUAYdg.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (19,'img/0cc8a9d428e62375e0768cee8661507_7joDFXt.bmp');
insert  into `fabric_img`(`id`,`img_url`) values (20,'img/www.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (21,'img/1_pZ4FLMh.png');
insert  into `fabric_img`(`id`,`img_url`) values (22,'img/20190219-110609-41.png');
insert  into `fabric_img`(`id`,`img_url`) values (23,'img/20190219-120844-771.png');
insert  into `fabric_img`(`id`,`img_url`) values (24,'img/20190219-144627-874.png');
insert  into `fabric_img`(`id`,`img_url`) values (25,'img/20190219-144315-362.png');
insert  into `fabric_img`(`id`,`img_url`) values (26,'img/20190219-144627-874_hk60vnw.png');
insert  into `fabric_img`(`id`,`img_url`) values (27,'img/20190219-110609-41_XemNrbK.png');
insert  into `fabric_img`(`id`,`img_url`) values (28,'img/20190219-144627-874_f9EooDI.png');
insert  into `fabric_img`(`id`,`img_url`) values (29,'');
insert  into `fabric_img`(`id`,`img_url`) values (30,'');
insert  into `fabric_img`(`id`,`img_url`) values (31,'img/20190219-110609-41_6CKNq66.png');
insert  into `fabric_img`(`id`,`img_url`) values (32,'img/20190923-131237-112.png');
insert  into `fabric_img`(`id`,`img_url`) values (33,'img/20190219-120844-771.png');
insert  into `fabric_img`(`id`,`img_url`) values (34,'img/20190219-135448-492.png');
insert  into `fabric_img`(`id`,`img_url`) values (35,'img/20190219-160139-159.png');
insert  into `fabric_img`(`id`,`img_url`) values (36,'img/20190219-144315-362.png');
insert  into `fabric_img`(`id`,`img_url`) values (37,'img/20190219-110609-41.png');
insert  into `fabric_img`(`id`,`img_url`) values (38,'img/20190219-110609-41_N4QDZO5.png');
insert  into `fabric_img`(`id`,`img_url`) values (39,'img/20190219-120844-771.png');
insert  into `fabric_img`(`id`,`img_url`) values (40,'img/20190219-135448-492.png');
insert  into `fabric_img`(`id`,`img_url`) values (41,'img/20190219-120844-771.png');
insert  into `fabric_img`(`id`,`img_url`) values (42,'img/20190219-120844-771_cNVN8Vd.png');
insert  into `fabric_img`(`id`,`img_url`) values (43,'img/20190219-135448-492.png');
insert  into `fabric_img`(`id`,`img_url`) values (44,'img/20190219-120844-771_NDHTaG9.png');
insert  into `fabric_img`(`id`,`img_url`) values (45,'img/20190219-110609-41.png');
insert  into `fabric_img`(`id`,`img_url`) values (46,'img/20190219-120844-771_jyjVJrW.png');
insert  into `fabric_img`(`id`,`img_url`) values (47,'img/20190219-110609-41_2Nt16aQ.png');
insert  into `fabric_img`(`id`,`img_url`) values (48,'img/20190219-110609-41_muoZAFb.png');
insert  into `fabric_img`(`id`,`img_url`) values (49,'img/20190219-110609-41_ps7Dhs2.png');
insert  into `fabric_img`(`id`,`img_url`) values (50,'img/20190219-120844-771_CXpEwTK.png');
insert  into `fabric_img`(`id`,`img_url`) values (51,'img/20190219-120844-771_q4kFtf8.png');
insert  into `fabric_img`(`id`,`img_url`) values (52,'img/20190219-135448-492.png');
insert  into `fabric_img`(`id`,`img_url`) values (53,'img/20190219-160503-92.png');
insert  into `fabric_img`(`id`,`img_url`) values (54,'img/20190219-144315-362.png');
insert  into `fabric_img`(`id`,`img_url`) values (55,'img/20190219-135448-492.png');
insert  into `fabric_img`(`id`,`img_url`) values (56,'img/20190219-110609-41.png');
insert  into `fabric_img`(`id`,`img_url`) values (57,'img/20190219-135448-492.png');
insert  into `fabric_img`(`id`,`img_url`) values (58,'img/20190219-120844-771.png');
insert  into `fabric_img`(`id`,`img_url`) values (59,'img/20190219-110609-41_cfRecYF.png');
insert  into `fabric_img`(`id`,`img_url`) values (60,'img/20190219-144627-874.png');
insert  into `fabric_img`(`id`,`img_url`) values (61,'img/123.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (62,'img/images_1.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (63,'img/www.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (64,'img/20190218-213245-174.png');
insert  into `fabric_img`(`id`,`img_url`) values (65,'img/20190322-132619-734.png');
insert  into `fabric_img`(`id`,`img_url`) values (66,'img/20190322-131813-768.png');
insert  into `fabric_img`(`id`,`img_url`) values (67,'img/20190322-134231-105.png');
insert  into `fabric_img`(`id`,`img_url`) values (68,'img/20190219-154239-712.png');
insert  into `fabric_img`(`id`,`img_url`) values (69,'img/20190223-154807-994.jpg');
insert  into `fabric_img`(`id`,`img_url`) values (70,'img/20190219-154239-712_iqiOu4g.png');
insert  into `fabric_img`(`id`,`img_url`) values (71,'img/20190219-135448-492.png');
insert  into `fabric_img`(`id`,`img_url`) values (72,'img/20190219-135448-492_KwM7wiA.png');
insert  into `fabric_img`(`id`,`img_url`) values (73,'img/20190219-135448-492_7UsPrKz.png');
insert  into `fabric_img`(`id`,`img_url`) values (74,'img/20190219-135448-492_MtRNUum.png');
insert  into `fabric_img`(`id`,`img_url`) values (75,'img/20190219-135448-492.png');
insert  into `fabric_img`(`id`,`img_url`) values (76,'img/20190219-135448-492_sS5gsRJ.png');
insert  into `fabric_img`(`id`,`img_url`) values (77,'img/20190219-135448-492_8vkkKfR.png');
insert  into `fabric_img`(`id`,`img_url`) values (78,'img/20190219-135448-492_nL7u4Dw.png');
insert  into `fabric_img`(`id`,`img_url`) values (79,'img/20190219-135448-492_lMPqOFG.png');
insert  into `fabric_img`(`id`,`img_url`) values (80,'img/20190219-135448-492_YTXQGIp.png');
insert  into `fabric_img`(`id`,`img_url`) values (81,'img/20190219-135448-492_FJoyRP3.png');
insert  into `fabric_img`(`id`,`img_url`) values (82,'img/20190219-135448-492.png');

/*Table structure for table `jet_bookmark` */

DROP TABLE IF EXISTS `jet_bookmark`;

CREATE TABLE `jet_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `jet_bookmark` */

insert  into `jet_bookmark`(`id`,`url`,`title`,`user`,`date_add`) values (7,'http://127.0.0.1:8002/densities/','Fabric Recognition',1,'2019-10-30 00:50:58');

/*Table structure for table `jet_pinnedapplication` */

DROP TABLE IF EXISTS `jet_pinnedapplication`;

CREATE TABLE `jet_pinnedapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(255) NOT NULL,
  `user` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jet_pinnedapplication` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
