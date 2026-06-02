-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql111.hstn.me
-- Tempo de geração: 27/05/2025 às 14:53
-- Versão do servidor: 10.6.19-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mseet_39018685_forum`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_admin_info_files`
--

CREATE TABLE `l2j_admin_info_files` (
  `id_file` tinyint(3) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_admin_info_files`
--

INSERT INTO `l2j_admin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(1, 'current-version.js', '/smf/', 'version=%3$s', 'window.smfVersion = \"SMF 2.1.4\";', 'text/javascript'),
(2, 'detailed-version.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfVersions = {\n	\'SMF\': \'SMF 2.1.4\',\n	\'SourcesAdmin.php\': \'2.1.0\',\n	\'SourcesAgreement.php\': \'2.1.0\',\n	\'SourcesAttachments.php\': \'2.1.2\',\n	\'SourcesBoardIndex.php\': \'2.1.4\',\n	\'SourcesCalendar.php\': \'2.1.2\',\n	\'SourcesClass-BrowserDetect.php\': \'2.1.0\',\n	\'SourcesClass-CurlFetchWeb.php\': \'2.1.0\',\n	\'SourcesClass-Graphics.php\': \'2.1.0\',\n	\'SourcesClass-Package.php\': \'2.1.0\',\n	\'SourcesClass-Punycode.php\': \'2.1.3\',\n	\'SourcesClass-SearchAPI.php\': \'2.1.0\',\n	\'SourcesClass-TOTP.php\': \'2.1.0\',\n	\'SourcesDbExtra-mysql.php\': \'2.1.0\',\n	\'SourcesDbExtra-postgresql.php\': \'2.1.0\',\n	\'SourcesDbPackages-mysql.php\': \'2.1.4\',\n	\'SourcesDbPackages-postgresql.php\': \'2.1.4\',\n	\'SourcesDbSearch-mysql.php\': \'2.1.4\',\n	\'SourcesDbSearch-postgresql.php\': \'2.1.4\',\n	\'SourcesDisplay.php\': \'2.1.4\',\n	\'SourcesDrafts.php\': \'2.1.0\',\n	\'SourcesErrors.php\': \'2.1.2\',\n	\'SourcesGroups.php\': \'2.1.3\',\n	\'SourcesHelp.php\': \'2.1.3\',\n	\'Sourcesindex.php\': \'2.1.3\',\n	\'SourcesLikes.php\': \'2.1.3\',\n	\'SourcesLoad.php\': \'2.1.4\',\n	\'SourcesLogInOut.php\': \'2.1.3\',\n	\'SourcesLogging.php\': \'2.1.4\',\n	\'SourcesManageAttachments.php\': \'2.1.3\',\n	\'SourcesManageBans.php\': \'2.1.4\',\n	\'SourcesManageBoards.php\': \'2.1.0\',\n	\'SourcesManageCalendar.php\': \'2.1.3\',\n	\'SourcesManageErrors.php\': \'2.1.3\',\n	\'SourcesManageLanguages.php\': \'2.1.3\',\n	\'SourcesManageMail.php\': \'2.1.0\',\n	\'SourcesManageMaintenance.php\': \'2.1.4\',\n	\'SourcesManageMembergroups.php\': \'2.1.3\',\n	\'SourcesManageMembers.php\': \'2.1.0\',\n	\'SourcesManageNews.php\': \'2.1.3\',\n	\'SourcesManagePaid.php\': \'2.1.4\',\n	\'SourcesManagePermissions.php\': \'2.1.3\',\n	\'SourcesManagePosts.php\': \'2.1.3\',\n	\'SourcesManageRegistration.php\': \'2.1.0\',\n	\'SourcesManageScheduledTasks.php\': \'2.1.0\',\n	\'SourcesManageSearch.php\': \'2.1.3\',\n	\'SourcesManageSearchEngines.php\': \'2.1.2\',\n	\'SourcesManageServer.php\': \'2.1.3\',\n	\'SourcesManageSettings.php\': \'2.1.2\',\n	\'SourcesManageSmileys.php\': \'2.1.3\',\n	\'SourcesMemberlist.php\': \'2.1.4\',\n	\'SourcesMentions.php\': \'2.1.0\',\n	\'SourcesMessageIndex.php\': \'2.1.3\',\n	\'SourcesModerationCenter.php\': \'2.1.3\',\n	\'SourcesModlog.php\': \'2.1.0\',\n	\'SourcesMoveTopic.php\': \'2.1.0\',\n	\'SourcesNews.php\': \'2.1.2\',\n	\'SourcesNotify.php\': \'2.1.0\',\n	\'SourcesPackageGet.php\': \'2.1.1\',\n	\'SourcesPackages.php\': \'2.1.0\',\n	\'SourcesPersonalMessage.php\': \'2.1.4\',\n	\'SourcesPoll.php\': \'2.1.0\',\n	\'SourcesPost.php\': \'2.1.4\',\n	\'SourcesPostModeration.php\': \'2.1.0\',\n	\'SourcesPrintpage.php\': \'2.1.0\',\n	\'SourcesProfile-Actions.php\': \'2.1.0\',\n	\'SourcesProfile-Export.php\': \'2.1.2\',\n	\'SourcesProfile-Modify.php\': \'2.1.3\',\n	\'SourcesProfile-View.php\': \'2.1.3\',\n	\'SourcesProfile.php\': \'2.1.4\',\n	\'SourcesProxy.php\': \'2.1.4\',\n	\'SourcesQueryString.php\': \'2.1.0\',\n	\'SourcesRecent.php\': \'2.1.3\',\n	\'SourcesRegister.php\': \'2.1.3\',\n	\'SourcesReminder.php\': \'2.1.0\',\n	\'SourcesRemoveTopic.php\': \'2.1.4\',\n	\'SourcesRepairBoards.php\': \'2.1.0\',\n	\'SourcesReportToMod.php\': \'2.1.0\',\n	\'SourcesReportedContent.php\': \'2.1.0\',\n	\'SourcesReports.php\': \'2.1.0\',\n	\'SourcesSSI.php\': \'2.1.4\',\n	\'SourcesScheduledTasks.php\': \'2.1.0\',\n	\'SourcesSearch.php\': \'2.1.4\',\n	\'SourcesSearchAPI-Custom.php\': \'2.1.4\',\n	\'SourcesSearchAPI-Fulltext.php\': \'2.1.4\',\n	\'SourcesSearchAPI-Standard.php\': \'2.1.0\',\n	\'SourcesSecurity.php\': \'2.1.4\',\n	\'SourcesSession.php\': \'2.1.0\',\n	\'SourcesShowAttachments.php\': \'2.1.3\',\n	\'SourcesSplitTopics.php\': \'2.1.0\',\n	\'SourcesStats.php\': \'2.1.0\',\n	\'SourcesSubs-Admin.php\': \'2.1.2\',\n	\'SourcesSubs-Attachments.php\': \'2.1.4\',\n	\'SourcesSubs-Auth.php\': \'2.1.4\',\n	\'SourcesSubs-BoardIndex.php\': \'2.1.0\',\n	\'SourcesSubs-Boards.php\': \'2.1.4\',\n	\'SourcesSubs-Calendar.php\': \'2.1.2\',\n	\'SourcesSubs-Categories.php\': \'2.1.0\',\n	\'SourcesSubs-Charset.php\': \'2.1.4\',\n	\'SourcesSubs-Compat.php\': \'2.1.3\',\n	\'SourcesSubs-Db-mysql.php\': \'2.1.3\',\n	\'SourcesSubs-Db-postgresql.php\': \'2.1.4\',\n	\'SourcesSubs-Editor.php\': \'2.1.4\',\n	\'SourcesSubs-Graphics.php\': \'2.1.2\',\n	\'SourcesSubs-List.php\': \'2.1.0\',\n	\'SourcesSubs-Membergroups.php\': \'2.1.4\',\n	\'SourcesSubs-Members.php\': \'2.1.2\',\n	\'SourcesSubs-MembersOnline.php\': \'2.1.0\',\n	\'SourcesSubs-Menu.php\': \'2.1.4\',\n	\'SourcesSubs-MessageIndex.php\': \'2.1.2\',\n	\'SourcesSubs-Notify.php\': \'2.1.3\',\n	\'SourcesSubs-Package.php\': \'2.1.3\',\n	\'SourcesSubs-Post.php\': \'2.1.3\',\n	\'SourcesSubs-Recent.php\': \'2.1.0\',\n	\'SourcesSubs-ReportedContent.php\': \'2.1.3\',\n	\'SourcesSubs-Sound.php\': \'2.1.2\',\n	\'SourcesSubs-Themes.php\': \'2.1.0\',\n	\'SourcesSubs-Timezones.php\': \'2.1.3\',\n	\'SourcesSubs.php\': \'2.1.4\',\n	\'SourcesSubscriptions-PayPal.php\': \'2.1.4\',\n	\'SourcesThemes.php\': \'2.1.0\',\n	\'SourcesTopic.php\': \'2.1.0\',\n	\'SourcesViewQuery.php\': \'2.1.0\',\n	\'SourcesWho.php\': \'2.1.4\',\n	\'SourcesXml.php\': \'2.1.0\',\n	\'Sourcessubscriptions.php\': \'2.1.2\',\n	\'TasksApprovePost-Notify.php\': \'2.1.3\',\n	\'TasksApproveReply-Notify.php\': \'2.1.0\',\n	\'TasksBirthday-Notify.php\': \'2.1.0\',\n	\'TasksBuddy-Notify.php\': \'2.1.0\',\n	\'TasksCreateAttachment-Notify.php\': \'2.1.0\',\n	\'TasksCreatePost-Notify.php\': \'2.1.4\',\n	\'TasksEventNew-Notify.php\': \'2.1.0\',\n	\'TasksExportProfileData.php\': \'2.1.0\',\n	\'TasksGroupAct-Notify.php\': \'2.1.0\',\n	\'TasksGroupReq-Notify.php\': \'2.1.0\',\n	\'TasksLikes-Notify.php\': \'2.1.0\',\n	\'TasksMemberReport-Notify.php\': \'2.1.0\',\n	\'TasksMemberReportReply-Notify.php\': \'2.1.0\',\n	\'TasksMsgReport-Notify.php\': \'2.1.0\',\n	\'TasksMsgReportReply-Notify.php\': \'2.1.0\',\n	\'TasksRegister-Notify.php\': \'2.1.0\',\n	\'TasksUpdateTldRegex.php\': \'2.1.0\',\n	\'DefaultAdmin.template.php\': \'2.1.0\',\n	\'DefaultAgreement.template.php\': \'2.1.0\',\n	\'DefaultBoardIndex.template.php\': \'2.1.0\',\n	\'DefaultCalendar.template.php\': \'2.1.0\',\n	\'DefaultDisplay.template.php\': \'2.1.2\',\n	\'DefaultErrors.template.php\': \'2.1.3\',\n	\'DefaultGenericControls.template.php\': \'2.1.0\',\n	\'DefaultGenericList.template.php\': \'2.1.0\',\n	\'DefaultGenericMenu.template.php\': \'2.1.0\',\n	\'DefaultHelp.template.php\': \'2.1.3\',\n	\'DefaultLikes.template.php\': \'2.1.3\',\n	\'DefaultLogin.template.php\': \'2.1.0\',\n	\'DefaultManageAttachments.template.php\': \'2.1.0\',\n	\'DefaultManageBans.template.php\': \'2.1.0\',\n	\'DefaultManageBoards.template.php\': \'2.1.0\',\n	\'DefaultManageCalendar.template.php\': \'2.1.0\',\n	\'DefaultManageLanguages.template.php\': \'2.1.0\',\n	\'DefaultManageMail.template.php\': \'2.1.0\',\n	\'DefaultManageMaintenance.template.php\': \'2.1.0\',\n	\'DefaultManageMembergroups.template.php\': \'2.1.0\',\n	\'DefaultManageMembers.template.php\': \'2.1.0\',\n	\'DefaultManageNews.template.php\': \'2.1.0\',\n	\'DefaultManagePaid.template.php\': \'2.1.0\',\n	\'DefaultManagePermissions.template.php\': \'2.1.0\',\n	\'DefaultManageScheduledTasks.template.php\': \'2.1.0\',\n	\'DefaultManageSearch.template.php\': \'2.1.0\',\n	\'DefaultManageSmileys.template.php\': \'2.1.0\',\n	\'DefaultMemberlist.template.php\': \'2.1.0\',\n	\'DefaultMessageIndex.template.php\': \'2.1.2\',\n	\'DefaultModerationCenter.template.php\': \'2.1.4\',\n	\'DefaultMoveTopic.template.php\': \'2.1.4\',\n	\'DefaultNotify.template.php\': \'2.1.0\',\n	\'DefaultPackages.template.php\': \'2.1.3\',\n	\'DefaultPersonalMessage.template.php\': \'2.1.3\',\n	\'DefaultPoll.template.php\': \'2.1.0\',\n	\'DefaultPost.template.php\': \'2.1.4\',\n	\'DefaultPrintpage.template.php\': \'2.1.0\',\n	\'DefaultProfile.template.php\': \'2.1.4\',\n	\'DefaultRecent.template.php\': \'2.1.0\',\n	\'DefaultRegister.template.php\': \'2.1.3\',\n	\'DefaultReminder.template.php\': \'2.1.0\',\n	\'DefaultReportToMod.template.php\': \'2.1.0\',\n	\'DefaultReportedContent.template.php\': \'2.1.0\',\n	\'DefaultReports.template.php\': \'2.1.0\',\n	\'DefaultSearch.template.php\': \'2.1.0\',\n	\'DefaultSettings.template.php\': \'2.1.0\',\n	\'DefaultSplitTopics.template.php\': \'2.1.0\',\n	\'DefaultStats.template.php\': \'2.1.0\',\n	\'DefaultThemes.template.php\': \'2.1.3\',\n	\'DefaultWho.template.php\': \'2.1.3\',\n	\'DefaultXml.template.php\': \'2.1.2\',\n	\'Defaultindex.template.php\': \'2.1.3\',\n	\'TemplateAdmin.template.php\': \'2.1.0\',\n	\'TemplateAgreement.template.php\': \'2.1.0\',\n	\'TemplateBoardIndex.template.php\': \'2.1.0\',\n	\'TemplateCalendar.template.php\': \'2.1.0\',\n	\'TemplateDisplay.template.php\': \'2.1.2\',\n	\'TemplateErrors.template.php\': \'2.1.0\',\n	\'TemplateGenericControls.template.php\': \'2.1.0\',\n	\'TemplateGenericList.template.php\': \'2.1.0\',\n	\'TemplateGenericMenu.template.php\': \'2.1.0\',\n	\'TemplateHelp.template.php\': \'2.1.0\',\n	\'TemplateLikes.template.php\': \'2.1.0\',\n	\'TemplateLogin.template.php\': \'2.1.0\',\n	\'TemplateManageAttachments.template.php\': \'2.1.0\',\n	\'TemplateManageBans.template.php\': \'2.1.0\',\n	\'TemplateManageBoards.template.php\': \'2.1.0\',\n	\'TemplateManageCalendar.template.php\': \'2.1.0\',\n	\'TemplateManageLanguages.template.php\': \'2.1.0\',\n	\'TemplateManageMail.template.php\': \'2.1.0\',\n	\'TemplateManageMaintenance.template.php\': \'2.1.0\',\n	\'TemplateManageMembergroups.template.php\': \'2.1.0\',\n	\'TemplateManageMembers.template.php\': \'2.1.0\',\n	\'TemplateManageNews.template.php\': \'2.1.0\',\n	\'TemplateManagePaid.template.php\': \'2.1.0\',\n	\'TemplateManagePermissions.template.php\': \'2.1.0\',\n	\'TemplateManageScheduledTasks.template.php\': \'2.1.0\',\n	\'TemplateManageSearch.template.php\': \'2.1.0\',\n	\'TemplateManageSmileys.template.php\': \'2.1.0\',\n	\'TemplateMemberlist.template.php\': \'2.1.0\',\n	\'TemplateMessageIndex.template.php\': \'2.1.2\',\n	\'TemplateModerationCenter.template.php\': \'2.1.0\',\n	\'TemplateMoveTopic.template.php\': \'2.1.0\',\n	\'TemplateNotify.template.php\': \'2.1.0\',\n	\'TemplatePackages.template.php\': \'2.1.0\',\n	\'TemplatePersonalMessage.template.php\': \'2.1.2\',\n	\'TemplatePoll.template.php\': \'2.1.0\',\n	\'TemplatePost.template.php\': \'2.1.2\',\n	\'TemplatePrintpage.template.php\': \'2.1.0\',\n	\'TemplateProfile.template.php\': \'2.1.2\',\n	\'TemplateRecent.template.php\': \'2.1.0\',\n	\'TemplateRegister.template.php\': \'2.1.0\',\n	\'TemplateReminder.template.php\': \'2.1.0\',\n	\'TemplateReportToMod.template.php\': \'2.1.0\',\n	\'TemplateReportedContent.template.php\': \'2.1.0\',\n	\'TemplateReports.template.php\': \'2.1.0\',\n	\'TemplateSearch.template.php\': \'2.1.0\',\n	\'TemplateSettings.template.php\': \'2.1.0\',\n	\'TemplateSplitTopics.template.php\': \'2.1.0\',\n	\'TemplateStats.template.php\': \'2.1.0\',\n	\'TemplateThemes.template.php\': \'2.1.0\',\n	\'TemplateWho.template.php\': \'2.1.0\',\n	\'TemplateXml.template.php\': \'2.1.2\',\n	\'Templateindex.template.php\': \'2.1.2\',\n};\n\nwindow.smfLanguageVersions = {\n	\'Admin\': \'2.1.3\',\n	\'Agreement\': \'2.1.0\',\n	\'Alerts\': \'2.1.3\',\n	\'Drafts\': \'2.1.0\',\n	\'Editor\': \'2.1.0\',\n	\'EmailTemplates\': \'2.1.0\',\n	\'Errors\': \'2.1.4\',\n	\'Help\': \'2.1.3\',\n	\'Install\': \'2.1.3\',\n	\'Login\': \'2.1.2\',\n	\'ManageBoards\': \'2.1.0\',\n	\'ManageCalendar\': \'2.1.0\',\n	\'ManageMail\': \'2.1.0\',\n	\'ManageMaintenance\': \'2.1.0\',\n	\'ManageMembers\': \'2.1.0\',\n	\'ManagePaid\': \'2.1.0\',\n	\'ManagePermissions\': \'2.1.0\',\n	\'ManageScheduledTasks\': \'2.1.0\',\n	\'ManageSettings\': \'2.1.0\',\n	\'ManageSmileys\': \'2.1.0\',\n	\'Manual\': \'2.1.0\',\n	\'ModerationCenter\': \'2.1.0\',\n	\'Modifications\': \'2.1.0\',\n	\'Modlog\': \'2.1.0\',\n	\'Packages\': \'2.1.0\',\n	\'PersonalMessage\': \'2.1.0\',\n	\'Post\': \'2.1.4\',\n	\'Profile\': \'2.1.3\',\n	\'Reports\': \'2.1.0\',\n	\'Search\': \'2.1.0\',\n	\'Settings\': \'2.1.0\',\n	\'Stats\': \'2.1.0\',\n	\'Themes\': \'2.1.0\',\n	\'Timezones\': \'2.1.3\',\n	\'Who\': \'2.1.3\',\n	\'index\': \'2.1.3\',\n};\n', 'text/javascript'),
(3, 'latest-news.js', '/smf/', 'language=%1$s&format=%2$s', '\nwindow.smfAnnouncements = [\n	{\n		subject: \'SMF 2.1.4 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=586097.0\',\n		time: \'Jun 10, 2023, 05:21 PM\',\n		author: \'shawnb61\',\n		message: \'SMF 2.1.4 includes security updates and numerous bug fixes. We recommend updating as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.1.3 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=584230.0\',\n		time: \'Nov 21, 2022, 07:00 PM\',\n		author: \'shawnb61\',\n		message: \'SMF 2.1.3 includes security updates and numerous bug fixes. We recommend updating as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.1.2 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=582201.0\',\n		time: \'May 09, 2022, 04:33 PM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.1.2 includes security updates and numerous bug fixes. We recommend updating as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.1.1 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=580657.0\',\n		time: \'Feb 12, 2022, 01:25 AM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.1.1 restores support for PHP 7.0–7.2.\'\n	},\n	{\n		subject: \'SMF 2.1.0 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=580585.0\',\n		time: \'Feb 09, 2022, 05:45 PM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.1 is here! Please upgrade to start enjoying all the benefits of our new recommended version as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.0.19 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=579982.0\',\n		time: \'Dec 21, 2021, 09:45 PM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.0.19 includes security updates and several bug fixes. We recommend updating as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.1 RC4 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=578135.0\',\n		time: \'Jul 10, 2021, 03:14 PM\',\n		author: \'Suki\',\n		message: \'Simple Machines is pleased to announce SMF 2.1 RC4. This fourth release candidate brings a number of bugfixes and improvements over SMF 2.1 RC3.\'\n	},\n	{\n		subject: \'SMF 2.0.18 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=576577.0\',\n		time: \'Feb 01, 2021, 06:55 PM\',\n		author: \'Suki\',\n		message: \'SMF 2.0.18 adds compatibility to PHP 7.4 version as well as fixes a few bugs in 2.0.17. We recommend updating as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.1 RC3 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=575228.0\',\n		time: \'Oct 15, 2020, 10:16 AM\',\n		author: \'Suki\',\n		message: \'Simple Machines is pleased to announce SMF 2.1 RC3. This third release candidate brings a number of bugfixes and improvements over SMF 2.1 RC2.\'\n	},\n	{\n		subject: \'SMF 2.0.17 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=571067.0\',\n		time: \'Dec 31, 2019, 12:43 AM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.0.17 fixes a bug in 2.0.16 that could cause significant performance issues when retrieving RSS feeds, and fixes some warning messages that could appear when using SSI.php. We recommend updating as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.0.16 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=570986.0\',\n		time: \'Dec 28, 2019, 12:44 AM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.0.16 fixes some important security issues and adds support for the EU\\\'s General Data Protection Regulation (GDPR) requirements.\'\n	},\n	{\n		subject: \'SMF 2.1 RC2 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=566669.0\',\n		time: \'Mar 30, 2019, 04:27 PM\',\n		author: \'Sesquipedalian\',\n		message: \'Simple Machines is pleased to announce SMF 2.1 RC2. This second release candidate brings a number of bugfixes and improvements over SMF 2.1 RC1.\'\n	},\n	{\n		subject: \'SMF 2.1 RC1 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=564881.0\',\n		time: \'Feb 05, 2019, 01:02 AM\',\n		author: \'Sesquipedalian\',\n		message: \'Simple Machines is proud to announce the first release candidate of the next version of SMF, which contains many bugfixes and a number of new features since 2.1 Beta 3.\'\n	},\n	{\n		subject: \'SMF 2.0.15 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=557176.0\',\n		time: \'Nov 20, 2017, 02:03 AM\',\n		author: \'Colin\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.14 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 3 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=554301.0\',\n		time: \'Jun 01, 2017, 01:21 AM\',\n		author: \'Colin\',\n		message: \'Simple Machines is proud to announce the third beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 2.\'\n	},\n	{\n		subject: \'SMF 2.0.14 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=553855.0\',\n		time: \'May 14, 2017, 09:23 PM\',\n		author: \'Colin\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.13 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.13 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=551061.0\',\n		time: \'Jan 05, 2017, 12:00 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.12 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.12 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=548871.0\',\n		time: \'Sep 27, 2016, 11:00 AM\',\n		author: \'CoreISP\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.11 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.11 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=539888.0\',\n		time: \'Sep 19, 2015, 02:56 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.10. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=538198.0\',\n		time: \'Jul 16, 2015, 09:45 PM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the second beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 1!\'\n	},\n	{\n		subject: \'SMF 2.0.10 and 1.1.21 have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=535828.0\',\n		time: \'Apr 24, 2015, 02:09 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few bugs in SMF 2.0.x and SMF 1.1.x. We urge all forum administrators to upgrade to SMF 2.0.10 or 1.1.21&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=530233.0\',\n		time: \'Nov 21, 2014, 12:40 AM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the first beta of the next version of SMF, with many improvements and new features!\'\n	},\n	{\n		subject: \'SMF 2.0.9 and 1.1.20 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=528448.0\',\n		time: \'Oct 02, 2014, 11:13 PM\',\n		author: \'Oldiesmann\',\n		message: \'Critical security patches have been released, addressing a few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.8 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=524016.0\',\n		time: \'Jun 18, 2014, 02:11 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing memory issues with 2.0.7, MySQL 5.6 compatibility issues and a rare memberlist search bug. We urge all forum administrators to upgrade to SMF 2.0.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.7 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=517205.0\',\n		time: \'Jan 21, 2014, 02:48 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing several bugs, including PHP 5.5 compatibility.  We urge all forum administrators to upgrade to SMF 2.0.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.6 and 1.1.19 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=512964.0\',\n		time: \'Oct 22, 2013, 01:00 PM\',\n		author: \'Illori\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.5 security patches has been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=509417.0\',\n		time: \'Aug 13, 2013, 12:34 AM\',\n		author: \'Oldiesmann\',\n		message: \'A critical security patch has been released, addressing a few vulnerabilities in SMF 2.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.4 and 1.1.18 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=496403.0\',\n		time: \'Feb 01, 2013, 10:27 PM\',\n		author: \'emanuele\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.3, 1.1.17 and 1.0.23 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=492786.0\',\n		time: \'Dec 17, 2012, 04:41 AM\',\n		author: \'emanuele\',\n		message: \'Security patches have been released, addressing a vulnerability in SMF 2.0.x, SMF 1.1.x and SMF 1.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.2 and 1.1.16 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=463103.0\',\n		time: \'Dec 23, 2011, 05:41 AM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.1 and 1.1.15 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=452888.0\',\n		time: \'Sep 18, 2011, 08:48 PM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0 and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Gold\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'Jun 04, 2011, 09:00 PM\',\n		author: \'Norv\',\n		message: \'SMF 2.0 has gone Gold! Please upgrade your forum from older versions, as 2.0 is now the stable version, and mods and themes will be built on it.\'\n	},\n	{\n		subject: \'SMF 1.1.13, 2.0 RC4 security patch and SMF 2.0 RC5 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'Feb 11, 2011, 08:16 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines announces the release of important security patches for SMF 1.1.x and SMF 2.0 RC4, along with the fifth Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC4 and SMF 1.1.12 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=407256.0\',\n		time: \'Nov 01, 2010, 04:14 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines is pleased to announce the release of the fourth Release Candidate of SMF 2.0, along with an important security patch for SMF 1.1.x. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC3 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=369616.0\',\n		time: \'Mar 08, 2010, 11:03 PM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is pleased to announce the release of the third Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.11 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=351341.0\',\n		time: \'Dec 01, 2009, 10:59 PM\',\n		author: \'SleePy\',\n		message: \'A patch has been released, addressing multiple vulnerabilites.  We urge all forum administrators to upgrade to 1.1.11. Simply visit the package manager to install the patch. Also for those still using the 1.0 branch, version 1.0.19 has been released.\'\n	},\n	{\n		subject: \'SMF 2.0 RC2 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=346813.0\',\n		time: \'Nov 09, 2009, 12:10 AM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is very pleased to announce the release of the second Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.10 and 2.0 RC1.2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=324169.0\',\n		time: \'Jul 14, 2009, 11:05 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing a few security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.10 or 2.0 RC1.2, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.9 and 2.0 RC1-1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=311899.0\',\n		time: \'May 21, 2009, 12:40 AM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.9 or 2.0 RC1-1, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 RC1 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290609.0\',\n		time: \'Feb 05, 2009, 04:10 AM\',\n		author: \'Compuart\',\n		message: \'Simple Machines are very pleased to announce the release of the first Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.8\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290608.0\',\n		time: \'Feb 05, 2009, 04:08 AM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.7\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=272861.0\',\n		time: \'Nov 07, 2008, 07:15 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.6\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=260145.0\',\n		time: \'Sep 07, 2008, 08:38 AM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing a security vulnerability.  We urge all forum administrators to upgrade to SMF 1.1.6&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.5\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=236816.0\',\n		time: \'Apr 21, 2008, 01:56 AM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing some security vulnerabilities.  We urge all forum administrators to upgrade to SMF 1.1.5&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 3 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=228921.0\',\n		time: \'Mar 17, 2008, 07:20 PM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are very pleased to announce the release of the first public beta of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.4\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=196380.0\',\n		time: \'Sep 25, 2007, 01:07 AM\',\n		author: \'Compuart\',\n		message: \'A patch has been released to address some security vulnerabilities discovered in SMF 1.1.3.  We urge all forum administrators to upgrade to SMF 1.1.4&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 1 Released to Charter Members\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=190812.0\',\n		time: \'Aug 25, 2007, 11:29 AM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are pleased to announce the first beta of SMF 2.0 has been released to our Charter Members. Visit the Simple Machines site for information on what\\\'s new\'\n	},\n	{\n		subject: \'SMF 1.1.3\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=178757.0\',\n		time: \'Jun 25, 2007, 01:52 AM\',\n		author: \'Thantos\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1.2.  We urge all forum administrators to upgrade to SMF 1.1.3&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.2\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=149553.0\',\n		time: \'Feb 11, 2007, 01:35 PM\',\n		author: \'Grudge\',\n		message: \'A patch has been released to address a number of outstanding bugs in SMF 1.1.1, including several around UTF-8 language support. In addition this patch offers improved image verification support and fixes a couple of low risk security related bugs. If you need any help upgrading please visit our forum.\'\n	},\n	{\n		subject: \'SMF 1.1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=134971.0\',\n		time: \'Dec 17, 2006, 02:33 PM\',\n		author: \'Grudge\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1. We urge all forum administrators to upgrade to SMF 1.1.1 - simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=131008.0\',\n		time: \'Dec 02, 2006, 07:53 PM\',\n		author: \'Grudge\',\n		message: \'SMF 1.1 has gone gold!  If you are using an older version, please upgrade as soon as possible - many things have been changed and fixed, and mods and packages will expect you to be using 1.1.  If you need any help upgrading custom modifications to the new version, please feel free to ask us at our forum.\'\n	}\n];\nif (window.smfVersion < \"SMF 2.1\")\n{\n	window.smfUpdateNotice = \'SMF 2.1.0 has now been released. To take advantage of the improvements available in SMF 2.1 we recommend upgrading as soon as is practical.\';\n	window.smfUpdateCritical = false;\n}\n\nif (document.getElementById(\"yourVersion\"))\n{\n	var yourVersion = getInnerHTML(document.getElementById(\"yourVersion\"));\n	if (yourVersion == \"SMF 1.0.4\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-5_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.5\" || yourVersion == \"SMF 1.0.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.7\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-8_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.8\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1-0-9_1-1-rc3-1.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-10_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.10\" || yourVersion == \"SMF 1.1.2\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.11\" || yourVersion == \"SMF 1.1.3\" || yourVersion == \"SMF 2.0 beta 1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.12\" || yourVersion == \"SMF 1.1.4\" || yourVersion == \"SMF 2.0 beta 3 Public\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip\";\n	else if (yourVersion == \"SMF 1.0.13\" || yourVersion == \"SMF 1.1.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.14\" || yourVersion == \"SMF 1.1.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.15\" || yourVersion == \"SMF 1.1.7\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.16\" || yourVersion == \"SMF 1.1.8\" || yourVersion == \"SMF 2.0 RC1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip\";\n	else if (yourVersion == \"SMF 1.0.17\" || yourVersion == \"SMF 1.1.9\" || yourVersion == \"SMF 2.0 RC1-1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip\";\n	else if (yourVersion == \"SMF 1.0.18\" || yourVersion == \"SMF 1.1.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.19\" || yourVersion == \"SMF 1.1.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz\";\n	}\n	else if (yourVersion == \"SMF 1.0.20\" || yourVersion == \"SMF 1.1.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.14\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.15.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.15\" || yourVersion == \"SMF 1.0.21\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.16\" || yourVersion == \"SMF 1.0.22\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.17\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.18.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.2\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.3\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.4\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.18\" || yourVersion == \"SMF 2.0.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.19\" || yourVersion == \"SMF 2.0.8\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.20\" || yourVersion == \"SMF 2.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip\";\n	else if (yourVersion == \"SMF 2.0.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-1_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-2_patch.tar.gz\";\n	else if (yourVersion == \"SMF 2.0.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.13\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.14\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.15.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.15\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.16.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.16\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.17.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.17\")\n	{\n	window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.18.tar.gz\";\n	window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.18\")\n	{\n	window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.19.tar.gz\";\n	window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.1.0\")\n	{\n	window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_2-1-1_patch.tar.gz\";\n	window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.1.1\")\n	{\n	window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_2-1-2_patch.tar.gz\";\n	window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.1.2\")\n	{\n	window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_2-1-3_patch.tar.gz\";\n	window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.1.3\")\n	{\n	window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_2-1-4_patch.tar.gz\";\n	window.smfUpdateCritical = true;\n	}\n}\n\nif (document.getElementById(\'credits\'))\n	setInnerHTML(document.getElementById(\'credits\'), getInnerHTML(document.getElementById(\'credits\')).replace(/anyone we may have missed/, \'<span title=\"And you thought you had escaped the credits, hadn\\\'t you, Zef Hemel?\">anyone we may have missed</span>\'));\n\n', 'text/javascript'),
(4, 'latest-versions.txt', '/smf/', 'version=%3$s', '[\"SMF 2.0 RC2\", \"SMF 2.0 RC3\", \"SMF 2.0 RC4\", \"SMF 2.0 RC5\", \"SMF 2.0\", \"SMF 2.0.1\", \"SMF 2.0.2\", \"SMF 2.0.3\", \"SMF 2.0.4\", \"SMF 2.0.5\", \"SMF 2.0.6\", \"SMF 2.0.7\", \"SMF 2.0.8\", \"SMF 2.0.9\", \"SMF 2.0.10\", \"SMF 2.0.11\", \"SMF 2.0.12\", \"SMF 2.0.13\", \"SMF 2.0.14\", \"SMF 2.0.15\", \"SMF 2.0.16\", \"SMF 2.0.17\", \"SMF 2.0.18\", \"SMF 2.0.19\", \"SMF 2.1 Beta 1\", \"SMF 2.1 Beta 2\", \"SMF 2.1 Beta 3\", \"SMF 2.1 RC1\", \"SMF 2.1 RC2\", \"SMF 2.1 RC3\", \"SMF 2.1 RC4\", \"SMF 2.1.0\", \"SMF 2.1.1\", \"SMF 2.1.2\", \"SMF 2.1.3\", \"SMF 2.1.4\"]', 'text/plain');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_approval_queue`
--

CREATE TABLE `l2j_approval_queue` (
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_attach` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_event` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_attachments`
--

CREATE TABLE `l2j_attachments` (
  `id_attach` int(10) UNSIGNED NOT NULL,
  `id_thumb` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_folder` tinyint(4) NOT NULL DEFAULT 1,
  `attachment_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `downloads` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `width` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `height` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(128) NOT NULL DEFAULT '',
  `approved` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_attachments`
--

INSERT INTO `l2j_attachments` (`id_attach`, `id_thumb`, `id_msg`, `id_member`, `id_folder`, `attachment_type`, `filename`, `file_hash`, `fileext`, `size`, `downloads`, `width`, `height`, `mime_type`, `approved`) VALUES
(3, 0, 0, 2, 1, 1, 'avatar_2_1747873983.bmp', '', 'bmp', 4504, 0, 65, 65, 'image/x-ms-bmp', 1),
(5, 0, 0, 1, 1, 1, 'avatar_1_1747876092.png', '', 'png', 6548, 0, 65, 65, 'image/png', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_background_tasks`
--

CREATE TABLE `l2j_background_tasks` (
  `id_task` int(10) UNSIGNED NOT NULL,
  `task_file` varchar(255) NOT NULL DEFAULT '',
  `task_class` varchar(255) NOT NULL DEFAULT '',
  `task_data` mediumtext NOT NULL,
  `claimed_time` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_ban_groups`
--

CREATE TABLE `l2j_ban_groups` (
  `id_ban_group` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expire_time` int(10) UNSIGNED DEFAULT NULL,
  `cannot_access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cannot_register` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cannot_post` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cannot_login` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_ban_items`
--

CREATE TABLE `l2j_ban_items` (
  `id_ban` mediumint(8) UNSIGNED NOT NULL,
  `id_ban_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ip_low` varbinary(16) DEFAULT NULL,
  `ip_high` varbinary(16) DEFAULT NULL,
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_boards`
--

CREATE TABLE `l2j_boards` (
  `id_board` smallint(5) UNSIGNED NOT NULL,
  `id_cat` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `child_level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id_parent` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `board_order` smallint(6) NOT NULL DEFAULT 0,
  `id_last_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg_updated` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `num_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `count_posts` tinyint(4) NOT NULL DEFAULT 0,
  `id_theme` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `override_theme` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unapproved_posts` smallint(6) NOT NULL DEFAULT 0,
  `unapproved_topics` smallint(6) NOT NULL DEFAULT 0,
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `deny_member_groups` varchar(255) NOT NULL DEFAULT '',
  `require_prefix` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_boards`
--

INSERT INTO `l2j_boards` (`id_board`, `id_cat`, `child_level`, `id_parent`, `board_order`, `id_last_msg`, `id_msg_updated`, `member_groups`, `id_profile`, `name`, `description`, `num_topics`, `num_posts`, `count_posts`, `id_theme`, `override_theme`, `unapproved_posts`, `unapproved_topics`, `redirect`, `deny_member_groups`, `require_prefix`) VALUES
(1, 1, 0, 0, 3, 0, 0, '-1,0,2,9', 1, 'General Discussion', 'General Lineage II Discussion', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(2, 1, 0, 0, 10, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Help and Support', 'Request general support for Lineage II.', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(3, 2, 0, 0, 73, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Marketplace [Items &amp; Chars]', 'Here you can buy/trade/sell items and characters for private and official servers.Use at your own risk.', 0, 0, 1, 0, 0, 0, 0, '', '', 0),
(4, 2, 0, 0, 75, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Marketplace [L2Packs &amp; Files]', 'Here you can buy/trade/sell l2 custom packs and files for l2j and l2off servers.Use at your own risk.', 0, 0, 1, 0, 0, 0, 0, '', '', 0),
(5, 2, 0, 0, 74, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, ' Marketplace [Powerlvl &amp; Support]', 'Here you can offer poweleveling and other services for private and official servers.Use at your own risk. ', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(6, 2, 0, 0, 76, 0, 0, '-1,0,2,9', 1, 'Marketplace [Webdesign &amp; Webdevelop]', 'Offer/Sell/Request services/templates/webdesign and webdevelopment for your private Lineage 2 Server.Use at your own risk.', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(7, 3, 0, 0, 48, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Server Shares and Files', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(8, 3, 0, 0, 15, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Help and Support', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(9, 3, 0, 0, 16, 8, 8, '-1,0,2,9,4,5,6,7,8', 1, 'Tutorial', '', 1, 1, 0, 0, 0, 0, 0, '', '', 0),
(10, 3, 0, 0, 58, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Websites', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(11, 3, 0, 0, 64, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, ' Server Development Discussion', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(12, 3, 0, 0, 65, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Client Development Discussion', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(13, 3, 0, 0, 19, 7, 7, '-1,0,2,9,4,5,6,7,8', 1, 'Server Emulators', '', 1, 1, 0, 0, 0, 0, 0, '', '', 0),
(14, 3, 1, 9, 17, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Video Tutorial', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(15, 3, 1, 9, 18, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Java Tutorial', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(16, 3, 1, 13, 20, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'The Chaotic Chronicle (Prelude-C5)', 'You can find here server to emulate these expansions: Prelude (2004) C1 - Harbingers of War (2004) C2 - Age of Splendor (2004) C3 - Rise of Darkness (2005) C4 - Scions of Destiny (2005) C5 - Oath of Blood (2006)', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(17, 3, 1, 13, 21, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'The Chaotic Throne (Interlude ~ High Five)', 'Here you can find a server to emulate these expansions: Interlude   (2007) CT 1    The Kamael (2007) CT 1.5    Hellbound(2008) CT 2.1    Gracia Part 1 (2008) CT 2.2    Gracia Part 2 (2008) CT 2.3    Gracia Final (2009) CT 2.4    Gracia Epilogue (2009) CT 2.5    Freya (2010) CT 2.6    High Five (2011)', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(18, 3, 1, 13, 27, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Goddess Of Destruction (Awakening ~ Valiance )', 'Find here emulators for these expansions: GD 1    Awakening (2011) GD 1.5    Harmony (2012) GD 2    Tauti (2012) GD 2.5    Glory Days (2012) GD 3    Lindvior (2013) GD 3.5    Valiance (2013)', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(19, 3, 1, 13, 34, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Epic Tale Of Aden (Ertheia ~ Homunculus Ch.2)', 'Find here emulators for these expansions EP.1 - Ertheia / Dimensional Strangers EP.1.2 - Infinite Odyssey EP.2 - Infinite Odyssey / Infinite Odyssey: Shadows of Light Part 1 and 2. EP2.5 - Underground / Infinite Odyssey: Hymn of the Soul and Will of The Ancients EP.3 - Helios EP.4 - Grand Crusade and Grand Crusade: Force Bringer EP.5 - Salvation: First Chapter / The Page: Salvation and Salvation: The Gathering Fafurion Prelude of War Prelude of War PT.2 Prelude of War PT.3 Homunculus Homunculus Ch.2', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(20, 3, 2, 17, 24, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Gracia Pt 1/Gracia Pt2/Gracia Final/Gracia Epilogue', 'Gracia Pt 1, Gracia Pt2 ,Gracia Final ,Gracia Epilogue Servers', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(21, 3, 2, 17, 22, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Interlude', 'Interlude Servers', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(22, 3, 2, 17, 23, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Kamael/Hellbound', 'Kamael/Hellbound Servers', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(23, 3, 2, 17, 25, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Freya', 'Freya Servers', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(24, 3, 2, 17, 26, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'High Five', 'High Five Servers', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(25, 3, 2, 18, 28, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Awakening', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(26, 3, 2, 18, 29, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Harmony', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(27, 3, 2, 18, 30, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Tauti', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(28, 3, 2, 18, 31, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Glory Days', 'Glory Days Echo Power of the West Wind Underground', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(29, 3, 2, 18, 32, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Lindvior', 'Lindvior / Ruler of the West Wind Episodeon', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(30, 3, 2, 18, 33, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Valiance', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(31, 3, 2, 19, 35, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Ertheia / Dimensional Strangers', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(32, 3, 2, 19, 36, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Infinite Odyssey', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(33, 3, 2, 19, 37, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Infinite Odyssey / Infinite Odyssey: Shadows of Light Part 1 and 2.', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(34, 3, 2, 19, 38, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Underground / Infinite Odyssey: Hymn of the Soul and Will of The Ancients', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(35, 3, 2, 19, 39, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Helios', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(36, 3, 2, 19, 40, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Grand Crusade and Grand Crusade: Force Bringer', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(37, 3, 2, 19, 41, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Salvation: First Chapter / The Page: Salvation and Salvation: The Gathering', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(38, 3, 2, 19, 42, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Fafurion', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(39, 3, 2, 19, 43, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Prelude of War, PT. 2 and PT. 3', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(40, 3, 2, 19, 44, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Homunculus Ch. 1 and Ch. 2', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(41, 3, 1, 13, 45, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Classic/Essence', 'You can find here server to emulate Classic (all expansion) Essence (all expansion)', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(42, 3, 2, 41, 46, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Classic ', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(43, 3, 2, 41, 47, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Essence', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(44, 3, 1, 7, 49, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Weapons', 'Here you can post and get mods and adapted versions of weapons', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(45, 3, 1, 7, 50, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Armors', 'Mod for armors and full-sets', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(46, 3, 1, 7, 51, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Acessories and transformations', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(47, 3, 1, 7, 52, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Npc', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(48, 3, 1, 7, 53, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Utils and Tools', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(49, 3, 0, 0, 54, 13, 13, '-1,0,2,9,4,5,6,7,8', 1, 'Java Mods', '', 3, 3, 0, 0, 0, 0, 0, '', '', 0),
(50, 3, 1, 49, 55, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Protections', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(51, 3, 1, 49, 56, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Events', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(52, 3, 1, 49, 57, 5, 5, '-1,0,2,9,4,5,6,7,8', 1, 'Commands', '', 1, 1, 0, 0, 0, 0, 0, '', '', 0),
(53, 3, 0, 0, 63, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Recruitment', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(54, 3, 0, 0, 66, 11, 11, '-1,0,2,9,4,5,6,7,8', 1, 'Design', '', 3, 3, 0, 0, 0, 0, 0, '', '', 0),
(55, 3, 1, 10, 59, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'WordPress', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(56, 3, 1, 10, 60, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'CMS', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(57, 3, 1, 10, 61, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'systems, scripts and dashboard', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(58, 3, 1, 10, 62, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Initial Pages', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(59, 1, 1, 1, 4, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Official Servers', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(60, 1, 1, 1, 7, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Private Servers', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(61, 1, 1, 2, 11, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Official Servers', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(62, 1, 1, 2, 12, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Private Servers', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(63, 1, 0, 0, 13, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Quests', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(64, 1, 0, 0, 14, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Clan Crest', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(65, 1, 2, 59, 6, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Recruitment', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(66, 1, 2, 60, 9, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Recruitment', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(67, 1, 2, 59, 5, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Guides', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(68, 1, 2, 60, 8, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Guides', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(69, 4, 0, 0, 72, 2, 2, '-1,0,2,9,4,5,6,7,8', 1, 'Changelogs &amp; Updates', '', 1, 1, 0, 0, 0, 0, 0, '', '', 0),
(70, 4, 0, 0, 70, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Bug Reports', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(71, 4, 0, 0, 67, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Geral', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(72, 4, 0, 0, 69, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Repository', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(73, 4, 0, 0, 71, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Questions', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(74, 4, 0, 0, 68, 0, 0, '-1,0,2,9,4,5,6,7,8', 1, 'Downloads', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(75, 5, 0, 0, 1, 3, 3, '-1,0,2,9,4,5,6,7,8', 1, 'Administration', '', 1, 1, 0, 0, 0, 0, 0, '', '', 0),
(76, 5, 1, 75, 2, 4, 4, '-1,0,2,9,4,5,6,7,8', 1, 'Forum Problem', '', 1, 1, 0, 0, 0, 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_board_permissions`
--

CREATE TABLE `l2j_board_permissions` (
  `id_group` smallint(6) NOT NULL DEFAULT 0,
  `id_profile` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_board_permissions`
--

INSERT INTO `l2j_board_permissions` (`id_group`, `id_profile`, `permission`, `add_deny`) VALUES
(-1, 1, 'poll_view', 1),
(-1, 2, 'poll_view', 1),
(-1, 3, 'poll_view', 1),
(-1, 4, 'poll_view', 1),
(0, 1, 'lock_own', 1),
(0, 1, 'modify_own', 1),
(0, 1, 'poll_add_own', 1),
(0, 1, 'poll_edit_own', 1),
(0, 1, 'poll_lock_own', 1),
(0, 1, 'poll_post', 1),
(0, 1, 'poll_view', 1),
(0, 1, 'poll_vote', 1),
(0, 1, 'post_attachment', 1),
(0, 1, 'post_draft', 1),
(0, 1, 'post_new', 1),
(0, 1, 'post_reply_any', 1),
(0, 1, 'post_reply_own', 1),
(0, 1, 'post_unapproved_attachments', 1),
(0, 1, 'post_unapproved_replies_any', 1),
(0, 1, 'post_unapproved_replies_own', 1),
(0, 1, 'post_unapproved_topics', 1),
(0, 1, 'report_any', 1),
(0, 1, 'view_attachments', 1),
(0, 2, 'delete_own', 1),
(0, 2, 'lock_own', 1),
(0, 2, 'modify_own', 1),
(0, 2, 'poll_view', 1),
(0, 2, 'poll_vote', 1),
(0, 2, 'post_attachment', 1),
(0, 2, 'post_draft', 1),
(0, 2, 'post_new', 1),
(0, 2, 'post_reply_any', 1),
(0, 2, 'post_reply_own', 1),
(0, 2, 'post_unapproved_attachments', 1),
(0, 2, 'post_unapproved_replies_any', 1),
(0, 2, 'post_unapproved_replies_own', 1),
(0, 2, 'post_unapproved_topics', 1),
(0, 2, 'remove_own', 1),
(0, 2, 'report_any', 1),
(0, 2, 'view_attachments', 1),
(0, 3, 'delete_own', 1),
(0, 3, 'lock_own', 1),
(0, 3, 'modify_own', 1),
(0, 3, 'poll_view', 1),
(0, 3, 'poll_vote', 1),
(0, 3, 'post_attachment', 1),
(0, 3, 'post_reply_any', 1),
(0, 3, 'post_reply_own', 1),
(0, 3, 'post_unapproved_attachments', 1),
(0, 3, 'post_unapproved_replies_any', 1),
(0, 3, 'post_unapproved_replies_own', 1),
(0, 3, 'remove_own', 1),
(0, 3, 'report_any', 1),
(0, 3, 'view_attachments', 1),
(0, 4, 'poll_view', 1),
(0, 4, 'poll_vote', 1),
(0, 4, 'report_any', 1),
(0, 4, 'view_attachments', 1),
(2, 1, 'approve_posts', 1),
(2, 1, 'delete_any', 1),
(2, 1, 'delete_own', 1),
(2, 1, 'lock_any', 1),
(2, 1, 'lock_own', 1),
(2, 1, 'make_sticky', 1),
(2, 1, 'merge_any', 1),
(2, 1, 'moderate_board', 1),
(2, 1, 'modify_any', 1),
(2, 1, 'modify_own', 1),
(2, 1, 'move_any', 1),
(2, 1, 'poll_add_any', 1),
(2, 1, 'poll_edit_any', 1),
(2, 1, 'poll_lock_any', 1),
(2, 1, 'poll_post', 1),
(2, 1, 'poll_remove_any', 1),
(2, 1, 'poll_view', 1),
(2, 1, 'poll_vote', 1),
(2, 1, 'post_attachment', 1),
(2, 1, 'post_draft', 1),
(2, 1, 'post_new', 1),
(2, 1, 'post_reply_any', 1),
(2, 1, 'post_reply_own', 1),
(2, 1, 'post_unapproved_attachments', 1),
(2, 1, 'post_unapproved_replies_any', 1),
(2, 1, 'post_unapproved_replies_own', 1),
(2, 1, 'post_unapproved_topics', 1),
(2, 1, 'remove_any', 1),
(2, 1, 'report_any', 1),
(2, 1, 'split_any', 1),
(2, 1, 'view_attachments', 1),
(2, 2, 'approve_posts', 1),
(2, 2, 'delete_any', 1),
(2, 2, 'delete_own', 1),
(2, 2, 'lock_any', 1),
(2, 2, 'lock_own', 1),
(2, 2, 'make_sticky', 1),
(2, 2, 'merge_any', 1),
(2, 2, 'moderate_board', 1),
(2, 2, 'modify_any', 1),
(2, 2, 'modify_own', 1),
(2, 2, 'move_any', 1),
(2, 2, 'poll_add_any', 1),
(2, 2, 'poll_edit_any', 1),
(2, 2, 'poll_lock_any', 1),
(2, 2, 'poll_post', 1),
(2, 2, 'poll_remove_any', 1),
(2, 2, 'poll_view', 1),
(2, 2, 'poll_vote', 1),
(2, 2, 'post_attachment', 1),
(2, 2, 'post_draft', 1),
(2, 2, 'post_new', 1),
(2, 2, 'post_reply_any', 1),
(2, 2, 'post_reply_own', 1),
(2, 2, 'post_unapproved_attachments', 1),
(2, 2, 'post_unapproved_replies_any', 1),
(2, 2, 'post_unapproved_replies_own', 1),
(2, 2, 'post_unapproved_topics', 1),
(2, 2, 'remove_any', 1),
(2, 2, 'report_any', 1),
(2, 2, 'split_any', 1),
(2, 2, 'view_attachments', 1),
(2, 3, 'approve_posts', 1),
(2, 3, 'delete_any', 1),
(2, 3, 'delete_own', 1),
(2, 3, 'lock_any', 1),
(2, 3, 'lock_own', 1),
(2, 3, 'make_sticky', 1),
(2, 3, 'merge_any', 1),
(2, 3, 'moderate_board', 1),
(2, 3, 'modify_any', 1),
(2, 3, 'modify_own', 1),
(2, 3, 'move_any', 1),
(2, 3, 'poll_add_any', 1),
(2, 3, 'poll_edit_any', 1),
(2, 3, 'poll_lock_any', 1),
(2, 3, 'poll_post', 1),
(2, 3, 'poll_remove_any', 1),
(2, 3, 'poll_view', 1),
(2, 3, 'poll_vote', 1),
(2, 3, 'post_attachment', 1),
(2, 3, 'post_draft', 1),
(2, 3, 'post_new', 1),
(2, 3, 'post_reply_any', 1),
(2, 3, 'post_reply_own', 1),
(2, 3, 'post_unapproved_attachments', 1),
(2, 3, 'post_unapproved_replies_any', 1),
(2, 3, 'post_unapproved_replies_own', 1),
(2, 3, 'post_unapproved_topics', 1),
(2, 3, 'remove_any', 1),
(2, 3, 'report_any', 1),
(2, 3, 'split_any', 1),
(2, 3, 'view_attachments', 1),
(2, 4, 'approve_posts', 1),
(2, 4, 'delete_any', 1),
(2, 4, 'delete_own', 1),
(2, 4, 'lock_any', 1),
(2, 4, 'lock_own', 1),
(2, 4, 'make_sticky', 1),
(2, 4, 'merge_any', 1),
(2, 4, 'moderate_board', 1),
(2, 4, 'modify_any', 1),
(2, 4, 'modify_own', 1),
(2, 4, 'move_any', 1),
(2, 4, 'poll_add_any', 1),
(2, 4, 'poll_edit_any', 1),
(2, 4, 'poll_lock_any', 1),
(2, 4, 'poll_post', 1),
(2, 4, 'poll_remove_any', 1),
(2, 4, 'poll_view', 1),
(2, 4, 'poll_vote', 1),
(2, 4, 'post_attachment', 1),
(2, 4, 'post_draft', 1),
(2, 4, 'post_new', 1),
(2, 4, 'post_reply_any', 1),
(2, 4, 'post_reply_own', 1),
(2, 4, 'post_unapproved_attachments', 1),
(2, 4, 'post_unapproved_replies_any', 1),
(2, 4, 'post_unapproved_replies_own', 1),
(2, 4, 'post_unapproved_topics', 1),
(2, 4, 'remove_any', 1),
(2, 4, 'report_any', 1),
(2, 4, 'split_any', 1),
(2, 4, 'view_attachments', 1),
(3, 1, 'approve_posts', 1),
(3, 1, 'delete_any', 1),
(3, 1, 'delete_own', 1),
(3, 1, 'lock_any', 1),
(3, 1, 'lock_own', 1),
(3, 1, 'make_sticky', 1),
(3, 1, 'merge_any', 1),
(3, 1, 'moderate_board', 1),
(3, 1, 'modify_any', 1),
(3, 1, 'modify_own', 1),
(3, 1, 'move_any', 1),
(3, 1, 'poll_add_any', 1),
(3, 1, 'poll_edit_any', 1),
(3, 1, 'poll_lock_any', 1),
(3, 1, 'poll_post', 1),
(3, 1, 'poll_remove_any', 1),
(3, 1, 'poll_view', 1),
(3, 1, 'poll_vote', 1),
(3, 1, 'post_attachment', 1),
(3, 1, 'post_draft', 1),
(3, 1, 'post_new', 1),
(3, 1, 'post_reply_any', 1),
(3, 1, 'post_reply_own', 1),
(3, 1, 'post_unapproved_attachments', 1),
(3, 1, 'post_unapproved_replies_any', 1),
(3, 1, 'post_unapproved_replies_own', 1),
(3, 1, 'post_unapproved_topics', 1),
(3, 1, 'remove_any', 1),
(3, 1, 'report_any', 1),
(3, 1, 'split_any', 1),
(3, 1, 'view_attachments', 1),
(3, 2, 'approve_posts', 1),
(3, 2, 'delete_any', 1),
(3, 2, 'delete_own', 1),
(3, 2, 'lock_any', 1),
(3, 2, 'lock_own', 1),
(3, 2, 'make_sticky', 1),
(3, 2, 'merge_any', 1),
(3, 2, 'moderate_board', 1),
(3, 2, 'modify_any', 1),
(3, 2, 'modify_own', 1),
(3, 2, 'move_any', 1),
(3, 2, 'poll_add_any', 1),
(3, 2, 'poll_edit_any', 1),
(3, 2, 'poll_lock_any', 1),
(3, 2, 'poll_post', 1),
(3, 2, 'poll_remove_any', 1),
(3, 2, 'poll_view', 1),
(3, 2, 'poll_vote', 1),
(3, 2, 'post_attachment', 1),
(3, 2, 'post_draft', 1),
(3, 2, 'post_new', 1),
(3, 2, 'post_reply_any', 1),
(3, 2, 'post_reply_own', 1),
(3, 2, 'post_unapproved_attachments', 1),
(3, 2, 'post_unapproved_replies_any', 1),
(3, 2, 'post_unapproved_replies_own', 1),
(3, 2, 'post_unapproved_topics', 1),
(3, 2, 'remove_any', 1),
(3, 2, 'report_any', 1),
(3, 2, 'split_any', 1),
(3, 2, 'view_attachments', 1),
(3, 3, 'approve_posts', 1),
(3, 3, 'delete_any', 1),
(3, 3, 'delete_own', 1),
(3, 3, 'lock_any', 1),
(3, 3, 'lock_own', 1),
(3, 3, 'make_sticky', 1),
(3, 3, 'merge_any', 1),
(3, 3, 'moderate_board', 1),
(3, 3, 'modify_any', 1),
(3, 3, 'modify_own', 1),
(3, 3, 'move_any', 1),
(3, 3, 'poll_add_any', 1),
(3, 3, 'poll_edit_any', 1),
(3, 3, 'poll_lock_any', 1),
(3, 3, 'poll_post', 1),
(3, 3, 'poll_remove_any', 1),
(3, 3, 'poll_view', 1),
(3, 3, 'poll_vote', 1),
(3, 3, 'post_attachment', 1),
(3, 3, 'post_draft', 1),
(3, 3, 'post_new', 1),
(3, 3, 'post_reply_any', 1),
(3, 3, 'post_reply_own', 1),
(3, 3, 'post_unapproved_attachments', 1),
(3, 3, 'post_unapproved_replies_any', 1),
(3, 3, 'post_unapproved_replies_own', 1),
(3, 3, 'post_unapproved_topics', 1),
(3, 3, 'remove_any', 1),
(3, 3, 'report_any', 1),
(3, 3, 'split_any', 1),
(3, 3, 'view_attachments', 1),
(3, 4, 'approve_posts', 1),
(3, 4, 'delete_any', 1),
(3, 4, 'delete_own', 1),
(3, 4, 'lock_any', 1),
(3, 4, 'lock_own', 1),
(3, 4, 'make_sticky', 1),
(3, 4, 'merge_any', 1),
(3, 4, 'moderate_board', 1),
(3, 4, 'modify_any', 1),
(3, 4, 'modify_own', 1),
(3, 4, 'move_any', 1),
(3, 4, 'poll_add_any', 1),
(3, 4, 'poll_edit_any', 1),
(3, 4, 'poll_lock_any', 1),
(3, 4, 'poll_post', 1),
(3, 4, 'poll_remove_any', 1),
(3, 4, 'poll_view', 1),
(3, 4, 'poll_vote', 1),
(3, 4, 'post_attachment', 1),
(3, 4, 'post_draft', 1),
(3, 4, 'post_new', 1),
(3, 4, 'post_reply_any', 1),
(3, 4, 'post_reply_own', 1),
(3, 4, 'post_unapproved_attachments', 1),
(3, 4, 'post_unapproved_replies_any', 1),
(3, 4, 'post_unapproved_replies_own', 1),
(3, 4, 'post_unapproved_topics', 1),
(3, 4, 'remove_any', 1),
(3, 4, 'report_any', 1),
(3, 4, 'split_any', 1),
(3, 4, 'view_attachments', 1),
(9, 1, 'lock_own', 1),
(9, 1, 'modify_own', 1),
(9, 1, 'poll_add_own', 1),
(9, 1, 'poll_edit_own', 1),
(9, 1, 'poll_lock_own', 1),
(9, 1, 'poll_post', 1),
(9, 1, 'poll_view', 1),
(9, 1, 'poll_vote', 1),
(9, 1, 'post_attachment', 1),
(9, 1, 'post_draft', 1),
(9, 1, 'post_new', 1),
(9, 1, 'post_reply_any', 1),
(9, 1, 'post_reply_own', 1),
(9, 1, 'post_unapproved_attachments', 1),
(9, 1, 'post_unapproved_replies_any', 1),
(9, 1, 'post_unapproved_replies_own', 1),
(9, 1, 'post_unapproved_topics', 1),
(9, 1, 'report_any', 1),
(9, 1, 'view_attachments', 1),
(9, 2, 'delete_own', 1),
(9, 2, 'lock_own', 1),
(9, 2, 'modify_own', 1),
(9, 2, 'poll_view', 1),
(9, 2, 'poll_vote', 1),
(9, 2, 'post_attachment', 1),
(9, 2, 'post_draft', 1),
(9, 2, 'post_new', 1),
(9, 2, 'post_reply_any', 1),
(9, 2, 'post_reply_own', 1),
(9, 2, 'post_unapproved_attachments', 1),
(9, 2, 'post_unapproved_replies_any', 1),
(9, 2, 'post_unapproved_replies_own', 1),
(9, 2, 'post_unapproved_topics', 1),
(9, 2, 'remove_own', 1),
(9, 2, 'report_any', 1),
(9, 2, 'view_attachments', 1),
(9, 3, 'delete_own', 1),
(9, 3, 'lock_own', 1),
(9, 3, 'modify_own', 1),
(9, 3, 'poll_view', 1),
(9, 3, 'poll_vote', 1),
(9, 3, 'post_attachment', 1),
(9, 3, 'post_reply_any', 1),
(9, 3, 'post_reply_own', 1),
(9, 3, 'post_unapproved_attachments', 1),
(9, 3, 'post_unapproved_replies_any', 1),
(9, 3, 'post_unapproved_replies_own', 1),
(9, 3, 'remove_own', 1),
(9, 3, 'report_any', 1),
(9, 3, 'view_attachments', 1),
(9, 4, 'poll_view', 1),
(9, 4, 'poll_vote', 1),
(9, 4, 'report_any', 1),
(9, 4, 'view_attachments', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_board_permissions_view`
--

CREATE TABLE `l2j_board_permissions_view` (
  `id_group` smallint(6) NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL,
  `deny` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_board_permissions_view`
--

INSERT INTO `l2j_board_permissions_view` (`id_group`, `id_board`, `deny`) VALUES
(-1, 1, 0),
(-1, 2, 0),
(-1, 3, 0),
(-1, 4, 0),
(-1, 5, 0),
(-1, 6, 0),
(-1, 7, 0),
(-1, 8, 0),
(-1, 9, 0),
(-1, 10, 0),
(-1, 11, 0),
(-1, 12, 0),
(-1, 13, 0),
(-1, 14, 0),
(-1, 15, 0),
(-1, 16, 0),
(-1, 17, 0),
(-1, 18, 0),
(-1, 19, 0),
(-1, 20, 0),
(-1, 21, 0),
(-1, 22, 0),
(-1, 23, 0),
(-1, 24, 0),
(-1, 25, 0),
(-1, 26, 0),
(-1, 27, 0),
(-1, 28, 0),
(-1, 29, 0),
(-1, 30, 0),
(-1, 31, 0),
(-1, 32, 0),
(-1, 33, 0),
(-1, 34, 0),
(-1, 35, 0),
(-1, 36, 0),
(-1, 37, 0),
(-1, 38, 0),
(-1, 39, 0),
(-1, 40, 0),
(-1, 41, 0),
(-1, 42, 0),
(-1, 43, 0),
(-1, 44, 0),
(-1, 45, 0),
(-1, 46, 0),
(-1, 47, 0),
(-1, 48, 0),
(-1, 49, 0),
(-1, 50, 0),
(-1, 51, 0),
(-1, 52, 0),
(-1, 53, 0),
(-1, 54, 0),
(-1, 55, 0),
(-1, 56, 0),
(-1, 57, 0),
(-1, 58, 0),
(-1, 59, 0),
(-1, 60, 0),
(-1, 61, 0),
(-1, 62, 0),
(-1, 63, 0),
(-1, 64, 0),
(-1, 65, 0),
(-1, 66, 0),
(-1, 67, 0),
(-1, 68, 0),
(-1, 69, 0),
(-1, 70, 0),
(-1, 71, 0),
(-1, 73, 0),
(-1, 74, 0),
(-1, 75, 0),
(-1, 76, 0),
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(0, 4, 0),
(0, 5, 0),
(0, 6, 0),
(0, 7, 0),
(0, 8, 0),
(0, 9, 0),
(0, 10, 0),
(0, 11, 0),
(0, 12, 0),
(0, 13, 0),
(0, 14, 0),
(0, 15, 0),
(0, 16, 0),
(0, 17, 0),
(0, 18, 0),
(0, 19, 0),
(0, 20, 0),
(0, 21, 0),
(0, 22, 0),
(0, 23, 0),
(0, 24, 0),
(0, 25, 0),
(0, 26, 0),
(0, 27, 0),
(0, 28, 0),
(0, 29, 0),
(0, 30, 0),
(0, 31, 0),
(0, 32, 0),
(0, 33, 0),
(0, 34, 0),
(0, 35, 0),
(0, 36, 0),
(0, 37, 0),
(0, 38, 0),
(0, 39, 0),
(0, 40, 0),
(0, 41, 0),
(0, 42, 0),
(0, 43, 0),
(0, 44, 0),
(0, 45, 0),
(0, 46, 0),
(0, 47, 0),
(0, 48, 0),
(0, 49, 0),
(0, 50, 0),
(0, 51, 0),
(0, 52, 0),
(0, 53, 0),
(0, 54, 0),
(0, 55, 0),
(0, 56, 0),
(0, 57, 0),
(0, 58, 0),
(0, 59, 0),
(0, 60, 0),
(0, 61, 0),
(0, 62, 0),
(0, 63, 0),
(0, 64, 0),
(0, 65, 0),
(0, 66, 0),
(0, 67, 0),
(0, 68, 0),
(0, 69, 0),
(0, 70, 0),
(0, 71, 0),
(0, 73, 0),
(0, 74, 0),
(0, 75, 0),
(0, 76, 0),
(2, 1, 0),
(2, 2, 0),
(2, 3, 0),
(2, 4, 0),
(2, 5, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 0),
(2, 10, 0),
(2, 11, 0),
(2, 12, 0),
(2, 13, 0),
(2, 14, 0),
(2, 15, 0),
(2, 16, 0),
(2, 17, 0),
(2, 18, 0),
(2, 19, 0),
(2, 20, 0),
(2, 21, 0),
(2, 22, 0),
(2, 23, 0),
(2, 24, 0),
(2, 25, 0),
(2, 26, 0),
(2, 27, 0),
(2, 28, 0),
(2, 29, 0),
(2, 30, 0),
(2, 31, 0),
(2, 32, 0),
(2, 33, 0),
(2, 34, 0),
(2, 35, 0),
(2, 36, 0),
(2, 37, 0),
(2, 38, 0),
(2, 39, 0),
(2, 40, 0),
(2, 41, 0),
(2, 42, 0),
(2, 43, 0),
(2, 44, 0),
(2, 45, 0),
(2, 46, 0),
(2, 47, 0),
(2, 48, 0),
(2, 49, 0),
(2, 50, 0),
(2, 51, 0),
(2, 52, 0),
(2, 53, 0),
(2, 54, 0),
(2, 55, 0),
(2, 56, 0),
(2, 57, 0),
(2, 58, 0),
(2, 59, 0),
(2, 60, 0),
(2, 61, 0),
(2, 62, 0),
(2, 63, 0),
(2, 64, 0),
(2, 65, 0),
(2, 66, 0),
(2, 67, 0),
(2, 68, 0),
(2, 69, 0),
(2, 70, 0),
(2, 71, 0),
(2, 73, 0),
(2, 74, 0),
(2, 75, 0),
(2, 76, 0),
(4, 2, 0),
(4, 3, 0),
(4, 4, 0),
(4, 5, 0),
(4, 7, 0),
(4, 8, 0),
(4, 9, 0),
(4, 10, 0),
(4, 11, 0),
(4, 12, 0),
(4, 13, 0),
(4, 14, 0),
(4, 15, 0),
(4, 16, 0),
(4, 17, 0),
(4, 18, 0),
(4, 19, 0),
(4, 20, 0),
(4, 21, 0),
(4, 22, 0),
(4, 23, 0),
(4, 24, 0),
(4, 25, 0),
(4, 26, 0),
(4, 27, 0),
(4, 28, 0),
(4, 29, 0),
(4, 30, 0),
(4, 31, 0),
(4, 32, 0),
(4, 33, 0),
(4, 34, 0),
(4, 35, 0),
(4, 36, 0),
(4, 37, 0),
(4, 38, 0),
(4, 39, 0),
(4, 40, 0),
(4, 41, 0),
(4, 42, 0),
(4, 43, 0),
(4, 44, 0),
(4, 45, 0),
(4, 46, 0),
(4, 47, 0),
(4, 48, 0),
(4, 49, 0),
(4, 50, 0),
(4, 51, 0),
(4, 52, 0),
(4, 53, 0),
(4, 54, 0),
(4, 55, 0),
(4, 56, 0),
(4, 57, 0),
(4, 58, 0),
(4, 59, 0),
(4, 60, 0),
(4, 61, 0),
(4, 62, 0),
(4, 63, 0),
(4, 64, 0),
(4, 65, 0),
(4, 66, 0),
(4, 67, 0),
(4, 68, 0),
(4, 69, 0),
(4, 70, 0),
(4, 71, 0),
(4, 73, 0),
(4, 74, 0),
(4, 75, 0),
(4, 76, 0),
(5, 2, 0),
(5, 3, 0),
(5, 4, 0),
(5, 5, 0),
(5, 7, 0),
(5, 8, 0),
(5, 9, 0),
(5, 10, 0),
(5, 11, 0),
(5, 12, 0),
(5, 13, 0),
(5, 14, 0),
(5, 15, 0),
(5, 16, 0),
(5, 17, 0),
(5, 18, 0),
(5, 19, 0),
(5, 20, 0),
(5, 21, 0),
(5, 22, 0),
(5, 23, 0),
(5, 24, 0),
(5, 25, 0),
(5, 26, 0),
(5, 27, 0),
(5, 28, 0),
(5, 29, 0),
(5, 30, 0),
(5, 31, 0),
(5, 32, 0),
(5, 33, 0),
(5, 34, 0),
(5, 35, 0),
(5, 36, 0),
(5, 37, 0),
(5, 38, 0),
(5, 39, 0),
(5, 40, 0),
(5, 41, 0),
(5, 42, 0),
(5, 43, 0),
(5, 44, 0),
(5, 45, 0),
(5, 46, 0),
(5, 47, 0),
(5, 48, 0),
(5, 49, 0),
(5, 50, 0),
(5, 51, 0),
(5, 52, 0),
(5, 53, 0),
(5, 54, 0),
(5, 55, 0),
(5, 56, 0),
(5, 57, 0),
(5, 58, 0),
(5, 59, 0),
(5, 60, 0),
(5, 61, 0),
(5, 62, 0),
(5, 63, 0),
(5, 64, 0),
(5, 65, 0),
(5, 66, 0),
(5, 67, 0),
(5, 68, 0),
(5, 69, 0),
(5, 70, 0),
(5, 71, 0),
(5, 73, 0),
(5, 74, 0),
(5, 75, 0),
(5, 76, 0),
(6, 2, 0),
(6, 3, 0),
(6, 4, 0),
(6, 5, 0),
(6, 7, 0),
(6, 8, 0),
(6, 9, 0),
(6, 10, 0),
(6, 11, 0),
(6, 12, 0),
(6, 13, 0),
(6, 14, 0),
(6, 15, 0),
(6, 16, 0),
(6, 17, 0),
(6, 18, 0),
(6, 19, 0),
(6, 20, 0),
(6, 21, 0),
(6, 22, 0),
(6, 23, 0),
(6, 24, 0),
(6, 25, 0),
(6, 26, 0),
(6, 27, 0),
(6, 28, 0),
(6, 29, 0),
(6, 30, 0),
(6, 31, 0),
(6, 32, 0),
(6, 33, 0),
(6, 34, 0),
(6, 35, 0),
(6, 36, 0),
(6, 37, 0),
(6, 38, 0),
(6, 39, 0),
(6, 40, 0),
(6, 41, 0),
(6, 42, 0),
(6, 43, 0),
(6, 44, 0),
(6, 45, 0),
(6, 46, 0),
(6, 47, 0),
(6, 48, 0),
(6, 49, 0),
(6, 50, 0),
(6, 51, 0),
(6, 52, 0),
(6, 53, 0),
(6, 54, 0),
(6, 55, 0),
(6, 56, 0),
(6, 57, 0),
(6, 58, 0),
(6, 59, 0),
(6, 60, 0),
(6, 61, 0),
(6, 62, 0),
(6, 63, 0),
(6, 64, 0),
(6, 65, 0),
(6, 66, 0),
(6, 67, 0),
(6, 68, 0),
(6, 69, 0),
(6, 70, 0),
(6, 71, 0),
(6, 73, 0),
(6, 74, 0),
(6, 75, 0),
(6, 76, 0),
(7, 2, 0),
(7, 3, 0),
(7, 4, 0),
(7, 5, 0),
(7, 7, 0),
(7, 8, 0),
(7, 9, 0),
(7, 10, 0),
(7, 11, 0),
(7, 12, 0),
(7, 13, 0),
(7, 14, 0),
(7, 15, 0),
(7, 16, 0),
(7, 17, 0),
(7, 18, 0),
(7, 19, 0),
(7, 20, 0),
(7, 21, 0),
(7, 22, 0),
(7, 23, 0),
(7, 24, 0),
(7, 25, 0),
(7, 26, 0),
(7, 27, 0),
(7, 28, 0),
(7, 29, 0),
(7, 30, 0),
(7, 31, 0),
(7, 32, 0),
(7, 33, 0),
(7, 34, 0),
(7, 35, 0),
(7, 36, 0),
(7, 37, 0),
(7, 38, 0),
(7, 39, 0),
(7, 40, 0),
(7, 41, 0),
(7, 42, 0),
(7, 43, 0),
(7, 44, 0),
(7, 45, 0),
(7, 46, 0),
(7, 47, 0),
(7, 48, 0),
(7, 49, 0),
(7, 50, 0),
(7, 51, 0),
(7, 52, 0),
(7, 53, 0),
(7, 54, 0),
(7, 55, 0),
(7, 56, 0),
(7, 57, 0),
(7, 58, 0),
(7, 59, 0),
(7, 60, 0),
(7, 61, 0),
(7, 62, 0),
(7, 63, 0),
(7, 64, 0),
(7, 65, 0),
(7, 66, 0),
(7, 67, 0),
(7, 68, 0),
(7, 69, 0),
(7, 70, 0),
(7, 71, 0),
(7, 73, 0),
(7, 74, 0),
(7, 75, 0),
(7, 76, 0),
(8, 2, 0),
(8, 3, 0),
(8, 4, 0),
(8, 5, 0),
(8, 7, 0),
(8, 8, 0),
(8, 9, 0),
(8, 10, 0),
(8, 11, 0),
(8, 12, 0),
(8, 13, 0),
(8, 14, 0),
(8, 15, 0),
(8, 16, 0),
(8, 17, 0),
(8, 18, 0),
(8, 19, 0),
(8, 20, 0),
(8, 21, 0),
(8, 22, 0),
(8, 23, 0),
(8, 24, 0),
(8, 25, 0),
(8, 26, 0),
(8, 27, 0),
(8, 28, 0),
(8, 29, 0),
(8, 30, 0),
(8, 31, 0),
(8, 32, 0),
(8, 33, 0),
(8, 34, 0),
(8, 35, 0),
(8, 36, 0),
(8, 37, 0),
(8, 38, 0),
(8, 39, 0),
(8, 40, 0),
(8, 41, 0),
(8, 42, 0),
(8, 43, 0),
(8, 44, 0),
(8, 45, 0),
(8, 46, 0),
(8, 47, 0),
(8, 48, 0),
(8, 49, 0),
(8, 50, 0),
(8, 51, 0),
(8, 52, 0),
(8, 53, 0),
(8, 54, 0),
(8, 55, 0),
(8, 56, 0),
(8, 57, 0),
(8, 58, 0),
(8, 59, 0),
(8, 60, 0),
(8, 61, 0),
(8, 62, 0),
(8, 63, 0),
(8, 64, 0),
(8, 65, 0),
(8, 66, 0),
(8, 67, 0),
(8, 68, 0),
(8, 69, 0),
(8, 70, 0),
(8, 71, 0),
(8, 73, 0),
(8, 74, 0),
(8, 75, 0),
(8, 76, 0),
(9, 1, 0),
(9, 2, 0),
(9, 3, 0),
(9, 4, 0),
(9, 5, 0),
(9, 6, 0),
(9, 7, 0),
(9, 8, 0),
(9, 9, 0),
(9, 10, 0),
(9, 11, 0),
(9, 12, 0),
(9, 13, 0),
(9, 14, 0),
(9, 15, 0),
(9, 16, 0),
(9, 17, 0),
(9, 18, 0),
(9, 19, 0),
(9, 20, 0),
(9, 21, 0),
(9, 22, 0),
(9, 23, 0),
(9, 24, 0),
(9, 25, 0),
(9, 26, 0),
(9, 27, 0),
(9, 28, 0),
(9, 29, 0),
(9, 30, 0),
(9, 31, 0),
(9, 32, 0),
(9, 33, 0),
(9, 34, 0),
(9, 35, 0),
(9, 36, 0),
(9, 37, 0),
(9, 38, 0),
(9, 39, 0),
(9, 40, 0),
(9, 41, 0),
(9, 42, 0),
(9, 43, 0),
(9, 44, 0),
(9, 45, 0),
(9, 46, 0),
(9, 47, 0),
(9, 48, 0),
(9, 49, 0),
(9, 50, 0),
(9, 51, 0),
(9, 52, 0),
(9, 53, 0),
(9, 54, 0),
(9, 55, 0),
(9, 56, 0),
(9, 57, 0),
(9, 58, 0),
(9, 59, 0),
(9, 60, 0),
(9, 61, 0),
(9, 62, 0),
(9, 63, 0),
(9, 64, 0),
(9, 65, 0),
(9, 66, 0),
(9, 67, 0),
(9, 68, 0),
(9, 69, 0),
(9, 70, 0),
(9, 71, 0),
(9, 73, 0),
(9, 74, 0),
(9, 75, 0),
(9, 76, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_calendar`
--

CREATE TABLE `l2j_calendar` (
  `id_event` smallint(5) UNSIGNED NOT NULL,
  `start_date` date NOT NULL DEFAULT '1004-01-01',
  `end_date` date NOT NULL DEFAULT '1004-01-01',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `timezone` varchar(80) DEFAULT NULL,
  `location` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_calendar_holidays`
--

CREATE TABLE `l2j_calendar_holidays` (
  `id_holiday` smallint(5) UNSIGNED NOT NULL,
  `event_date` date NOT NULL DEFAULT '1004-01-01',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_calendar_holidays`
--

INSERT INTO `l2j_calendar_holidays` (`id_holiday`, `event_date`, `title`) VALUES
(1, '1004-01-01', 'New Year\'s'),
(2, '1004-12-25', 'Christmas'),
(3, '1004-02-14', 'Valentine\'s Day'),
(4, '1004-03-17', 'St. Patrick\'s Day'),
(5, '1004-04-01', 'April Fools'),
(6, '1004-04-22', 'Earth Day'),
(7, '1004-10-24', 'United Nations Day'),
(8, '1004-10-31', 'Halloween'),
(9, '2010-05-09', 'Mother\'s Day'),
(10, '2011-05-08', 'Mother\'s Day'),
(11, '2012-05-13', 'Mother\'s Day'),
(12, '2013-05-12', 'Mother\'s Day'),
(13, '2014-05-11', 'Mother\'s Day'),
(14, '2015-05-10', 'Mother\'s Day'),
(15, '2016-05-08', 'Mother\'s Day'),
(16, '2017-05-14', 'Mother\'s Day'),
(17, '2018-05-13', 'Mother\'s Day'),
(18, '2019-05-12', 'Mother\'s Day'),
(19, '2020-05-10', 'Mother\'s Day'),
(20, '2021-05-09', 'Mother\'s Day'),
(21, '2022-05-08', 'Mother\'s Day'),
(22, '2023-05-14', 'Mother\'s Day'),
(23, '2024-05-12', 'Mother\'s Day'),
(24, '2025-05-11', 'Mother\'s Day'),
(25, '2026-05-10', 'Mother\'s Day'),
(26, '2027-05-09', 'Mother\'s Day'),
(27, '2028-05-14', 'Mother\'s Day'),
(28, '2029-05-13', 'Mother\'s Day'),
(29, '2030-05-12', 'Mother\'s Day'),
(30, '2010-06-20', 'Father\'s Day'),
(31, '2011-06-19', 'Father\'s Day'),
(32, '2012-06-17', 'Father\'s Day'),
(33, '2013-06-16', 'Father\'s Day'),
(34, '2014-06-15', 'Father\'s Day'),
(35, '2015-06-21', 'Father\'s Day'),
(36, '2016-06-19', 'Father\'s Day'),
(37, '2017-06-18', 'Father\'s Day'),
(38, '2018-06-17', 'Father\'s Day'),
(39, '2019-06-16', 'Father\'s Day'),
(40, '2020-06-21', 'Father\'s Day'),
(41, '2021-06-20', 'Father\'s Day'),
(42, '2022-06-19', 'Father\'s Day'),
(43, '2023-06-18', 'Father\'s Day'),
(44, '2024-06-16', 'Father\'s Day'),
(45, '2025-06-15', 'Father\'s Day'),
(46, '2026-06-21', 'Father\'s Day'),
(47, '2027-06-20', 'Father\'s Day'),
(48, '2028-06-18', 'Father\'s Day'),
(49, '2029-06-17', 'Father\'s Day'),
(50, '2030-06-16', 'Father\'s Day'),
(51, '2010-06-21', 'Summer Solstice'),
(52, '2011-06-21', 'Summer Solstice'),
(53, '2012-06-20', 'Summer Solstice'),
(54, '2013-06-21', 'Summer Solstice'),
(55, '2014-06-21', 'Summer Solstice'),
(56, '2015-06-21', 'Summer Solstice'),
(57, '2016-06-20', 'Summer Solstice'),
(58, '2017-06-20', 'Summer Solstice'),
(59, '2018-06-21', 'Summer Solstice'),
(60, '2019-06-21', 'Summer Solstice'),
(61, '2020-06-20', 'Summer Solstice'),
(62, '2021-06-21', 'Summer Solstice'),
(63, '2022-06-21', 'Summer Solstice'),
(64, '2023-06-21', 'Summer Solstice'),
(65, '2024-06-20', 'Summer Solstice'),
(66, '2025-06-21', 'Summer Solstice'),
(67, '2026-06-21', 'Summer Solstice'),
(68, '2027-06-21', 'Summer Solstice'),
(69, '2028-06-20', 'Summer Solstice'),
(70, '2029-06-21', 'Summer Solstice'),
(71, '2030-06-21', 'Summer Solstice'),
(72, '2010-03-20', 'Vernal Equinox'),
(73, '2011-03-20', 'Vernal Equinox'),
(74, '2012-03-20', 'Vernal Equinox'),
(75, '2013-03-20', 'Vernal Equinox'),
(76, '2014-03-20', 'Vernal Equinox'),
(77, '2015-03-20', 'Vernal Equinox'),
(78, '2016-03-20', 'Vernal Equinox'),
(79, '2017-03-20', 'Vernal Equinox'),
(80, '2018-03-20', 'Vernal Equinox'),
(81, '2019-03-20', 'Vernal Equinox'),
(82, '2020-03-20', 'Vernal Equinox'),
(83, '2021-03-20', 'Vernal Equinox'),
(84, '2022-03-20', 'Vernal Equinox'),
(85, '2023-03-20', 'Vernal Equinox'),
(86, '2024-03-20', 'Vernal Equinox'),
(87, '2025-03-20', 'Vernal Equinox'),
(88, '2026-03-20', 'Vernal Equinox'),
(89, '2027-03-20', 'Vernal Equinox'),
(90, '2028-03-20', 'Vernal Equinox'),
(91, '2029-03-20', 'Vernal Equinox'),
(92, '2030-03-20', 'Vernal Equinox'),
(93, '2010-12-21', 'Winter Solstice'),
(94, '2011-12-22', 'Winter Solstice'),
(95, '2012-12-21', 'Winter Solstice'),
(96, '2013-12-21', 'Winter Solstice'),
(97, '2014-12-21', 'Winter Solstice'),
(98, '2015-12-22', 'Winter Solstice'),
(99, '2016-12-21', 'Winter Solstice'),
(100, '2017-12-21', 'Winter Solstice'),
(101, '2018-12-21', 'Winter Solstice'),
(102, '2019-12-22', 'Winter Solstice'),
(103, '2020-12-21', 'Winter Solstice'),
(104, '2021-12-21', 'Winter Solstice'),
(105, '2022-12-21', 'Winter Solstice'),
(106, '2023-12-22', 'Winter Solstice'),
(107, '2024-12-21', 'Winter Solstice'),
(108, '2025-12-21', 'Winter Solstice'),
(109, '2026-12-21', 'Winter Solstice'),
(110, '2027-12-22', 'Winter Solstice'),
(111, '2028-12-21', 'Winter Solstice'),
(112, '2029-12-21', 'Winter Solstice'),
(113, '2030-12-21', 'Winter Solstice'),
(114, '2010-09-23', 'Autumnal Equinox'),
(115, '2011-09-23', 'Autumnal Equinox'),
(116, '2012-09-22', 'Autumnal Equinox'),
(117, '2013-09-22', 'Autumnal Equinox'),
(118, '2014-09-23', 'Autumnal Equinox'),
(119, '2015-09-23', 'Autumnal Equinox'),
(120, '2016-09-22', 'Autumnal Equinox'),
(121, '2017-09-22', 'Autumnal Equinox'),
(122, '2018-09-23', 'Autumnal Equinox'),
(123, '2019-09-23', 'Autumnal Equinox'),
(124, '2020-09-22', 'Autumnal Equinox'),
(125, '2021-09-22', 'Autumnal Equinox'),
(126, '2022-09-23', 'Autumnal Equinox'),
(127, '2023-09-23', 'Autumnal Equinox'),
(128, '2024-09-22', 'Autumnal Equinox'),
(129, '2025-09-22', 'Autumnal Equinox'),
(130, '2026-09-23', 'Autumnal Equinox'),
(131, '2027-09-23', 'Autumnal Equinox'),
(132, '2028-09-22', 'Autumnal Equinox'),
(133, '2029-09-22', 'Autumnal Equinox'),
(134, '2030-09-22', 'Autumnal Equinox'),
(135, '1004-07-04', 'Independence Day'),
(136, '1004-05-05', 'Cinco de Mayo'),
(137, '1004-06-14', 'Flag Day'),
(138, '1004-11-11', 'Veterans Day'),
(139, '1004-02-02', 'Groundhog Day'),
(140, '2010-11-25', 'Thanksgiving'),
(141, '2011-11-24', 'Thanksgiving'),
(142, '2012-11-22', 'Thanksgiving'),
(143, '2013-11-28', 'Thanksgiving'),
(144, '2014-11-27', 'Thanksgiving'),
(145, '2015-11-26', 'Thanksgiving'),
(146, '2016-11-24', 'Thanksgiving'),
(147, '2017-11-23', 'Thanksgiving'),
(148, '2018-11-22', 'Thanksgiving'),
(149, '2019-11-28', 'Thanksgiving'),
(150, '2020-11-26', 'Thanksgiving'),
(151, '2021-11-25', 'Thanksgiving'),
(152, '2022-11-24', 'Thanksgiving'),
(153, '2023-11-23', 'Thanksgiving'),
(154, '2024-11-28', 'Thanksgiving'),
(155, '2025-11-27', 'Thanksgiving'),
(156, '2026-11-26', 'Thanksgiving'),
(157, '2027-11-25', 'Thanksgiving'),
(158, '2028-11-23', 'Thanksgiving'),
(159, '2029-11-22', 'Thanksgiving'),
(160, '2030-11-28', 'Thanksgiving'),
(161, '2010-05-31', 'Memorial Day'),
(162, '2011-05-30', 'Memorial Day'),
(163, '2012-05-28', 'Memorial Day'),
(164, '2013-05-27', 'Memorial Day'),
(165, '2014-05-26', 'Memorial Day'),
(166, '2015-05-25', 'Memorial Day'),
(167, '2016-05-30', 'Memorial Day'),
(168, '2017-05-29', 'Memorial Day'),
(169, '2018-05-28', 'Memorial Day'),
(170, '2019-05-27', 'Memorial Day'),
(171, '2020-05-25', 'Memorial Day'),
(172, '2021-05-31', 'Memorial Day'),
(173, '2022-05-30', 'Memorial Day'),
(174, '2023-05-29', 'Memorial Day'),
(175, '2024-05-27', 'Memorial Day'),
(176, '2025-05-26', 'Memorial Day'),
(177, '2026-05-25', 'Memorial Day'),
(178, '2027-05-31', 'Memorial Day'),
(179, '2028-05-29', 'Memorial Day'),
(180, '2029-05-28', 'Memorial Day'),
(181, '2030-05-27', 'Memorial Day'),
(182, '2010-09-06', 'Labor Day'),
(183, '2011-09-05', 'Labor Day'),
(184, '2012-09-03', 'Labor Day'),
(185, '2013-09-02', 'Labor Day'),
(186, '2014-09-01', 'Labor Day'),
(187, '2015-09-07', 'Labor Day'),
(188, '2016-09-05', 'Labor Day'),
(189, '2017-09-04', 'Labor Day'),
(190, '2018-09-03', 'Labor Day'),
(191, '2019-09-02', 'Labor Day'),
(192, '2020-09-07', 'Labor Day'),
(193, '2021-09-06', 'Labor Day'),
(194, '2022-09-05', 'Labor Day'),
(195, '2023-09-04', 'Labor Day'),
(196, '2024-09-02', 'Labor Day'),
(197, '2025-09-01', 'Labor Day'),
(198, '2026-09-07', 'Labor Day'),
(199, '2027-09-06', 'Labor Day'),
(200, '2028-09-04', 'Labor Day'),
(201, '2029-09-03', 'Labor Day'),
(202, '2030-09-02', 'Labor Day'),
(203, '1004-06-06', 'D-Day');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_categories`
--

CREATE TABLE `l2j_categories` (
  `id_cat` tinyint(3) UNSIGNED NOT NULL,
  `cat_order` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `can_collapse` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_categories`
--

INSERT INTO `l2j_categories` (`id_cat`, `cat_order`, `name`, `description`, `can_collapse`) VALUES
(1, 1, 'Lineage II General Section', '', 1),
(2, 4, 'Marketplace', '', 1),
(3, 2, 'Lineage II Java Server Development', '', 1),
(4, 3, 'L2J Loren Project', '', 1),
(5, 0, 'Administration', '', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_custom_fields`
--

CREATE TABLE `l2j_custom_fields` (
  `id_field` smallint(6) NOT NULL,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(6) NOT NULL DEFAULT 255,
  `field_options` text NOT NULL,
  `field_order` smallint(6) NOT NULL DEFAULT 0,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(4) NOT NULL DEFAULT 0,
  `show_display` tinyint(4) NOT NULL DEFAULT 0,
  `show_mlist` smallint(6) NOT NULL DEFAULT 0,
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `bbc` tinyint(4) NOT NULL DEFAULT 0,
  `can_search` tinyint(4) NOT NULL DEFAULT 0,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_custom_fields`
--

INSERT INTO `l2j_custom_fields` (`id_field`, `col_name`, `field_name`, `field_desc`, `field_type`, `field_length`, `field_options`, `field_order`, `mask`, `show_reg`, `show_display`, `show_mlist`, `show_profile`, `private`, `active`, `bbc`, `can_search`, `default_value`, `enclose`, `placement`) VALUES
(2, 'cust_skype', '{skype}', '{skype_desc}', 'text', 32, '', 1, 'nohtml', 0, 1, 0, 'forumprofile', 0, 1, 0, 0, '', '<a href=\"skype:{INPUT}?call\"><img src=\"{DEFAULT_IMAGES_URL}/skype.png\" alt=\"{INPUT}\" title=\"{INPUT}\" /></a> ', 1),
(3, 'cust_loca', '{location}', '{location_desc}', 'text', 50, '', 3, 'nohtml', 0, 1, 0, 'forumprofile', 0, 1, 0, 0, '', '', 0),
(4, 'cust_gender', '{gender}', '{gender_desc}', 'radio', 255, '{gender_0},{gender_1},{gender_2}', 4, 'nohtml', 1, 1, 0, 'forumprofile', 0, 1, 0, 0, '{gender_0}', '<span class=\" main_icons gender_{KEY}\" title=\"{INPUT}\"></span>', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_group_moderators`
--

CREATE TABLE `l2j_group_moderators` (
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_actions`
--

CREATE TABLE `l2j_log_actions` (
  `id_action` int(10) UNSIGNED NOT NULL,
  `id_log` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varbinary(16) DEFAULT NULL,
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `extra` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_actions`
--

INSERT INTO `l2j_log_actions` (`id_action`, `id_log`, `log_time`, `id_member`, `ip`, `action`, `id_board`, `id_topic`, `id_msg`, `extra`) VALUES
(1, 3, 1747632068, 1, 0xc865bd43, 'add_group', 0, 0, 0, '{\"group\":\"Desenvolvedor\"}'),
(2, 3, 1747633802, 1, 0xc865bd43, 'edited_group', 0, 0, 0, '{\"group\":\"Desenvolvedor\"}'),
(3, 3, 1747634304, 1, 0xc865bd43, 'edit_cat', 0, 0, 0, '{\"catname\":\"General Section\"}'),
(4, 3, 1747634416, 1, 0xc865bd43, 'add_cat', 0, 0, 0, '{\"catname\":\"Marketplace\"}'),
(5, 3, 1747634535, 1, 0xc865bd43, 'add_board', 2, 0, 0, '[]'),
(6, 3, 1747634596, 1, 0xc865bd43, 'add_board', 3, 0, 0, '[]'),
(7, 3, 1747634627, 1, 0xc865bd43, 'add_board', 4, 0, 0, '[]'),
(8, 3, 1747634638, 1, 0xc865bd43, 'edit_board', 4, 0, 0, '[]'),
(9, 3, 1747634646, 1, 0xc865bd43, 'edit_board', 3, 0, 0, '[]'),
(10, 3, 1747634680, 1, 0xc865bd43, 'add_board', 5, 0, 0, '[]'),
(11, 3, 1747634702, 1, 0xc865bd43, 'add_board', 6, 0, 0, '[]'),
(12, 3, 1747634805, 1, 0xc865bd43, 'edit_board', 1, 0, 0, '[]'),
(13, 3, 1747634821, 1, 0xc865bd43, 'edit_board', 2, 0, 0, '[]'),
(14, 3, 1747634885, 1, 0xc865bd43, 'edit_cat', 0, 0, 0, '{\"catname\":\"Lineage II General Section\"}'),
(15, 3, 1747634911, 1, 0xc865bd43, 'add_cat', 0, 0, 0, '{\"catname\":\"Lineage II Java Server Development\"}'),
(16, 3, 1747664479, 1, 0xc865bd43, 'add_board', 7, 0, 0, '[]'),
(17, 3, 1747664548, 1, 0xc865bd43, 'add_board', 8, 0, 0, '[]'),
(18, 3, 1747664619, 1, 0xc865bd43, 'add_board', 9, 0, 0, '[]'),
(19, 3, 1747664684, 1, 0xc865bd43, 'edit_board', 7, 0, 0, '[]'),
(20, 3, 1747664727, 1, 0xc865bd43, 'add_board', 10, 0, 0, '[]'),
(21, 3, 1747664981, 1, 0xc865bd43, 'edit_board', 10, 0, 0, '[]'),
(22, 3, 1747664993, 1, 0xc865bd43, 'edit_board', 9, 0, 0, '[]'),
(23, 3, 1747665086, 1, 0xc865bd43, 'add_board', 11, 0, 0, '[]'),
(24, 3, 1747665159, 1, 0xc865bd43, 'add_board', 12, 0, 0, '[]'),
(25, 3, 1747665177, 1, 0xc865bd43, 'edit_board', 12, 0, 0, '[]'),
(26, 3, 1747665213, 1, 0xc865bd43, 'add_board', 13, 0, 0, '[]'),
(27, 3, 1747665226, 1, 0xc865bd43, 'edit_board', 13, 0, 0, '[]'),
(28, 3, 1747665301, 1, 0xc865bd43, 'edit_board', 7, 0, 0, '[]'),
(29, 3, 1747665396, 1, 0xc865bd43, 'edit_board', 7, 0, 0, '[]'),
(30, 3, 1747665436, 1, 0xc865bd43, 'add_board', 14, 0, 0, '[]'),
(31, 3, 1747665462, 1, 0xc865bd43, 'add_board', 15, 0, 0, '[]'),
(32, 3, 1747665501, 1, 0xc865bd43, 'add_board', 16, 0, 0, '[]'),
(33, 3, 1747665544, 1, 0xc865bd43, 'add_board', 17, 0, 0, '[]'),
(34, 3, 1747666100, 1, 0xc865bd43, 'add_board', 18, 0, 0, '[]'),
(35, 3, 1747666115, 1, 0xc865bd43, 'edit_board', 18, 0, 0, '[]'),
(36, 3, 1747666121, 1, 0xc865bd43, 'edit_board', 18, 0, 0, '[]'),
(37, 3, 1747666214, 1, 0xc865bd43, 'add_board', 19, 0, 0, '[]'),
(38, 3, 1747666478, 1, 0xc865bd43, 'add_board', 20, 0, 0, '[]'),
(39, 3, 1747667248, 1, 0xc865bd43, 'add_board', 21, 0, 0, '[]'),
(40, 3, 1747667282, 1, 0xc865bd43, 'add_board', 22, 0, 0, '[]'),
(41, 3, 1747669703, 1, 0xc865bd43, 'edit_board', 21, 0, 0, '[]'),
(42, 3, 1747669795, 1, 0xc865bd43, 'edit_board', 21, 0, 0, '[]'),
(43, 3, 1747670141, 1, 0xc865bd43, 'edit_board', 20, 0, 0, '[]'),
(44, 3, 1747670213, 1, 0xc865bd43, 'edit_board', 20, 0, 0, '[]'),
(45, 3, 1747670243, 1, 0xc865bd43, 'edit_board', 20, 0, 0, '[]'),
(46, 3, 1747670274, 1, 0xc865bd43, 'add_board', 23, 0, 0, '[]'),
(47, 3, 1747670304, 1, 0xc865bd43, 'edit_board', 23, 0, 0, '[]'),
(48, 3, 1747670333, 1, 0xc865bd43, 'add_board', 24, 0, 0, '[]'),
(49, 3, 1747670398, 1, 0xc865bd43, 'add_board', 25, 0, 0, '[]'),
(50, 3, 1747670423, 1, 0xc865bd43, 'add_board', 26, 0, 0, '[]'),
(51, 3, 1747670489, 1, 0xc865bd43, 'edit_board', 26, 0, 0, '[]'),
(52, 3, 1747670513, 1, 0xc865bd43, 'add_board', 27, 0, 0, '[]'),
(53, 3, 1747670531, 1, 0xc865bd43, 'add_board', 28, 0, 0, '[]'),
(54, 3, 1747670567, 1, 0xc865bd43, 'edit_board', 28, 0, 0, '[]'),
(55, 3, 1747670643, 1, 0xc865bd43, 'add_board', 29, 0, 0, '[]'),
(56, 3, 1747670666, 1, 0xc865bd43, 'add_board', 30, 0, 0, '[]'),
(57, 3, 1747670698, 1, 0xc865bd43, 'add_board', 31, 0, 0, '[]'),
(58, 3, 1747670714, 1, 0xc865bd43, 'add_board', 32, 0, 0, '[]'),
(59, 3, 1747670748, 1, 0xc865bd43, 'add_board', 33, 0, 0, '[]'),
(60, 3, 1747670786, 1, 0xc865bd43, 'add_board', 34, 0, 0, '[]'),
(61, 3, 1747670950, 1, 0xc865bd43, 'add_board', 35, 0, 0, '[]'),
(62, 3, 1747670969, 1, 0xc865bd43, 'add_board', 36, 0, 0, '[]'),
(63, 3, 1747671009, 1, 0xc865bd43, 'add_board', 37, 0, 0, '[]'),
(64, 3, 1747671028, 1, 0xc865bd43, 'add_board', 38, 0, 0, '[]'),
(65, 3, 1747671048, 1, 0xc865bd43, 'add_board', 39, 0, 0, '[]'),
(66, 3, 1747671526, 1, 0xc865bd43, 'add_board', 40, 0, 0, '[]'),
(67, 3, 1747671594, 1, 0xc865bd43, 'add_board', 41, 0, 0, '[]'),
(68, 3, 1747671614, 1, 0xc865bd43, 'add_board', 42, 0, 0, '[]'),
(69, 3, 1747671632, 1, 0xc865bd43, 'add_board', 43, 0, 0, '[]'),
(70, 3, 1747705824, 1, 0xc865bd43, 'add_board', 44, 0, 0, '[]'),
(71, 3, 1747705891, 1, 0xc865bd43, 'add_board', 45, 0, 0, '[]'),
(72, 3, 1747705932, 1, 0xc865bd43, 'add_board', 46, 0, 0, '[]'),
(73, 3, 1747705992, 1, 0xc865bd43, 'add_board', 47, 0, 0, '[]'),
(74, 3, 1747706006, 1, 0xc865bd43, 'edit_board', 46, 0, 0, '[]'),
(75, 3, 1747706035, 1, 0xc865bd43, 'add_board', 48, 0, 0, '[]'),
(76, 3, 1747706056, 1, 0xc865bd43, 'edit_board', 48, 0, 0, '[]'),
(77, 3, 1747706331, 1, 0xc865bd43, 'add_board', 49, 0, 0, '[]'),
(78, 3, 1747706597, 1, 0xc865bd43, 'add_board', 50, 0, 0, '[]'),
(79, 3, 1747706619, 1, 0xc865bd43, 'add_board', 51, 0, 0, '[]'),
(80, 3, 1747706640, 1, 0xc865bd43, 'add_board', 52, 0, 0, '[]'),
(81, 3, 1747706755, 1, 0xc865bd43, 'add_board', 53, 0, 0, '[]'),
(82, 3, 1747706787, 1, 0xc865bd43, 'add_board', 54, 0, 0, '[]'),
(83, 3, 1747706925, 1, 0xc865bd43, 'add_board', 55, 0, 0, '[]'),
(84, 3, 1747707019, 1, 0xc865bd43, 'edit_board', 55, 0, 0, '[]'),
(85, 3, 1747707107, 1, 0xc865bd43, 'add_board', 56, 0, 0, '[]'),
(86, 3, 1747707192, 1, 0xc865bd43, 'add_board', 57, 0, 0, '[]'),
(87, 3, 1747707217, 1, 0xc865bd43, 'add_board', 58, 0, 0, '[]'),
(88, 3, 1747707305, 1, 0xc865bd43, 'add_board', 59, 0, 0, '[]'),
(89, 3, 1747707320, 1, 0xc865bd43, 'add_board', 60, 0, 0, '[]'),
(90, 3, 1747707338, 1, 0xc865bd43, 'add_board', 61, 0, 0, '[]'),
(91, 3, 1747707354, 1, 0xc865bd43, 'add_board', 62, 0, 0, '[]'),
(92, 3, 1747707387, 1, 0xc865bd43, 'edit_board', 62, 0, 0, '[]'),
(93, 3, 1747707428, 1, 0xc865bd43, 'add_board', 63, 0, 0, '[]'),
(94, 3, 1747707451, 1, 0xc865bd43, 'add_board', 64, 0, 0, '[]'),
(95, 3, 1747707460, 1, 0xc865bd43, 'edit_board', 64, 0, 0, '[]'),
(96, 3, 1747707489, 1, 0xc865bd43, 'add_board', 65, 0, 0, '[]'),
(97, 3, 1747707509, 1, 0xc865bd43, 'add_board', 66, 0, 0, '[]'),
(98, 3, 1747707588, 1, 0xc865bd43, 'add_board', 67, 0, 0, '[]'),
(99, 3, 1747707608, 1, 0xc865bd43, 'edit_board', 67, 0, 0, '[]'),
(100, 3, 1747707626, 1, 0xc865bd43, 'add_board', 68, 0, 0, '[]'),
(101, 2, 1747710518, 1, 0xc865bd43, 'additional_groups', 0, 0, 0, '{\"previous\":\"\",\"new\":\"Desenvolvedor\",\"applicator\":1,\"member_affected\":1}'),
(102, 2, 1747711040, 1, 0xc865bd43, 'customfield_cust_gender', 0, 0, 0, '{\"previous\":\"\",\"new\":\"{gender_1}\",\"applicator\":1,\"member_affected\":1}'),
(103, 2, 1747711040, 1, 0xc865bd43, 'usertitle', 0, 0, 0, '{\"previous\":\"\",\"new\":\"L2JLoren Project\",\"applicator\":1,\"member_affected\":1}'),
(104, 3, 1747715892, 1, 0xc865bd43, 'add_cat', 0, 0, 0, '{\"catname\":\"L2J Loren Project\"}'),
(105, 3, 1747716057, 1, 0xc865bd43, 'add_board', 69, 0, 0, '[]'),
(106, 3, 1747716077, 1, 0xc865bd43, 'edit_board', 69, 0, 0, '[]'),
(107, 3, 1747716280, 1, 0xc865bd43, 'add_board', 70, 0, 0, '[]'),
(108, 3, 1747716344, 1, 0xc865bd43, 'add_board', 71, 0, 0, '[]'),
(109, 3, 1747716368, 1, 0xc865bd43, 'edit_board', 71, 0, 0, '[]'),
(110, 3, 1747716420, 1, 0xc865bd43, 'add_board', 72, 0, 0, '[]'),
(111, 3, 1747716452, 1, 0xc865bd43, 'add_board', 73, 0, 0, '[]'),
(112, 3, 1747716539, 1, 0xc865bd43, 'edit_board', 73, 0, 0, '[]'),
(113, 3, 1747716620, 1, 0xc865bd43, 'add_board', 74, 0, 0, '[]'),
(114, 3, 1747716666, 1, 0xc865bd43, 'edit_board', 72, 0, 0, '[]'),
(115, 3, 1747716710, 1, 0xc865bd43, 'edit_board', 71, 0, 0, '[]'),
(116, 3, 1747716742, 1, 0xc865bd43, 'edit_board', 72, 0, 0, '[]'),
(117, 3, 1747719964, 1, 0xc865bd43, 'install_package', 0, 0, 0, '{\"package\":\"SMF Post Prefix\",\"version\":\"4.3.4\"}'),
(118, 3, 1747760911, 1, 0xc865bd43, 'add_cat', 0, 0, 0, '{\"catname\":\"Administration\"}'),
(119, 3, 1747760964, 1, 0xc865bd43, 'add_board', 75, 0, 0, '[]'),
(120, 3, 1747761134, 1, 0xc865bd43, 'edit_board', 75, 0, 0, '[]'),
(121, 3, 1747761359, 1, 0xc865bd43, 'add_board', 76, 0, 0, '[]'),
(122, 3, 1747761368, 1, 0xc865bd43, 'edit_board', 76, 0, 0, '[]'),
(123, 1, 1747765204, 1, 0x2db99a47, 'sticky', 49, 6, 0, '[]'),
(124, 1, 1747765209, 1, 0x2db99a47, 'lock', 49, 6, 0, '[]'),
(125, 1, 1747784933, 1, 0xc92a5618, 'remove', 1, 1, 0, '{\"subject\":\"Welcome to SMF!\",\"member\":\"0\"}'),
(126, 3, 1747858435, 1, 0x2db99a47, 'install_package', 0, 0, 0, '{\"package\":\"Team Page\",\"version\":\"5.4.3\"}'),
(127, 3, 1747858567, 1, 0x2db99a47, 'install_package', 0, 0, 0, '{\"package\":\"Spoiler\",\"version\":\"0.3.2\"}'),
(128, 2, 1747873983, 2, 0xc92a5618, 'customfield_cust_gender', 0, 0, 0, '{\"previous\":\"\",\"new\":\"{gender_0}\",\"applicator\":2,\"member_affected\":2}'),
(129, 3, 1747877900, 1, 0xc92a5618, 'install_package', 0, 0, 0, '{\"package\":\"Pretty URLs\",\"version\":\"4.2.2\"}'),
(130, 3, 1748153818, 1, 0x2db99a47, 'upgrade_package', 0, 0, 0, '{\"package\":\"Spoiler\",\"version\":\"0.3.2\"}'),
(131, 3, 1748154013, 1, 0x2db99a47, 'upgrade_package', 0, 0, 0, '{\"package\":\"Pretty URLs\",\"version\":\"4.2.2\"}'),
(132, 3, 1748154110, 1, 0x2db99a47, 'upgrade_package', 0, 0, 0, '{\"package\":\"Team Page\",\"version\":\"5.4.3\"}'),
(133, 3, 1748154232, 1, 0x2db99a47, 'upgrade_package', 0, 0, 0, '{\"package\":\"SMF Post Prefix\",\"version\":\"4.3.4\"}'),
(134, 3, 1748310982, 1, 0xc865bd43, 'edit_cat', 0, 0, 0, '{\"catname\":\"L2J Loren Project\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_activity`
--

CREATE TABLE `l2j_log_activity` (
  `date` date NOT NULL,
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topics` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `posts` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `registers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `most_on` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_activity`
--

INSERT INTO `l2j_log_activity` (`date`, `hits`, `topics`, `posts`, `registers`, `most_on`) VALUES
('2025-05-19', 0, 0, 0, 0, 3),
('2025-05-20', 0, 10, 10, 1, 2),
('2025-05-21', 0, 1, 1, 0, 2),
('2025-05-22', 0, 0, 0, 0, 6),
('2025-05-23', 0, 0, 0, 0, 2),
('2025-05-24', 0, 0, 0, 0, 2),
('2025-05-25', 0, 1, 1, 0, 1),
('2025-05-26', 0, 0, 0, 0, 3),
('2025-05-27', 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_banned`
--

CREATE TABLE `l2j_log_banned` (
  `id_ban_log` mediumint(8) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varbinary(16) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_boards`
--

CREATE TABLE `l2j_log_boards` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_boards`
--

INSERT INTO `l2j_log_boards` (`id_member`, `id_board`, `id_msg`) VALUES
(1, 1, 13),
(1, 2, 13),
(1, 3, 13),
(1, 8, 13),
(1, 9, 12),
(1, 13, 13),
(1, 16, 13),
(1, 49, 13),
(1, 50, 4),
(1, 52, 5),
(1, 54, 12),
(1, 59, 13),
(1, 60, 13),
(1, 61, 13),
(1, 62, 13),
(1, 63, 13),
(1, 64, 13),
(1, 65, 13),
(1, 66, 13),
(1, 67, 13),
(1, 68, 13),
(1, 69, 11),
(1, 72, 1),
(1, 75, 13),
(1, 76, 13),
(2, 1, 12),
(2, 63, 12),
(2, 75, 12),
(2, 76, 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_comments`
--

CREATE TABLE `l2j_log_comments` (
  `id_comment` mediumint(8) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT 0,
  `id_notice` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `counter` tinyint(4) NOT NULL DEFAULT 0,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_digest`
--

CREATE TABLE `l2j_log_digest` (
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `exclude` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_errors`
--

CREATE TABLE `l2j_log_errors` (
  `id_error` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varbinary(16) DEFAULT NULL,
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` varchar(128) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `backtrace` varchar(10000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_errors`
--

INSERT INTO `l2j_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`, `backtrace`) VALUES
(1, 1748320042, 2, 0xc865bd43, '?pretty;action=search2', '2: Undefined array key &quot;hello_member_ndt&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/index.template.php', 287, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/index.template.php\",\"line\":287,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_body_above\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4571,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4178,\"function\":\"template_header\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(2, 1748320042, 2, 0xc865bd43, '?pretty;action=search2', '2: Undefined array key &quot;linktree_link&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/index.template.php', 382, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/index.template.php\",\"line\":382,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/index.template.php\",\"line\":314,\"function\":\"theme_linktree\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_body_above\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4571,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4178,\"function\":\"template_header\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(3, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;hello_member_ndt&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/index.template.php', 287, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/index.template.php\",\"line\":287,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_body_above\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4571,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4178,\"function\":\"template_header\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(4, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;linktree_link&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/index.template.php', 382, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/index.template.php\",\"line\":382,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/index.template.php\",\"line\":314,\"function\":\"theme_linktree\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_body_above\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4571,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4178,\"function\":\"template_header\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(5, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_href&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(6, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_image&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(7, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;parent_boards&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 255, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":255,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(8, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_href&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(9, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_image&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(10, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;parent_boards&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 255, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":255,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(11, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_href&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(12, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_image&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(13, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;parent_boards&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 255, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":255,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(14, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_href&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(15, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_image&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(16, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_href&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(17, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;collapse_image&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 146, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":146,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(18, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;show_mark_read&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 293, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":293,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(19, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;upshrink_description&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 320, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":320,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":307,\"function\":\"template_info_center\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(20, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;show_calendar&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 375, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":375,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":307,\"function\":\"template_info_center\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(21, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;posts_made&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 432, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":432,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":307,\"function\":\"template_info_center\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(22, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;upshrink_description&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 525, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":525,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":307,\"function\":\"template_info_center\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(23, 1748320161, 2, 0xc865bd43, '?i=1', '2: Undefined array key &quot;upshrink_description&quot;', '059778eccc348b4fbb15199617fc90aa', 'undefined_vars', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1/BoardIndex.template.php', 527, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":527,\"function\":\"smf_error_handler\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Themes\\/theme1\\/BoardIndex.template.php\",\"line\":307,\"function\":\"template_info_center\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Load.php\",\"line\":2778,\"function\":\"template_main\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4183,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]'),
(24, 1748320161, 2, 0xc865bd43, '?i=1', 'Unable to load the \'boardindex_outer_below\' template.', '059778eccc348b4fbb15199617fc90aa', 'template', '', 0, '[{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4704,\"function\":\"loadSubTemplate\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/Sources\\/Subs.php\",\"line\":4193,\"function\":\"template_footer\"},{\"file\":\"\\/home\\/vol1_5\\/hstn.me\\/mseet_39018685\\/l2jforum.lineage2loren.site\\/htdocs\\/index.php\",\"line\":199,\"function\":\"obExit\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_floodcontrol`
--

CREATE TABLE `l2j_log_floodcontrol` (
  `ip` varbinary(16) NOT NULL DEFAULT '',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `log_type` varchar(30) NOT NULL DEFAULT 'post'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_floodcontrol`
--

INSERT INTO `l2j_log_floodcontrol` (`ip`, `log_time`, `log_type`) VALUES
(0x2db99a47, 1748218231, 'post'),
(0xc865bd43, 1748305607, 'login'),
(0xc865bd43, 1748320042, 'search');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_group_requests`
--

CREATE TABLE `l2j_log_group_requests` (
  `id_request` mediumint(8) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `time_applied` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reason` text NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id_member_acted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `member_name_acted` varchar(255) NOT NULL DEFAULT '',
  `time_acted` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `act_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_mark_read`
--

CREATE TABLE `l2j_log_mark_read` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_mark_read`
--

INSERT INTO `l2j_log_mark_read` (`id_member`, `id_board`, `id_msg`) VALUES
(1, 1, 13),
(1, 2, 13),
(1, 59, 13),
(1, 60, 13),
(1, 61, 13),
(1, 62, 13),
(1, 63, 13),
(1, 64, 13),
(1, 65, 13),
(1, 66, 13),
(1, 67, 13),
(1, 68, 13);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_member_notices`
--

CREATE TABLE `l2j_log_member_notices` (
  `id_notice` mediumint(8) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_notify`
--

CREATE TABLE `l2j_log_notify` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_online`
--

CREATE TABLE `l2j_log_online` (
  `session` varchar(128) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_spider` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varbinary(16) DEFAULT NULL,
  `url` varchar(2048) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_online`
--

INSERT INTO `l2j_log_online` (`session`, `log_time`, `id_member`, `id_spider`, `ip`, `url`) VALUES
('4882a3e622493834321c95e1ee4d15ad', 1748320227, 1, 0, 0xc865bd43, '{\"USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"}'),
('61c2792ede7458e22f641c58541814bd', 1748320161, 2, 0, 0xc865bd43, '{\"i\":\"1\",\"USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_packages`
--

CREATE TABLE `l2j_log_packages` (
  `id_install` int(10) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(9) NOT NULL DEFAULT 0,
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT 0,
  `id_member_removed` mediumint(9) NOT NULL DEFAULT 0,
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT 0,
  `install_state` tinyint(4) NOT NULL DEFAULT 1,
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL,
  `credits` text NOT NULL,
  `sha256_hash` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_packages`
--

INSERT INTO `l2j_log_packages` (`id_install`, `filename`, `package_id`, `name`, `version`, `id_member_installed`, `member_installed`, `time_installed`, `id_member_removed`, `member_removed`, `time_removed`, `install_state`, `failed_steps`, `themes_installed`, `db_changes`, `credits`, `sha256_hash`) VALUES
(1, 'SMF-Post-Prefix_v4.3.4.zip', 'smftricks:postprefix', 'SMF Post Prefix', '4.3.4', 1, 'Wazah', 1747719964, 1, 'Wazah', 1748154232, 0, '[]', '1', '[[\"remove_table\",\"l2j_postprefixes\"],[\"remove_table\",\"l2j_postprefixes_boards\"],[\"remove_table\",\"l2j_postprefixes_groups\"],[\"remove_column\",\"l2j_boards\",\"require_prefix\"],[\"remove_column\",\"l2j_topics\",\"id_prefix\"]]', '{\"url\":\"https:\\/\\/smftricks.com\",\"license\":\"MPL 2.0\",\"licenseurl\":\"https:\\/\\/www.mozilla.org\\/en-US\\/MPL\\/2.0\\/\",\"copyright\":\"SMF Tricks\",\"title\":\"SMF Post Prefix\"}', '3e4fa4874ab186ff837506124bd88e0ea782ad8a490018273f1a71eb7fd3c1c6'),
(2, 'Team-Page_v5.4.3.zip', 'smftricks:teampage', 'Team Page', '5.4.3', 1, 'Wazah', 1747858435, 1, 'Wazah', 1748154110, 0, '[]', '1', '[[\"remove_table\",\"l2j_teampage_groups\"],[\"remove_table\",\"l2j_teampage_pages\"]]', '{\"url\":\"https:\\/\\/smftricks.com\",\"license\":\"MPL 2.0\",\"licenseurl\":\"https:\\/\\/www.mozilla.org\\/en-US\\/MPL\\/2.0\\/\",\"copyright\":\"SMF Tricks\",\"title\":\"Team Page\"}', '0362e50ae017fff91585dc7dd89d87ee5e821bb35ce235033341bf8648ffd929'),
(3, 'spoiler_0.3.2_smf21.zip', 'Bugo:Spoiler', 'Spoiler', '0.3.2', 1, 'Wazah', 1747858567, 1, 'Wazah', 1748153818, 0, '[]', '1', '', '', 'be679696221e932448f8ef3b11e7b7cdeb858439855191d36700b1f72c2c9481'),
(4, 'PrettyUrls4.2.2.zip', 'el:prettyurls', 'Pretty URLs', '4.2.2', 1, 'Wazah', 1747877900, 1, 'Wazah', 1748154013, 0, '[]', '1,3,2', '[[\"remove_table\",\"l2j_pretty_topic_urls\"],[\"remove_table\",\"l2j_pretty_urls_cache\"]]', '', '22e2381b02ccada93b979e603ea25728ed18d8d7fbe45431986baf51c30ac1da'),
(5, 'spoiler_0.3.2_smf21.zip', 'Bugo:Spoiler', 'Spoiler', '0.3.2', 1, 'Wazah', 1748153818, 0, '0', 0, 2, '[]', '1', '', '', 'be679696221e932448f8ef3b11e7b7cdeb858439855191d36700b1f72c2c9481'),
(6, 'PrettyUrls4.2.2.zip', 'el:prettyurls', 'Pretty URLs', '4.2.2', 1, 'Wazah', 1748154013, 0, '0', 0, 2, '[]', '1', '[[\"remove_table\",\"l2j_pretty_topic_urls\"],[\"remove_table\",\"l2j_pretty_urls_cache\"],[\"remove_table\",\"l2j_pretty_topic_urls\"],[\"remove_table\",\"l2j_pretty_urls_cache\"]]', '', '22e2381b02ccada93b979e603ea25728ed18d8d7fbe45431986baf51c30ac1da'),
(7, 'Team-Page_v5.4.3.zip', 'smftricks:teampage', 'Team Page', '5.4.3', 1, 'Wazah', 1748154110, 0, '0', 0, 2, '[]', '1', '[[\"remove_table\",\"l2j_teampage_groups\"],[\"remove_table\",\"l2j_teampage_pages\"],[\"remove_table\",\"l2j_teampage_groups\"],[\"remove_table\",\"l2j_teampage_pages\"]]', '{\"url\":\"https:\\/\\/smftricks.com\",\"license\":\"MPL 2.0\",\"licenseurl\":\"https:\\/\\/www.mozilla.org\\/en-US\\/MPL\\/2.0\\/\",\"copyright\":\"SMF Tricks\",\"title\":\"Team Page\"}', '0362e50ae017fff91585dc7dd89d87ee5e821bb35ce235033341bf8648ffd929'),
(8, 'SMF-Post-Prefix_v4.3.4.zip', 'smftricks:postprefix', 'SMF Post Prefix', '4.3.4', 1, 'Wazah', 1748154232, 0, '0', 0, 2, '[]', '1', '[[\"remove_table\",\"l2j_postprefixes\"],[\"remove_table\",\"l2j_postprefixes_boards\"],[\"remove_table\",\"l2j_postprefixes_groups\"],[\"remove_table\",\"l2j_postprefixes\"],[\"remove_table\",\"l2j_postprefixes_boards\"],[\"remove_table\",\"l2j_postprefixes_groups\"],[\"remove_column\",\"l2j_boards\",\"require_prefix\"],[\"remove_column\",\"l2j_topics\",\"id_prefix\"],[\"remove_column\",\"l2j_boards\",\"require_prefix\"],[\"remove_column\",\"l2j_topics\",\"id_prefix\"]]', '{\"url\":\"https:\\/\\/smftricks.com\",\"license\":\"MPL 2.0\",\"licenseurl\":\"https:\\/\\/www.mozilla.org\\/en-US\\/MPL\\/2.0\\/\",\"copyright\":\"SMF Tricks\",\"title\":\"SMF Post Prefix\"}', '3e4fa4874ab186ff837506124bd88e0ea782ad8a490018273f1a71eb7fd3c1c6');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_polls`
--

CREATE TABLE `l2j_log_polls` (
  `id_poll` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_choice` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_reported`
--

CREATE TABLE `l2j_log_reported` (
  `id_report` mediumint(8) UNSIGNED NOT NULL,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT 0,
  `time_updated` int(10) NOT NULL DEFAULT 0,
  `num_reports` mediumint(9) NOT NULL DEFAULT 0,
  `closed` tinyint(4) NOT NULL DEFAULT 0,
  `ignore_all` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_reported_comments`
--

CREATE TABLE `l2j_log_reported_comments` (
  `id_comment` mediumint(8) UNSIGNED NOT NULL,
  `id_report` mediumint(9) NOT NULL DEFAULT 0,
  `id_member` mediumint(9) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varbinary(16) DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_scheduled_tasks`
--

CREATE TABLE `l2j_log_scheduled_tasks` (
  `id_log` mediumint(9) NOT NULL,
  `id_task` smallint(6) NOT NULL DEFAULT 0,
  `time_run` int(10) NOT NULL DEFAULT 0,
  `time_taken` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_scheduled_tasks`
--

INSERT INTO `l2j_log_scheduled_tasks` (`id_log`, `id_task`, `time_run`, `time_taken`) VALUES
(1, 3, 1747628646, 0),
(2, 5, 1747628663, 0),
(3, 6, 1747628821, 0),
(4, 7, 1747628837, 1),
(5, 9, 1747628844, 0),
(6, 11, 1747628851, 0),
(7, 12, 1747628862, 0),
(8, 13, 1747628865, 0),
(9, 5, 1747703800, 0),
(10, 3, 1747705719, 0),
(11, 11, 1747705753, 0),
(12, 12, 1747705761, 0),
(13, 13, 1747705769, 0),
(14, 7, 1747756907, 7),
(15, 5, 1747795194, 0),
(16, 3, 1747795199, 0),
(17, 11, 1747795209, 0),
(18, 12, 1747795214, 0),
(19, 13, 1747795216, 0),
(20, 7, 1747832549, 1),
(21, 5, 1747873021, 0),
(22, 3, 1747873027, 0),
(23, 11, 1747873139, 0),
(24, 12, 1747873147, 0),
(25, 13, 1747873150, 0),
(26, 7, 1747925701, 1),
(27, 5, 1747960387, 0),
(28, 3, 1747960393, 0),
(29, 11, 1747960409, 0),
(30, 12, 1747960421, 0),
(31, 13, 1747970091, 0),
(32, 7, 1748011050, 1),
(33, 5, 1748068233, 0),
(34, 3, 1748068322, 0),
(35, 11, 1748069862, 0),
(36, 12, 1748069865, 0),
(37, 13, 1748069898, 0),
(38, 7, 1748153689, 1),
(39, 5, 1748153712, 0),
(40, 3, 1748153724, 0),
(41, 11, 1748153729, 0),
(42, 12, 1748153734, 0),
(43, 13, 1748153740, 0),
(44, 6, 1748217231, 0),
(45, 9, 1748217237, 0),
(46, 5, 1748218233, 0),
(47, 3, 1748218256, 0),
(48, 11, 1748219104, 0),
(49, 12, 1748225353, 0),
(50, 13, 1748225361, 0),
(51, 7, 1748279500, 1),
(52, 5, 1748304351, 0),
(53, 3, 1748304446, 0),
(54, 11, 1748304710, 0),
(55, 12, 1748304852, 0),
(56, 13, 1748304868, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_search_messages`
--

CREATE TABLE `l2j_log_search_messages` (
  `id_search` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_search_results`
--

CREATE TABLE `l2j_log_search_results` (
  `id_search` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `relevance` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `num_matches` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_search_results`
--

INSERT INTO `l2j_log_search_results` (`id_search`, `id_topic`, `id_msg`, `relevance`, `num_matches`) VALUES
(2, 12, 12, 738, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_search_subjects`
--

CREATE TABLE `l2j_log_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_search_subjects`
--

INSERT INTO `l2j_log_search_subjects` (`word`, `id_topic`) VALUES
('1', 2),
('9', 2),
('and', 11),
('archives', 7),
('armorset', 12),
('baners', 9),
('before', 4),
('botões', 9),
('clan', 5),
('com', 8),
('criando', 8),
('e', 9),
('e', 10),
('fonts', 9),
('forum', 11),
('general', 3),
('icon', 11),
('imagens', 9),
('imagens', 10),
('interlude', 2),
('java', 6),
('jewell', 12),
('killing', 13),
('l2jloren', 2),
('laucher', 8),
('like', 12),
('mods', 6),
('outros', 10),
('para', 10),
('para', 11),
('posting', 4),
('read', 4),
('rules', 3),
('rules', 6),
('set', 12),
('site', 10),
('source', 7),
('spree', 13),
('themes', 11),
('tutorial', 8),
('update', 8),
('v0', 2),
('viewer', 5),
('warehouse', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_search_topics`
--

CREATE TABLE `l2j_log_search_topics` (
  `id_search` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_spider_hits`
--

CREATE TABLE `l2j_log_spider_hits` (
  `id_hit` int(10) UNSIGNED NOT NULL,
  `id_spider` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(1024) NOT NULL DEFAULT '',
  `processed` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_spider_stats`
--

CREATE TABLE `l2j_log_spider_stats` (
  `id_spider` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `page_hits` int(11) NOT NULL DEFAULT 0,
  `last_seen` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_date` date NOT NULL DEFAULT '1004-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_subscribed`
--

CREATE TABLE `l2j_log_subscribed` (
  `id_sublog` int(10) UNSIGNED NOT NULL,
  `id_subscribe` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` int(10) NOT NULL DEFAULT 0,
  `old_id_group` smallint(6) NOT NULL DEFAULT 0,
  `start_time` int(10) NOT NULL DEFAULT 0,
  `end_time` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `payments_pending` tinyint(4) NOT NULL DEFAULT 0,
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_ref` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_log_topics`
--

CREATE TABLE `l2j_log_topics` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unwatched` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_log_topics`
--

INSERT INTO `l2j_log_topics` (`id_member`, `id_topic`, `id_msg`, `unwatched`) VALUES
(1, 2, 12, 0),
(1, 3, 13, 0),
(1, 4, 13, 0),
(1, 5, 5, 0),
(1, 6, 6, 0),
(1, 7, 7, 0),
(1, 8, 8, 0),
(1, 9, 9, 0),
(1, 10, 10, 0),
(1, 11, 11, 0),
(1, 12, 12, 0),
(1, 13, 13, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_mail_queue`
--

CREATE TABLE `l2j_mail_queue` (
  `id_mail` int(10) UNSIGNED NOT NULL,
  `time_sent` int(10) NOT NULL DEFAULT 0,
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(4) NOT NULL DEFAULT 1,
  `private` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_membergroups`
--

CREATE TABLE `l2j_membergroups` (
  `id_group` smallint(5) UNSIGNED NOT NULL,
  `group_name` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `online_color` varchar(20) NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT -1,
  `max_messages` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `icons` varchar(255) NOT NULL DEFAULT '',
  `group_type` tinyint(4) NOT NULL DEFAULT 0,
  `hidden` tinyint(4) NOT NULL DEFAULT 0,
  `id_parent` smallint(6) NOT NULL DEFAULT -2,
  `tfa_required` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_membergroups`
--

INSERT INTO `l2j_membergroups` (`id_group`, `group_name`, `description`, `online_color`, `min_posts`, `max_messages`, `icons`, `group_type`, `hidden`, `id_parent`, `tfa_required`) VALUES
(1, 'Administrator', '', '#FF0000', -1, 0, '5#iconadmin.png', 1, 0, -2, 0),
(2, 'Global Moderator', '', '#0000FF', -1, 0, '5#icongmod.png', 0, 0, -2, 0),
(3, 'Moderator', '', '', -1, 0, '5#iconmod.png', 0, 0, -2, 0),
(4, 'Newbie', '', '', 0, 0, '1#icon.png', 0, 0, -2, 0),
(5, 'Jr. Member', '', '', 50, 0, '2#icon.png', 0, 0, -2, 0),
(6, 'Full Member', '', '', 100, 0, '3#icon.png', 0, 0, -2, 0),
(7, 'Sr. Member', '', '', 250, 0, '4#icon.png', 0, 0, -2, 0),
(8, 'Hero Member', '', '', 500, 0, '5#icon.png', 0, 0, -2, 0),
(9, 'Desenvolvedor', '', '', -1, 0, '5#iconmod.png', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_members`
--

CREATE TABLE `l2j_members` (
  `id_member` mediumint(8) UNSIGNED NOT NULL,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(6) NOT NULL DEFAULT 0,
  `unread_messages` smallint(6) NOT NULL DEFAULT 0,
  `new_pm` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `alerts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buddy_list` text NOT NULL,
  `pm_ignore_list` text DEFAULT NULL,
  `pm_prefs` mediumint(9) NOT NULL DEFAULT 0,
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `birthdate` date NOT NULL DEFAULT '1004-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `show_online` tinyint(4) NOT NULL DEFAULT 1,
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varbinary(16) DEFAULT NULL,
  `member_ip2` varbinary(16) DEFAULT NULL,
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_activated` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `total_time_logged_in` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT 0,
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `timezone` varchar(80) NOT NULL DEFAULT '',
  `tfa_secret` varchar(24) NOT NULL DEFAULT '',
  `tfa_backup` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_members`
--

INSERT INTO `l2j_members` (`id_member`, `member_name`, `date_registered`, `posts`, `id_group`, `lngfile`, `last_login`, `real_name`, `instant_messages`, `unread_messages`, `new_pm`, `alerts`, `buddy_list`, `pm_ignore_list`, `pm_prefs`, `mod_prefs`, `passwd`, `email_address`, `personal_text`, `birthdate`, `website_title`, `website_url`, `show_online`, `time_format`, `signature`, `time_offset`, `avatar`, `usertitle`, `member_ip`, `member_ip2`, `secret_question`, `secret_answer`, `id_theme`, `is_activated`, `validation_code`, `id_msg_last_visit`, `additional_groups`, `smiley_set`, `id_post_group`, `total_time_logged_in`, `password_salt`, `ignore_boards`, `warning`, `passwd_flood`, `pm_receive_from`, `timezone`, `tfa_secret`, `tfa_backup`) VALUES
(1, 'Wazah', 1747628622, 12, 1, 'portuguese_brazilian', 1748320227, 'Wazah', 0, 0, 0, 0, '2', '', 0, '', '$2y$10$9qZSRLxRRjHP7RA1jdqLvOzeFPihjV51faDMSc09BWZCOXKK5u87y', 'l2jloren@gmail.com', '', '1004-01-01', 'Lineage II Loren', 'https://lineage2loren.site', 1, '', '[center][img]https://storage.proboards.com/7011511/images/OGHwKqUVaYnQYNSboxNH.png[/img][/center]', 0, '', 'L2JLoren Project', 0xc865bd43, 0xc865bd43, '', '', 2, 1, '', 12, '9', '', 4, 73063, '855eeb43babb5632984b5514cf1ffffb', '', 0, '', 1, '', '', ''),
(2, 'Kai', 1747761028, 0, 9, '', 1748320161, 'Kai', 0, 0, 0, 1, '', '', 0, '', '$2y$13$QHCNF6KYRmMja27ZV/eSYOl3hJW5VK8UfIpT2Tw0mouQusojcUQSy', 'admludwig@gmail.com', '', '1004-01-01', '', '', 1, '', '', 0, '', '', 0xc865bd43, 0xc865bd43, '', '', 4, 1, '', 12, '', '', 4, 3498, '2d8f99fb83d4472f9e8566d9c860c17f', '', 0, '', 1, 'America/Sao_Paulo', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_member_logins`
--

CREATE TABLE `l2j_member_logins` (
  `id_login` int(10) NOT NULL,
  `id_member` mediumint(9) NOT NULL DEFAULT 0,
  `time` int(10) NOT NULL DEFAULT 0,
  `ip` varbinary(16) DEFAULT NULL,
  `ip2` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_member_logins`
--

INSERT INTO `l2j_member_logins` (`id_login`, `id_member`, `time`, `ip`, `ip2`) VALUES
(1, 1, 1747628833, 0xc865bd43, 0xc865bd43),
(2, 2, 1747762704, 0xc865bd43, 0xc865bd43),
(3, 1, 1747784918, 0xc92a5618, 0xc92a5618),
(4, 1, 1747873723, 0xc92a5618, 0xc92a5618),
(5, 2, 1747873766, 0xc92a5618, 0xc92a5618),
(6, 1, 1747874187, 0xc92a5618, 0xc92a5618),
(7, 1, 1747979905, 0x2db99a47, 0x2db99a47),
(8, 1, 1748153722, 0x2db99a47, 0x2db99a47),
(9, 1, 1748239243, 0xc865bd43, 0xc865bd43),
(10, 2, 1748305608, 0xc865bd43, 0xc865bd43);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_mentions`
--

CREATE TABLE `l2j_mentions` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(10) NOT NULL DEFAULT '',
  `id_mentioned` int(11) NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_messages`
--

CREATE TABLE `l2j_messages` (
  `id_msg` int(10) UNSIGNED NOT NULL,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `poster_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_msg_modified` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varbinary(16) DEFAULT NULL,
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT 1,
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `modified_reason` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(4) NOT NULL DEFAULT 1,
  `likes` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_messages`
--

INSERT INTO `l2j_messages` (`id_msg`, `id_topic`, `id_board`, `poster_time`, `id_member`, `id_msg_modified`, `subject`, `poster_name`, `poster_email`, `poster_ip`, `smileys_enabled`, `modified_time`, `modified_name`, `modified_reason`, `body`, `icon`, `approved`, `likes`) VALUES
(2, 2, 69, 1747718814, 1, 2, 'L2JLoren Interlude v0.9.1', 'Wazah', 'l2jloren@gmail.com', 0xc865bd43, 0, 1747720273, 'Wazah', '', '[center][img]http://storage.proboards.com/7011511/images/eNJxkZCwqJDMLGJcpFno.png[/img][/center]<br>[center][size=4]Projeto Base: aCis 409[/size][/center]<br>[center][size=4]Versão Atual Do Projeto: v0.9.1[/size][/center]<br><br>[pre]✅ Adicionado VoiceCommandHandler (funcionando)<br>✅ Adicionado Banking System VoicedCommand (funcionando)<br>✅ Adicionado Dressme System (funcionando)<br>✅ Adicionado Kill Raid Announcement (funcionando)<br>✅ Adicionado Limitador Attack/Casting Speed (funcionando)<br>✅ Adicionado Admin Clan WH Search (funcionando)<br>✅ Adicionado AIO System + item (funcionando) [não pode sair da cidade, usar gatekeeper, fazer subclasse e registrar para olympiad]<br>✅ Adicionado AIO Menu .aiomenu (funcionando &#39;melhorar o menu&#39;)<br>✅ Adicionado Coin Nobles (funcionando)<br>✅ Adicionado Change Gender Coin (funcionando)<br>✅ Adicionado Command Quiet &#39;Para ADM&#39; //quiet (funcionando)<br>✅ Adicionado XP Scroll (funcionando skill type&nbsp; &nbsp;&nbsp; &lt;set name=&quot;skillType&quot; val=&quot;GIVE_EXP&quot; /&gt;)<br>✅ Adicionado Coin Clan Level/Clan Full/ Clan Reputation (funcionando)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>✅ Adicionado Announce Enchant Sucess to all [+10/+16/+20/+25/+30] {configuração ativar/desativar}<br>✅ Adicionado PvP/PK Name Color (funcionando) [adicionar config para ativar/desativar]<br>✅ Adicionado Announce Lord/Hero Login (funcionando)<br>✅ Adicionado Custom Unstuck Time(Funcinando)<br>✅ Adicionado Sell/Drop/Trade Augmented Item (Funcionando &#39;removido opção de drop&#39;)<br>✅ Adicionado Npc Vip (codigo feito com base em gatekeeper vip &#39;Funcionando&#39;)<br>✅ Adicionado Refuse party/trade/message/exp gain in .menu (Funcionando)<br>✅ Adicionado Add Hwid System (para criar proteções por hwid em vez de ip local)<br>✅ Adicionado Comando .menu (funcionando &#39;atualizar o menu&#39;)<br>✅ Adicionado Vip Menu .vipmenu (funcionando &#39;melhorar o menu&#39;)<br>✅ Adicionado Siege Reward (Funcionando &#39;fazer testes online&#39; mas funcionando como esperado)<br>✅ Restaurado Old Enchant System (Funcinando)<br>✅ Adicionado Change Class Coin (Funcionando apenas players level 76+ com terceira job)<br>✅ Adicionado Vip System + Vip Coin (Funcionando &#39;vip Item/DropAdena/Exp/SP OK&#39; &#39;Testar DropRate/DropSpoil/DropBoss&#39;)<br>✅ Adicionado PvP IP farm protection (Funcionando)<br>✅ Adicionado PK Coin/PK Scroll/Rec Coin/Coin Clan Skill (funcionando)<br>✅ Adicionado Killing Spree Mod (Funcionando)<br>✅ Adicionado Last Login Message on enter (Funcionando)<br>✅ Adicionado AIO Gatekeeper (funcionando)<br>✅ Adicionado Daily Reward (Funcionando &#39;testar pegar daily em char ou conta em outro hwid/ip&#39;)<br>✅ Adicionado IconsTable.java (adicionar icons custom a icons.xml[datapack])<br>✅ Adicionado comando fix ao .menu (corrigido local de teleporte .fix)<br>✅ Adicionado custom skill duration (funcionando)<br>✅ Adicionado Rec Coin (adiciona 255 recommend ao player)<br>✅ Adicionado IconsTable.java (adicionar icons custom a icons.xml[datapack])<br>⚠️ Adicionado Solo Pvp Zone (funcionando &quot;precisa adicionar proteção caso player leve disconect ou critical error voltar o nome real do player&quot;)<br>⚠️ Adicionado Champion System (Funcionando &#39;corrigir drop especial champion&#39;)<br>⚠️ Adicionado Adicionado Agathion Mod (precisa arrumar a movimentação dos agathion)<br>⚠️ Adicionado Auction House (Fazer + testes, &#39;corrigir players offline não recebem valor da venda&#39;)<br>❌ Adicionado Change Name Coin (Corrigir não funcionou)<br>❌ Adicionado DualBox Config (Não funcionou)<br>❌ Adicionado BoxReward (Corrigir &#39;não esta usando nem entregado o item&#39;)<br>❌ Adicionado ItemShopHandler (corrigir não funciona)<br>&#128683; Removido Champion Item Reward/Quantity<br>&#128683; Removido Htm/Xml desnecessarias<br>&#128683; Removido Vip drop (Corrigir)<br>&#128683; Removido Level Reward Item (corrigir)[/pre]<br>', 'xx', 1, 0),
(3, 3, 75, 1747761282, 1, 11, 'General Rules', 'Wazah', 'l2jloren@gmail.com', 0xc865bd43, 1, 1747858622, 'Wazah', '', '[center]O L2JLoren não tem o intuito de &quot;competir&quot;, criar &quot;briguinhas&quot; com fóruns sobre MMORPG&#39;s ou que tratam de um conteúdo semelhante ao nosso. O objetivo desse fórum é reunir o maior número de informações sobre L2Java, com conteúdo em Português.<br><br>Divulgação - Reserva-se o direito de publicidade para a administração e membros admitidos pela mesma. É proibido divulgação de fóruns paralelos ao tema principal do nosso fórum(mesmo que seja por avatar, assinatura, mensagem privada, quote, spoiler, imagem ou senha de arquivo) e é expressamente proibido a divulgação ou comercialização de qualquer serviço ou produto no fórum(incluindo venda de servidores e serviços semelhantes).<br><br>Atenção! Permitimos inserir um simples banner ou uma pequena descrição sobre seu servidor(de lineage 2) ou algum site/fórum(sem fins lucrativos) que não aborda o mesmo tema/assunto do L2JLoren! Caso contrário, peça permissão à administração para divulgar aqui.<br><br>Prestação de serviços, suporte externo ou redirecionamentos externos - Usar o fórum para prestar serviços ou suporte externo, sendo ele gratuito ou não, são proibidos. Assim como respostas em tópicos contendo links de redirecionamentos a outro site, e-mail, mensageiro instantâneo ou outra forma de resposta que não seja no tópico em questão. A L2jLoren não se responsabilizará por qualquer dano que você tome por contratar esses serviços. Todas as dúvidas devem ser respondidas no tópico da L2jLoren em que foram criadas.<br><br>Titulo dos Tópicos do tipo &quot;Help&quot;, ou &quot;Poderiam me ajudar aqui&quot;, &quot;É urgente... &quot; , &quot;socooorrrooo&quot; ou quaisquer outros que não expressam o verdadeiro conteúdo do tópico, serão fechados, removidos e o usuário receberá um Alerta. Em caso de reincidência, estará sujeito a punições maiores.<br><br>Tópico em seção/área errada - O Fórum está separado em seções(também chamadas de áreas). Assim, os posts devem respeitar o assunto das seções. E tópicos criados em seções erradas serão movidos e o usuário receberá uma Alerta. Em caso de reincidência, estará sujeito a punições maiores.<br><br>Tópicos repetidos devem ser evitados! Antes de criar um novo tópico, o usuário deve verificar se ele não existe e se a resposta à sua dúvida ou o assunto a ser tratado não se encontra em discussão em outro tópico. Use o sistema de busca disponível no nosso fórum! Tópicos repetidos serão apagados e o usuário receberá um Alerta. Em caso de reincidência, estará sujeito a punições maiores.<br><br>Conteúdo dos Tópicos, é proibido: Qualquer tipo de divulgação de bot, cheater ou &quot;macetes&quot; para se dar bem no jogo, conteúdo pornográfico, imagens ou textos de sexo, nudez ou de caráter racista ou ofensivo.<br><br>Tópicos de Dúvidas e Pedidos - Ao postar seja educado e tente incluir todos os detalhes que possam ser úteis para quem se dispuser a ajudá-lo. Lembre-se que os outros participantes do fórum não o frequentam apenas para responder suas perguntas, mas também para aprender. Tente sempre contribuir com algo. Os participantes mais respeitados e mais queridos são sempre os que ajudam mais.<br><br>Dica de postagem: Evite postar mensagens muito longas que torne a leitura cansativas. Tente usar o bom senso para incluir todas as informações necessárias relacionadas ao seu problema. Faça uso das formatações de texto, como negrito, alteração de cores, utilize CODEBOX ao invés de CODE para postar códigos longos, etc...<br>Qualquer post com formatação que torne a leitura difícil e/ou compreensão fora dos padrões aceitáveis (entenda-se aceitável tudo aquilo que está escrito que possa ser compreendido por todos que venham a ler o post), poderão ser editados sem aviso prévio.<br><br>Não será considerado relacionado à esta regra expressões técnicas, pois as mesmas se faz necessárias nas distintas áreas... mas o bom senso deve prevalecer e as expressões estarem ligadas realmente ao assunto tratado.<br><br>- Fica por livre vontade do Moderador avisar ou não sobre a edição, exclusão, ocultação, efetuada. E caso o usuário tenha sido avisado via PM/MSG e venha a reincidir, poderá ser alertado (WARN), por não contribuir para com a organização do fórum.<br><br>- Ao responder uma mensagem, seja cortês. Jamais menospreze o outro só por que ele sabe menos. Caso ache que a pergunta é muito básica, ache que o autor da pergunta não foi educado ou que a pergunta não tem a ver com o tema, simplesmente não responda nada, guarde seu tempo para responder mensagens onde possa ajudar com algo.<br><br>Flood - Tópicos repetidos serão considerados como flood. Mensagens do tipo &quot;É isso aí...&quot;, &quot;que legal....&quot;, &quot;Muito bom....&quot;, &quot;Vlw em fera&quot; serão considerados flood dependendo da circunstância o usuário poderá receber um simples alerta ou um banimento definitivo. Mais informações sobre a definição de flood, no spoiler abaixo:<br><br>Material externo - Não é proibido postar material de outros fóruns, sites ou de qualquer outro lugar! Mas é obrigatório a publicação dos créditos onde se encontra o material(sendo ele em forma de link para onde se encontra o material ou nome do autor/fórum).<br><br>Administração e Moderação - Eles são responsáveis pela manutenção e organização do fórum. Administradores e Moderadores NÃO SÃO OBRIGADOS – assim como nenhum outro usuário – a responder dúvidas ou questões. Fazem isso se possível.<br><br>Respeito - Todos os membros da nossa comunidade devem ser tratados com respeito, sendo ele integrante da staff ou não. O uso de palavras de baixo calão, difamação ou qualquer outro tipo ou espécie que venha ferir com a moral alheia é motivo para banimento e bloqueio de acesso a nossa comunidade. Entre os comportamentos que não aceitos no site, e devem sempre ser alertados, estão:<br><br>Ataques pessoais. O debate deve sempre girar em torno do post, nunca dos autores. Isso inclui termos que atingem a pessoa, mesmo quando aplicados ao post, como &quot;preguiçoso&quot; ou &quot;ignorante&quot;.<br><br><br>Qualquer tipo de linguagem preconceituosa. Não são toleradas palavras ou expressões que possam ofender ou alienar indivíduos ou grupos, com base em raça, gênero, orientação sexual, religião, etc. Esses são apenas alguns exemplos; na dúvida, melhor não dizer nada.<br><br><br>Linguagem imprópria. Evite usar termos vulgares ou de teor sexual. Esse não é um site de namoro.<br><br><br>Assédio e intimidação. Todas as interações hostis devem ser alertadas para que a moderação tome as devidas providências. Caso a pessoa não pare com os ataques, avise a administração e nós tomaremos as medidas necessárias.<br><br><br>Nicknames - É expressamente proibida a utilização de nicks ofensivos, que contenham palavrão ou qualquer teor discriminatório ou que contenha qualquer tipo de site e-mail ou publicidade não autorizada.<br><br>Avatares e Assinaturas:<br>- Não é permitido o uso de imagens ou textos de sexo, nudez, com teor discriminatório, racistas ou qualquer tipo de ofensa a algum membro ou que venha ferir a moral e a ética.<br>- Não são permitidas propagandas não autorizadas pela administração de sites com conteúdo suspeito.<br>- Não é permitido o uso de Avatares Similares ou idênticos ao de membros da Staff L2JLoren.<br>- O número máximo de linhas usada na assinatura é de 6 linhas.<br>- O tamanho limite das imagens na assinatura é de 600x150. Você pode inserir até duas imagens, mas a somatória dos tamanhos de ambas não podem resultar em um tamanho maior que 600x150pixels.<br>- Não é permitido o uso do tag [shot] na assinatura a nao ser que a imagem respeite a dimensão descrita acima.<br>- Redes Sociais ou Email na assinatura - Não é proibido inserir email na assinatura! Desde que ele não seja para fins lucrativos! Ou seja, inserir email pessoal na assinatura, não aconselhamos, mas é permitido. Inserir email relacionado a empresas de comercialização, que possuem fins lucrativos é proibido.<br><br>Mensagens privadas ou pessoais(mp/pm) - Ela é destinada para conversas fechadas entre 2 usuários, para que não haja nenhum tipo de bate papo em tópicos/posts no fórum. Vale lembrar que é proibido divulgação ou qualquer tipo de comercialização no fórum, como citado acima. Caso isso aconteça, denuncie!<br><br>Reportar, Denunciar - Deve ser utilizado para reportar ações que prejudiquem o fórum, ou seja, desrespeito as regras. Não deve ser utilizado como forma de mensagem privada para membros da equipe L2jLoren!<br><br>Protetor de links e semelhantes - É proibido o uso de qualquer tipo de protetor de link ou semelhantes, seja ele com ou sem fins lucrativos.<br>Pirataria - Crimes Contra Software Art. 12 da Lei 9.609/98<br><br><br>Não é defensável termos tópicos sobre pirataria no Fórum. Isso seria uma conivência oficial do fórum (e por conseqüência do próprio hospedeiro) com a pirataria.<br><br>Instrução oficial do L2jLoren: somos completamente contra a pirataria e defendemos os direitos autorais, segundo as leis brasileiras.<br><br>Todos os tópicos referentes a pirataria, seja de softwares ou filmes, ou qualquer coisa que se relacione a isso, inclusive venda de softwares ou tópicos de ajuda de como baixar o software e seu crack serão removidos e o usuário infrator será BANIDO de nossa comunidade.<br>É impossível que o L2jLoren seja de acordo com esse tipo de prática ilegal, seja por apoio explícito ou implícito.<br>É proibida a venda de servidores da plataforma L2J no nosso fórum, devido ser um programa livre.<br>Palavras Finais<br><br><br><br><br><br>O L2JLoren não se responsabiliza pelo conteúdo postado pelos membros, e reserva-se o direito de apagar ou mover qualquer mensagem que julgue desrespeito as regras descritas acima.<br><br>Todo conteúdo postado no L2JLoren é crédito e responsabilidade do autor mas quando postado em alguma parte do fórum faz parte integrande do conteúdo publico do fórum, dando o direito de que outros membros o recupere-o caso seja deletado pelo autor sem autorização do mesmo, desde que seja mantido os relativos créditos de autoria do conteúdo. Ainda dá o direito à equipe L2jLoren de remover ou ocultar qualquer conteúdo que não seja pertinente à comunidade ou que desrespeite as regras.<br><br><br>Lembre-se que este fórum não é um DIREITO e sim um BENEFÍCIO. Ele é mantido gratuitamente por sua equipe. Não seguir as regras do mesmo significa ser expulso. De maneira bem simples, encare o fórum como um clube da vida real do qual você participa. Se você não seguir as normas, será impedido de frequenta-lo.<br><br><br>De certa forma, nossas regras resumem-se à: UTILIZE O BOM SENSO.<br><br>Anexo:<br>- Determinadas seções de nosso fórum possuem regras regionais (regras específicas para a seção). Fique atento à essas regras também.<br>- Essas regras foram elaboradas inspiradas nas regras dos fóruns conceituados no Brasil e com base na constituição Brasileira em vigor no ano de 2009. - Sendo assim isenta de qualquer ônus ou registro em cartório.<br>- Doravante estas palavras são o TERMO DE USO e as REGRAS DE CONDUTA desse site, todo usuário desse site está sujeito a estas regras tendo conhecimento delas ou não. Tendo em vista que para efetuar um cadastro para este site é necessário estar de acordo com estas regras.<br>- Pensando em manter a transparência do fórum e sua responsabilidade social foi criado o email admludwig@gmail.com como meio de efetuar denúncias referente aos direitos de propriedade intelectual e conteúdo ilegal no fórum.<br>AS REGRAS ESTÃO SUJEITAS A MUDANÇAS SEM AVISO. ENTÃO MANTENHA-SE EM ALERTA NESSE TÓPICO.[/center]<br>', 'xx', 1, 0),
(4, 4, 76, 1747761636, 1, 4, 'Read Before Posting', 'Wazah', 'l2jloren@gmail.com', 0xc865bd43, 1, 0, '', '', 'É [url=&quot;http://l2jforum.lineage2loren.site/index.php/board,76.0.html&quot;]aqui[/url] que você deve reportar um problema relacionado ao Fórum L2JLoren. Basta criar seu tópico.<br><br><br><br>Quando postar?<br><br>- Quando encontrar algum bug no fórum.<br><br>- Se algo no L2jLoren não estiver funcionando corretamente.<br><br>- Se você não estiver conseguindo se cadastrar.<br><br><br><br>Posso postar problemas do meu servidor aqui?<br><br>- Não! Para isso temos a área de [url=&quot;http://l2jforum.lineage2loren.site/index.php/board,8.0.html?i=1&quot;]dúvidas[/url].<br><br><br><br><br><br>Todos conseguem visualizar esta área, inclusive visitantes, mas para que seu tópico fique visível para todos, ele deve ser aprovado por algum moderador. Não se assuste se você criar algum tópico e ele simplesmente não aparecer.<br><br><br><br>Para evitar qualquer constrangimento, leia as regras gerais e termos de uso do fórum: [url=&quot;http://l2jforum.lineage2loren.site/index.php/topic,3.0.html&quot;]Regras Gerais[/url]', 'xx', 1, 0),
(5, 5, 52, 1747764282, 1, 5, 'Clan Warehouse Viewer', 'Wazah', 'l2jloren@gmail.com', 0x2db99a47, 1, 0, '', '', '[center][size=4]Já que o Alt+G não tem como visualizar o WH do Clan<br><br>Admin command //whc, <br><br>Rev: [color=limegreen]Frozen/aCis[/color][/size][/center]<br><br>[center][size=4][url=&quot;https://pastebin.com/5vJRxEuD&quot;]pastebin[/url][/size][/center]<br>', 'xx', 1, 0),
(6, 6, 49, 1747765190, 1, 6, 'Java Mods Rules', 'Wazah', 'l2jloren@gmail.com', 0x2db99a47, 1, 0, '', '', '[center]Regras Java MODs<br>1° Sempre descreva sobre o que você está postando, pois nem todo mundo sabe ler o código que você escreveu.<br><br>2° É preferível postar seu código utilizando a tag SPOILER (Ex: [spoiler] SEU CÓDIGO [/spoiler]). Evite fazer upload dele em sites externos, mas caso ainda prefira assim, dê preferência a sites como pastebin.com.<br><br>3° Se você não é o autor do conteúdo que está postando, por favor, insira os devidos créditos!<br><br>4° Por favor, confirme o funcionamento do seu conteúdo antes de compartilhá-lo. Não queremos que o fórum se torne um depósito de coisas que não funcionam.<br><br>5° Crie apenas 1 tópico por mod. Não crie vários tópicos para postar adaptações de um mesmo mod. Ex: eu tenho o mod Dressme e adaptei ele para vários clients/projetos diferentes, então eu criarei 1 único tópico e postarei todas as adaptações nesse mesmo tópico. <br><br>Exemplo no topico: <br><br>Dressme System para interlude (aCis,Frozen,...)<br>[spoiler]codigo interlude[/spoiler]<br>linkpastbin (se houver)<br><br>Dressme System para h5 (FanDC,L2jScripts,...)<br>[spoiler]codigo h5[/spoiler]<br>linkpastbin (se houver)<br><br>Dressme System para god&nbsp; (Mobius,L2jScripts,...)<br>[spoiler]codigo interlude[/spoiler]<br>linkpastbin (se houver)<br><br>E assim sucessivamente, lembrese de adicionar tambem para qual projeto ele foi adptado.[/center]', 'xx', 1, 0),
(7, 7, 13, 1747767082, 1, 7, 'Source Archives', 'Wazah', 'l2jloren@gmail.com', 0x2db99a47, 1, 0, '', '', '[center][b]Sources de várias crônicas, alguns são projetos bem antigos e outras até um pouco recente.[/b][/center]<br><br><br>[center][color=red][b]C4[/b][/color]:<br><br>[url=&quot;https://yadi.sk/d/R6F1YgM5XzDWG&quot;]Festina [/url]- Criado por TrueMan<br><br>[color=green][b]Interlude[/b][/color]:<br><br>[url=&quot;https://yadi.sk/d/JbMdEIF8XyrLr&quot;]Balancer 6578[/url]<br>[url=&quot;https://yadi.sk/d/949GgfF5XytMb&quot;]Core 3.5[/url]<br>[url=&quot;https://yadi.sk/d/NWkdz_uKXzp8s&quot;]Deadline[/url] - Criado por Execution<br>[url=&quot;https://yadi.sk/d/O-e7MHGJXzpMW&quot;]Dream V3[/url]<br><br>[color=yellow][b]Hellbound[/b][/color]:<br><br>[url=&quot;https://yadi.sk/d/0FnUoahLY2vo7&quot;]Rebellion[/url]<br><br>[color=blue][b]Gracia Final:[/b][/color]<br><br>[url=&quot;https://yadi.sk/d/eUkFpNi_Y3Hex&quot;]Ace[/url]<br>[url=&quot;https://yadi.sk/d/_m9UmGk2XywGP&quot;]Dream 3377[/url]<br>[url=&quot;https://yadi.sk/d/cT8THkxFXywXY&quot;]Open Free[/url]<br>[url=&quot;https://yadi.sk/d/mIRP6x5zY3Hke&quot;]SystemCity[/url]<br><br>[color=navy][b]Gracia Epilogue[/b][/color]<br><br>[url=&quot;https://yadi.sk/d/Q-QcmvKUXyxUx&quot;]DC (4799)[/url]<br>[url=&quot;https://yadi.sk/d/XzmlOzfQXyxuT&quot;]Nextgen[/url]<br>[url=&quot;https://yadi.sk/d/wEmqslkIXyy4f&quot;]Open Free[/url]<br>[url=&quot;https://yadi.sk/d/tzFy0AQTXyyBk&quot;]Phoenix 20715[/url]<br>[url=&quot;https://drive.google.com/uc?id=0B2vp2LDzLDBMZnlfVUVyWkhqdG8&amp;amp;export=download&quot;]Sun-Dev 613 [Epilogue][/url]<br><br>[color=orange][b]Freya[/b]:[/color]<br><br>[url=&quot;https://drive.google.com/uc?id=0B2vp2LDzLDBMWENSZHJYNDRtbVE&amp;amp;export=download&quot;]CCP [Freya][/url]<br>[url=&quot;https://yadi.sk/d/72h7dAZVXz3NY&quot;]Lasteam[/url]<br>[url=&quot;https://yadi.sk/d/SbvChtzYXz3SY&quot;]OpenTeam (Private)[/url]<br>[url=&quot;https://yadi.sk/d/LkFKZsWdXz3Wi&quot;]TheAbyss[/url]<br><br>[color=purple][b]High Five[/b][/color]:<br><br>[url=&quot;https://yadi.sk/d/Qto4qRtKY2wJP&quot;]First Team[/url]<br>[url=&quot;https://yadi.sk/d/nD2Lc23EXz4Ay&quot;]Lasteam[/url]<br>[url=&quot;https://yadi.sk/d/HHZVksrWY2wQR&quot;]MmoCore[/url] - Criado por: JunkyFunky<br>[url=&quot;https://drive.google.com/uc?id=0B2vp2LDzLDBMSVhMSHJfUDdYU1E&amp;amp;export=download&quot;]L2Emu Enterprise [High Five][/url]<br><br>[color=teal][b]GOD[/b][/color]:<br><br>[url=&quot;https://yadi.sk/d/yqV6aa7JXz56C&quot;]Eclipse Dev[/url]<br>[url=&quot;https://yadi.sk/d/49zyb6WMXz5CU&quot;]FT[/url]<br>[url=&quot;https://yadi.sk/d/2wnU83-KXz5Jc&quot;]WT (la2era)[/url]<br>[url=&quot;https://yadi.sk/d/AZW1AchQbQuVQ&quot;]L2NEXT (Lindvior)[/url]<br><br>Creditos pelos links:[url=&quot;https://www.l2jbrasil.com/index.php?/topic/121746-source-archives/&quot;] Leonardo Holanda (Forum L2JBrasil)[/url]<br>[/center]<br><br>', 'xx', 1, 0),
(8, 8, 9, 1747768210, 1, 8, '[Tutorial] Criando Laucher com Update', 'Wazah', 'l2jloren@gmail.com', 0x2db99a47, 1, 0, '', '', '[center][img]http://storage.proboards.com/7011511/images/vqRGjxoeMiQbYqGsBece.png[/img][/center]<br><br>[center][size=4][b]Tutorial para criar seu propio Laucher com Auto Update[/b][/size][/center]<br><br>[center]<br>[size=3][url=&quot;https://www.4shared.com/file/73165181/a709976f/L2Uv202_w_sources_.html&quot;]Laucher Download[/url]<br>[url=&quot;https://www.4shared.com/file/73710188/8d72e0f4/L2Updater.html&quot;]Tutorial Download[/url]<br><br>Créditos: [url=&quot;https://www.l2jbrasil.com/index.php?/topic/194-tutorial-criando-um-launcher-com-update/&quot;]Fabio Alves (L2JBrasil)[/url][/size]<br>[/center]<br>', 'xx', 1, 0),
(9, 9, 54, 1747768657, 1, 9, 'Baners,Imagens,Botões e Fonts', 'Wazah', 'l2jloren@gmail.com', 0x2db99a47, 1, 1747768815, 'Wazah', '', '[center][img]http://storage.proboards.com/7011511/images/vqRGjxoeMiQbYqGsBece.png[/img]<br>[/center]<br><br>[center][b]Alguns Baners,Imagens,Botões e Fonts[/b][/center]<br><br>[center][url=&quot;https://www.mediafire.com/file/ocel18ay7t1gu1h/banners%2Cbotoes%2CImagens%2Cfonts.rar/file&quot;][img]http://storage.proboards.com/7011511/images/eFQDK0lCoNFLNIpqNZzN.png[/img][/url][/center]<br><br><br>[center]Creditos: L2JBrasil e outros que não lembro XD[/center]<br>', 'xx', 1, 0),
(10, 10, 54, 1747769116, 1, 10, 'Imagens para Site e outros', 'Wazah', 'l2jloren@gmail.com', 0x2db99a47, 1, 0, '', '', '[center][img]http://storage.proboards.com/7011511/images/vqRGjxoeMiQbYqGsBece.png[/img][/center]<br><br>[center][b]Imagens GOD, Tauti e [url=https://www.livrariacultura.com.br/p/livros/humor-e-entretenimento/jogos/video-games-e-pc/lineage-ii-847022]imagens do livro[/url]&nbsp; para sites[/b][/center]<br><br>[center][url=&quot;https://www.mediafire.com/file/unsobj7b1hscvkd/Imagens_L2God%2CTauti.rar/file&quot;][img]http://storage.proboards.com/7011511/images/eFQDK0lCoNFLNIpqNZzN.png[/img][/url]<br><br>Creditos: Não Lembro[/center]', 'xx', 1, 0),
(11, 11, 54, 1747769441, 1, 11, 'Icon and Themes para Forum', 'Wazah', 'l2jloren@gmail.com', 0x2db99a47, 1, 0, '', '', '[center][img]http://storage.proboards.com/7011511/images/vqRGjxoeMiQbYqGsBece.png[/img][/center]<br><br><br>[center][b]Alguns Icons e Themes para Foruns[/b][/center]<br><br><br>[center][url=&quot;https://www.mediafire.com/file/qu400933thqehdh/Icons_and_theme_forum.rar/file&quot;][img]http://storage.proboards.com/7011511/images/eFQDK0lCoNFLNIpqNZzN.png[/img][/url][/center]<br><br>[center]Creditos: Não lembro[/center]<br><br>[center][b]Novos Botões L2JLoren Forum [/b][/center]<br>[center][url=&quot;https://www.mediafire.com/file/y4otp277gqt74rz/Icon_Forum_Loren.rar/file&quot;][img]http://storage.proboards.com/7011511/images/eFQDK0lCoNFLNIpqNZzN.png[/img][/url][/center]<br><br>[center]Creditos Botoes: L2JBrasil(Criar) e NoobSupr3mo (Editar)[/center]<br>', 'xx', 1, 0),
(12, 12, 49, 1747858943, 1, 12, 'Jewell Set (Like ArmorSet)', 'Wazah', 'l2jloren@gmail.com', 0x2db99a47, 1, 0, '', '', '[center]É basicamente uma cópia ArmorSet, só que adaptado para as joias.[/center]<br><br>[spoiler=&quot;Code&quot;]<br>aCis_gameserver/java/net/sf/l2j/gameserver/model/itemcontainer/listeners/JewelSetListener.java<br><br>diff --git a/aCis_datapack/data/xml/jewelSets.xml b/aCis_datapack/data/xml/jewelSets.xml<br>new file mode 100644<br>index 00000000..7b3fe941<br>--- /dev/null<br>+++ b/aCis_datapack/data/xml/jewelSets.xml<br>@@ -0,0 +1,10 @@<br>+&lt;?xml version=&#39;1.0&#39; encoding=&#39;utf-8&#39;?&gt;<br>+&lt;list&gt;<br>+&nbsp; &nbsp; &lt;!--rear, lear podem ocupar o mesmo slot, portanto a ordem deles nã́o importa aqui. O mesmo acontece com rfinger e lfinger.--&gt;<br>+&nbsp; &nbsp; &lt;jewelset name=&quot;Tateossian&quot; neck=&quot;920&quot; rear=&quot;858&quot; lear=&quot;858&quot; rfinger=&quot;889&quot; lfinger=&quot;889&quot; skillId=&quot;7041&quot; enchant6Skill=&quot;0&quot;/&gt;<br>+&nbsp; &nbsp; &lt;jewelset name=&quot;Elven&quot; neck=&quot;913&quot; rear=&quot;850&quot; lear=&quot;850&quot; rfinger=&quot;881&quot; lfinger=&quot;881&quot; skillId=&quot;7041&quot; enchant6Skill=&quot;0&quot;/&gt;<br>+&nbsp; &nbsp; &lt;jewelset name=&quot;Protection&quot; neck=&quot;916&quot; rear=&quot;853&quot; lear=&quot;853&quot; rfinger=&quot;884&quot; lfinger=&quot;884&quot; skillId=&quot;7041&quot; enchant6Skill=&quot;0&quot;/&gt;<br>+&nbsp; &nbsp; &lt;jewelset name=&quot;Adamantite&quot; neck=&quot;918&quot; rear=&quot;856&quot; lear=&quot;856&quot; rfinger=&quot;887&quot; lfinger=&quot;887&quot; skillId=&quot;7041&quot; enchant6Skill=&quot;0&quot;/&gt;<br>+&nbsp; &nbsp; &lt;jewelset name=&quot;Mana&quot; neck=&quot;921&quot; rear=&quot;859&quot; lear=&quot;859&quot; rfinger=&quot;117&quot; lfinger=&quot;117&quot; skillId=&quot;7041&quot; enchant6Skill=&quot;0&quot;/&gt;<br>+&nbsp; &nbsp; &lt;jewelset name=&quot;test&quot; neck=&quot;930&quot; rear=&quot;862&quot; lear=&quot;871&quot; rfinger=&quot;902&quot; lfinger=&quot;893&quot; skillId=&quot;7041&quot; enchant6Skill=&quot;0&quot;/&gt;<br>+&lt;/list&gt;<br>diff --git a/aCis_datapack/data/xml/skills/7000-7099.xml b/aCis_datapack/data/xml/skills/7000-7099.xml<br>index 1e7541a0..5aae6aae 100644<br>--- a/aCis_datapack/data/xml/skills/7000-7099.xml<br>+++ b/aCis_datapack/data/xml/skills/7000-7099.xml<br>@@ -217,4 +217,13 @@<br> 		&lt;set name=&quot;skillType&quot; val=&quot;NOTDONE&quot; /&gt;<br> 		&lt;set name=&quot;operateType&quot; val=&quot;PASSIVE&quot; /&gt;<br> 	&lt;/skill&gt;<br>+	&lt;skill id=&quot;7041&quot; levels=&quot;1&quot; name=&quot;Jewelry Kit&quot; &gt;<br>+		&lt;set name=&quot;magicLvl&quot; val=&quot;1&quot;/&gt;<br>+		&lt;set name=&quot;target&quot; val=&quot;SELF&quot;/&gt;<br>+		&lt;set name=&quot;skillType&quot; val=&quot;BUFF&quot;/&gt;<br>+		&lt;set name=&quot;operateType&quot; val=&quot;PASSIVE&quot;/&gt;<br>+		&lt;for&gt;<br>+			&lt;mul stat=&quot;pAtk&quot; val=&quot;2&quot;/&gt;<br>+		&lt;/for&gt;<br>+	&lt;/skill&gt;<br> &lt;/list&gt;<br>\\ No newline at end of file<br>diff --git a/aCis_gameserver/java/net/sf/l2j/gameserver/GameServer.java b/aCis_gameserver/java/net/sf/l2j/gameserver/GameServer.java<br>index bf24b43b..8f06f5c7 100644<br>--- a/aCis_gameserver/java/net/sf/l2j/gameserver/GameServer.java<br>+++ b/aCis_gameserver/java/net/sf/l2j/gameserver/GameServer.java<br>@@ -54,6 +54,7 @@ import net.sf.l2j.gameserver.data.xml.HealSpsData;<br> import net.sf.l2j.gameserver.data.xml.HennaData;<br> import net.sf.l2j.gameserver.data.xml.InstantTeleportData;<br> import net.sf.l2j.gameserver.data.xml.ItemData;<br>+import net.sf.l2j.gameserver.data.xml.JewelSetData;<br> import net.sf.l2j.gameserver.data.xml.ManorAreaData;<br> import net.sf.l2j.gameserver.data.xml.MultisellData;<br> import net.sf.l2j.gameserver.data.xml.NewbieBuffData;<br>@@ -163,6 +164,7 @@ public class GameServer<br> 		MultisellData.getInstance();<br> 		RecipeData.getInstance();<br> 		ArmorSetData.getInstance();<br>+		JewelSetData.getInstance();<br> 		FishData.getInstance();<br> 		SpellbookData.getInstance();<br> 		SoulCrystalData.getInstance();<br>diff --git a/aCis_gameserver/java/net/sf/l2j/gameserver/data/xml/JewelSetData.java b/aCis_gameserver/java/net/sf/l2j/gameserver/data/xml/JewelSetData.java<br>new file mode 100644<br>index 00000000..0aa3de29<br>--- /dev/null<br>+++ b/aCis_gameserver/java/net/sf/l2j/gameserver/data/xml/JewelSetData.java<br>@@ -0,0 +1,71 @@<br>+package net.sf.l2j.gameserver.data.xml;<br>+<br>+import java.nio.file.Path;<br>+import java.util.Collection;<br>+import java.util.HashMap;<br>+import java.util.Map;<br>+<br>+import net.sf.l2j.commons.data.StatSet;<br>+import net.sf.l2j.commons.data.xml.IXmlReader;<br>+<br>+import net.sf.l2j.gameserver.model.item.ArmorSet;<br>+import net.sf.l2j.gameserver.model.item.JewelSet;<br>+<br>+import org.w3c.dom.Document;<br>+<br>+/**<br>+ * This class loads and stores {@link ArmorSet}s, the key being the chest item id.<br>+ */<br>+public class JewelSetData implements IXmlReader<br>+{<br>+	private final Map&lt;Integer, JewelSet&gt; _jewelsSets = new HashMap&lt;&gt;();<br>+	<br>+	protected JewelSetData()<br>+	{<br>+		load();<br>+	}<br>+	<br>+	public void reload()<br>+	{<br>+		_jewelsSets.clear();<br>+	<br>+		load();<br>+	}<br>+	<br>+	@Override<br>+	public void load()<br>+	{<br>+		parseFile(&quot;./data/xml/jewelSets.xml&quot;);<br>+		LOGGER.info(&quot;Loaded {} jewel sets.&quot;, _jewelsSets.size());<br>+	}<br>+	<br>+	@Override<br>+	public void parseDocument(Document doc, Path path)<br>+	{<br>+		forEach(doc, &quot;list&quot;, listNode -&gt; forEach(listNode, &quot;jewelset&quot;, armorsetNode -&gt;<br>+		{<br>+			final StatSet set = parseAttributes(armorsetNode);<br>+			_jewelsSets.put(set.getInteger(&quot;neck&quot;), new JewelSet(set));<br>+		}));<br>+	}<br>+	<br>+	public JewelSet getSet(int chestId)<br>+	{<br>+		return _jewelsSets.get(chestId);<br>+	}<br>+	<br>+	public Collection&lt;JewelSet&gt; getSets()<br>+	{<br>+		return _jewelsSets.values();<br>+	}<br>+	<br>+	public static JewelSetData getInstance()<br>+	{<br>+		return SingletonHolder.INSTANCE;<br>+	}<br>+	<br>+	private static class SingletonHolder<br>+	{<br>+		protected static final JewelSetData INSTANCE = new JewelSetData();<br>+	}<br>+}<br>\\ No newline at end of file<br>diff --git a/aCis_gameserver/java/net/sf/l2j/gameserver/handler/admincommandhandlers/AdminReload.java b/aCis_gameserver/java/net/sf/l2j/gameserver/handler/admincommandhandlers/AdminReload.java<br>index 795df291..47024d96 100644<br>--- a/aCis_gameserver/java/net/sf/l2j/gameserver/handler/admincommandhandlers/AdminReload.java<br>+++ b/aCis_gameserver/java/net/sf/l2j/gameserver/handler/admincommandhandlers/AdminReload.java<br>@@ -15,6 +15,7 @@ import net.sf.l2j.gameserver.data.xml.BoatData;<br> import net.sf.l2j.gameserver.data.xml.DoorData;<br> import net.sf.l2j.gameserver.data.xml.InstantTeleportData;<br> import net.sf.l2j.gameserver.data.xml.ItemData;<br>+import net.sf.l2j.gameserver.data.xml.JewelSetData;<br> import net.sf.l2j.gameserver.data.xml.MultisellData;<br> import net.sf.l2j.gameserver.data.xml.NpcData;<br> import net.sf.l2j.gameserver.data.xml.ScriptData;<br>@@ -128,6 +129,11 @@ public class AdminReload implements IAdminCommandHandler<br> 					ZoneManager.getInstance().reload();<br> 					player.sendMessage(&quot;Zones have been reloaded.&quot;);<br> 				}<br>+				else if (type.startsWith(&quot;jewelset&quot;))<br>+				{<br>+					JewelSetData.getInstance().reload();<br>+					player.sendMessage(&quot;JewelSetData have been reloaded.&quot;);<br>+				}<br> 				else<br> 					sendUsage(player);<br> 			}<br>diff --git a/aCis_gameserver/java/net/sf/l2j/gameserver/model/item/JewelSet.java b/aCis_gameserver/java/net/sf/l2j/gameserver/model/item/JewelSet.java<br>new file mode 100644<br>index 00000000..d431d6d8<br>--- /dev/null<br>+++ b/aCis_gameserver/java/net/sf/l2j/gameserver/model/item/JewelSet.java<br>@@ -0,0 +1,162 @@<br>+package net.sf.l2j.gameserver.model.item;<br>+<br>+import net.sf.l2j.commons.data.StatSet;<br>+<br>+import net.sf.l2j.gameserver.enums.Paperdoll;<br>+import net.sf.l2j.gameserver.model.actor.Player;<br>+import net.sf.l2j.gameserver.model.item.instance.ItemInstance;<br>+<br>+public final class JewelSet<br>+{<br>+	private final String _name;<br>+	<br>+	private final int&#91;] _set = new int[5];<br>+	<br>+	private final int _skillId;<br>+	private final int _enchant6Skill;<br>+	<br>+	public JewelSet(StatSet set)<br>+	{<br>+		_name = set.getString(&quot;name&quot;);<br>+		<br>+		_set[0] = set.getInteger(&quot;neck&quot;);<br>+		_set[1] = set.getInteger(&quot;rear&quot;);<br>+		_set[2] = set.getInteger(&quot;lear&quot;);<br>+		_set[3] = set.getInteger(&quot;rfinger&quot;);<br>+		_set[4] = set.getInteger(&quot;lfinger&quot;);<br>+		<br>+		_skillId = set.getInteger(&quot;skillId&quot;);<br>+		_enchant6Skill = set.getInteger(&quot;enchant6Skill&quot;);<br>+	}<br>+	<br>+	@Override<br>+	public String toString()<br>+	{<br>+		return _name;<br>+	}<br>+	<br>+	public int&#91;] getSetItemsId()<br>+	{<br>+		return _set;<br>+	}<br>+	<br>+	public int getSkillId()<br>+	{<br>+		return _skillId;<br>+	}<br>+	<br>+	public int getEnchant6skillId()<br>+	{<br>+		return _enchant6Skill;<br>+	}<br>+	<br>+	/**<br>+	 * @param player : The {@link Player} to test.<br>+	 * @return True if the {@link Player} equipped the basic {@link ArmorSet} (without shield).<br>+	 */<br>+	public boolean containsAll(Player player)<br>+	{<br>+		int lear = 0;<br>+		final ItemInstance learItem = player.getInventory().getItemFrom(Paperdoll.LEAR);<br>+		if (learItem != null)<br>+			lear = learItem.getItemId();<br>+		<br>+		if (_set[1] != 0 &amp;&amp; _set[1] != lear &amp;&amp; _set[2] != lear)<br>+			return false;<br>+		<br>+		int rear = 0;<br>+		final ItemInstance rearItem = player.getInventory().getItemFrom(Paperdoll.REAR);<br>+		if (rearItem != null)<br>+			rear = rearItem.getItemId();<br>+		<br>+		if (_set[2] != 0 &amp;&amp; _set[2] != rear &amp;&amp; _set[1] != rear)<br>+			return false;<br>+		<br>+		int lFinger = 0;<br>+		final ItemInstance lFingerItem = player.getInventory().getItemFrom(Paperdoll.LFINGER);<br>+		if (lFingerItem != null)<br>+			lFinger = lFingerItem.getItemId();<br>+<br>+		if (_set[3] != 0 &amp;&amp; _set[3] != lFinger &amp;&amp; _set[4] != lFinger)<br>+			return false;<br>+		<br>+		int rFinger = 0;<br>+		final ItemInstance rFingerItem = player.getInventory().getItemFrom(Paperdoll.RFINGER);<br>+		if (rFingerItem != null)<br>+			rFinger = rFingerItem.getItemId();<br>+		<br>+		if (_set[4] != 0 &amp;&amp; _set[4] != rFinger &amp;&amp; _set[3] != rFinger)<br>+			return false;<br>+<br>+		return true;<br>+	}<br>+	<br>+	public boolean containsItem(Paperdoll slot, int itemId)<br>+	{<br>+		switch (slot)<br>+		{<br>+			case NECK:<br>+				return _set[0] == itemId;<br>+			<br>+			case REAR:<br>+				return _set[1] == itemId || _set[2] == itemId;<br>+			<br>+			case LEAR:<br>+				return _set[2] == itemId || _set[1] == itemId;<br>+			<br>+			case RFINGER:<br>+				return _set[3] == itemId || _set[4] == itemId;<br>+			<br>+			case LFINGER:<br>+				return _set[4] == itemId || _set[3] == itemId;<br>+			<br>+			default:<br>+				return false;<br>+		}<br>+	}<br>+<br>+	/**<br>+	 * @param player : The {@link Player} to test.<br>+	 * @return True if all parts of this {@link ArmorSet} are enchanted to +6 or more.<br>+	 */<br>+	public boolean isEnchanted6(Player player)<br>+	{<br>+		final ItemInstance neckItem = player.getInventory().getItemFrom(Paperdoll.NECK);<br>+		if (neckItem.getEnchantLevel() &lt; 6)<br>+			return false;<br>+		<br>+		int earring1 = 0;<br>+		final ItemInstance earringItem1 = player.getInventory().getItemFrom(Paperdoll.REAR);<br>+		if (earringItem1 != null &amp;&amp; earringItem1.getEnchantLevel() &gt; 5)<br>+			earring1 = earringItem1.getItemId();<br>+		<br>+		int earring2 = 0;<br>+		final ItemInstance earringItem2 = player.getInventory().getItemFrom(Paperdoll.LEAR);<br>+		if (earringItem2 != null &amp;&amp; earringItem2.getEnchantLevel() &gt; 5)<br>+			earring2 = earringItem2.getItemId();<br>+		<br>+		if (_set[1] != 0 &amp;&amp; _set[1] != earring1 &amp;&amp; earringItem2 == null)<br>+			return false;<br>+		<br>+		if (_set[2] != 0 &amp;&amp; _set[2] != earring2 &amp;&amp; earringItem1 == null)<br>+			return false;<br>+		<br>+		int ring1 = 0;<br>+		final ItemInstance ringItem1 = player.getInventory().getItemFrom(Paperdoll.RFINGER);<br>+		if (ringItem1 != null &amp;&amp; ringItem1.getEnchantLevel() &gt; 5)<br>+			ring1 = ringItem1.getItemId();<br>+		<br>+		int ring2 = 0;<br>+		final ItemInstance ringItem2 = player.getInventory().getItemFrom(Paperdoll.LFINGER);<br>+		if (ringItem2 != null &amp;&amp; ringItem2.getEnchantLevel() &gt; 5)<br>+			ring2 = ringItem2.getItemId();<br>+		<br>+		if (_set[3] != 0 &amp;&amp; _set[3] != ring1 &amp;&amp; ringItem2 == null)<br>+			return false;<br>+		<br>+		if (_set[4] != 0 &amp;&amp; _set[4] != ring2 &amp;&amp; ringItem1 == null)<br>+			return false;<br>+		<br>+		return true;<br>+	}<br>+}<br>diff --git a/aCis_gameserver/java/net/sf/l2j/gameserver/model/itemcontainer/PcInventory.java b/aCis_gameserver/java/net/sf/l2j/gameserver/model/itemcontainer/PcInventory.java<br>index 0910d4a0..71191f00 100644<br>--- a/aCis_gameserver/java/net/sf/l2j/gameserver/model/itemcontainer/PcInventory.java<br>+++ b/aCis_gameserver/java/net/sf/l2j/gameserver/model/itemcontainer/PcInventory.java<br>@@ -19,6 +19,7 @@ import net.sf.l2j.gameserver.model.item.kind.Item;<br> import net.sf.l2j.gameserver.model.itemcontainer.listeners.ArmorSetListener;<br> import net.sf.l2j.gameserver.model.itemcontainer.listeners.BowRodListener;<br> import net.sf.l2j.gameserver.model.itemcontainer.listeners.ItemPassiveSkillsListener;<br>+import net.sf.l2j.gameserver.model.itemcontainer.listeners.JewelSetListener;<br> import net.sf.l2j.gameserver.model.itemcontainer.listeners.OnEquipListener;<br> import net.sf.l2j.gameserver.model.trade.BuyProcessItem;<br> import net.sf.l2j.gameserver.model.trade.SellProcessItem;<br>@@ -40,6 +41,7 @@ public class PcInventory extends Inventory<br> 		super(owner);<br> 		<br> 		addPaperdollListener(ArmorSetListener.getInstance());<br>+		addPaperdollListener(JewelSetListener.getInstance());<br> 		addPaperdollListener(BowRodListener.getInstance());<br> 		addPaperdollListener(ItemPassiveSkillsListener.getInstance());<br> 		addPaperdollListener(ShadowItemTaskManager.getInstance());<br>diff --git a/aCis_gameserver/java/net/sf/l2j/gameserver/model/itemcontainer/listeners/JewelSetListener.java b/aCis_gameserver/java/net/sf/l2j/gameserver/model/itemcontainer/listeners/JewelSetListener.java<br>new file mode 100644<br>index 00000000..213025ec<br>--- /dev/null<br>+++ b/aCis_gameserver/java/net/sf/l2j/gameserver/model/itemcontainer/listeners/JewelSetListener.java<br>@@ -0,0 +1,131 @@<br>+package net.sf.l2j.gameserver.model.itemcontainer.listeners;<br>+<br>+import net.sf.l2j.gameserver.data.SkillTable;<br>+import net.sf.l2j.gameserver.data.xml.JewelSetData;<br>+import net.sf.l2j.gameserver.enums.Paperdoll;<br>+import net.sf.l2j.gameserver.model.actor.Playable;<br>+import net.sf.l2j.gameserver.model.actor.Player;<br>+import net.sf.l2j.gameserver.model.item.JewelSet;<br>+import net.sf.l2j.gameserver.model.item.instance.ItemInstance;<br>+import net.sf.l2j.gameserver.network.serverpackets.SkillList;<br>+import net.sf.l2j.gameserver.skills.L2Skill;<br>+<br>+public class JewelSetListener implements OnEquipListener<br>+{<br>+	private static JewelSetListener instance = new JewelSetListener();<br>+	<br>+	public static JewelSetListener getInstance()<br>+	{<br>+		return instance;<br>+	}<br>+	<br>+	@Override<br>+	public void onEquip(Paperdoll slot, ItemInstance item, Playable actor)<br>+	{<br>+		if (!item.isEquipable() || !item.isArmor())<br>+			return;<br>+		<br>+		if (item.getItem().getBodyPart() &gt; 0x0030)<br>+			return;<br>+		<br>+		final Player player = (Player) actor;<br>+		<br>+		// Check if the Player is wearing a chest item.<br>+		final int neckId = player.getInventory().getItemIdFrom(Paperdoll.NECK);<br>+		if (neckId == 0)<br>+			return;<br>+		<br>+		// Check if this chest is part of an ArmorSet.<br>+		final JewelSet jewelSet = JewelSetData.getInstance().getSet(neckId);<br>+		if (jewelSet == null)<br>+			return;<br>+		<br>+		// Verificação movida para antes<br>+		if (!jewelSet.containsAll(player))<br>+			return;<br>+		<br>+		// Check if equipped item is part of the ArmorSet.<br>+		// Essa verificação é somente de partes do set<br>+		if (jewelSet.containsItem(slot, item.getItemId()))<br>+		{<br>+			L2Skill skill = SkillTable.getInstance().getInfo(jewelSet.getSkillId(), 1);<br>+			if (skill != null)<br>+			{<br>+				player.addSkill(skill, false);<br>+				player.sendPacket(new SkillList(player));<br>+			}<br>+			<br>+			if (jewelSet.isEnchanted6(player)) // has all parts of set enchanted to 6 or more<br>+			{<br>+				int skillId = jewelSet.getEnchant6skillId();<br>+				if (skillId &gt; 0)<br>+				{<br>+					L2Skill skille = SkillTable.getInstance().getInfo(skillId, 1);<br>+					if (skille != null)<br>+					{<br>+						player.addSkill(skille, false);<br>+						player.sendPacket(new SkillList(player));<br>+					}<br>+				}<br>+			}<br>+		}<br>+	}<br>+	<br>+	@Override<br>+	public void onUnequip(Paperdoll slot, ItemInstance item, Playable actor)<br>+	{	<br>+		if (!item.isEquipable() || !item.isArmor())<br>+			return;<br>+		<br>+		if (item.getItem().getBodyPart() &gt; 0x0030)<br>+			return;<br>+		<br>+		final Player player = (Player) actor;<br>+		<br>+		boolean remove = false;<br>+		int removeSkillId1 = 0; // set skill<br>+		int removeSkillId2 = 0; // enchant +6 skill<br>+		<br>+		if (slot == Paperdoll.NECK)<br>+		{<br>+			final JewelSet jewelSet = JewelSetData.getInstance().getSet(item.getItemId());<br>+			if (jewelSet == null)<br>+				return;<br>+			<br>+			remove = true;<br>+			removeSkillId1 = jewelSet.getSkillId();<br>+			removeSkillId2 = jewelSet.getEnchant6skillId();<br>+		}<br>+		else<br>+		{<br>+			// Check if the Player is wearing a chest item.<br>+			final int neckId = player.getInventory().getItemIdFrom(Paperdoll.NECK);<br>+			if (neckId == 0)<br>+				return;<br>+			<br>+			// Check if this chest is part of an ArmorSet.<br>+			final JewelSet jewelSet = JewelSetData.getInstance().getSet(neckId);<br>+			if (jewelSet == null)<br>+				return;<br>+			<br>+			// Check if equipped item is part of the ArmorSet.<br>+			if (jewelSet.containsItem(slot, item.getItemId())) // removed part of set<br>+			{<br>+				remove = true;<br>+				removeSkillId1 = jewelSet.getSkillId();<br>+				removeSkillId2 = jewelSet.getEnchant6skillId();<br>+			}<br>+		}<br>+		<br>+		if (remove)<br>+		{<br>+			if (removeSkillId1 != 0)<br>+				player.removeSkill(removeSkillId1, false);<br>+			<br>+			if (removeSkillId2 != 0)<br>+				player.removeSkill(removeSkillId2, false);<br>+			<br>+			player.sendPacket(new SkillList(player));<br>+		}<br>+	}<br>+}<br>-- <br>2.49.0<br><br>[/spoiler]<br><br>[center]creditos: [url=&quot;https://www.l2jbrasil.com/topic/149098-jewelset-buff-para-kit-de-joias/&quot;]ColdPlay (L2JBrasil)[/url][/center]', 'xx', 1, 0),
(13, 13, 49, 1748218231, 1, 13, 'Killing Spree', 'Wazah', 'l2jloren@gmail.com', 0x2db99a47, 1, 1748219095, 'Wazah', '', 'Killing Spree Mod (Anuncia PvP/Pk conforme configurado em config.properties)<br><br>[spoiler=Code]<br>[spoiler=config.properties]<br>aCis_gameserver\\config\\custom\\config.properties<br>===============================================<br>+#Killing Spree Annoucement<br>+AnnounsPvp = true<br>+PvpAmounts = 3;5;10;25;50;75;100<br><br>+#Killing Spree Annoucement<br>+AnnounsPk = true<br>+Pk = 3;5;10;25;50;75;100[/spoiler]<br><br>[spoiler=config.java]<br>aCis_gameserver\\java\\net\\sf\\l2j\\Config.java<br>===========================================<br><br>+&nbsp; &nbsp; /** Killing Spree announcement&nbsp; */<br>+&nbsp; public static boolean ANNOUNS_PVP;<br>+&nbsp; public static List&lt;Integer&gt; ANNOUNS_PVP_AMOUNTS = new ArrayList&lt;&gt;();<br>+&nbsp; public static boolean ANNOUNS_PK;<br>+&nbsp; public static List&lt;Integer&gt; ANNOUNS_PK_AMOUNTS = new ArrayList&lt;&gt;();&nbsp; &nbsp; /** Coins Especiais&nbsp; */<br><br><br>+&nbsp; &nbsp; &nbsp; &nbsp; ANNOUNS_PVP = config.getProperty(&quot;AnnounsPvp&quot;, true);<br>+&nbsp; &nbsp; &nbsp; &nbsp; { String&#91;] propertySplit = config.getProperty(&quot;PvpAmounts&quot;, &quot;&quot;).split(&quot;;&quot;);<br>+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (propertySplit.length != 0)<br>+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for (String i : propertySplit)<br>+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ANNOUNS_PVP_AMOUNTS.add(Integer.parseInt(i));}<br>+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ANNOUNS_PK = config.getProperty(&quot;AnnounsPk&quot;, true);<br>+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { String&#91;] propertySplit = config.getProperty(&quot;PkAmounts&quot;, &quot;&quot;).split(&quot;;&quot;);<br>+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (propertySplit.length != 0)<br>+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for (String i : propertySplit)<br>+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ANNOUNS_PK_AMOUNTS.add(Integer.parseInt(i));}<br><br>[/spoiler]<br><br>[spoiler=&quot;Player.java&quot;]<br>aCis_gameserver\\java\\net\\sf\\l2j\\gameserver\\model\\actor\\Player.java<br>==================================================================<br><br>+	private int _pvpKillsAnnoun;	<br>+	private int _pkKillsAnnoun;	<br><br>+	&nbsp;  public void setPvpKillsAnnoun(int pvpKillsAnnoun)<br>+	&nbsp;  {<br>+	&nbsp; &nbsp; &nbsp;  _pvpKillsAnnoun = pvpKillsAnnoun;<br>+	&nbsp;  }	<br>+		 public int getPkKillsAnnoun()<br>+		&nbsp;  {<br>+		&nbsp; &nbsp; &nbsp;  return _pkKillsAnnoun;<br>+		&nbsp;  }<br>+		&nbsp;  <br>+		&nbsp;  public void setPkKillsAnnoun(int pkKillsAnnoun)<br>+		&nbsp;  {<br>+		&nbsp; &nbsp; &nbsp;  _pkKillsAnnoun = pkKillsAnnoun;<br>+		&nbsp;  }	<br><br><br><br>		if (killer != null)<br>		{<br>			final Player pk = killer.getActingPlayer();<br>			<br>			// Clear resurrect xp calculation<br>			setExpBeforeDeath(0);<br>			<br><br>+	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  setPvpKillsAnnoun(0);<br>+	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  setPkKillsAnnoun(0);	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <br><br><br>			// Add PvP point to attacker.<br>				setPvpKills(getPvpKills() + 1);<br>-				 updatePvp(this);<br>+	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  if (Config.ANNOUNS_PVP)<br>+	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  {<br>+	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  setPvpKillsAnnoun(getPvpKillsAnnoun() + 1);<br>+	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  if (Config.ANNOUNS_PVP_AMOUNTS.contains(getPvpKillsAnnoun()))<br>+	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  {<br>+	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 	&nbsp; &nbsp; &nbsp; World.gameAnnounceToOnlinePlayers(&quot;PVP: &quot; + getName() + &quot; Killed consecutive &quot; + getPvpKillsAnnoun() + &quot; Adversary&#39;s &quot;);<br>+	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  }<br>+				 updatePvp(this);<br><br><br><br>	// PK Points are increased only if you kill a player.<br>			if (target instanceof Player)<br>				setPkKills(getPkKills() + 1);<br>-			 updatePk(this);				<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (Config.ANNOUNS_PK)<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; setPkKillsAnnoun(getPkKillsAnnoun() + 1);<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (Config.ANNOUNS_PK_AMOUNTS.contains(getPkKillsAnnoun()))<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 	World.gameAnnounceToOnlinePlayers(&quot;PK: &quot; + getName() + &quot; Killed consecutive &quot; + getPkKillsAnnoun() + &quot; Players &quot;);<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; updatePk(this);			<br><br>[/spoiler]<br>[/spoiler]<br>', 'xx', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_message_icons`
--

CREATE TABLE `l2j_message_icons` (
  `id_icon` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `icon_order` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_message_icons`
--

INSERT INTO `l2j_message_icons` (`id_icon`, `title`, `filename`, `id_board`, `icon_order`) VALUES
(1, 'Standard', 'xx', 0, 0),
(2, 'Thumb Up', 'thumbup', 0, 1),
(3, 'Thumb Down', 'thumbdown', 0, 2),
(4, 'Exclamation point', 'exclamation', 0, 3),
(5, 'Question mark', 'question', 0, 4),
(6, 'Lamp', 'lamp', 0, 5),
(7, 'Smiley', 'smiley', 0, 6),
(8, 'Angry', 'angry', 0, 7),
(9, 'Cheesy', 'cheesy', 0, 8),
(10, 'Grin', 'grin', 0, 9),
(11, 'Sad', 'sad', 0, 10),
(12, 'Wink', 'wink', 0, 11),
(13, 'Poll', 'poll', 0, 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_moderators`
--

CREATE TABLE `l2j_moderators` (
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_moderator_groups`
--

CREATE TABLE `l2j_moderator_groups` (
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_package_servers`
--

CREATE TABLE `l2j_package_servers` (
  `id_server` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `validation_url` varchar(255) NOT NULL DEFAULT '',
  `extra` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_package_servers`
--

INSERT INTO `l2j_package_servers` (`id_server`, `name`, `url`, `validation_url`, `extra`) VALUES
(1, 'Simple Machines Third-party Mod Site', 'https://custom.simplemachines.org/packages/mods', 'https://custom.simplemachines.org/api.php?action=validate;version=v1;smf_version={SMF_VERSION}', NULL),
(2, 'Simple Machines Downloads Site', 'https://download.simplemachines.org/browse.php?api=v1;smf_version={SMF_VERSION}', 'https://download.simplemachines.org/validate.php?api=v1;smf_version={SMF_VERSION}', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_permissions`
--

CREATE TABLE `l2j_permissions` (
  `id_group` smallint(6) NOT NULL DEFAULT 0,
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_permissions`
--

INSERT INTO `l2j_permissions` (`id_group`, `permission`, `add_deny`) VALUES
(-1, 'calendar_view', 1),
(-1, 'search_posts', 1),
(-1, 'view_stats', 1),
(0, 'calendar_view', 1),
(0, 'likes_like', 1),
(0, 'mention', 1),
(0, 'pm_draft', 1),
(0, 'pm_read', 1),
(0, 'pm_send', 1),
(0, 'postprefix_set', 1),
(0, 'profile_blurb_own', 1),
(0, 'profile_extra_own', 1),
(0, 'profile_forum_own', 1),
(0, 'profile_identity_own', 1),
(0, 'profile_password_own', 1),
(0, 'profile_remote_avatar', 1),
(0, 'profile_remove_own', 1),
(0, 'profile_server_avatar', 1),
(0, 'profile_signature_own', 1),
(0, 'profile_upload_avatar', 1),
(0, 'profile_view', 1),
(0, 'profile_website_own', 1),
(0, 'report_user', 1),
(0, 'search_posts', 1),
(0, 'teampage_canAccess', 1),
(0, 'view_mlist', 1),
(0, 'view_stats', 1),
(0, 'view_warning_own', 1),
(0, 'who_view', 1),
(2, 'access_mod_center', 1),
(2, 'calendar_edit_any', 1),
(2, 'calendar_post', 1),
(2, 'calendar_view', 1),
(2, 'likes_like', 1),
(2, 'mention', 1),
(2, 'pm_draft', 1),
(2, 'pm_read', 1),
(2, 'pm_send', 1),
(2, 'postprefix_set', 1),
(2, 'profile_blurb_own', 1),
(2, 'profile_displayed_name_own', 1),
(2, 'profile_extra_own', 1),
(2, 'profile_forum_own', 1),
(2, 'profile_identity_own', 1),
(2, 'profile_password_own', 1),
(2, 'profile_remote_avatar', 1),
(2, 'profile_remove_own', 1),
(2, 'profile_server_avatar', 1),
(2, 'profile_signature_own', 1),
(2, 'profile_title_own', 1),
(2, 'profile_upload_avatar', 1),
(2, 'profile_view', 1),
(2, 'profile_website_own', 1),
(2, 'search_posts', 1),
(2, 'send_email_to_members', 1),
(2, 'teampage_canAccess', 1),
(2, 'view_mlist', 1),
(2, 'view_stats', 1),
(2, 'who_view', 1),
(9, 'calendar_view', 1),
(9, 'likes_like', 1),
(9, 'mention', 1),
(9, 'pm_draft', 1),
(9, 'pm_read', 1),
(9, 'pm_send', 1),
(9, 'postprefix_set', 1),
(9, 'profile_blurb_own', 1),
(9, 'profile_extra_own', 1),
(9, 'profile_forum_own', 1),
(9, 'profile_identity_own', 1),
(9, 'profile_password_own', 1),
(9, 'profile_remote_avatar', 1),
(9, 'profile_remove_own', 1),
(9, 'profile_server_avatar', 1),
(9, 'profile_signature_own', 1),
(9, 'profile_upload_avatar', 1),
(9, 'profile_view', 1),
(9, 'profile_website_own', 1),
(9, 'report_user', 1),
(9, 'search_posts', 1),
(9, 'teampage_canAccess', 1),
(9, 'view_mlist', 1),
(9, 'view_stats', 1),
(9, 'view_warning_own', 1),
(9, 'who_view', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_permission_profiles`
--

CREATE TABLE `l2j_permission_profiles` (
  `id_profile` smallint(6) NOT NULL,
  `profile_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_permission_profiles`
--

INSERT INTO `l2j_permission_profiles` (`id_profile`, `profile_name`) VALUES
(1, 'default'),
(2, 'no_polls'),
(3, 'reply_only'),
(4, 'read_only');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_personal_messages`
--

CREATE TABLE `l2j_personal_messages` (
  `id_pm` int(10) UNSIGNED NOT NULL,
  `id_pm_head` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `deleted_by_sender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_pm_labeled_messages`
--

CREATE TABLE `l2j_pm_labeled_messages` (
  `id_label` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_pm` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_pm_labels`
--

CREATE TABLE `l2j_pm_labels` (
  `id_label` int(10) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_pm_recipients`
--

CREATE TABLE `l2j_pm_recipients` (
  `id_pm` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `bcc` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_read` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_new` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `in_inbox` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_pm_rules`
--

CREATE TABLE `l2j_pm_rules` (
  `id_rule` int(10) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_or` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_polls`
--

CREATE TABLE `l2j_polls` (
  `id_poll` mediumint(8) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(4) NOT NULL DEFAULT 0,
  `max_votes` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hide_results` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `change_vote` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `guest_vote` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `num_guest_voters` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reset_poll` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `poster_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_poll_choices`
--

CREATE TABLE `l2j_poll_choices` (
  `id_poll` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_choice` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_postprefixes`
--

CREATE TABLE `l2j_postprefixes` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `color` varchar(255) DEFAULT NULL,
  `bgcolor` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `invert_color` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `icon_class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_postprefixes`
--

INSERT INTO `l2j_postprefixes` (`id`, `name`, `status`, `color`, `bgcolor`, `invert_color`, `icon_class`) VALUES
(1, 'Interlude', 1, '#13eb21', 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_postprefixes_boards`
--

CREATE TABLE `l2j_postprefixes_boards` (
  `id_prefix` smallint(5) UNSIGNED NOT NULL,
  `id_board` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_postprefixes_boards`
--

INSERT INTO `l2j_postprefixes_boards` (`id_prefix`, `id_board`) VALUES
(0, 75),
(0, 76),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 17),
(1, 21),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 60),
(1, 62),
(1, 63),
(1, 66),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 73),
(1, 74);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_postprefixes_groups`
--

CREATE TABLE `l2j_postprefixes_groups` (
  `id_prefix` smallint(5) UNSIGNED NOT NULL,
  `id_group` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_postprefixes_groups`
--

INSERT INTO `l2j_postprefixes_groups` (`id_prefix`, `id_group`) VALUES
(1, 0),
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_pretty_topic_urls`
--

CREATE TABLE `l2j_pretty_topic_urls` (
  `id_topic` mediumint(9) NOT NULL,
  `pretty_url` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_pretty_topic_urls`
--

INSERT INTO `l2j_pretty_topic_urls` (`id_topic`, `pretty_url`) VALUES
(9, 'baners-imagens-botoes-e-fonts'),
(5, 'clan-warehouse-viewer'),
(3, 'general-rules'),
(11, 'icon-and-themes-para-forum'),
(10, 'imagens-para-site-e-outros'),
(6, 'java-mods-rules'),
(12, 'jewell-set-like-armorset'),
(13, 'killing-spree'),
(2, 'l2jloren-interlude-v0-9-1'),
(4, 'read-before-posting'),
(7, 'source-archives'),
(8, 'tutorial-criando-laucher-com-update');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_pretty_urls_cache`
--

CREATE TABLE `l2j_pretty_urls_cache` (
  `url_id` varchar(255) NOT NULL,
  `replacement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_qanda`
--

CREATE TABLE `l2j_qanda` (
  `id_question` smallint(5) UNSIGNED NOT NULL,
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_scheduled_tasks`
--

CREATE TABLE `l2j_scheduled_tasks` (
  `id_task` smallint(6) NOT NULL,
  `next_time` int(10) NOT NULL DEFAULT 0,
  `time_offset` int(10) NOT NULL DEFAULT 0,
  `time_regularity` smallint(6) NOT NULL DEFAULT 0,
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `task` varchar(24) NOT NULL DEFAULT '',
  `callable` varchar(60) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_scheduled_tasks`
--

INSERT INTO `l2j_scheduled_tasks` (`id_task`, `next_time`, `time_offset`, `time_regularity`, `time_unit`, `disabled`, `task`, `callable`) VALUES
(3, 1748390460, 60, 1, 'd', 0, 'daily_maintenance', ''),
(5, 1748390400, 0, 1, 'd', 0, 'daily_digest', ''),
(6, 1748736000, 0, 1, 'w', 0, 'weekly_digest', ''),
(7, 1748339340, 121786, 1, 'd', 0, 'fetchSMfiles', ''),
(8, 0, 0, 1, 'd', 1, 'birthdayemails', ''),
(9, 1748736000, 0, 1, 'w', 0, 'weekly_maintenance', ''),
(10, 1747785720, 120, 1, 'd', 1, 'paid_subscriptions', ''),
(11, 1748390520, 120, 1, 'd', 0, 'remove_temp_attachments', ''),
(12, 1748390580, 180, 1, 'd', 0, 'remove_topic_redirect', ''),
(13, 1748390640, 240, 1, 'd', 0, 'remove_old_drafts', ''),
(14, 0, 0, 1, 'w', 1, 'prune_log_topics', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_sessions`
--

CREATE TABLE `l2j_sessions` (
  `session_id` varchar(128) NOT NULL DEFAULT '',
  `last_update` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_sessions`
--

INSERT INTO `l2j_sessions` (`session_id`, `last_update`, `data`) VALUES
('4882a3e622493834321c95e1ee4d15ad', 1748322695, 'a:21:{s:13:\"session_value\";s:32:\"d1122d6cfebe603cbb980c012286ffed\";s:11:\"session_var\";s:10:\"eccec4db25\";s:5:\"token\";a:25:{s:16:\"post-admin-login\";a:4:{i:0;s:7:\"f143233\";i:1;s:32:\"5f830b8d76b77b303f80a07a0204e990\";i:2;i:1748314689;i:3;s:32:\"16f09b7ec0ecb1c7a3085cca2477276c\";}s:46:\"post-admin-te-77ef4e7ed96c3954643de3d62504a80d\";a:4:{i:0;s:8:\"e30501f6\";i:1;s:32:\"3265374e7341d2d58a043f775912d4f3\";i:2;i:1748296072;i:3;s:32:\"83541d5326516bdc3e66e1f753e66c7f\";}s:13:\"post-admin-tl\";a:4:{i:0;s:12:\"b81702c02dd6\";i:1;s:32:\"2600ad2fe939427f9505ff582733ebb5\";i:2;i:1748319794;i:3;s:32:\"852a641d681cf48eafae0e188fac31cd\";}s:16:\"request-admin-tr\";a:4:{i:0;s:10:\"e1b887629a\";i:1;s:32:\"1c6f7ea71b04f8474cc2f13c217b3409\";i:2;i:1748319794;i:3;s:32:\"cf90923735a8306a1c9fbbcc886b3b37\";}s:17:\"request-admin-tre\";a:4:{i:0;s:12:\"f8e5ad5e74e2\";i:1;s:32:\"baf04203202f4be0b95442b54886a7cd\";i:2;i:1748319794;i:3;s:32:\"458dc6c8d04158ac4fd79887ece33b49\";}s:14:\"post-admin-sts\";a:4:{i:0;s:12:\"fa9794d2db52\";i:1;s:32:\"d10fd3665b828fbd0920c3fb746b5eea\";i:2;i:1748319802;i:3;s:32:\"4171b1af01c55bdf3983041ebf57ae79\";}s:17:\"post-admin-t-file\";a:4:{i:0;s:12:\"b67f19185a50\";i:1;s:32:\"b830758fb1ee2ee2f5a824b263da721a\";i:2;i:1748319153;i:3;s:32:\"c8958136e1c0b69305c64043024ca071\";}s:16:\"post-admin-t-dir\";a:4:{i:0;s:11:\"c2ef9a58864\";i:1;s:32:\"e526e062716a7170d8bb846a46da8a9e\";i:2;i:1748319153;i:3;s:32:\"22e9e0955d47f2ed82667e7bfafa049f\";}s:18:\"request-admin-stor\";a:4:{i:0;s:7:\"a93a40a\";i:1;s:32:\"e55c19e795445e0ea7a836efdcfa6114\";i:2;i:1748315686;i:3;s:32:\"86dd6ad94cb274c37f24b2d4a27ce34d\";}s:17:\"post-admin-t-copy\";a:4:{i:0;s:12:\"ba1ea542582d\";i:1;s:32:\"1d7802dcdc61d784461b229bda3acad5\";i:2;i:1748319153;i:3;s:32:\"cdd1ca740751b675e52cf419c2aed65b\";}s:15:\"post-admin-dbsc\";a:4:{i:0;s:9:\"c63c4346b\";i:1;s:32:\"dc9abb7f0461f8cf278d08f83c06660e\";i:2;i:1748319839;i:3;s:32:\"e41c7c429a50cc7d11906e5daae42576\";}s:16:\"post-profile-th1\";a:4:{i:0;s:10:\"c59fe955bd\";i:1;s:32:\"4663bf5d1bbd77e282a3f0cdac1aa243\";i:2;i:1748302127;i:3;s:32:\"af758dd3dbe0dd35c47a050205a727a3\";}s:16:\"post-profile-ac2\";a:4:{i:0;s:9:\"d37f0fea0\";i:1;s:32:\"776ea9b3c2c090689732107456330588\";i:2;i:1748318948;i:3;s:32:\"6843f2d95e448d27ceeba568aaa2fab1\";}s:16:\"post-profile-th2\";a:4:{i:0;s:9:\"d53dd1b18\";i:1;s:32:\"38edf510d10d9b068215e46da95ffcb6\";i:2;i:1748318958;i:3;s:32:\"20af6f8b230ab11e4fed36b5db1a26bd\";}s:13:\"post-admin-tm\";a:4:{i:0;s:7:\"decf460\";i:1;s:32:\"82da46e81ae68c40c24b0a3de011899e\";i:2;i:1748319153;i:3;s:32:\"f7e28d2e9af214032b5ce1d714fb46ee\";}s:13:\"post-admin-el\";a:4:{i:0;s:11:\"a93c7c96c82\";i:1;s:32:\"4f478deba8879f789516aded0859748d\";i:2;i:1748311557;i:3;s:32:\"9d68344a0db5b32fc960ed4bb1568c55\";}s:13:\"post-admin-mp\";a:4:{i:0;s:12:\"bd7196eccf4e\";i:1;s:32:\"fe02514dd99643d70552eead382a6088\";i:2;i:1748319835;i:3;s:32:\"0d626c7d28ec4e6d7d3e41c1e2736a3c\";}s:46:\"post-admin-te-10579da464aa9d915be6207b8952ba07\";a:4:{i:0;s:11:\"bd326adcfc4\";i:1;s:32:\"c092b9b12323976bbbca93910e4e1b99\";i:2;i:1748315171;i:3;s:32:\"8ec3498a9719250355c547712dc19cf8\";}s:46:\"post-admin-te-1b29b4d57d3be99722eecf79c9f0f248\";a:4:{i:0;s:12:\"c42bcbe28aa8\";i:1;s:32:\"8eee368f8a53d16abaf2af59182df351\";i:2;i:1748315310;i:3;s:32:\"ebaa4ea3b60df644be334c2a014ad2d5\";}s:14:\"post-admin-sto\";a:4:{i:0;s:12:\"b9e33668b46e\";i:1;s:32:\"583c72c9cfe893be7b13476d3a6e1e28\";i:2;i:1748315690;i:3;s:32:\"3eb1b8599c7680941d73ef2aef710a66\";}s:16:\"post-profile-fp2\";a:4:{i:0;s:11:\"e1ed33e988d\";i:1;s:32:\"330f20d9dc4939af3de6f7c2999ec059\";i:2;i:1748318952;i:3;s:32:\"4a356ab4b14b12d4061821278966d38a\";}s:16:\"post-profile-nt2\";a:4:{i:0;s:7:\"dec6c89\";i:1;s:32:\"2ff2ba14515a353659c93b9f444cb4c8\";i:2;i:1748318963;i:3;s:32:\"0cc9ef5b1ba00b5a6eb1660666745792\";}s:15:\"post-admin-lang\";a:4:{i:0;s:9:\"e25fa87d4\";i:1;s:32:\"14a16b99461f6ad1ab64dc219e36ad0a\";i:2;i:1748319871;i:3;s:32:\"70a06b8d00fbfb0ca3a1eedfbe44c9fb\";}s:16:\"post-admin-mlang\";a:4:{i:0;s:8:\"e36ff9bd\";i:1;s:32:\"14d3b7b9d05badb259b576b2c575b253\";i:2;i:1748319884;i:3;s:32:\"f1a13b87ad5ada59039db590bf1d6acd\";}s:16:\"post-admin-dlang\";a:4:{i:0;s:9:\"af2872b2c\";i:1;s:32:\"acfefb65707b2b2fc1a43faeafd5186e\";i:2;i:1748319905;i:3;s:32:\"206d118c5f9844b415915dd9159b1f74\";}}s:2:\"mc\";a:7:{s:4:\"time\";i:1748297359;s:2:\"id\";i:1;s:2:\"gq\";s:3:\"1=1\";s:2:\"bq\";s:3:\"1=1\";s:2:\"ap\";a:1:{i:0;i:0;}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}s:3:\"ban\";a:5:{s:12:\"last_checked\";i:1748239243;s:9:\"id_member\";i:0;s:2:\"ip\";s:14:\"200.101.189.67\";s:3:\"ip2\";s:14:\"200.101.189.67\";s:5:\"email\";s:0:\"\";}s:8:\"log_time\";i:1748320227;s:17:\"timeOnlineUpdated\";i:1748320227;s:7:\"old_url\";s:44:\"http://l2jforum.lineage2loren.site/index.php\";s:10:\"USER_AGENT\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\";s:8:\"register\";a:2:{s:7:\"timenow\";i:1748238645;s:5:\"limit\";i:10;}s:11:\"register_vv\";a:6:{s:5:\"count\";i:1;s:6:\"errors\";i:0;s:8:\"did_pass\";b:0;s:1:\"q\";a:0:{}s:4:\"code\";s:6:\"UNRPFE\";s:11:\"empty_field\";s:16:\"uuid-cipher-4254\";}s:18:\"login_SMFCookie494\";s:173:\"{\"0\":1,\"1\":\"a7a96f3852490ac92211fe6f9abd46d2b791718e2a64d8d5114e24498094dd96501ba899d0fda052d06fdca0eceb28314c4c695f81a1ed0ec740e2fa5913dde0\",\"2\":1937455243,\"3\":\"\",\"4\":\"\\/\"}\";s:17:\"id_msg_last_visit\";s:2:\"12\";s:2:\"rc\";a:4:{s:2:\"id\";i:1;s:4:\"time\";i:1748239244;s:7:\"reports\";s:1:\"0\";s:14:\"member_reports\";s:1:\"0\";}s:15:\"unread_messages\";i:0;s:10:\"admin_time\";i:1748318458;s:8:\"id_theme\";i:2;s:15:\"last_read_topic\";i:3;s:5:\"forms\";a:0:{}s:23:\"attachments_can_preview\";a:0:{}s:8:\"pack_ftp\";a:1:{s:14:\"original_perms\";a:2:{s:70:\"/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs\";i:16877;s:95:\"/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/default/languages\";i:16877;}}}'),
('61c2792ede7458e22f641c58541814bd', 1748320161, 'a:14:{s:13:\"session_value\";s:32:\"059778eccc348b4fbb15199617fc90aa\";s:11:\"session_var\";s:8:\"c4d30c8e\";s:5:\"token\";a:2:{s:10:\"post-login\";a:4:{i:0;s:12:\"b9647d8a89d8\";i:1;s:32:\"8652c7b7db3a8c421b08060c68a88995\";i:2;i:1748305607;i:3;s:32:\"8309826975e540c8cf2708fd02a58d74\";}s:16:\"post-profile-th2\";a:4:{i:0;s:7:\"d29a31c\";i:1;s:32:\"8f6dc37615733e8e2887bb31be74087a\";i:2;i:1748307060;i:3;s:32:\"a7aa7d0e8d5e02e56f699c2cff60eb8d\";}}s:2:\"mc\";a:7:{s:4:\"time\";i:1748305608;s:2:\"id\";i:2;s:2:\"gq\";s:3:\"0=1\";s:2:\"bq\";s:3:\"0=1\";s:2:\"ap\";a:0:{}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}s:3:\"ban\";a:5:{s:12:\"last_checked\";i:1748320161;s:9:\"id_member\";i:2;s:2:\"ip\";s:14:\"200.101.189.67\";s:3:\"ip2\";s:14:\"200.101.189.67\";s:5:\"email\";s:19:\"admludwig@gmail.com\";}s:8:\"log_time\";i:1748320161;s:17:\"timeOnlineUpdated\";i:1748320161;s:7:\"old_url\";s:43:\"http://l2jforum.lineage2loren.site/search2/\";s:10:\"USER_AGENT\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\";s:18:\"login_SMFCookie494\";s:173:\"{\"0\":2,\"1\":\"451ec0dbaa8bf20d849294d1a9501ca1749aff896e41c91cbfe7dd76c71d37fa524f2a048aa0ef7f7fe956ac2c87f690d9cef930ecc831edacb32f02c0ee1496\",\"2\":1937521608,\"3\":\"\",\"4\":\"\\/\"}\";s:17:\"id_msg_last_visit\";s:2:\"12\";s:15:\"unread_messages\";i:0;s:7:\"last_ss\";s:5:\"jewel\";s:12:\"search_cache\";a:3:{s:9:\"id_search\";i:2;s:11:\"num_results\";i:1;s:6:\"params\";s:284:\"eJwtkEtqw0AQRO-STTZvMf0d6TTGlgYco1hBdmICOnzGwbvqB9Vd1cf553id2ry_72V_20_bUwmK4QRJZWBECiKIIoY4EkgiFRmQES1o9yhqqKOBJlrRAR2xggnWVxrmWGCJVWzARrzggiveLzoeeOIVH_CRKIQQShjRAwWRRCUGYiQLKaSSRjrZ8yZZyYEcqYUqVKM6NajZ-93O6-MwrZ9fS7u33vSJvk-XNt0P63X5fZF1u3e1taX9P-eFDvPH1vHcbtOTtOM2nft8aY-2_AGOulYf\";}}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_settings`
--

CREATE TABLE `l2j_settings` (
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_settings`
--

INSERT INTO `l2j_settings` (`variable`, `value`) VALUES
('additional_options_collapsable', '1'),
('adminlog_enabled', '1'),
('alerts_auto_purge', '30'),
('allow_editDisplayName', '1'),
('allow_expire_redirect', '1'),
('allow_guestAccess', '1'),
('allow_hideOnline', '0'),
('attachmentCheckExtensions', '0'),
('attachmentDirFileLimit', '10000'),
('attachmentDirSizeLimit', '100242'),
('attachmentEnable', '1'),
('attachmentExtensions', 'doc,gif,jpg,mpg,pdf,png,txt,zip'),
('attachmentNumPerPostLimit', '10'),
('attachmentPostLimit', '10192'),
('attachmentShowImages', '1'),
('attachmentSizeLimit', '10128'),
('attachments_21_done', '1'),
('attachmentThumbHeight', '150'),
('attachmentThumbnails', '1'),
('attachmentThumbWidth', '150'),
('attachmentUploadDir', '{\"1\":\"/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/attachments\"}'),
('attachment_image_paranoid', '0'),
('attachment_image_reencode', '1'),
('attachment_thumb_png', '1'),
('autoFixDatabase', '1'),
('autoLinkUrls', '1'),
('avatar_action_too_large', 'option_download_and_resize'),
('avatar_directory', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/avatars'),
('avatar_download_external', '1'),
('avatar_download_png', '1'),
('avatar_max_height_external', '65'),
('avatar_max_height_upload', '65'),
('avatar_max_width_external', '65'),
('avatar_max_width_upload', '65'),
('avatar_paranoid', '0'),
('avatar_reencode', '1'),
('avatar_resize_upload', '1'),
('avatar_url', 'http://l2jforum.lineage2loren.site/avatars'),
('banLastUpdated', '0'),
('bcrypt_hash_cost', '13'),
('birthday_email', 'happy_birthday'),
('boardindex_max_depth', '5'),
('board_manager_groups', '1'),
('browser_cache', '1748319771'),
('calendar_updated', '1747876092'),
('cal_daysaslink', '0'),
('cal_days_for_index', '7'),
('cal_defaultboard', ''),
('cal_disable_prev_next', '0'),
('cal_display_type', '0'),
('cal_enabled', '0'),
('cal_maxspan', '0'),
('cal_maxyear', '2030'),
('cal_minyear', '2008'),
('cal_prev_next_links', '1'),
('cal_short_days', '0'),
('cal_short_months', '0'),
('cal_showbdays', '1'),
('cal_showevents', '1'),
('cal_showholidays', '1'),
('cal_showInTopic', '1'),
('cal_week_links', '2'),
('censorIgnoreCase', '1'),
('censor_proper', ''),
('censor_vulgar', ''),
('compactTopicPagesContiguous', '5'),
('compactTopicPagesEnable', '1'),
('cookieTime', '3153600'),
('currentAttachmentUploadDir', '1'),
('custom_avatar_dir', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/custom_avatar'),
('custom_avatar_url', 'http://l2jforum.lineage2loren.site/custom_avatar'),
('databaseSession_enable', '1'),
('databaseSession_lifetime', '2880'),
('databaseSession_loose', '1'),
('defaultMaxListItems', '15'),
('defaultMaxMembers', '30'),
('defaultMaxMessages', '15'),
('defaultMaxTopics', '20'),
('default_personal_text', ''),
('default_timezone', 'America/Sao_Paulo'),
('disabledBBC', 'acronym,bdo,black,blue,flash,ftp,glow,green,move,red,shadow,tt,white'),
('displayFields', '[{\"col_name\":\"cust_skype\",\"title\":\"{skype}\",\"type\":\"text\",\"order\":\"1\",\"bbc\":\"0\",\"placement\":\"1\",\"enclose\":\"<a href=\\\"skype:{INPUT}?call\\\"><img src=\\\"{DEFAULT_IMAGES_URL}\\/skype.png\\\" alt=\\\"{INPUT}\\\" title=\\\"{INPUT}\\\" \\/><\\/a> \",\"mlist\":\"0\",\"options\":[]},{\"col_name\":\"cust_loca\",\"title\":\"{location}\",\"type\":\"text\",\"order\":\"3\",\"bbc\":\"0\",\"placement\":\"0\",\"enclose\":\"\",\"mlist\":\"0\",\"options\":[]},{\"col_name\":\"cust_gender\",\"title\":\"{gender}\",\"type\":\"radio\",\"order\":\"4\",\"bbc\":\"0\",\"placement\":\"1\",\"enclose\":\"<span class=\\\" main_icons gender_{KEY}\\\" title=\\\"{INPUT}\\\"><\\/span>\",\"mlist\":\"0\",\"options\":[\"{gender_0}\",\"{gender_1}\",\"{gender_2}\"]}]'),
('dont_repeat_buddylists', '1'),
('dont_repeat_smileys_20', '1'),
('dont_repeat_theme_core', '1'),
('dont_show_attach_under_post', '1'),
('drafts_autosave_enabled', '1'),
('drafts_keep_days', '7'),
('drafts_pm_enabled', '1'),
('drafts_post_enabled', '1'),
('drafts_show_saved_enabled', '1'),
('edit_disable_time', '0'),
('edit_wait_time', '120'),
('enableAllMessages', '0'),
('enableBBC', '1'),
('enableCompressedOutput', '1'),
('enableErrorLogging', '1'),
('enableParticipation', '1'),
('enablePostHTML', '0'),
('enablePreviousNext', '1'),
('enableReportPM', '1'),
('enableThemes', '1,2,3,4'),
('enable_ajax_alerts', '1'),
('enable_buddylist', '1'),
('enable_likes', '1'),
('enable_mentions', '1'),
('export_dir', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/exports'),
('export_expiry', '7'),
('export_min_diskspace_pct', '5'),
('export_rate', '250'),
('failed_login_threshold', '3'),
('frame_security', 'SAMEORIGIN'),
('global_character_set', 'UTF-8'),
('gravatarAllowExtraEmail', '0'),
('gravatarDefault', 'mm'),
('gravatarEnabled', '0'),
('gravatarMaxRating', 'PG'),
('gravatarOverride', '0'),
('httponlyCookies', '1'),
('integrate_admin_areas', '$sourcedir/Subs-PrettyUrls-Hooks.php|prettyurls_admin_areas'),
('integrate_pre_load', '$sourcedir/Class-Spoiler.php|Spoiler::hooks#,$sourcedir/TeamPage/TeamPage.php|TeamPage\\TeamPage::initialize#,$sourcedir/PostPrefix/PostPrefix.php|PostPrefix\\PostPrefix::initialize'),
('jquery_source', 'cdn'),
('json_done', '1'),
('knownThemes', '2,4'),
('lastActive', '120'),
('last_mod_report_action', '0'),
('latestMember', '2'),
('latestRealName', 'Kai'),
('loginHistoryDays', '30'),
('mail_limit', '5'),
('mail_next_send', '0'),
('mail_quantity', '5'),
('mail_recent', '1747761028|1'),
('mail_type', '0'),
('mark_read_beyond', '90'),
('mark_read_delete_beyond', '365'),
('mark_read_max_users', '500'),
('maxMsgID', '13'),
('max_image_height', '0'),
('max_image_width', '0'),
('max_messageLength', '20000'),
('memberlist_updated', '1747873983'),
('messageIconChecks_enable', '1'),
('messageIcons_enable', '1'),
('minimize_files', '1'),
('modlog_enabled', '1'),
('mostDate', '1747947406'),
('mostOnline', '6'),
('mostOnlineToday', '2'),
('mostOnlineUpdated', '2025-05-27'),
('news', 'SMF - Just Installed!'),
('next_task_time', '1748339340'),
('number_format', '1234.00'),
('oldTopicDays', '120'),
('onlineEnable', '1'),
('package_make_backups', '1'),
('paid_currency_code', 'usd'),
('paid_currency_symbol', '$%1.2f'),
('password_strength', '1'),
('permission_enable_deny', '0'),
('permission_enable_postgroups', '0'),
('pm_spam_settings', '10,5,20'),
('pollMode', '2'),
('PostPrefix_enable_filter', '1'),
('PostPrefix_post_selecttype', '1'),
('PostPrefix_prefix_all_msgs', '1'),
('PostPrefix_prefix_boardindex', '1'),
('PostPrefix_prefix_linktree', '1'),
('PostPrefix_prefix_recent_page', '1'),
('PostPrefix_prefix_unread_page', '1'),
('pretty_action_array', 'a:78:{i:0;s:9:\"agreement\";i:1;s:15:\"acceptagreement\";i:2;s:8:\"activate\";i:3;s:5:\"admin\";i:4;s:8:\"announce\";i:5;s:13:\"attachapprove\";i:6;s:5:\"buddy\";i:7;s:8:\"calendar\";i:8;s:5:\"clock\";i:9;s:5:\"coppa\";i:10;s:7:\"credits\";i:11;s:9:\"deletemsg\";i:12;s:8:\"dlattach\";i:13;s:8:\"editpoll\";i:14;s:9:\"editpoll2\";i:15;s:10:\"findmember\";i:16;s:6:\"groups\";i:17;s:4:\"help\";i:18;s:9:\"helpadmin\";i:19;s:8:\"jsmodify\";i:20;s:8:\"jsoption\";i:21;s:5:\"likes\";i:22;s:4:\"lock\";i:23;s:10:\"lockvoting\";i:24;s:5:\"login\";i:25;s:6:\"login2\";i:26;s:8:\"logintfa\";i:27;s:6:\"logout\";i:28;s:10:\"markasread\";i:29;s:11:\"mergetopics\";i:30;s:5:\"mlist\";i:31;s:8:\"moderate\";i:32;s:9:\"modifycat\";i:33;s:9:\"movetopic\";i:34;s:10:\"movetopic2\";i:35;s:19:\"notifyannouncements\";i:36;s:11:\"notifyboard\";i:37;s:11:\"notifytopic\";i:38;s:2:\"pm\";i:39;s:4:\"post\";i:40;s:5:\"post2\";i:41;s:9:\"printpage\";i:42;s:7:\"profile\";i:43;s:9:\"quotefast\";i:44;s:8:\"quickmod\";i:45;s:9:\"quickmod2\";i:46;s:6:\"recent\";i:47;s:8:\"reminder\";i:48;s:10:\"removepoll\";i:49;s:12:\"removetopic2\";i:50;s:8:\"reporttm\";i:51;s:14:\"requestmembers\";i:52;s:12:\"restoretopic\";i:53;s:6:\"search\";i:54;s:7:\"search2\";i:55;s:14:\"sendactivation\";i:56;s:6:\"signup\";i:57;s:7:\"signup2\";i:58;s:7:\"smstats\";i:59;s:7:\"suggest\";i:60;s:11:\"splittopics\";i:61;s:5:\"stats\";i:62;s:6:\"sticky\";i:63;s:5:\"theme\";i:64;s:7:\"trackip\";i:65;s:13:\"about:unknown\";i:66;s:6:\"unread\";i:67;s:13:\"unreadreplies\";i:68;s:12:\"uploadAttach\";i:69;s:16:\"verificationcode\";i:70;s:11:\"viewprofile\";i:71;s:4:\"vote\";i:72;s:9:\"viewquery\";i:73;s:10:\"viewsmfile\";i:74;s:3:\"who\";i:75;s:4:\".xml\";i:76;s:7:\"xmlhttp\";i:77;s:5:\"forum\";}'),
('pretty_board_lookup', 'a:76:{s:18:\"general-discussion\";s:1:\"1\";s:16:\"help-and-support\";s:1:\"2\";s:23:\"marketplace-items-chars\";s:1:\"3\";s:25:\"marketplace-l2packs-files\";s:1:\"4\";s:28:\"marketplace-powerlvl-support\";s:1:\"5\";s:32:\"marketplace-webdesign-webdevelop\";s:1:\"6\";s:23:\"server-shares-and-files\";s:1:\"7\";s:18:\"help-and-support-8\";s:1:\"8\";s:8:\"tutorial\";s:1:\"9\";s:8:\"websites\";s:2:\"10\";s:29:\"server-development-discussion\";s:2:\"11\";s:29:\"client-development-discussion\";s:2:\"12\";s:16:\"server-emulators\";s:2:\"13\";s:14:\"video-tutorial\";s:2:\"14\";s:13:\"java-tutorial\";s:2:\"15\";s:32:\"the-chaotic-chronicle-prelude-c5\";s:2:\"16\";s:40:\"the-chaotic-throne-interlude-~-high-five\";s:2:\"17\";s:43:\"goddess-of-destruction-awakening-~-valiance\";s:2:\"18\";s:43:\"epic-tale-of-aden-ertheia-~-homunculus-ch-2\";s:2:\"19\";s:48:\"gracia-pt-1gracia-pt2gracia-finalgracia-epilogue\";s:2:\"20\";s:9:\"interlude\";s:2:\"21\";s:15:\"kamaelhellbound\";s:2:\"22\";s:5:\"freya\";s:2:\"23\";s:9:\"high-five\";s:2:\"24\";s:9:\"awakening\";s:2:\"25\";s:7:\"harmony\";s:2:\"26\";s:5:\"tauti\";s:2:\"27\";s:10:\"glory-days\";s:2:\"28\";s:8:\"lindvior\";s:2:\"29\";s:8:\"valiance\";s:2:\"30\";s:29:\"ertheia-dimensional-strangers\";s:2:\"31\";s:16:\"infinite-odyssey\";s:2:\"32\";s:63:\"infinite-odyssey-infinite-odyssey-shadows-of-light-part-1-and-2\";s:2:\"33\";s:70:\"underground-infinite-odyssey-hymn-of-the-soul-and-will-of-the-ancients\";s:2:\"34\";s:6:\"helios\";s:2:\"35\";s:45:\"grand-crusade-and-grand-crusade-force-bringer\";s:2:\"36\";s:70:\"salvation-first-chapter-the-page-salvation-and-salvation-the-gathering\";s:2:\"37\";s:8:\"fafurion\";s:2:\"38\";s:28:\"prelude-of-war-pt-2-and-pt-3\";s:2:\"39\";s:24:\"homunculus-ch-1-and-ch-2\";s:2:\"40\";s:14:\"classicessence\";s:2:\"41\";s:7:\"classic\";s:2:\"42\";s:7:\"essence\";s:2:\"43\";s:7:\"weapons\";s:2:\"44\";s:6:\"armors\";s:2:\"45\";s:30:\"acessories-and-transformations\";s:2:\"46\";s:3:\"npc\";s:2:\"47\";s:15:\"utils-and-tools\";s:2:\"48\";s:9:\"java-mods\";s:2:\"49\";s:11:\"protections\";s:2:\"50\";s:6:\"events\";s:2:\"51\";s:8:\"commands\";s:2:\"52\";s:11:\"recruitment\";s:2:\"53\";s:6:\"design\";s:2:\"54\";s:9:\"wordpress\";s:2:\"55\";s:3:\"cms\";s:2:\"56\";s:29:\"systems-scripts-and-dashboard\";s:2:\"57\";s:13:\"initial-pages\";s:2:\"58\";s:16:\"official-servers\";s:2:\"59\";s:15:\"private-servers\";s:2:\"60\";s:19:\"official-servers-61\";s:2:\"61\";s:18:\"private-servers-62\";s:2:\"62\";s:6:\"quests\";s:2:\"63\";s:10:\"clan-crest\";s:2:\"64\";s:14:\"recruitment-65\";s:2:\"65\";s:14:\"recruitment-66\";s:2:\"66\";s:6:\"guides\";s:2:\"67\";s:9:\"guides-68\";s:2:\"68\";s:18:\"changelogs-updates\";s:2:\"69\";s:11:\"bug-reports\";s:2:\"70\";s:5:\"geral\";s:2:\"71\";s:10:\"repository\";s:2:\"72\";s:9:\"questions\";s:2:\"73\";s:9:\"downloads\";s:2:\"74\";s:14:\"administration\";s:2:\"75\";s:13:\"forum-problem\";s:2:\"76\";}'),
('pretty_board_urls', 'a:76:{i:1;s:18:\"general-discussion\";i:2;s:16:\"help-and-support\";i:3;s:23:\"marketplace-items-chars\";i:4;s:25:\"marketplace-l2packs-files\";i:5;s:28:\"marketplace-powerlvl-support\";i:6;s:32:\"marketplace-webdesign-webdevelop\";i:7;s:23:\"server-shares-and-files\";i:8;s:18:\"help-and-support-8\";i:9;s:8:\"tutorial\";i:10;s:8:\"websites\";i:11;s:29:\"server-development-discussion\";i:12;s:29:\"client-development-discussion\";i:13;s:16:\"server-emulators\";i:14;s:14:\"video-tutorial\";i:15;s:13:\"java-tutorial\";i:16;s:32:\"the-chaotic-chronicle-prelude-c5\";i:17;s:40:\"the-chaotic-throne-interlude-~-high-five\";i:18;s:43:\"goddess-of-destruction-awakening-~-valiance\";i:19;s:43:\"epic-tale-of-aden-ertheia-~-homunculus-ch-2\";i:20;s:48:\"gracia-pt-1gracia-pt2gracia-finalgracia-epilogue\";i:21;s:9:\"interlude\";i:22;s:15:\"kamaelhellbound\";i:23;s:5:\"freya\";i:24;s:9:\"high-five\";i:25;s:9:\"awakening\";i:26;s:7:\"harmony\";i:27;s:5:\"tauti\";i:28;s:10:\"glory-days\";i:29;s:8:\"lindvior\";i:30;s:8:\"valiance\";i:31;s:29:\"ertheia-dimensional-strangers\";i:32;s:16:\"infinite-odyssey\";i:33;s:63:\"infinite-odyssey-infinite-odyssey-shadows-of-light-part-1-and-2\";i:34;s:70:\"underground-infinite-odyssey-hymn-of-the-soul-and-will-of-the-ancients\";i:35;s:6:\"helios\";i:36;s:45:\"grand-crusade-and-grand-crusade-force-bringer\";i:37;s:70:\"salvation-first-chapter-the-page-salvation-and-salvation-the-gathering\";i:38;s:8:\"fafurion\";i:39;s:28:\"prelude-of-war-pt-2-and-pt-3\";i:40;s:24:\"homunculus-ch-1-and-ch-2\";i:41;s:14:\"classicessence\";i:42;s:7:\"classic\";i:43;s:7:\"essence\";i:44;s:7:\"weapons\";i:45;s:6:\"armors\";i:46;s:30:\"acessories-and-transformations\";i:47;s:3:\"npc\";i:48;s:15:\"utils-and-tools\";i:49;s:9:\"java-mods\";i:50;s:11:\"protections\";i:51;s:6:\"events\";i:52;s:8:\"commands\";i:53;s:11:\"recruitment\";i:54;s:6:\"design\";i:55;s:9:\"wordpress\";i:56;s:3:\"cms\";i:57;s:29:\"systems-scripts-and-dashboard\";i:58;s:13:\"initial-pages\";i:59;s:16:\"official-servers\";i:60;s:15:\"private-servers\";i:61;s:19:\"official-servers-61\";i:62;s:18:\"private-servers-62\";i:63;s:6:\"quests\";i:64;s:10:\"clan-crest\";i:65;s:14:\"recruitment-65\";i:66;s:14:\"recruitment-66\";i:67;s:6:\"guides\";i:68;s:9:\"guides-68\";i:69;s:18:\"changelogs-updates\";i:70;s:11:\"bug-reports\";i:71;s:5:\"geral\";i:72;s:10:\"repository\";i:73;s:9:\"questions\";i:74;s:9:\"downloads\";i:75;s:14:\"administration\";i:76;s:13:\"forum-problem\";}'),
('pretty_bufferusecache', '1'),
('pretty_enable_filters', '1'),
('pretty_filters', 'a:4:{s:6:\"boards\";a:6:{s:11:\"description\";s:18:\"Rewrite Board URLs\";s:7:\"enabled\";i:1;s:6:\"filter\";a:2:{s:8:\"priority\";i:45;s:8:\"callback\";s:24:\"pretty_urls_board_filter\";}s:7:\"rewrite\";a:3:{s:8:\"priority\";i:50;s:4:\"rule\";a:2:{i:0;s:84:\"RewriteRule ^ROOTURL([-_!~*\'()$a-zA-Z0-9]+)/?$ ./index.php?pretty;board=$1.0 [L,QSA]\";i:1;s:94:\"RewriteRule ^ROOTURL([-_!~*\'()$a-zA-Z0-9]+)/([0-9]*)/?$ ./index.php?pretty;board=$1.$2 [L,QSA]\";}s:5:\"nginx\";a:2:{i:0;s:79:\"rewrite ^ROOTURL([-_!~*\'()$a-zA-Z0-9]+)/?$ \"/index.php?pretty&board=$1.0\" last;\";i:1;s:89:\"rewrite ^ROOTURL([-_!~*\'()$a-zA-Z0-9]+)/([0-9]*)/?$ \"/index.php?pretty&board=$1.$2\" last;\";}}s:13:\"test_callback\";s:18:\"pretty_boards_test\";s:5:\"title\";s:6:\"Boards\";}s:6:\"topics\";a:6:{s:11:\"description\";s:18:\"Rewrite Topic URLs\";s:7:\"enabled\";i:1;s:6:\"filter\";a:2:{s:8:\"priority\";i:40;s:8:\"callback\";s:24:\"pretty_urls_topic_filter\";}s:7:\"rewrite\";a:3:{s:8:\"priority\";i:55;s:4:\"rule\";a:2:{i:0;s:117:\"RewriteRule ^ROOTURL([-_!~*\'()$a-zA-Z0-9]+)/([-_!~*\'()$a-zA-Z0-9]+)/?$ ./index.php?pretty;board=$1;topic=$2.0 [L,QSA]\";i:1;s:141:\"RewriteRule ^ROOTURL([-_!~*\'()$a-zA-Z0-9]+)/([-_!~*\'()$a-zA-Z0-9]+)/([0-9]*|msg[0-9]*|new)/?$ ./index.php?pretty;board=$1;topic=$2.$3 [L,QSA]\";}s:5:\"nginx\";a:2:{i:0;s:112:\"rewrite ^ROOTURL([-_!~*\'()$a-zA-Z0-9]+)/([-_!~*\'()$a-zA-Z0-9]+)/?$ \"/index.php?pretty&board=$1&topic=$2.0\" last;\";i:1;s:136:\"rewrite ^ROOTURL([-_!~*\'()$a-zA-Z0-9]+)/([-_!~*\'()$a-zA-Z0-9]+)/([0-9]*|msg[0-9]*|new)/?$ \"/index.php?pretty&board=$1&topic=$2.$3\" last;\";}}s:13:\"test_callback\";s:18:\"pretty_topics_test\";s:5:\"title\";s:6:\"Topics\";}s:7:\"actions\";a:6:{s:11:\"description\";s:52:\"Rewrite Action URLs (ie, index.php?action=something)\";s:7:\"enabled\";i:1;s:6:\"filter\";a:2:{s:8:\"priority\";i:55;s:8:\"callback\";s:26:\"pretty_urls_actions_filter\";}s:7:\"rewrite\";a:2:{s:8:\"priority\";i:45;s:4:\"rule\";s:8:\"#ACTIONS\";}s:13:\"test_callback\";s:19:\"pretty_actions_test\";s:5:\"title\";s:7:\"Actions\";}s:8:\"profiles\";a:6:{s:11:\"description\";s:131:\"Rewrite Profile URLs. As this uses the Username of an account rather than it\'s Display Name, it may not be desirable to your users.\";s:7:\"enabled\";i:1;s:6:\"filter\";a:2:{s:8:\"priority\";i:50;s:8:\"callback\";s:22:\"pretty_profiles_filter\";}s:7:\"rewrite\";a:3:{s:8:\"priority\";i:40;s:4:\"rule\";s:87:\"RewriteRule ^profile/([^/]+)/?$ ./index.php?pretty;action=profile;user=$1 [L,QSA,B,BNP]\";s:5:\"nginx\";s:76:\"rewrite ^profile/([^/]+)/?$ \"/index.php?pretty;action=profile;user=$1\" last;\";}s:13:\"test_callback\";s:20:\"pretty_profiles_test\";s:5:\"title\";s:8:\"Profiles\";}}'),
('pretty_filter_callbacks', 'a:4:{i:40;s:24:\"pretty_urls_topic_filter\";i:45;s:24:\"pretty_urls_board_filter\";i:50;s:22:\"pretty_profiles_filter\";i:55;s:26:\"pretty_urls_actions_filter\";}'),
('pretty_root_url', 'http://l2jforum.lineage2loren.site'),
('pruningOptions', '30,180,180,180,30,0'),
('queryless_urls', '0'),
('rand_seed', '1748289186.75'),
('recycle_board', '0'),
('recycle_enable', '0'),
('registration_fields', 'website,personal_text,timezone'),
('registration_method', '1'),
('reg_verification', '1'),
('requireAgreement', '1'),
('requirePolicyAgreement', '0'),
('reserveCase', '1'),
('reserveName', '1'),
('reserveNames', 'Admin\nWebmaster\nGuest\nroot'),
('reserveUser', '1'),
('reserveWord', '0'),
('samesiteCookies', 'lax'),
('search_cache_size', '50'),
('search_floodcontrol_time', '10'),
('search_max_results', '1200'),
('search_pointer', '2'),
('search_results_per_page', '30'),
('search_weight_age', '25'),
('search_weight_first_message', '10'),
('search_weight_frequency', '30'),
('search_weight_length', '20'),
('search_weight_subject', '15'),
('securityDisable_moderate', '1'),
('send_validation_onChange', '0'),
('send_welcomeEmail', '1'),
('settings_updated', '1748297358'),
('show_blurb', '1'),
('show_modify', '1'),
('show_profile_buttons', '1'),
('show_user_images', '1'),
('signature_settings', '1,300,10,3,50,500,300,64:acronym,bdo,black,blue,flash,ftp,ftp,glow,green,li,move,red,shadow,td,tr,tt,white'),
('smfVersion', '2.1.4'),
('smileys_dir', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Smileys'),
('smileys_url', 'http://l2jforum.lineage2loren.site/Smileys'),
('smiley_enable', '1'),
('smiley_sets_default', 'fugue'),
('smiley_sets_enable', '1'),
('smiley_sets_known', 'fugue,alienine'),
('smiley_sets_names', 'Fugue\'s Set\nAlienine\'s Set'),
('smtp_host', ''),
('smtp_password', ''),
('smtp_port', '25'),
('smtp_username', ''),
('spamWaitTime', '5'),
('TeamPage_enable', '0'),
('TeamPage_show_custom', '1'),
('TeamPage_show_custom_fields', '[\"cust_gender\"]'),
('TeamPage_show_login', '1'),
('TeamPage_show_personal', '1'),
('TeamPage_show_registered', '1'),
('TeamPage_show_website', '1'),
('TeamPage_sort_by', '1'),
('tfa_mode', '1'),
('theme_allow', '1'),
('theme_default', '1'),
('theme_guests', '2'),
('timeLoadPageEnable', '0'),
('time_format', '%b %d, %Y, %I:%M %p'),
('titlesEnable', '1'),
('tld_regex', '(?>சிங்கப்பூர்|پاکستان|فلسطين|ファッション|ישראל|همراه|संगठन|বাংলা|భారత్|ഭാരതം|дети|تونس|شبكة|ڀارت|ਭਾਰਤ|ભારત|ଭାରତ|ಭಾರತ|ලංකා|アマゾン|クラウド|グーグル|ポイント|组织机构|電訊盈科|укр|қаз|հայ|קום|قطر|कॉम|नेट|भार(?>ोत|त(?>म्|))|คอม|ไทย|ລາວ|みんな|ストア|セール|亚马逊|天主教|我爱你|淡马锡|飞利浦|ею|سو(?>دان|رية)|ভা(?>রত|ৰত)|გე|コム|世界|企业|佛山|信息|健康|八卦|嘉里(?>大酒店|)|在线|大拿|娱乐|家電|广东|微博|慈善|手机|招聘|时尚|書籍|机构|游戏|澳門|点看|移动|联通|谷歌|购物|通販|集团|食品|餐厅|삼성|한국|a(?>kdn|a(?>rp|a)|b(?>udhabi|ogado|le|b(?>ott|vie|)|c)|c(?>ademy|tor|c(?>ountant(?>s|)|enture)|o|)|d(?>ult|s|)|e(?>tna|ro|g|)|f(?>rica|l|)|g(?>akhan|ency|)|i(?>g|r(?>force|bus|tel)|)|l(?>i(?>baba|pay)|l(?>finanz|state|y)|s(?>ace|tom)|)|m(?>sterdam|azon|fam|ica|e(?>rican(?>express|family)|x)|)|n(?>alytics|droid|quan|z)|o(?>l|)|p(?>artments|p(?>le|))|q(?>uarelle|)|r(?>chi|my|pa|a(?>mco|b)|t(?>e|)|)|s(?>sociates|da|ia|)|t(?>torney|hleta|)|u(?>ction|spost|di(?>ble|o|)|t(?>hor|o(?>s|))|)|w(?>s|)|x(?>a|)|z(?>ure|))|b(?>a(?>uhaus|yern|idu|by|n(?>amex|d|k)|r(?>efoot|gains|c(?>elona|lay(?>card|s))|)|s(?>ketball|eball)|)|b(?>va|c|t|)|c(?>g|n)|d|e(?>rlin|er|st(?>buy|)|a(?>uty|ts)|t|)|f|g|h(?>arti|)|i(?>ble|ke|ng(?>o|)|d|o|z|)|j|l(?>ack(?>friday|)|ue|o(?>ckbuster|omberg|g))|m(?>s|w|)|n(?>pparibas|)|o(?>ehringer|utique|ats|fa|nd|m|o(?>k(?>ing|)|)|s(?>ch|t(?>ik|on))|t|x|)|r(?>idgestone|adesco|ussels|o(?>adway|ther|ker)|)|s|t|u(?>siness|ild(?>ers|)|zz|y)|v|w|y|z(?>h|))|c(?>pa|a(?>non|fe|b|l(?>vinklein|l|)|m(?>era|p|)|p(?>etown|ital(?>one|))|r(?>avan|ds|e(?>er(?>s|)|)|s|)|s(?>ino|a|e|h)|t(?>ering|holic|)|)|b(?>re|a|n)|c|d|e(?>nter|rn|o)|f(?>a|d|)|g|h(?>intai|urch|eap|a(?>rity|se|n(?>nel|el)|t)|r(?>istmas|ome)|)|i(?>priani|rcle|sco|t(?>adel|i(?>c|)|y)|)|k|l(?>eaning|aims|ub(?>med|)|i(?>ck|ni(?>que|c))|o(?>thing|ud)|)|m|n|o(?>rsica|ffee|ach|des|l(?>lege|ogne)|m(?>sec|m(?>unity|bank)|p(?>uter|a(?>ny|re))|)|n(?>dos|s(?>truction|ulting)|t(?>ractors|act))|o(?>king|l|p)|u(?>ntry|rses|pon(?>s|))|)|r(?>icket|edit(?>union|card|)|uise(?>s|)|own|s|)|u(?>isinella|)|v|w|x|y(?>mru|ou|)|z)|d(?>rive|clk|ds|hl|np|tv|a(?>nce|d|t(?>ing|sun|a|e)|y)|e(?>mocrat|gree|al(?>er|s|)|nt(?>ist|al)|si(?>gn|)|l(?>ivery|oitte|ta|l)|v|)|i(?>amonds|gital|rect(?>ory|)|et|s(?>co(?>unt|ver)|h)|y)|j|k|m|o(?>wnload|mains|c(?>tor|s)|g|t|)|u(?>nlop|pont|rban|bai)|v(?>ag|r)|z)|e(?>quipment|vents|pson|a(?>rth|t)|c(?>o|)|d(?>eka|u(?>cation|))|e|g|m(?>erck|ail)|n(?>terprises|gineer(?>ing|)|ergy)|r(?>icsson|ni|)|s(?>tate|q|)|t|u(?>rovision|s|)|x(?>traspace|change|p(?>osed|ress|ert)))|f(?>tr|yi|a(?>mily|ge|rm(?>ers|)|i(?>rwinds|th|l)|n(?>s|)|s(?>hion|t))|e(?>edback|dex|rr(?>ari|ero))|i(?>lm|na(?>nc(?>ial|e)|l)|sh(?>ing|)|d(?>elity|o)|r(?>mdale|e(?>stone|))|t(?>ness|)|)|j|k|l(?>i(?>ghts|ckr|r)|o(?>rist|wers)|y)|m|o(?>undation|o(?>tball|d|)|r(?>sale|ex|um|d)|x|)|r(?>e(?>senius|e)|l|o(?>ntier|gans)|)|u(?>rniture|jitsu|tbol|n(?>d|)))|g(?>a(?>rden|me(?>s|)|l(?>l(?>ery|up|o)|)|p|y|)|b(?>iz|)|d(?>n|)|e(?>orge|nt(?>ing|)|a|)|f|g(?>ee|)|h|i(?>ft(?>s|)|v(?>ing|es)|)|l(?>ass|ob(?>al|o)|e|)|m(?>ail|bh|o|x|)|n|o(?>daddy|l(?>d(?>point|)|f)|o(?>dyear|g(?>le|)|)|p|t|v)|p|q|r(?>een|ipe|a(?>inger|phics|tis)|o(?>cery|up)|)|s|t|u(?>cci|ge|ru|i(?>tars|de)|)|w|y)|h(?>dfc(?>bank|)|sbc|bo|a(?>mburg|ngout|ir|us)|e(?>alth(?>care|)|l(?>sinki|p)|r(?>mes|e))|i(?>samitsu|tachi|phop|v)|k(?>t|)|m|n|o(?>ckey|nda|rse|use|me(?>depot|goods|s(?>ense|))|l(?>dings|iday)|s(?>pital|t(?>ing|))|t(?>mail|els|)|w)|r|t|u(?>ghes|)|y(?>undai|att))|i(?>piranga|kano|bm|fm|c(?>bc|e|u)|d|e(?>ee|)|l|m(?>amat|db|mo(?>bilien|)|)|n(?>vestments|dustries|c|f(?>initi|o)|g|k|s(?>titute|ur(?>ance|e))|t(?>ernational|uit|)|)|o|q|r(?>ish|)|s(?>maili|t(?>anbul|)|)|t(?>au|v|))|j(?>cb|io|ll|nj|a(?>guar|va)|e(?>welry|tzt|ep|)|m(?>p|)|o(?>b(?>urg|s)|t|y|)|p(?>morgan|rs|)|u(?>niper|egos))|k(?>uokgroup|aufen|ddi|fh|e(?>rry(?>properties|hotels)|)|g|h|i(?>tchen|ndle|ds|wi|a|m|)|m|n|o(?>matsu|sher|eln)|p(?>mg|n|)|r(?>ed|d|)|w|y(?>oto|)|z)|l(?>gbt|ds|pl(?>financial|)|a(?>caixa|salle|m(?>borghini|er)|n(?>xess|d(?>rover|))|t(?>robe|ino|)|w(?>yer|)|)|b|c|e(?>clerc|frak|ase|xus|g(?>al|o))|i(?>ghting|lly|dl|fe(?>insurance|style|)|ke|m(?>ited|o)|n(?>coln|k)|v(?>ing|e)|)|k|l(?>c|p)|o(?>ndon|an(?>s|)|tt(?>e|o)|ve|c(?>ker|al|us)|l)|r|s|t(?>d(?>a|)|)|u(?>ndbeck|x(?>ury|e)|)|v|y)|m(?>ba|a(?>drid|keup|ttel|i(?>son|f)|n(?>agement|go|)|p|r(?>shalls|riott|ket(?>ing|s|))|)|c(?>kinsey|)|d|e(?>lbourne|rckmsd|et|d(?>ia|)|m(?>orial|e)|n(?>u|)|)|g|h|i(?>crosoft|ami|l|n(?>i|t)|t(?>subishi|))|k|l(?>b|s|)|m(?>a|)|n|o(?>scow|bi(?>le|)|da|to(?>rcycles|)|e|i|m|n(?>ster|ash|ey)|r(?>tgage|mon)|v(?>ie|)|)|p|q|r|s(?>d|)|t(?>n|r|)|u(?>s(?>eum|ic)|)|v|w|x|y|z)|n(?>ba|hk|tt|yc|a(?>goya|me|vy|b|)|c|e(?>ustar|c|t(?>bank|flix|work|)|w(?>s|)|x(?>us|t(?>direct|))|)|f(?>l|)|g(?>o|)|i(?>nja|ssa(?>n|y)|co|k(?>on|e)|)|l|o(?>rton|kia|w(?>ruz|tv|)|)|p|r(?>a|w|)|u|z)|o(?>kinawa|ffice|saka|pen|oo|vh|b(?>server|i)|l(?>ayan(?>group|)|lo)|m(?>ega|)|n(?>ion|e|g|l(?>ine|))|r(?>igins|a(?>cle|nge)|g(?>anic|))|t(?>suka|t))|p(?>ccw|ub|a(?>nasonic|ge|r(?>is|s|t(?>ners|s|y))|y|)|e(?>t|)|f(?>izer|)|g|h(?>armacy|ilips|ysio|d|o(?>ne|to(?>graphy|s|))|)|i(?>oneer|zza|c(?>s|t(?>ures|et))|d|n(?>g|k|))|k|l(?>a(?>ce|y(?>station|))|u(?>mbing|s)|)|m|n(?>c|)|o(?>litie|ker|hl|rn|st)|r(?>axi|ess|ime|o(?>gressive|tection|pert(?>ies|y)|mo|d(?>uctions|)|f|)|u(?>dential|)|)|s|t|w(?>c|)|y)|q(?>pon|ue(?>bec|st)|a)|r(?>yukyu|a(?>cing|dio)|e(?>liance|cipes|xroth|view(?>s|)|hab|st(?>aurant|)|a(?>d|l(?>estate|t(?>or|y)))|d(?>umbrella|stone|)|i(?>se(?>n|)|t)|n(?>t(?>als|)|)|p(?>ublican|air|ort)|)|i(?>c(?>oh|h(?>ardli|))|l|o|p)|o(?>gers|cks|deo|om|)|s(?>vp|)|u(?>gby|hr|n|)|w(?>e|))|s(?>fr|a(?>arland|kura|fe(?>ty|)|ms(?>club|ung)|rl|ve|xo|l(?>on|e)|n(?>dvik(?>coromant|)|ofi)|p|s|)|b(?>i|s|)|c(?>ience|ot|b|h(?>aeffler|midt|warz|ule|o(?>larships|ol))|)|d|e(?>rvices|lect|cur(?>ity|e)|ner|ven|ek|a(?>rch|t)|w|x(?>y|)|)|g|h(?>ell|a(?>ngrila|rp)|i(?>ksha|a)|o(?>uji|es|p(?>ping|)|w)|)|i(?>lk|te|n(?>gles|a)|)|j|k(?>i(?>n|)|y(?>pe|)|)|l(?>ing|)|m(?>art|ile|)|n(?>cf|)|o(?>ft(?>bank|ware)|hu|c(?>cer|ial)|l(?>utions|ar)|n(?>g|y)|y|)|p(?>a(?>ce|)|o(?>rt|t))|r(?>l|)|s|t(?>ream|yle|ud(?>io|y)|a(?>ples|da|te(?>bank|farm)|r)|c(?>group|)|o(?>ckholm|r(?>age|e))|)|u(?>zuki|cks|pp(?>ort|l(?>ies|y))|r(?>gery|f)|)|v|w(?>atch|iss)|x|y(?>stems|dney|)|z)|t(?>a(?>ipei|obao|rget|lk|b|t(?>too|a(?>motors|r))|x(?>i|))|c(?>i|)|d(?>k|)|e(?>masek|nnis|am|ch(?>nology|)|st|va|l)|f|g|h(?>eat(?>er|re)|d|)|i(?>ckets|enda|aa|ps|r(?>es|ol))|j(?>maxx|x|)|k(?>maxx|)|l|m(?>all|)|n|o(?>shiba|day|kyo|ols|ray|tal|urs|wn|p|y(?>ota|s)|)|r(?>ust|a(?>ining|vel(?>ers(?>insurance|)|)|d(?>ing|e))|v|)|t|u(?>nes|shu|be|i)|v(?>s|)|w|z)|u(?>ol|ps|a|b(?>ank|s)|g|k|n(?>i(?>versity|com)|o)|s|y|z)|v(?>laanderen|a(?>cations|n(?>guard|a)|)|c|e(?>ntures|gas|r(?>mögensberat(?>ung|er)|sicherung|isign)|t|)|g|i(?>ajes|king|llas|rgin|deo|g|n|p|s(?>ion|a)|v(?>a|o)|)|n|o(?>yage|dka|lvo|t(?>ing|e|o))|u)|w(?>hoswho|me|a(?>tch(?>es|)|ng(?>gou|)|l(?>mart|ter|es))|e(?>ather(?>channel|)|b(?>site|cam|er)|d(?>ding|)|i(?>bo|r))|f|i(?>lliamhill|en|ki|n(?>dows|ners|e|))|o(?>lterskluwer|odside|r(?>ld|k(?>s|))|w)|s|t(?>c|f))|x(?>erox|box|xx|yz|i(?>huan|n))|y(?>un|a(?>maxun|chts|ndex|hoo)|e|o(?>dobashi|kohama|ga|u(?>tube|))|t)|z(?>uerich|ero|one|ip|a(?>ppos|ra|)|m|w)|ε(?>λ|υ)|б(?>ел|г)|к(?>атолик|ом)|м(?>кд|о(?>сква|н))|о(?>нлайн|рг)|р(?>ус|ф)|с(?>айт|рб)|ا(?>بوظبي|رامكو|مارات|یران|ل(?>سعودية|بحرين|جزائر|عليان|اردن|مغرب))|ب(?>ھارت|يتك|ا(?>زار|رت))|ع(?>مان|ر(?>اق|ب))|ك(?>اثوليك|وم)|م(?>ليسيا|صر|و(?>ريتانيا|قع))|இ(?>ந்தியா|லங்கை)|中(?>文网|信|国|國)|公(?>司|益)|台(?>湾|灣)|商(?>城|店|标)|政(?>务|府)|新(?>加坡|闻)|网(?>址|店|站|络)|香(?>格里拉|港)|닷(?>넷|컴))'),
('todayMod', '1'),
('topicSummaryPosts', '15'),
('topic_move_any', '0'),
('totalMembers', '2'),
('totalMessages', '12'),
('totalTopics', '12'),
('trackStats', '1'),
('unapprovedMembers', '0'),
('userLanguage', '1'),
('use_subdirectories_for_attachments', '0'),
('visual_verification_type', '3'),
('warning_moderate', '35'),
('warning_mute', '60'),
('warning_settings', '1,20,0'),
('warning_watch', '10'),
('who_enabled', '1'),
('xmlnews_enable', '1'),
('xmlnews_maxlen', '255');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_smileys`
--

CREATE TABLE `l2j_smileys` (
  `id_smiley` smallint(5) UNSIGNED NOT NULL,
  `code` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smiley_row` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `smiley_order` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_smileys`
--

INSERT INTO `l2j_smileys` (`id_smiley`, `code`, `description`, `smiley_row`, `smiley_order`, `hidden`) VALUES
(1, ':)', 'Smiley', 0, 0, 0),
(2, ';)', 'Wink', 0, 1, 0),
(3, ':D', 'Cheesy', 0, 2, 0),
(4, ';D', 'Grin', 0, 3, 0),
(5, '>:(', 'Angry', 0, 4, 0),
(6, ':(', 'Sad', 0, 0, 2),
(7, ':o', 'Shocked', 0, 5, 0),
(8, '8)', 'Cool', 0, 6, 0),
(9, '???', 'Huh?', 0, 7, 0),
(10, '::)', 'Roll Eyes', 0, 8, 0),
(11, ':P', 'Tongue', 0, 9, 0),
(12, ':-[', 'Embarrassed', 0, 10, 0),
(13, ':-X', 'Lips Sealed', 0, 11, 0),
(14, ':-\\', 'Undecided', 0, 12, 0),
(15, ':-*', 'Kiss', 0, 13, 0),
(16, ':\'(', 'Cry', 0, 14, 0),
(17, '>:D', 'Evil', 0, 16, 1),
(18, '^-^', 'Azn', 0, 17, 1),
(19, 'O0', 'Afro', 0, 18, 1),
(20, ':))', 'Laugh', 0, 19, 1),
(21, 'C:-)', 'Police', 0, 20, 1),
(22, 'O:-)', 'Angel', 0, 21, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_smiley_files`
--

CREATE TABLE `l2j_smiley_files` (
  `id_smiley` smallint(6) NOT NULL DEFAULT 0,
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_smiley_files`
--

INSERT INTO `l2j_smiley_files` (`id_smiley`, `smiley_set`, `filename`) VALUES
(1, 'alienine', 'smiley.png'),
(1, 'fugue', 'smiley.png'),
(2, 'alienine', 'wink.png'),
(2, 'fugue', 'wink.png'),
(3, 'alienine', 'cheesy.png'),
(3, 'fugue', 'cheesy.png'),
(4, 'alienine', 'grin.png'),
(4, 'fugue', 'grin.png'),
(5, 'alienine', 'angry.png'),
(5, 'fugue', 'angry.png'),
(6, 'alienine', 'sad.png'),
(6, 'fugue', 'sad.png'),
(7, 'alienine', 'shocked.png'),
(7, 'fugue', 'shocked.png'),
(8, 'alienine', 'cool.png'),
(8, 'fugue', 'cool.png'),
(9, 'alienine', 'huh.png'),
(9, 'fugue', 'huh.png'),
(10, 'alienine', 'rolleyes.png'),
(10, 'fugue', 'rolleyes.png'),
(11, 'alienine', 'tongue.png'),
(11, 'fugue', 'tongue.png'),
(12, 'alienine', 'embarrassed.png'),
(12, 'fugue', 'embarrassed.png'),
(13, 'alienine', 'lipsrsealed.png'),
(13, 'fugue', 'lipsrsealed.png'),
(14, 'alienine', 'undecided.png'),
(14, 'fugue', 'undecided.png'),
(15, 'alienine', 'kiss.png'),
(15, 'fugue', 'kiss.png'),
(16, 'alienine', 'cry.png'),
(16, 'fugue', 'cry.png'),
(17, 'alienine', 'evil.png'),
(17, 'fugue', 'evil.png'),
(18, 'alienine', 'azn.png'),
(18, 'fugue', 'azn.png'),
(19, 'alienine', 'afro.png'),
(19, 'fugue', 'afro.png'),
(20, 'alienine', 'laugh.png'),
(20, 'fugue', 'laugh.png'),
(21, 'alienine', 'police.png'),
(21, 'fugue', 'police.png'),
(22, 'alienine', 'angel.png'),
(22, 'fugue', 'angel.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_spiders`
--

CREATE TABLE `l2j_spiders` (
  `id_spider` smallint(5) UNSIGNED NOT NULL,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_spiders`
--

INSERT INTO `l2j_spiders` (`id_spider`, `spider_name`, `user_agent`, `ip_info`) VALUES
(1, 'Google', 'googlebot', ''),
(2, 'Yahoo!', 'slurp', ''),
(3, 'Bing', 'bingbot', ''),
(4, 'Google (Mobile)', 'Googlebot-Mobile', ''),
(5, 'Google (Image)', 'Googlebot-Image', ''),
(6, 'Google (AdSense)', 'Mediapartners-Google', ''),
(7, 'Google (Adwords)', 'AdsBot-Google', ''),
(8, 'Yahoo! (Mobile)', 'YahooSeeker/M1A1-R2D2', ''),
(9, 'Yahoo! (Image)', 'Yahoo-MMCrawler', ''),
(10, 'Bing (Preview)', 'BingPreview', ''),
(11, 'Bing (Ads)', 'adidxbot', ''),
(12, 'Bing (MSNBot)', 'msnbot', ''),
(13, 'Bing (Media)', 'msnbot-media', ''),
(14, 'Cuil', 'twiceler', ''),
(15, 'Ask', 'Teoma', ''),
(16, 'Baidu', 'Baiduspider', ''),
(17, 'Gigablast', 'Gigabot', ''),
(18, 'InternetArchive', 'ia_archiver-web.archive.org', ''),
(19, 'Alexa', 'ia_archiver', ''),
(20, 'Omgili', 'omgilibot', ''),
(21, 'EntireWeb', 'Speedy Spider', ''),
(22, 'Yandex', 'yandex', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_subscriptions`
--

CREATE TABLE `l2j_subscriptions` (
  `id_subscribe` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(6) NOT NULL DEFAULT 0,
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `repeatable` tinyint(4) NOT NULL DEFAULT 0,
  `allow_partial` tinyint(4) NOT NULL DEFAULT 0,
  `reminder` tinyint(4) NOT NULL DEFAULT 0,
  `email_complete` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_teampage_groups`
--

CREATE TABLE `l2j_teampage_groups` (
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_page` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `placement` varchar(10) NOT NULL,
  `position` smallint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_teampage_pages`
--

CREATE TABLE `l2j_teampage_pages` (
  `id_page` smallint(3) UNSIGNED NOT NULL,
  `page_name` varchar(35) NOT NULL,
  `page_action` varchar(15) NOT NULL,
  `page_type` text NOT NULL,
  `page_body` text DEFAULT NULL,
  `page_order` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mods_style` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `page_boards` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_themes`
--

CREATE TABLE `l2j_themes` (
  `id_member` mediumint(9) NOT NULL DEFAULT 0,
  `id_theme` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_themes`
--

INSERT INTO `l2j_themes` (`id_member`, `id_theme`, `variable`, `value`) VALUES
(-1, 1, 'drafts_show_saved_enabled', '1'),
(-1, 1, 'posts_apply_ignore_list', '1'),
(-1, 1, 'return_to_post', '1'),
(0, 1, 'enable_news', '1'),
(0, 1, 'images_url', 'http://l2jforum.lineage2loren.site/Themes/default/images'),
(0, 1, 'name', 'SMF Default Theme - Curve2'),
(0, 1, 'newsfader_time', '3000'),
(0, 1, 'number_recent_posts', '0'),
(0, 1, 'show_latest_member', '1'),
(0, 1, 'show_newsfader', '0'),
(0, 1, 'show_stats_index', '1'),
(0, 1, 'theme_dir', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/default'),
(0, 1, 'theme_url', 'http://l2jforum.lineage2loren.site/Themes/default'),
(0, 1, 'use_image_buttons', '1'),
(1, 1, 'collapse_category_3', '0'),
(1, 1, 'cust_gender', '{gender_1}'),
(2, 1, 'auto_notify', '0'),
(2, 1, 'cust_gender', '{gender_0}'),
(2, 1, 'display_quick_mod', '0'),
(2, 1, 'drafts_autosave_enabled', '0'),
(2, 1, 'drafts_show_saved_enabled', '1'),
(2, 1, 'messages_per_page', '0'),
(2, 1, 'pm_remove_inbox_label', '0'),
(2, 1, 'popup_messages', '0'),
(2, 1, 'posts_apply_ignore_list', '1'),
(2, 1, 'return_to_post', '1'),
(2, 1, 'show_children', '0'),
(2, 1, 'show_no_avatars', '0'),
(2, 1, 'show_no_signatures', '0'),
(2, 1, 'topics_per_page', '0'),
(2, 1, 'view_newest_first', '0'),
(2, 1, 'view_newest_pm_first', '0'),
(2, 1, 'wysiwyg_default', '0'),
(0, 2, 'display_who_viewing', '0'),
(0, 2, 'enable_news', '0'),
(0, 2, 'facebook_url', ''),
(0, 2, 'header_logo_url', 'http://l2jforum.lineage2loren.site/Themes/blindspot/images/logo.png'),
(0, 2, 'images_url', 'http://l2jforum.lineage2loren.site/Themes/blindspot/images'),
(0, 2, 'install_for', '2.1 - 2.1.99, 2.1.1'),
(0, 2, 'linkedin_url', ''),
(0, 2, 'name', 'blindspot1.0'),
(0, 2, 'newsfader_time', '3000'),
(0, 2, 'number_recent_posts', '0'),
(0, 2, 'og_image', ''),
(0, 2, 'rss_url', ''),
(0, 2, 'show_group_key', '0'),
(0, 2, 'show_latest_member', '1'),
(0, 2, 'show_newsfader', '0'),
(0, 2, 'show_stats_index', '1'),
(0, 2, 'smiley_sets_default', ''),
(0, 2, 'theme_dir', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/blindspot'),
(0, 2, 'theme_layers', 'html,body'),
(0, 2, 'theme_templates', 'index'),
(0, 2, 'theme_url', 'http://l2jforum.lineage2loren.site/Themes/blindspot'),
(0, 2, 'top_link_1', ''),
(0, 2, 'top_link_2', ''),
(0, 2, 'top_link_3', ''),
(0, 2, 'top_link_4', ''),
(0, 2, 'top_link_name_1', ''),
(0, 2, 'top_link_name_2', ''),
(0, 2, 'top_link_name_3', ''),
(0, 2, 'top_link_name_4', ''),
(0, 2, 'twitter_url', ''),
(0, 2, 'version', '1.1'),
(0, 2, 'youtube_url', ''),
(1, 2, 'collapse_category_1', '0'),
(1, 2, 'collapse_category_2', '0'),
(1, 2, 'collapse_category_3', '0'),
(1, 2, 'collapse_category_4', '0'),
(1, 2, 'collapse_category_5', '0'),
(1, 2, 'collapse_header_ic', '0'),
(2, 2, 'collapse_category_1', '1'),
(2, 2, 'collapse_category_3', '1'),
(2, 2, 'collapse_category_4', '1'),
(2, 2, 'collapse_category_5', '1'),
(0, 3, 'images_url', 'http://l2jforum.lineage2loren.site/Themes/Burnt/images'),
(0, 3, 'install_for', '2.1 - 2.1.99'),
(0, 3, 'name', 'Burnt'),
(0, 3, 'theme_dir', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/Burnt'),
(0, 3, 'theme_layers', 'html,body'),
(0, 3, 'theme_templates', 'index'),
(0, 3, 'theme_url', 'http://l2jforum.lineage2loren.site/Themes/Burnt'),
(0, 3, 'version', '1.0.1'),
(0, 4, 'based_on', ''),
(0, 4, 'based_on_dir', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/default'),
(0, 4, 'images_url', 'http://l2jforum.lineage2loren.site/Themes/theme1/images'),
(0, 4, 'install_for', '2.1 - 2.1.99, 2.1.4'),
(0, 4, 'name', 'theme1'),
(0, 4, 'theme_dir', '/home/vol1_5/hstn.me/mseet_39018685/l2jforum.lineage2loren.site/htdocs/Themes/theme1'),
(0, 4, 'theme_layers', 'html,body'),
(0, 4, 'theme_templates', 'index'),
(0, 4, 'theme_url', 'http://l2jforum.lineage2loren.site/Themes/theme1'),
(0, 4, 'version', '1.0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_topics`
--

CREATE TABLE `l2j_topics` (
  `id_topic` mediumint(8) UNSIGNED NOT NULL,
  `is_sticky` tinyint(4) NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_first_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_last_msg` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member_started` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_member_updated` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_poll` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_previous_board` smallint(6) NOT NULL DEFAULT 0,
  `id_previous_topic` mediumint(9) NOT NULL DEFAULT 0,
  `num_replies` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `num_views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `redirect_expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_redirect_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `unapproved_posts` smallint(6) NOT NULL DEFAULT 0,
  `approved` tinyint(4) NOT NULL DEFAULT 1,
  `id_prefix` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_topics`
--

INSERT INTO `l2j_topics` (`id_topic`, `is_sticky`, `id_board`, `id_first_msg`, `id_last_msg`, `id_member_started`, `id_member_updated`, `id_poll`, `id_previous_board`, `id_previous_topic`, `num_replies`, `num_views`, `locked`, `redirect_expires`, `id_redirect_topic`, `unapproved_posts`, `approved`, `id_prefix`) VALUES
(2, 0, 69, 2, 2, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1),
(3, 0, 75, 3, 3, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1, 0),
(4, 0, 76, 4, 4, 1, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 1, 0),
(5, 0, 52, 5, 5, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0),
(6, 1, 49, 6, 6, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0),
(7, 0, 13, 7, 7, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0),
(8, 0, 9, 8, 8, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0),
(9, 0, 54, 9, 9, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0),
(10, 0, 54, 10, 10, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0),
(11, 0, 54, 11, 11, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0),
(12, 0, 49, 12, 12, 1, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0),
(13, 0, 49, 13, 13, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_user_alerts`
--

CREATE TABLE `l2j_user_alerts` (
  `id_alert` int(10) UNSIGNED NOT NULL,
  `alert_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_member_started` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `member_name` varchar(255) NOT NULL DEFAULT '',
  `content_type` varchar(255) NOT NULL DEFAULT '',
  `content_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content_action` varchar(255) NOT NULL DEFAULT '',
  `is_read` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `extra` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_user_alerts`
--

INSERT INTO `l2j_user_alerts` (`id_alert`, `alert_time`, `id_member`, `id_member_started`, `member_name`, `content_type`, `content_id`, `content_action`, `is_read`, `extra`) VALUES
(1, 1748318864, 2, 1, 'Wazah', 'member', 1, 'buddy_request', 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_user_alerts_prefs`
--

CREATE TABLE `l2j_user_alerts_prefs` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `alert_pref` varchar(32) NOT NULL DEFAULT '',
  `alert_value` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `l2j_user_alerts_prefs`
--

INSERT INTO `l2j_user_alerts_prefs` (`id_member`, `alert_pref`, `alert_value`) VALUES
(0, 'alert_timeout', 10),
(0, 'announcements', 0),
(0, 'birthday', 2),
(0, 'board_notify', 1),
(0, 'buddy_request', 1),
(0, 'groupr_approved', 3),
(0, 'groupr_rejected', 3),
(0, 'member_group_request', 1),
(0, 'member_register', 1),
(0, 'member_report', 3),
(0, 'member_report_reply', 3),
(0, 'msg_auto_notify', 0),
(0, 'msg_like', 1),
(0, 'msg_mention', 1),
(0, 'msg_notify_pref', 1),
(0, 'msg_notify_type', 1),
(0, 'msg_quote', 1),
(0, 'msg_receive_body', 0),
(0, 'msg_report', 1),
(0, 'msg_report_reply', 1),
(0, 'pm_new', 1),
(0, 'pm_notify', 1),
(0, 'pm_reply', 1),
(0, 'request_group', 1),
(0, 'topic_notify', 1),
(0, 'unapproved_attachment', 1),
(0, 'unapproved_post', 1),
(0, 'unapproved_reply', 3),
(0, 'warn_any', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_user_drafts`
--

CREATE TABLE `l2j_user_drafts` (
  `id_draft` int(10) UNSIGNED NOT NULL,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id_reply` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `poster_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT 1,
  `body` mediumtext NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `is_sticky` tinyint(4) NOT NULL DEFAULT 0,
  `to_list` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `l2j_user_likes`
--

CREATE TABLE `l2j_user_likes` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `content_type` char(6) NOT NULL DEFAULT '',
  `content_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `like_time` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `l2j_admin_info_files`
--
ALTER TABLE `l2j_admin_info_files`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `idx_filename` (`filename`(30));

--
-- Índices de tabela `l2j_attachments`
--
ALTER TABLE `l2j_attachments`
  ADD PRIMARY KEY (`id_attach`),
  ADD UNIQUE KEY `idx_id_member` (`id_member`,`id_attach`),
  ADD KEY `idx_id_msg` (`id_msg`),
  ADD KEY `idx_attachment_type` (`attachment_type`),
  ADD KEY `idx_id_thumb` (`id_thumb`);

--
-- Índices de tabela `l2j_background_tasks`
--
ALTER TABLE `l2j_background_tasks`
  ADD PRIMARY KEY (`id_task`);

--
-- Índices de tabela `l2j_ban_groups`
--
ALTER TABLE `l2j_ban_groups`
  ADD PRIMARY KEY (`id_ban_group`);

--
-- Índices de tabela `l2j_ban_items`
--
ALTER TABLE `l2j_ban_items`
  ADD PRIMARY KEY (`id_ban`),
  ADD KEY `idx_id_ban_group` (`id_ban_group`),
  ADD KEY `idx_id_ban_ip` (`ip_low`,`ip_high`);

--
-- Índices de tabela `l2j_boards`
--
ALTER TABLE `l2j_boards`
  ADD PRIMARY KEY (`id_board`),
  ADD UNIQUE KEY `idx_categories` (`id_cat`,`id_board`),
  ADD KEY `idx_id_parent` (`id_parent`),
  ADD KEY `idx_id_msg_updated` (`id_msg_updated`),
  ADD KEY `idx_member_groups` (`member_groups`(48));

--
-- Índices de tabela `l2j_board_permissions`
--
ALTER TABLE `l2j_board_permissions`
  ADD PRIMARY KEY (`id_group`,`id_profile`,`permission`);

--
-- Índices de tabela `l2j_board_permissions_view`
--
ALTER TABLE `l2j_board_permissions_view`
  ADD PRIMARY KEY (`id_group`,`id_board`,`deny`);

--
-- Índices de tabela `l2j_calendar`
--
ALTER TABLE `l2j_calendar`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `idx_start_date` (`start_date`),
  ADD KEY `idx_end_date` (`end_date`),
  ADD KEY `idx_topic` (`id_topic`,`id_member`);

--
-- Índices de tabela `l2j_calendar_holidays`
--
ALTER TABLE `l2j_calendar_holidays`
  ADD PRIMARY KEY (`id_holiday`),
  ADD KEY `idx_event_date` (`event_date`);

--
-- Índices de tabela `l2j_categories`
--
ALTER TABLE `l2j_categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices de tabela `l2j_custom_fields`
--
ALTER TABLE `l2j_custom_fields`
  ADD PRIMARY KEY (`id_field`),
  ADD UNIQUE KEY `idx_col_name` (`col_name`);

--
-- Índices de tabela `l2j_group_moderators`
--
ALTER TABLE `l2j_group_moderators`
  ADD PRIMARY KEY (`id_group`,`id_member`);

--
-- Índices de tabela `l2j_log_actions`
--
ALTER TABLE `l2j_log_actions`
  ADD PRIMARY KEY (`id_action`),
  ADD KEY `idx_id_log` (`id_log`),
  ADD KEY `idx_log_time` (`log_time`),
  ADD KEY `idx_id_member` (`id_member`),
  ADD KEY `idx_id_board` (`id_board`),
  ADD KEY `idx_id_msg` (`id_msg`),
  ADD KEY `idx_id_topic_id_log` (`id_topic`,`id_log`);

--
-- Índices de tabela `l2j_log_activity`
--
ALTER TABLE `l2j_log_activity`
  ADD PRIMARY KEY (`date`);

--
-- Índices de tabela `l2j_log_banned`
--
ALTER TABLE `l2j_log_banned`
  ADD PRIMARY KEY (`id_ban_log`),
  ADD KEY `idx_log_time` (`log_time`);

--
-- Índices de tabela `l2j_log_boards`
--
ALTER TABLE `l2j_log_boards`
  ADD PRIMARY KEY (`id_member`,`id_board`);

--
-- Índices de tabela `l2j_log_comments`
--
ALTER TABLE `l2j_log_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `idx_id_recipient` (`id_recipient`),
  ADD KEY `idx_log_time` (`log_time`),
  ADD KEY `idx_comment_type` (`comment_type`);

--
-- Índices de tabela `l2j_log_errors`
--
ALTER TABLE `l2j_log_errors`
  ADD PRIMARY KEY (`id_error`),
  ADD KEY `idx_log_time` (`log_time`),
  ADD KEY `idx_id_member` (`id_member`),
  ADD KEY `idx_ip` (`ip`);

--
-- Índices de tabela `l2j_log_floodcontrol`
--
ALTER TABLE `l2j_log_floodcontrol`
  ADD PRIMARY KEY (`ip`,`log_type`);

--
-- Índices de tabela `l2j_log_group_requests`
--
ALTER TABLE `l2j_log_group_requests`
  ADD PRIMARY KEY (`id_request`),
  ADD KEY `idx_id_member` (`id_member`,`id_group`);

--
-- Índices de tabela `l2j_log_mark_read`
--
ALTER TABLE `l2j_log_mark_read`
  ADD PRIMARY KEY (`id_member`,`id_board`);

--
-- Índices de tabela `l2j_log_member_notices`
--
ALTER TABLE `l2j_log_member_notices`
  ADD PRIMARY KEY (`id_notice`);

--
-- Índices de tabela `l2j_log_notify`
--
ALTER TABLE `l2j_log_notify`
  ADD PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  ADD KEY `idx_id_topic` (`id_topic`,`id_member`);

--
-- Índices de tabela `l2j_log_online`
--
ALTER TABLE `l2j_log_online`
  ADD PRIMARY KEY (`session`),
  ADD KEY `idx_log_time` (`log_time`),
  ADD KEY `idx_id_member` (`id_member`);

--
-- Índices de tabela `l2j_log_packages`
--
ALTER TABLE `l2j_log_packages`
  ADD PRIMARY KEY (`id_install`),
  ADD KEY `idx_filename` (`filename`(15));

--
-- Índices de tabela `l2j_log_polls`
--
ALTER TABLE `l2j_log_polls`
  ADD KEY `idx_id_poll` (`id_poll`,`id_member`,`id_choice`);

--
-- Índices de tabela `l2j_log_reported`
--
ALTER TABLE `l2j_log_reported`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `idx_id_member` (`id_member`),
  ADD KEY `idx_id_topic` (`id_topic`),
  ADD KEY `idx_closed` (`closed`),
  ADD KEY `idx_time_started` (`time_started`),
  ADD KEY `idx_id_msg` (`id_msg`);

--
-- Índices de tabela `l2j_log_reported_comments`
--
ALTER TABLE `l2j_log_reported_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `idx_id_report` (`id_report`),
  ADD KEY `idx_id_member` (`id_member`),
  ADD KEY `idx_time_sent` (`time_sent`);

--
-- Índices de tabela `l2j_log_scheduled_tasks`
--
ALTER TABLE `l2j_log_scheduled_tasks`
  ADD PRIMARY KEY (`id_log`);

--
-- Índices de tabela `l2j_log_search_messages`
--
ALTER TABLE `l2j_log_search_messages`
  ADD PRIMARY KEY (`id_search`,`id_msg`);

--
-- Índices de tabela `l2j_log_search_results`
--
ALTER TABLE `l2j_log_search_results`
  ADD PRIMARY KEY (`id_search`,`id_topic`);

--
-- Índices de tabela `l2j_log_search_subjects`
--
ALTER TABLE `l2j_log_search_subjects`
  ADD PRIMARY KEY (`word`,`id_topic`),
  ADD KEY `idx_id_topic` (`id_topic`);

--
-- Índices de tabela `l2j_log_search_topics`
--
ALTER TABLE `l2j_log_search_topics`
  ADD PRIMARY KEY (`id_search`,`id_topic`);

--
-- Índices de tabela `l2j_log_spider_hits`
--
ALTER TABLE `l2j_log_spider_hits`
  ADD PRIMARY KEY (`id_hit`),
  ADD KEY `idx_id_spider` (`id_spider`),
  ADD KEY `idx_log_time` (`log_time`),
  ADD KEY `idx_processed` (`processed`);

--
-- Índices de tabela `l2j_log_spider_stats`
--
ALTER TABLE `l2j_log_spider_stats`
  ADD PRIMARY KEY (`stat_date`,`id_spider`);

--
-- Índices de tabela `l2j_log_subscribed`
--
ALTER TABLE `l2j_log_subscribed`
  ADD PRIMARY KEY (`id_sublog`),
  ADD UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  ADD KEY `idx_end_time` (`end_time`),
  ADD KEY `idx_reminder_sent` (`reminder_sent`),
  ADD KEY `idx_payments_pending` (`payments_pending`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_id_member` (`id_member`);

--
-- Índices de tabela `l2j_log_topics`
--
ALTER TABLE `l2j_log_topics`
  ADD PRIMARY KEY (`id_member`,`id_topic`),
  ADD KEY `idx_id_topic` (`id_topic`);

--
-- Índices de tabela `l2j_mail_queue`
--
ALTER TABLE `l2j_mail_queue`
  ADD PRIMARY KEY (`id_mail`),
  ADD KEY `idx_time_sent` (`time_sent`),
  ADD KEY `idx_mail_priority` (`priority`,`id_mail`);

--
-- Índices de tabela `l2j_membergroups`
--
ALTER TABLE `l2j_membergroups`
  ADD PRIMARY KEY (`id_group`),
  ADD KEY `idx_min_posts` (`min_posts`);

--
-- Índices de tabela `l2j_members`
--
ALTER TABLE `l2j_members`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `idx_member_name` (`member_name`),
  ADD KEY `idx_real_name` (`real_name`),
  ADD KEY `idx_email_address` (`email_address`),
  ADD KEY `idx_date_registered` (`date_registered`),
  ADD KEY `idx_id_group` (`id_group`),
  ADD KEY `idx_birthdate` (`birthdate`),
  ADD KEY `idx_posts` (`posts`),
  ADD KEY `idx_last_login` (`last_login`),
  ADD KEY `idx_lngfile` (`lngfile`(30)),
  ADD KEY `idx_id_post_group` (`id_post_group`),
  ADD KEY `idx_warning` (`warning`),
  ADD KEY `idx_total_time_logged_in` (`total_time_logged_in`),
  ADD KEY `idx_id_theme` (`id_theme`),
  ADD KEY `idx_active_real_name` (`is_activated`,`real_name`);

--
-- Índices de tabela `l2j_member_logins`
--
ALTER TABLE `l2j_member_logins`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `idx_id_member` (`id_member`),
  ADD KEY `idx_time` (`time`);

--
-- Índices de tabela `l2j_mentions`
--
ALTER TABLE `l2j_mentions`
  ADD PRIMARY KEY (`content_id`,`content_type`,`id_mentioned`),
  ADD KEY `content` (`content_id`,`content_type`),
  ADD KEY `mentionee` (`id_member`);

--
-- Índices de tabela `l2j_messages`
--
ALTER TABLE `l2j_messages`
  ADD PRIMARY KEY (`id_msg`),
  ADD UNIQUE KEY `idx_id_board` (`id_board`,`id_msg`,`approved`),
  ADD UNIQUE KEY `idx_id_member` (`id_member`,`id_msg`),
  ADD KEY `idx_ip_index` (`poster_ip`,`id_topic`),
  ADD KEY `idx_participation` (`id_member`,`id_topic`),
  ADD KEY `idx_show_posts` (`id_member`,`id_board`),
  ADD KEY `idx_id_member_msg` (`id_member`,`approved`,`id_msg`),
  ADD KEY `idx_current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  ADD KEY `idx_related_ip` (`id_member`,`poster_ip`,`id_msg`),
  ADD KEY `idx_likes` (`likes`);

--
-- Índices de tabela `l2j_message_icons`
--
ALTER TABLE `l2j_message_icons`
  ADD PRIMARY KEY (`id_icon`),
  ADD KEY `idx_id_board` (`id_board`);

--
-- Índices de tabela `l2j_moderators`
--
ALTER TABLE `l2j_moderators`
  ADD PRIMARY KEY (`id_board`,`id_member`);

--
-- Índices de tabela `l2j_moderator_groups`
--
ALTER TABLE `l2j_moderator_groups`
  ADD PRIMARY KEY (`id_board`,`id_group`);

--
-- Índices de tabela `l2j_package_servers`
--
ALTER TABLE `l2j_package_servers`
  ADD PRIMARY KEY (`id_server`);

--
-- Índices de tabela `l2j_permissions`
--
ALTER TABLE `l2j_permissions`
  ADD PRIMARY KEY (`id_group`,`permission`);

--
-- Índices de tabela `l2j_permission_profiles`
--
ALTER TABLE `l2j_permission_profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- Índices de tabela `l2j_personal_messages`
--
ALTER TABLE `l2j_personal_messages`
  ADD PRIMARY KEY (`id_pm`),
  ADD KEY `idx_id_member` (`id_member_from`,`deleted_by_sender`),
  ADD KEY `idx_msgtime` (`msgtime`),
  ADD KEY `idx_id_pm_head` (`id_pm_head`);

--
-- Índices de tabela `l2j_pm_labeled_messages`
--
ALTER TABLE `l2j_pm_labeled_messages`
  ADD PRIMARY KEY (`id_label`,`id_pm`);

--
-- Índices de tabela `l2j_pm_labels`
--
ALTER TABLE `l2j_pm_labels`
  ADD PRIMARY KEY (`id_label`);

--
-- Índices de tabela `l2j_pm_recipients`
--
ALTER TABLE `l2j_pm_recipients`
  ADD PRIMARY KEY (`id_pm`,`id_member`),
  ADD UNIQUE KEY `idx_id_member` (`id_member`,`deleted`,`id_pm`);

--
-- Índices de tabela `l2j_pm_rules`
--
ALTER TABLE `l2j_pm_rules`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `idx_id_member` (`id_member`),
  ADD KEY `idx_delete_pm` (`delete_pm`);

--
-- Índices de tabela `l2j_polls`
--
ALTER TABLE `l2j_polls`
  ADD PRIMARY KEY (`id_poll`);

--
-- Índices de tabela `l2j_poll_choices`
--
ALTER TABLE `l2j_poll_choices`
  ADD PRIMARY KEY (`id_poll`,`id_choice`);

--
-- Índices de tabela `l2j_postprefixes`
--
ALTER TABLE `l2j_postprefixes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_status` (`name`,`status`);

--
-- Índices de tabela `l2j_postprefixes_boards`
--
ALTER TABLE `l2j_postprefixes_boards`
  ADD PRIMARY KEY (`id_prefix`,`id_board`);

--
-- Índices de tabela `l2j_postprefixes_groups`
--
ALTER TABLE `l2j_postprefixes_groups`
  ADD PRIMARY KEY (`id_prefix`,`id_group`);

--
-- Índices de tabela `l2j_pretty_topic_urls`
--
ALTER TABLE `l2j_pretty_topic_urls`
  ADD PRIMARY KEY (`id_topic`),
  ADD UNIQUE KEY `pretty_url` (`pretty_url`);

--
-- Índices de tabela `l2j_pretty_urls_cache`
--
ALTER TABLE `l2j_pretty_urls_cache`
  ADD PRIMARY KEY (`url_id`(191));

--
-- Índices de tabela `l2j_qanda`
--
ALTER TABLE `l2j_qanda`
  ADD PRIMARY KEY (`id_question`),
  ADD KEY `idx_lngfile` (`lngfile`);

--
-- Índices de tabela `l2j_scheduled_tasks`
--
ALTER TABLE `l2j_scheduled_tasks`
  ADD PRIMARY KEY (`id_task`),
  ADD UNIQUE KEY `idx_task` (`task`),
  ADD KEY `idx_next_time` (`next_time`),
  ADD KEY `idx_disabled` (`disabled`);

--
-- Índices de tabela `l2j_sessions`
--
ALTER TABLE `l2j_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Índices de tabela `l2j_settings`
--
ALTER TABLE `l2j_settings`
  ADD PRIMARY KEY (`variable`(30));

--
-- Índices de tabela `l2j_smileys`
--
ALTER TABLE `l2j_smileys`
  ADD PRIMARY KEY (`id_smiley`);

--
-- Índices de tabela `l2j_smiley_files`
--
ALTER TABLE `l2j_smiley_files`
  ADD PRIMARY KEY (`id_smiley`,`smiley_set`);

--
-- Índices de tabela `l2j_spiders`
--
ALTER TABLE `l2j_spiders`
  ADD PRIMARY KEY (`id_spider`);

--
-- Índices de tabela `l2j_subscriptions`
--
ALTER TABLE `l2j_subscriptions`
  ADD PRIMARY KEY (`id_subscribe`),
  ADD KEY `idx_active` (`active`);

--
-- Índices de tabela `l2j_teampage_groups`
--
ALTER TABLE `l2j_teampage_groups`
  ADD PRIMARY KEY (`id_group`,`id_page`),
  ADD KEY `placement` (`placement`);

--
-- Índices de tabela `l2j_teampage_pages`
--
ALTER TABLE `l2j_teampage_pages`
  ADD PRIMARY KEY (`id_page`),
  ADD KEY `page_order_page_action` (`page_order`,`page_action`);

--
-- Índices de tabela `l2j_themes`
--
ALTER TABLE `l2j_themes`
  ADD PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  ADD KEY `idx_id_member` (`id_member`);

--
-- Índices de tabela `l2j_topics`
--
ALTER TABLE `l2j_topics`
  ADD PRIMARY KEY (`id_topic`),
  ADD UNIQUE KEY `idx_last_message` (`id_last_msg`,`id_board`),
  ADD UNIQUE KEY `idx_first_message` (`id_first_msg`,`id_board`),
  ADD UNIQUE KEY `idx_poll` (`id_poll`,`id_topic`),
  ADD KEY `idx_is_sticky` (`is_sticky`),
  ADD KEY `idx_approved` (`approved`),
  ADD KEY `idx_member_started` (`id_member_started`,`id_board`),
  ADD KEY `idx_last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  ADD KEY `idx_board_news` (`id_board`,`id_first_msg`);

--
-- Índices de tabela `l2j_user_alerts`
--
ALTER TABLE `l2j_user_alerts`
  ADD PRIMARY KEY (`id_alert`),
  ADD KEY `idx_id_member` (`id_member`),
  ADD KEY `idx_alert_time` (`alert_time`);

--
-- Índices de tabela `l2j_user_alerts_prefs`
--
ALTER TABLE `l2j_user_alerts_prefs`
  ADD PRIMARY KEY (`id_member`,`alert_pref`);

--
-- Índices de tabela `l2j_user_drafts`
--
ALTER TABLE `l2j_user_drafts`
  ADD PRIMARY KEY (`id_draft`),
  ADD UNIQUE KEY `idx_id_member` (`id_member`,`id_draft`,`type`);

--
-- Índices de tabela `l2j_user_likes`
--
ALTER TABLE `l2j_user_likes`
  ADD PRIMARY KEY (`content_id`,`content_type`,`id_member`),
  ADD KEY `content` (`content_id`,`content_type`),
  ADD KEY `liker` (`id_member`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `l2j_admin_info_files`
--
ALTER TABLE `l2j_admin_info_files`
  MODIFY `id_file` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `l2j_attachments`
--
ALTER TABLE `l2j_attachments`
  MODIFY `id_attach` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `l2j_background_tasks`
--
ALTER TABLE `l2j_background_tasks`
  MODIFY `id_task` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `l2j_ban_groups`
--
ALTER TABLE `l2j_ban_groups`
  MODIFY `id_ban_group` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_ban_items`
--
ALTER TABLE `l2j_ban_items`
  MODIFY `id_ban` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_boards`
--
ALTER TABLE `l2j_boards`
  MODIFY `id_board` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `l2j_calendar`
--
ALTER TABLE `l2j_calendar`
  MODIFY `id_event` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_calendar_holidays`
--
ALTER TABLE `l2j_calendar_holidays`
  MODIFY `id_holiday` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT de tabela `l2j_categories`
--
ALTER TABLE `l2j_categories`
  MODIFY `id_cat` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `l2j_custom_fields`
--
ALTER TABLE `l2j_custom_fields`
  MODIFY `id_field` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `l2j_log_actions`
--
ALTER TABLE `l2j_log_actions`
  MODIFY `id_action` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT de tabela `l2j_log_banned`
--
ALTER TABLE `l2j_log_banned`
  MODIFY `id_ban_log` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_log_comments`
--
ALTER TABLE `l2j_log_comments`
  MODIFY `id_comment` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_log_errors`
--
ALTER TABLE `l2j_log_errors`
  MODIFY `id_error` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `l2j_log_group_requests`
--
ALTER TABLE `l2j_log_group_requests`
  MODIFY `id_request` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_log_member_notices`
--
ALTER TABLE `l2j_log_member_notices`
  MODIFY `id_notice` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_log_packages`
--
ALTER TABLE `l2j_log_packages`
  MODIFY `id_install` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `l2j_log_reported`
--
ALTER TABLE `l2j_log_reported`
  MODIFY `id_report` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_log_reported_comments`
--
ALTER TABLE `l2j_log_reported_comments`
  MODIFY `id_comment` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_log_scheduled_tasks`
--
ALTER TABLE `l2j_log_scheduled_tasks`
  MODIFY `id_log` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de tabela `l2j_log_spider_hits`
--
ALTER TABLE `l2j_log_spider_hits`
  MODIFY `id_hit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_log_subscribed`
--
ALTER TABLE `l2j_log_subscribed`
  MODIFY `id_sublog` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_mail_queue`
--
ALTER TABLE `l2j_mail_queue`
  MODIFY `id_mail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_membergroups`
--
ALTER TABLE `l2j_membergroups`
  MODIFY `id_group` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `l2j_members`
--
ALTER TABLE `l2j_members`
  MODIFY `id_member` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `l2j_member_logins`
--
ALTER TABLE `l2j_member_logins`
  MODIFY `id_login` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `l2j_messages`
--
ALTER TABLE `l2j_messages`
  MODIFY `id_msg` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `l2j_message_icons`
--
ALTER TABLE `l2j_message_icons`
  MODIFY `id_icon` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `l2j_package_servers`
--
ALTER TABLE `l2j_package_servers`
  MODIFY `id_server` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `l2j_permission_profiles`
--
ALTER TABLE `l2j_permission_profiles`
  MODIFY `id_profile` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `l2j_personal_messages`
--
ALTER TABLE `l2j_personal_messages`
  MODIFY `id_pm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_pm_labels`
--
ALTER TABLE `l2j_pm_labels`
  MODIFY `id_label` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_pm_rules`
--
ALTER TABLE `l2j_pm_rules`
  MODIFY `id_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_polls`
--
ALTER TABLE `l2j_polls`
  MODIFY `id_poll` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_postprefixes`
--
ALTER TABLE `l2j_postprefixes`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `l2j_qanda`
--
ALTER TABLE `l2j_qanda`
  MODIFY `id_question` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_scheduled_tasks`
--
ALTER TABLE `l2j_scheduled_tasks`
  MODIFY `id_task` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `l2j_smileys`
--
ALTER TABLE `l2j_smileys`
  MODIFY `id_smiley` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `l2j_spiders`
--
ALTER TABLE `l2j_spiders`
  MODIFY `id_spider` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `l2j_subscriptions`
--
ALTER TABLE `l2j_subscriptions`
  MODIFY `id_subscribe` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_teampage_pages`
--
ALTER TABLE `l2j_teampage_pages`
  MODIFY `id_page` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `l2j_topics`
--
ALTER TABLE `l2j_topics`
  MODIFY `id_topic` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `l2j_user_alerts`
--
ALTER TABLE `l2j_user_alerts`
  MODIFY `id_alert` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `l2j_user_drafts`
--
ALTER TABLE `l2j_user_drafts`
  MODIFY `id_draft` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
