SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES
(2, 'admin'),
(3, 'user'),
(4, 'role'),
(5, 'permission'),
(1, 'home'),
(88, 'sitemap'),
(83, 'basic-page'),
(80, 'search'),
(97, 'language');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fields_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES
(2, 2, 1, NULL),
(3, 4, 2, NULL),
(4, 5, 0, NULL),
(5, 1, 0, NULL),
(3, 98, 3, NULL),
(1, 44, 4, NULL),
(80, 1, 0, NULL),
(1, 1, 0, NULL),
(88, 1, 0, NULL),
(1, 79, 2, NULL),
(88, 79, 1, NULL),
(83, 1, 0, NULL),
(97, 97, 2, NULL),
(3, 92, 1, NULL),
(83, 44, 2, NULL),
(97, 1, 0, NULL),
(1, 76, 3, NULL),
(1, 78, 1, NULL),
(3, 103, 4, NULL),
(2, 1, 0, NULL),
(83, 76, 1, NULL),
(97, 100, 1, NULL),
(3, 3, 0, NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES
(1, 'FieldtypePageTitleLanguage', 'title', 13, 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"label1012\":\"Titel\",\"langBlankInherit\":0}'),
(2, 'FieldtypeModule', 'process', 25, 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),
(3, 'FieldtypePassword', 'pass', 24, 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),
(5, 'FieldtypePage', 'permissions', 24, 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),
(4, 'FieldtypePage', 'roles', 24, 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),
(92, 'FieldtypeEmail', 'email', 9, 'E-Mail Address', '{\"size\":70,\"maxlength\":255}'),
(44, 'FieldtypeImage', 'images', 0, 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2,\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"label1012\":\"Bilder\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"gridMode\":\"grid\",\"maxWidth\":2000,\"maxHeight\":2000,\"maxReject\":1}'),
(79, 'FieldtypeTextareaLanguage', 'summary', 1, 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"label1012\":\"Zusammenfassung\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}'),
(76, 'FieldtypeTextareaLanguage', 'body', 0, 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList,\\nPWLink, Unlink,\\nPWImage, SpecialChar\\nPasteText, PasteFromWord\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h3;h4;h5\",\"extraPlugins\":[\"pwimage\",\"pwlink\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"label1012\":\"Inhalt\",\"langBlankInherit\":0,\"htmlOptions\":[2,4,8],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}'),
(78, 'FieldtypeTextLanguage', 'headline', 0, 'Headline', '{\"description\":\"Use this instead of the field above if more text is needed for the page than for the navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"langBlankInherit\":1,\"label1012\":\"\\u00dcberschrift\",\"description1012\":\"Verwenden Sie dieses statt dem obigen Feld, wenn mehr Text f\\u00fcr die Seite als f\\u00fcr die Navigation ben\\u00f6tigt wird.\",\"minlength\":0,\"showCount\":0}'),
(97, 'FieldtypeFile', 'language_files', 24, 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":2,\"outputFormat\":0,\"defaultValuePage\":0,\"clone_field\":1,\"description\":\"Use this for field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\"}'),
(98, 'FieldtypePage', 'language', 24, 'Language', '{\"derefAsPage\":1,\"parent_id\":1009,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}'),
(100, 'FieldtypeFile', 'language_files_site', 24, 'Site Translation Files', '{\"description\":\"Use this for field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":2}'),
(103, 'FieldtypeModule', 'admin_theme', 8, 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES
(41, 171);

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`, `data1012`) VALUES
(27, '<h3>The page you were looking for is not found.</h3>\n\n<p>Please use our search engine or navigation above to find the page.</p>', '<h3>Die Seite, die Sie suchen, wurde nicht gefunden. </h3>\n\n<p>Bitte verwenden Sie die Suchmaschine oder die Navigation oben, um die Seite zu finden.</p>'),
(1, '<p>What is ProcessWire?</p>\n\n<p>ProcessWire gives you full control over your fields, templates and markup. It provides a powerful template system that works the way you do. Not to mention, ProcessWire\'s API makes working with your content easy and enjoyable. <a href=\"http://processwire.com\">Learn more</a></p>\n\n<h3>About this site profile</h3>\n\n<p>This is a basic minimal site for you to use in developing your own site or to learn from. There are a few pages here to serve as examples, but this site profile does not make any attempt to demonstrate all that ProcessWire can do. To learn more or ask questions, visit the <a href=\"http://www.processwire.com/talk/\" target=\"_blank\" rel=\"noreferrer noopener\">ProcessWire forums</a> or <a href=\"http://modules.processwire.com/categories/site-profile/\">browse more site profiles</a>. If you are building a new site, this minimal profile is a good place to start. You may use these existing templates and design as they are, or you may replace them entirely.</p>\n\n<h3>Browse the site</h3>', '<h2>Was ist ProcessWire?</h2>\n\n<p>ProcessWire gibt Ihnen volle Kontrolle über Ihre Felder, Vorlagen und Markup. Es bietet ein mächtiges Templating-System, das sich ganz nach Ihren richtet. Mit dem ProcessWire API bearbeiten Sie Inhalte spielend einfach und bequem. <a href=\"http://de.processwire.com\">Mehr erfahren</a></p>\n\n<h3>Über dieses Webseiten-Profil</h3>\n\n<p>Dieses Demo-Profil ist eine einfache Webseite, die Sie als Grundlage für die Entwicklung Ihrer eigenen Webseiten verwenden können oder um sich mit dem System vertraut zu machen. Die Seiten dienen lediglich als Beispiele und erheben nicht den Anspruch, alle ProcessWire Features demonstrieren zu wollen. Wenn Sie Ihre eigene Webseiten bauen, ist dieses Profil ein guter Ausgangspunkt. Sie können die vorhandenen Vorlagen und das Design verwenden wie sie sind, oder nach Belieben austauschen.</p>\n\n<h3>Diese Seite durchsuchen</h3>'),
(1001, '<h2>Si lobortis singularis genitus ibidem saluto.</h2>\n\n<p>Dolore ad nunc, mos accumsan paratus duis suscipit luptatum facilisis macto uxor iaceo quadrum. Demoveo, appellatio elit neque ad commodo ea. Wisi, iaceo, tincidunt at commoveo rusticus et, ludus. Feugait at blandit bene blandit suscipere abdo duis ideo bis commoveo pagus ex, velit. Consequat commodo roto accumsan, duis transverbero.</p>', '<h2>Hinter den Wortbergen</h2>\n\n<p>Weit hinten, hinter den Wortbergen, fern der Länder Vokalien und Konsonantien leben die Blindtexte. Abgeschieden wohnen sie in Buchstabhausen an der Küste des Semantik, eines großen Sprachozeans. Ein kleines Bächlein namens Duden fließt durch ihren Ort und versorgt sie mit den nötigen Regelialien. Es ist ein paradiesmatisches Land, in dem einem gebratene Satzteile in den Mund fliegen. Nicht einmal von der allmächtigen Interpunktion werden die Blindtexte beherrscht – ein geradezu unorthographisches Leben.</p>');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_email` (`pages_id`, `data`) VALUES
(41, 'kontakt@bolligerstudios.ch');

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `data1012` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`) VALUES
(1, 'Minimal Site Profile', 'Kleine Demo-Webseite');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES
(40, 1010, 0),
(41, 1010, 0);

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1012, 'wire--templates-admin--debug-inc.json', 117, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--textformatter--textformatterentities-module.json', 116, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--system--systemupdater--systemupdater-module.json', 115, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', 114, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', 113, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', 112, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processuser--processuser-module.json', 111, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', 110, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processtemplate--processtemplate-module.json', 109, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processprofile--processprofile-module.json', 107, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processrole--processrole-module.json', 108, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpermission--processpermission-module.json', 106, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpageview-module.json', 105, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpagetype--processpagetype-module.json', 104, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpagetrash-module.json', 103, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpagesort-module.json', 102, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpagesearch--processpagesearch-module.json', 101, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpagelister--processpagelister-module.json', 100, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpagelist--processpagelist-module.json', 99, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpageedit--processpageedit-module.json', 96, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', 98, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', 97, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpageclone-module.json', 95, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processpageadd--processpageadd-module.json', 94, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processmodule--processmoduleinstall-php.json', 93, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processlogin--processlogin-module.json', 91, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processmodule--processmodule-module.json', 92, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processlist-module.json', 90, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processhome-module.json', 89, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processforgotpassword-module.json', 88, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processfield--processfield-module.json', 86, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--process--processfield--processfieldexportimport-php.json', 87, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--pagerender-module.json', 85, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--pagepaths-module.json', 84, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--languagesupport--languagetabs-module.json', 80, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--languagesupport--processlanguage-module.json', 81, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--markup--markuppagefields-module.json', 82, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--markup--markuppagernav--markuppagernav-module.json', 83, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--languagesupport--languagesupportpagenames-module.json', 79, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--languagesupport--languageparser-php.json', 76, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--languagesupport--languagesupport-module.json', 77, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--languagesupport--languagesupportfields-module.json', 78, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldurl-module.json', 74, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', 75, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldtinymce--inputfieldtinymce-module.json', 73, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldtextarea-module.json', 72, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldselectmultiple-module.json', 68, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', 69, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldtext-module.json', 71, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', 70, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldselect-module.json', 67, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', 66, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldpassword-module.json', 65, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', 61, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', 62, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', 63, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', 64, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', 60, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', 59, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', 58, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', 57, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldname-module.json', 56, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldmarkup-module.json', 55, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldinteger-module.json', 54, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', 49, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldfloat-module.json', 50, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldform-module.json', 51, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldhidden-module.json', 52, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', 53, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldfieldset-module.json', 48, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldemail-module.json', 47, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', 46, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', 45, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', 44, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldbutton-module.json', 42, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldcheckbox-module.json', 43, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypetextarea-module.json', 39, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypeurl-module.json', 40, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', 41, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypetext-module.json', 38, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypeselector-module.json', 37, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', 36, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', 35, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypepagetable-module.json', 34, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypepage-module.json', 33, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypemodule-module.json', 32, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypefloat-module.json', 31, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypefile-module.json', 30, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypedatetime-module.json', 29, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', 28, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', 27, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', 24, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', 25, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', 26, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', 23, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--wireupload-php.json', 22, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--wiretempdir-php.json', 21, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--sessioncsrf-php.json', 18, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--wirecache-php.json', 19, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--wirehttp-php.json', 20, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--session-php.json', 17, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--pages-php.json', 13, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--password-php.json', 14, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--process-php.json', 15, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--sanitizer-php.json', 16, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--pagefile-php.json', 11, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--pageimage-php.json', 12, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--modules-php.json', 10, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--inputfieldwrapper-php.json', 9, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--inputfield-php.json', 8, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--functions-php.json', 7, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--fieldtypemulti-php.json', 6, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--fieldtype-php.json', 5, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--fieldselectorinfo-php.json', 4, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--fields-php.json', 2, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--admintheme-php.json', 3, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--fieldgroups-php.json', 1, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--core--field-php.json', 0, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'wire--templates-admin--default-php.json', 118, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1012, 'site--templates--_main-php.json', 0, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51'),
(1012, 'site--templates--search-php.json', 1, '[\"\"]', '2018-01-18 02:25:51', '2018-01-18 02:25:51');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

INSERT INTO `field_pass` (`pages_id`, `data`, `salt`) VALUES
(41, 'pPGlWuFdFR8/KOMM9SwSawwyD7flGTi', '$2y$11$ayORGnGB5K1ERo/y8GdU7.'),
(40, '', '');

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES
(38, 32, 1),
(38, 34, 2),
(38, 35, 3),
(37, 36, 0),
(38, 36, 0),
(38, 50, 4),
(38, 51, 5),
(38, 52, 7),
(38, 53, 8),
(38, 54, 6);

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES
(6, 17),
(3, 12),
(8, 12),
(9, 14),
(10, 7),
(11, 47),
(16, 48),
(300, 104),
(21, 50),
(29, 66),
(23, 10),
(304, 138),
(31, 136),
(22, 76),
(30, 68),
(303, 129),
(2, 87),
(302, 121),
(301, 109),
(28, 76),
(1007, 150),
(1009, 159),
(1011, 160),
(1015, 168),
(1017, 169);

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_roles` (`pages_id`, `data`, `sort`) VALUES
(40, 37, 0),
(41, 37, 0),
(41, 38, 2);

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`) VALUES
(1005, 'View this template\'s source for a demonstration of how to create a basic site map. ', 'Schauen Sie sich den Quell-Code dieser Musterseite an, um zu sehen, wie man einfache Sitemaps erstellt.'),
(1, 'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients. ', 'ProcessWire ist ein Open-Source-CMS und Web-Applikations-Framework, das sich ganz den Anforderungen von Designern, Entwicklern und deren Kunden anpaßt.');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `data1012` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES
(11, 'Templates', ''),
(16, 'Fields', ''),
(22, 'Setup', ''),
(3, 'Pages', ''),
(6, 'Add Page', ''),
(8, 'Tree', ''),
(9, 'Save Sort', ''),
(10, 'Edit', ''),
(21, 'Modules', ''),
(29, 'Users', ''),
(30, 'Roles', ''),
(2, 'Admin', ''),
(7, 'Trash', ''),
(27, '404 Page', '404 Seite'),
(302, 'Insert Link', ''),
(23, 'Login', ''),
(304, 'Profile', ''),
(301, 'Empty Trash', ''),
(300, 'Search', ''),
(303, 'Insert Image', ''),
(28, 'Access', ''),
(31, 'Permissions', ''),
(32, 'Edit pages', ''),
(34, 'Delete pages', ''),
(35, 'Move pages (change parent)', ''),
(36, 'View pages', ''),
(50, 'Sort child pages', ''),
(51, 'Change templates on pages', ''),
(52, 'Administer users', ''),
(53, 'User can update profile/password', ''),
(54, 'Lock or unlock a page', ''),
(1, 'Home', 'Zuhause'),
(1001, 'About', 'Über'),
(1000, 'Search', 'Suche'),
(1005, 'Site Map', 'Sitemap'),
(1006, 'Use Page Lister', ''),
(1007, 'Find', ''),
(1009, 'Languages', ''),
(1010, 'English', 'Englisch'),
(1011, 'Language Translator', ''),
(1012, 'German', 'Deutsch'),
(1015, 'Recent', ''),
(1016, 'Can see recently edited pages', ''),
(1017, 'Logs', ''),
(1018, 'Can view system logs', ''),
(1019, 'Can manage system logs', '');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES
(1, 'FieldtypeTextarea', 0, '', '2018-01-18 02:25:51'),
(2, 'FieldtypeNumber', 0, '', '2018-01-18 02:25:51'),
(3, 'FieldtypeText', 0, '', '2018-01-18 02:25:51'),
(4, 'FieldtypePage', 0, '', '2018-01-18 02:25:51'),
(30, 'InputfieldForm', 0, '', '2018-01-18 02:25:51'),
(6, 'FieldtypeFile', 0, '', '2018-01-18 02:25:51'),
(7, 'ProcessPageEdit', 1, '', '2018-01-18 02:25:51'),
(10, 'ProcessLogin', 0, '', '2018-01-18 02:25:51'),
(12, 'ProcessPageList', 0, '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2018-01-18 02:25:51'),
(121, 'ProcessPageEditLink', 1, '', '2018-01-18 02:25:51'),
(14, 'ProcessPageSort', 0, '', '2018-01-18 02:25:51'),
(15, 'InputfieldPageListSelect', 0, '', '2018-01-18 02:25:51'),
(117, 'JqueryUI', 1, '', '2018-01-18 02:25:51'),
(17, 'ProcessPageAdd', 0, '', '2018-01-18 02:25:51'),
(125, 'SessionLoginThrottle', 11, '', '2018-01-18 02:25:51'),
(122, 'InputfieldPassword', 0, '', '2018-01-18 02:25:51'),
(25, 'InputfieldAsmSelect', 0, '', '2018-01-18 02:25:51'),
(116, 'JqueryCore', 1, '', '2018-01-18 02:25:51'),
(27, 'FieldtypeModule', 0, '', '2018-01-18 02:25:51'),
(28, 'FieldtypeDatetime', 0, '', '2018-01-18 02:25:51'),
(29, 'FieldtypeEmail', 0, '', '2018-01-18 02:25:51'),
(108, 'InputfieldURL', 0, '', '2018-01-18 02:25:51'),
(32, 'InputfieldSubmit', 0, '', '2018-01-18 02:25:51'),
(33, 'InputfieldWrapper', 0, '', '2018-01-18 02:25:51'),
(34, 'InputfieldText', 0, '', '2018-01-18 02:25:51'),
(35, 'InputfieldTextarea', 0, '', '2018-01-18 02:25:51'),
(36, 'InputfieldSelect', 0, '', '2018-01-18 02:25:51'),
(37, 'InputfieldCheckbox', 0, '', '2018-01-18 02:25:51'),
(38, 'InputfieldCheckboxes', 0, '', '2018-01-18 02:25:51'),
(39, 'InputfieldRadios', 0, '', '2018-01-18 02:25:51'),
(40, 'InputfieldHidden', 0, '', '2018-01-18 02:25:51'),
(41, 'InputfieldName', 0, '', '2018-01-18 02:25:51'),
(43, 'InputfieldSelectMultiple', 0, '', '2018-01-18 02:25:51'),
(45, 'JqueryWireTabs', 0, '', '2018-01-18 02:25:51'),
(46, 'ProcessPage', 0, '', '2018-01-18 02:25:51'),
(47, 'ProcessTemplate', 0, '', '2018-01-18 02:25:51'),
(48, 'ProcessField', 32, '', '2018-01-18 02:25:51'),
(50, 'ProcessModule', 0, '', '2018-01-18 02:25:51'),
(114, 'PagePermissions', 3, '', '2018-01-18 02:25:51'),
(97, 'FieldtypeCheckbox', 1, '', '2018-01-18 02:25:51'),
(115, 'PageRender', 3, '{\"clearCache\":1}', '2018-01-18 02:25:51'),
(55, 'InputfieldFile', 0, '', '2018-01-18 02:25:51'),
(56, 'InputfieldImage', 0, '', '2018-01-18 02:25:51'),
(57, 'FieldtypeImage', 0, '', '2018-01-18 02:25:51'),
(60, 'InputfieldPage', 0, '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2018-01-18 02:25:51'),
(61, 'TextformatterEntities', 0, '', '2018-01-18 02:25:51'),
(66, 'ProcessUser', 0, '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2018-01-18 02:25:51'),
(67, 'MarkupAdminDataTable', 0, '', '2018-01-18 02:25:51'),
(68, 'ProcessRole', 0, '{\"showFields\":[\"name\"]}', '2018-01-18 02:25:51'),
(76, 'ProcessList', 0, '', '2018-01-18 02:25:51'),
(78, 'InputfieldFieldset', 0, '', '2018-01-18 02:25:51'),
(79, 'InputfieldMarkup', 0, '', '2018-01-18 02:25:51'),
(80, 'InputfieldEmail', 0, '', '2018-01-18 02:25:51'),
(89, 'FieldtypeFloat', 1, '', '2018-01-18 02:25:51'),
(83, 'ProcessPageView', 0, '', '2018-01-18 02:25:51'),
(84, 'FieldtypeInteger', 0, '', '2018-01-18 02:25:51'),
(85, 'InputfieldInteger', 0, '', '2018-01-18 02:25:51'),
(86, 'InputfieldPageName', 0, '', '2018-01-18 02:25:51'),
(87, 'ProcessHome', 0, '', '2018-01-18 02:25:51'),
(90, 'InputfieldFloat', 0, '', '2018-01-18 02:25:51'),
(94, 'InputfieldDatetime', 0, '', '2018-01-18 02:25:51'),
(98, 'MarkupPagerNav', 0, '', '2018-01-18 02:25:51'),
(129, 'ProcessPageEditImageSelect', 1, '', '2018-01-18 02:25:51'),
(103, 'JqueryTableSorter', 1, '', '2018-01-18 02:25:51'),
(104, 'ProcessPageSearch', 1, '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2018-01-18 02:25:51'),
(105, 'FieldtypeFieldsetOpen', 1, '', '2018-01-18 02:25:51'),
(106, 'FieldtypeFieldsetClose', 1, '', '2018-01-18 02:25:51'),
(107, 'FieldtypeFieldsetTabOpen', 1, '', '2018-01-18 02:25:51'),
(109, 'ProcessPageTrash', 1, '', '2018-01-18 02:25:51'),
(111, 'FieldtypePageTitle', 1, '', '2018-01-18 02:25:51'),
(112, 'InputfieldPageTitle', 0, '', '2018-01-18 02:25:51'),
(113, 'MarkupPageArray', 3, '', '2018-01-18 02:25:51'),
(131, 'InputfieldButton', 0, '', '2018-01-18 02:25:51'),
(133, 'FieldtypePassword', 1, '', '2018-01-18 02:25:51'),
(134, 'ProcessPageType', 33, '{\"showFields\":[]}', '2018-01-18 02:25:51'),
(135, 'FieldtypeURL', 1, '', '2018-01-18 02:25:51'),
(136, 'ProcessPermission', 1, '{\"showFields\":[\"name\",\"title\"]}', '2018-01-18 02:25:51'),
(137, 'InputfieldPageListSelectMultiple', 0, '', '2018-01-18 02:25:51'),
(138, 'ProcessProfile', 1, '{\"profileFields\":[\"pass\",\"email\",\"language\",\"admin_theme\"]}', '2018-01-18 02:25:51'),
(139, 'SystemUpdater', 1, '{\"systemVersion\":16,\"coreVersion\":\"3.0.62\"}', '2018-01-18 02:25:51'),
(148, 'AdminThemeDefault', 10, '{\"colors\":\"classic\"}', '2018-01-18 02:25:51'),
(149, 'InputfieldSelector', 42, '', '2018-01-18 02:25:51'),
(150, 'ProcessPageLister', 32, '', '2018-01-18 02:25:51'),
(151, 'JqueryMagnific', 1, '', '2018-01-18 02:25:51'),
(152, 'PagePathHistory', 3, '', '2018-01-18 02:25:51'),
(155, 'InputfieldCKEditor', 0, '', '2018-01-18 02:25:51'),
(156, 'MarkupHTMLPurifier', 0, '', '2018-01-18 02:25:51'),
(158, 'LanguageSupport', 35, '{\"languagesPageID\":1009,\"defaultLanguagePageID\":1010,\"otherLanguagePageIDs\":[1012],\"languageTranslatorPageID\":1011}', '2018-01-18 02:25:51'),
(159, 'ProcessLanguage', 1, '', '2018-01-18 02:25:51'),
(160, 'ProcessLanguageTranslator', 1, '', '2018-01-18 02:25:51'),
(161, 'LanguageSupportFields', 3, '', '2018-01-18 02:25:51'),
(162, 'FieldtypeTextLanguage', 1, '', '2018-01-18 02:25:51'),
(163, 'FieldtypePageTitleLanguage', 1, '', '2018-01-18 02:25:51'),
(164, 'FieldtypeTextareaLanguage', 1, '', '2018-01-18 02:25:51'),
(165, 'LanguageSupportPageNames', 3, '{\"moduleVersion\":9,\"pageNumUrlPrefix1010\":\"page\",\"useHomeSegment\":0}', '2018-01-18 02:25:51'),
(166, 'LanguageTabs', 11, '', '2018-01-18 02:25:51'),
(168, 'ProcessRecentPages', 1, '', '2018-01-18 02:27:24'),
(169, 'ProcessLogger', 1, '', '2018-01-18 02:27:36'),
(170, 'InputfieldIcon', 0, '', '2018-01-18 02:27:36'),
(171, 'AdminThemeReno', 10, '{\"colors\":\"classic\",\"avatar_field_user\":\"\",\"userFields_user\":\"name\",\"notices\":\"fa-bell\",\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\"}', '2018-01-18 03:17:49'),
(172, 'InputfieldPageAutocomplete', 0, '', '2018-01-18 03:33:18');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `templates_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1012` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1012` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES
(1, 0, 1, 'en', 9, '2018-01-18 03:31:30', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 0, 'de', 1),
(2, 1, 2, 'admin', 1035, '2018-01-18 02:27:25', 40, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 5, NULL, 1),
(3, 2, 2, 'page', 21, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 0, NULL, 1),
(6, 3, 2, 'add', 21, '2018-01-18 02:37:07', 40, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 1, NULL, 1),
(7, 1, 2, 'trash', 1039, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 6, NULL, 1),
(8, 3, 2, 'list', 21, '2018-01-18 02:37:18', 40, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 0, NULL, 1),
(9, 3, 2, 'sort', 1047, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 3, NULL, 1),
(10, 3, 2, 'edit', 1045, '2018-01-18 02:37:10', 40, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 4, NULL, 1),
(11, 22, 2, 'template', 21, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 0, NULL, 1),
(16, 22, 2, 'field', 21, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 2, NULL, 1),
(21, 2, 2, 'module', 21, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 2, NULL, 1),
(22, 2, 2, 'setup', 21, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 1, NULL, 1),
(23, 2, 2, 'login', 1035, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 4, NULL, 1),
(27, 1, 29, 'http404', 1035, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 3, '2018-01-18 02:25:51', 4, NULL, 1),
(28, 2, 2, 'access', 13, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 3, NULL, 1),
(29, 28, 2, 'users', 29, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 0, NULL, 1),
(30, 28, 2, 'roles', 29, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 1, NULL, 1),
(31, 28, 2, 'permissions', 29, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 2, NULL, 1),
(32, 31, 5, 'page-edit', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 2, NULL, 1),
(34, 31, 5, 'page-delete', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 3, NULL, 1),
(35, 31, 5, 'page-move', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 4, NULL, 1),
(36, 31, 5, 'page-view', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 0, NULL, 1),
(37, 30, 4, 'guest', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 0, NULL, 1),
(38, 30, 4, 'superuser', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 1, NULL, 1),
(41, 29, 3, 'admin', 1, '2018-01-18 03:18:18', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 0, NULL, 1),
(40, 29, 3, 'guest', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 1, NULL, 1),
(50, 31, 5, 'page-sort', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 5, NULL, 1),
(51, 31, 5, 'page-template', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 6, NULL, 1),
(52, 31, 5, 'user-admin', 25, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 10, NULL, 1),
(53, 31, 5, 'profile-edit', 1, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 13, NULL, 1),
(54, 31, 5, 'page-lock', 1, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 8, NULL, 1),
(300, 3, 2, 'search', 1045, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 6, NULL, 1),
(301, 3, 2, 'trash', 1047, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 6, NULL, 1),
(302, 3, 2, 'link', 1041, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 7, NULL, 1),
(303, 3, 2, 'image', 1041, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 8, NULL, 1),
(304, 2, 2, 'profile', 1025, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 5, NULL, 1),
(1000, 1, 26, 'search', 1025, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 3, 'suche', 1),
(1001, 1, 29, 'about', 1, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 0, 'uber', 1),
(1005, 1, 34, 'site-map', 1, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, '2018-01-18 02:25:51', 2, 'sitemap', 1),
(1006, 31, 5, 'page-lister', 1, '2018-01-18 02:25:51', 40, '2018-01-18 02:25:51', 40, '2018-01-18 02:25:51', 9, NULL, 1),
(1007, 3, 2, 'lister', 1, '2018-01-18 02:25:51', 40, '2018-01-18 02:25:51', 40, '2018-01-18 02:25:51', 9, NULL, 1),
(1009, 22, 2, 'languages', 16, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 2, NULL, 1),
(1010, 1009, 43, 'default', 16, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 0, NULL, 1),
(1011, 22, 2, 'language-translator', 1040, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 3, NULL, 1),
(1012, 1009, 43, 'de', 1, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 41, '2018-01-18 02:25:51', 1, NULL, 1),
(1015, 3, 2, 'recent-pages', 1, '2018-01-18 02:27:24', 40, '2018-01-18 02:27:24', 40, '2018-01-18 02:27:24', 10, NULL, 0),
(1016, 31, 5, 'page-edit-recent', 1, '2018-01-18 02:27:24', 40, '2018-01-18 02:27:24', 40, '2018-01-18 02:27:24', 10, NULL, 1),
(1017, 22, 2, 'logs', 1, '2018-01-18 02:27:36', 40, '2018-01-18 02:27:36', 40, '2018-01-18 02:27:36', 4, NULL, 0),
(1018, 31, 5, 'logs-view', 1, '2018-01-18 02:27:36', 40, '2018-01-18 02:27:36', 40, '2018-01-18 02:27:36', 11, NULL, 1),
(1019, 31, 5, 'logs-edit', 1, '2018-01-18 02:27:36', 40, '2018-01-18 02:27:36', 40, '2018-01-18 02:27:36', 12, NULL, 1);

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES
(37, 2, '2018-01-18 02:25:51'),
(38, 2, '2018-01-18 02:25:51'),
(32, 2, '2018-01-18 02:25:51'),
(34, 2, '2018-01-18 02:25:51'),
(35, 2, '2018-01-18 02:25:51'),
(36, 2, '2018-01-18 02:25:51'),
(50, 2, '2018-01-18 02:25:51'),
(51, 2, '2018-01-18 02:25:51'),
(52, 2, '2018-01-18 02:25:51'),
(53, 2, '2018-01-18 02:25:51'),
(54, 2, '2018-01-18 02:25:51'),
(1006, 2, '2018-01-18 02:25:51'),
(1010, 2, '2018-01-18 02:25:51'),
(1012, 2, '2018-01-18 02:25:51'),
(1016, 2, '2018-01-18 02:27:24'),
(1018, 2, '2018-01-18 02:27:36'),
(1019, 2, '2018-01-18 02:27:36');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `parents_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES
(2, 1),
(3, 1),
(3, 2),
(22, 1),
(22, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(29, 28),
(30, 1),
(30, 2),
(30, 28),
(31, 1),
(31, 2),
(31, 28),
(1005, 1),
(1009, 1),
(1009, 2),
(1009, 22);

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `language_id` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_attempt` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `session_login_throttle` (`name`, `attempts`, `last_attempt`) VALUES
('admin', 1, 1516246993);

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES
(2, 'admin', 2, 8, 0, '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1515583469,\"ns\":\"ProcessWire\"}'),
(3, 'user', 3, 8, 0, '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(4, 'role', 4, 8, 0, '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(5, 'permission', 5, 8, 0, '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(1, 'home', 1, 0, 0, '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Home\",\"modified\":1516245546,\"ns\":\"ProcessWire\",\"label1012\":\"Zuhause\",\"roles\":[37]}'),
(29, 'basic-page', 83, 0, 0, '{\"slashUrls\":1,\"compile\":3,\"label\":\"Basic Page\",\"modified\":1516245683,\"ns\":\"ProcessWire\",\"label1012\":\"Seite\"}'),
(26, 'search', 80, 0, 0, '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Search\",\"modified\":1516245546,\"ns\":\"ProcessWire\",\"label1012\":\"Suche\"}'),
(34, 'sitemap', 88, 0, 0, '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"label\":\"Site Map\",\"modified\":1516245546,\"ns\":\"ProcessWire\",\"label1012\":\"Sitemap\"}'),
(43, 'language', 97, 8, 0, '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"nameContentTab\":1,\"modified\":1409651146}');


ALTER TABLE `caches`
  ADD PRIMARY KEY (`name`),
  ADD KEY `expires` (`expires`);

ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `fieldgroups_fields`
  ADD PRIMARY KEY (`fieldgroups_id`,`fields_id`);

ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `type` (`type`);

ALTER TABLE `field_admin_theme`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

ALTER TABLE `field_body`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255));
ALTER TABLE `field_body` ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_body` ADD FULLTEXT KEY `data1012` (`data1012`);

ALTER TABLE `field_email`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`);
ALTER TABLE `field_email` ADD FULLTEXT KEY `data` (`data`);

ALTER TABLE `field_headline`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255)),
  ADD KEY `data_exact1012` (`data1012`(255));
ALTER TABLE `field_headline` ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_headline` ADD FULLTEXT KEY `data1012` (`data1012`);

ALTER TABLE `field_images`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`);
ALTER TABLE `field_images` ADD FULLTEXT KEY `description` (`description`);

ALTER TABLE `field_language`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

ALTER TABLE `field_language_files`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`);
ALTER TABLE `field_language_files` ADD FULLTEXT KEY `description` (`description`);

ALTER TABLE `field_language_files_site`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`);
ALTER TABLE `field_language_files_site` ADD FULLTEXT KEY `description` (`description`);

ALTER TABLE `field_pass`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

ALTER TABLE `field_permissions`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

ALTER TABLE `field_process`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

ALTER TABLE `field_roles`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

ALTER TABLE `field_summary`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255));
ALTER TABLE `field_summary` ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_summary` ADD FULLTEXT KEY `data1012` (`data1012`);

ALTER TABLE `field_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255)),
  ADD KEY `data_exact1012` (`data1012`(255));
ALTER TABLE `field_title` ADD FULLTEXT KEY `data` (`data`);
ALTER TABLE `field_title` ADD FULLTEXT KEY `data1012` (`data1012`);

ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`);

ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  ADD UNIQUE KEY `name1012_parent_id` (`name1012`,`parent_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `templates_id` (`templates_id`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `status` (`status`),
  ADD KEY `published` (`published`);

ALTER TABLE `pages_access`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `templates_id` (`templates_id`);

ALTER TABLE `pages_parents`
  ADD PRIMARY KEY (`pages_id`,`parents_id`);

ALTER TABLE `pages_sortfields`
  ADD PRIMARY KEY (`pages_id`);

ALTER TABLE `page_path_history`
  ADD PRIMARY KEY (`path`),
  ADD KEY `pages_id` (`pages_id`),
  ADD KEY `created` (`created`);

ALTER TABLE `session_login_throttle`
  ADD PRIMARY KEY (`name`);

ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fieldgroups_id` (`fieldgroups_id`);


ALTER TABLE `fieldgroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;
ALTER TABLE `templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
