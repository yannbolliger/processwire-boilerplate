# --- WireDatabaseBackup {"time":"2018-01-18 06:09:45","user":"","dbName":"pw_starter","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '171');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`, `data1012`) VALUES('27', '<h3>The page you were looking for is not found.</h3>\n\n<p>Please use our search engine or navigation above to find the page.</p>', '<h3>Die Seite, die Sie suchen, wurde nicht gefunden. </h3>\n\n<p>Bitte verwenden Sie die Suchmaschine oder die Navigation oben, um die Seite zu finden.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`) VALUES('1', '<p>What is ProcessWire?</p>\n\n<p>ProcessWire gives you full control over your fields, templates and markup. It provides a powerful template system that works the way you do. Not to mention, ProcessWire\'s API makes working with your content easy and enjoyable. <a href=\"http://processwire.com\">Learn more</a></p>\n\n<h3>About this site profile</h3>\n\n<p>This is a basic minimal site for you to use in developing your own site or to learn from. There are a few pages here to serve as examples, but this site profile does not make any attempt to demonstrate all that ProcessWire can do. To learn more or ask questions, visit the <a href=\"http://www.processwire.com/talk/\" target=\"_blank\" rel=\"noreferrer noopener\">ProcessWire forums</a> or <a href=\"http://modules.processwire.com/categories/site-profile/\">browse more site profiles</a>. If you are building a new site, this minimal profile is a good place to start. You may use these existing templates and design as they are, or you may replace them entirely.</p>\n\n<h3>Browse the site</h3>', '<h2>Was ist ProcessWire?</h2>\n\n<p>ProcessWire gibt Ihnen volle Kontrolle über Ihre Felder, Vorlagen und Markup. Es bietet ein mächtiges Templating-System, das sich ganz nach Ihren richtet. Mit dem ProcessWire API bearbeiten Sie Inhalte spielend einfach und bequem. <a href=\"http://de.processwire.com\">Mehr erfahren</a></p>\n\n<h3>Über dieses Webseiten-Profil</h3>\n\n<p>Dieses Demo-Profil ist eine einfache Webseite, die Sie als Grundlage für die Entwicklung Ihrer eigenen Webseiten verwenden können oder um sich mit dem System vertraut zu machen. Die Seiten dienen lediglich als Beispiele und erheben nicht den Anspruch, alle ProcessWire Features demonstrieren zu wollen. Wenn Sie Ihre eigene Webseiten bauen, ist dieses Profil ein guter Ausgangspunkt. Sie können die vorhandenen Vorlagen und das Design verwenden wie sie sind, oder nach Belieben austauschen.</p>\n\n<h3>Diese Seite durchsuchen</h3>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`) VALUES('1001', '<h2>Si lobortis singularis genitus ibidem saluto.</h2>\n\n<p>Dolore ad nunc, mos accumsan paratus duis suscipit luptatum facilisis macto uxor iaceo quadrum. Demoveo, appellatio elit neque ad commodo ea. Wisi, iaceo, tincidunt at commoveo rusticus et, ludus. Feugait at blandit bene blandit suscipere abdo duis ideo bis commoveo pagus ex, velit. Consequat commodo roto accumsan, duis transverbero.</p>', '<h2>Hinter den Wortbergen</h2>\n\n<p>Weit hinten, hinter den Wortbergen, fern der Länder Vokalien und Konsonantien leben die Blindtexte. Abgeschieden wohnen sie in Buchstabhausen an der Küste des Semantik, eines großen Sprachozeans. Ein kleines Bächlein namens Duden fließt durch ihren Ort und versorgt sie mit den nötigen Regelialien. Es ist ein paradiesmatisches Land, in dem einem gebratene Satzteile in den Mund fliegen. Nicht einmal von der allmächtigen Interpunktion werden die Blindtexte beherrscht – ein geradezu unorthographisches Leben.</p>');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1012` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1012` (`data1012`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`) VALUES('1', 'Minimal Site Profile', 'Kleine Demo-Webseite');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1010', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1010', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--templates-admin--debug-inc.json', '117', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--textformatter--textformatterentities-module.json', '116', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--system--systemupdater--systemupdater-module.json', '115', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '114', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '113', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '112', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processuser--processuser-module.json', '111', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '110', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processtemplate--processtemplate-module.json', '109', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processprofile--processprofile-module.json', '107', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processrole--processrole-module.json', '108', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpermission--processpermission-module.json', '106', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpageview-module.json', '105', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpagetype--processpagetype-module.json', '104', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpagetrash-module.json', '103', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpagesort-module.json', '102', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '101', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpagelister--processpagelister-module.json', '100', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpagelist--processpagelist-module.json', '99', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpageedit--processpageedit-module.json', '96', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '98', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '97', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpageclone-module.json', '95', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processpageadd--processpageadd-module.json', '94', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '93', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processlogin--processlogin-module.json', '91', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processmodule--processmodule-module.json', '92', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processlist-module.json', '90', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processhome-module.json', '89', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processforgotpassword-module.json', '88', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processfield--processfield-module.json', '86', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--process--processfield--processfieldexportimport-php.json', '87', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--pagerender-module.json', '85', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--pagepaths-module.json', '84', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--languagesupport--languagetabs-module.json', '80', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--languagesupport--processlanguage-module.json', '81', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--markup--markuppagefields-module.json', '82', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '83', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '79', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--languagesupport--languageparser-php.json', '76', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--languagesupport--languagesupport-module.json', '77', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--languagesupport--languagesupportfields-module.json', '78', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldurl-module.json', '74', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '75', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldtinymce--inputfieldtinymce-module.json', '73', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldtextarea-module.json', '72', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '68', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '69', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldtext-module.json', '71', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '70', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldselect-module.json', '67', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '66', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldpassword-module.json', '65', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '61', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '62', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '63', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '64', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '60', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '59', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '58', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '57', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldname-module.json', '56', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldmarkup-module.json', '55', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldinteger-module.json', '54', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '49', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldfloat-module.json', '50', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldform-module.json', '51', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldhidden-module.json', '52', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '53', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldfieldset-module.json', '48', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldemail-module.json', '47', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '46', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '45', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '44', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldbutton-module.json', '42', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '43', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypetextarea-module.json', '39', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypeurl-module.json', '40', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '41', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypetext-module.json', '38', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypeselector-module.json', '37', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '36', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '35', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '34', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypepage-module.json', '33', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypemodule-module.json', '32', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypefloat-module.json', '31', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypefile-module.json', '30', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '29', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '28', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '27', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '24', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '25', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '26', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '23', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--wireupload-php.json', '22', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--wiretempdir-php.json', '21', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--sessioncsrf-php.json', '18', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--wirecache-php.json', '19', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--wirehttp-php.json', '20', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--session-php.json', '17', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--pages-php.json', '13', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--password-php.json', '14', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--process-php.json', '15', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--sanitizer-php.json', '16', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--pagefile-php.json', '11', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--pageimage-php.json', '12', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--modules-php.json', '10', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--inputfieldwrapper-php.json', '9', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--inputfield-php.json', '8', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--functions-php.json', '7', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--fieldtypemulti-php.json', '6', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--fieldtype-php.json', '5', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--fieldselectorinfo-php.json', '4', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--fields-php.json', '2', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--admintheme-php.json', '3', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--fieldgroups-php.json', '1', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--core--field-php.json', '0', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'wire--templates-admin--default-php.json', '118', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'site--templates--_main-php.json', '0', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'site--templates--search-php.json', '1', '[\"\"]', '2018-01-18 05:00:51', '2018-01-18 05:00:51');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '160');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1017', '169');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`) VALUES('1005', 'View this template\'s source for a demonstration of how to create a basic site map. ', 'Schauen Sie sich den Quell-Code dieser Musterseite an, um zu sehen, wie man einfache Sitemaps erstellt.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`) VALUES('1', 'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients. ', 'ProcessWire ist ein Open-Source-CMS und Web-Applikations-Framework, das sich ganz den Anforderungen von Designern, Entwicklern und deren Kunden anpaßt.');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1012` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1012` (`data1012`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('11', 'Templates', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('16', 'Fields', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('22', 'Setup', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('3', 'Pages', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('6', 'Add Page', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('8', 'Tree', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('9', 'Save Sort', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('10', 'Edit', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('21', 'Modules', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('29', 'Users', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('30', 'Roles', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('2', 'Admin', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('7', 'Trash', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('27', '404 Page', '404 Seite');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('302', 'Insert Link', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('23', 'Login', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('304', 'Profile', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('301', 'Empty Trash', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('300', 'Search', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('303', 'Insert Image', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('28', 'Access', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('31', 'Permissions', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('32', 'Edit pages', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('34', 'Delete pages', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('35', 'Move pages (change parent)', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('36', 'View pages', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('50', 'Sort child pages', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('51', 'Change templates on pages', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('52', 'Administer users', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('53', 'User can update profile/password', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('54', 'Lock or unlock a page', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1', 'Home', 'Zuhause');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1001', 'About', 'Über');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1000', 'Search', 'Suche');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1005', 'Site Map', 'Sitemap');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1006', 'Use Page Lister', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1007', 'Find', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1009', 'Languages', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1010', 'English', 'Englisch');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1011', 'Language Translator', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1012', 'German', 'Deutsch');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1015', 'Recent', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1016', 'Can see recently edited pages', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1017', 'Logs', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1018', 'Can view system logs', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`) VALUES('1019', 'Can manage system logs', '');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '97', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '103', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '100', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"label1012\":\"Titel\",\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2,\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"label1012\":\"Bilder\",\"textformatters\":[\"TextformatterEntities\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextareaLanguage', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"label1012\":\"Zusammenfassung\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextareaLanguage', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, \\nPWLink, Unlink,\\nPWImage, SpecialChar\\nPasteText, PasteFromWord\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h3;h4;\",\"extraPlugins\":[\"pwimage\",\"pwlink\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"label1012\":\"Inhalt\",\"langBlankInherit\":0,\"htmlOptions\":[2,4,8],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeTextLanguage', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the field above if more text is needed for the page than for the navigation. \",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"langBlankInherit\":1,\"label1012\":\"\\u00dcberschrift\",\"description1012\":\"Verwenden Sie diese statt dem obigen Feld, wenn mehr Text f\\u00fcr die Seite als f\\u00fcr die Navigation ben\\u00f6tigt wird.j\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":2,\"outputFormat\":0,\"defaultValuePage\":0,\"clone_field\":1,\"description\":\"Use this for field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1009,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"description\":\"Use this for field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"language\",\"admin_theme\"]}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.62\"}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'LanguageSupport', '35', '{\"languagesPageID\":1009,\"defaultLanguagePageID\":1010,\"otherLanguagePageIDs\":[1012],\"languageTranslatorPageID\":1011}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessLanguage', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLanguageTranslator', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'LanguageSupportFields', '3', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'FieldtypeTextLanguage', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypePageTitleLanguage', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeTextareaLanguage', '1', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":9,\"pageNumUrlPrefix1010\":\"page\",\"useHomeSegment\":0}', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'LanguageTabs', '11', '', '2018-01-18 05:00:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessRecentPages', '1', '', '2018-01-18 05:01:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'ProcessLogger', '1', '', '2018-01-18 05:01:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'InputfieldIcon', '0', '', '2018-01-18 05:01:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'AdminThemeReno', '10', '{\"colors\":\"classic\",\"avatar_field_user\":\"\",\"userFields_user\":\"name\",\"notices\":\"fa-bell\",\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\"}', '2018-01-18 05:01:47');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `language_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1012` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1012` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1012_parent_id` (`name1012`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1021 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1', '0', '1', 'en', '9', '2018-01-18 05:05:04', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '0', 'de', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('2', '1', '2', 'processwire', '1035', '2018-01-18 05:01:12', '40', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('3', '2', '2', 'page', '21', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('6', '3', '2', 'add', '21', '2018-01-18 05:01:22', '40', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('7', '1', '2', 'trash', '1039', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('8', '3', '2', 'list', '21', '2018-01-18 05:01:34', '40', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('9', '3', '2', 'sort', '1047', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('10', '3', '2', 'edit', '1045', '2018-01-18 05:01:27', '40', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('11', '22', '2', 'template', '21', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('16', '22', '2', 'field', '21', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('21', '2', '2', 'module', '21', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('22', '2', '2', 'setup', '21', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('23', '2', '2', 'login', '1035', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('27', '1', '29', 'http404', '1035', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '3', '2018-01-18 05:00:51', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('28', '2', '2', 'access', '13', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('29', '28', '2', 'users', '29', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('30', '28', '2', 'roles', '29', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('31', '28', '2', 'permissions', '29', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('32', '31', '5', 'page-edit', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('34', '31', '5', 'page-delete', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('35', '31', '5', 'page-move', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('36', '31', '5', 'page-view', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('37', '30', '4', 'guest', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('38', '30', '4', 'superuser', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('41', '29', '3', 'admin', '1', '2018-01-18 05:01:56', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('40', '29', '3', 'guest', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('50', '31', '5', 'page-sort', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('51', '31', '5', 'page-template', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('52', '31', '5', 'user-admin', '25', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('53', '31', '5', 'profile-edit', '1', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('54', '31', '5', 'page-lock', '1', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('300', '3', '2', 'search', '1045', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('301', '3', '2', 'trash', '1047', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('302', '3', '2', 'link', '1041', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('303', '3', '2', 'image', '1041', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('304', '2', '2', 'profile', '1025', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1000', '1', '26', 'search', '1025', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '3', 'suche', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1001', '1', '29', 'about', '1', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '0', 'uber', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1005', '1', '34', 'site-map', '1', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', '2018-01-18 05:00:51', '2', 'sitemap', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1006', '31', '5', 'page-lister', '1', '2018-01-18 05:00:51', '40', '2018-01-18 05:00:51', '40', '2018-01-18 05:00:51', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1007', '3', '2', 'lister', '1', '2018-01-18 05:00:51', '40', '2018-01-18 05:00:51', '40', '2018-01-18 05:00:51', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1009', '22', '2', 'languages', '16', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1010', '1009', '43', 'default', '16', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1011', '22', '2', 'language-translator', '1040', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1012', '1009', '43', 'de', '1', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '41', '2018-01-18 05:00:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1015', '3', '2', 'recent-pages', '1', '2018-01-18 05:01:12', '40', '2018-01-18 05:01:12', '40', '2018-01-18 05:01:12', '10', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1016', '31', '5', 'page-edit-recent', '1', '2018-01-18 05:01:12', '40', '2018-01-18 05:01:12', '40', '2018-01-18 05:01:12', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1017', '22', '2', 'logs', '1', '2018-01-18 05:01:15', '40', '2018-01-18 05:01:15', '40', '2018-01-18 05:01:15', '4', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1018', '31', '5', 'logs-view', '1', '2018-01-18 05:01:15', '40', '2018-01-18 05:01:15', '40', '2018-01-18 05:01:15', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`) VALUES('1019', '31', '5', 'logs-edit', '1', '2018-01-18 05:01:15', '40', '2018-01-18 05:01:15', '40', '2018-01-18 05:01:15', '12', NULL, '1');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2018-01-18 05:00:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2018-01-18 05:01:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2018-01-18 05:01:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '2', '2018-01-18 05:01:15');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1005', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '22');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1516251313,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Home\",\"modified\":1516251758,\"ns\":\"ProcessWire\",\"label1012\":\"Zuhause\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Basic Page\",\"modified\":1516251758,\"ns\":\"ProcessWire\",\"label1012\":\"Grund Seite\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Search\",\"modified\":1516251758,\"ns\":\"ProcessWire\",\"label1012\":\"Suche\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"label\":\"Site Map\",\"modified\":1516251758,\"ns\":\"ProcessWire\",\"label1012\":\"Sitemap\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"nameContentTab\":1,\"modified\":1409651146}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":19,"numCreateTables":26,"numInserts":443,"numSeconds":0}