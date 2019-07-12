
CREATE TABLE IF NOT EXISTS `#__cck_core_integration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `option` varchar(50) NOT NULL,
  `vars` varchar(255) NOT NULL,
  `view` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_option` (`option`),
  KEY `idx_view` (`view`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=500 ;

INSERT IGNORE INTO `#__cck_core_integration` (`id`, `title`, `name`, `option`, `vars`, `view`) VALUES
(1, 'Joomla! Article', 'joomla_article', 'com_content', '', ''),
(2, 'Joomla! Category', 'joomla_category', 'com_categories', '', ''),
(3, 'Joomla! User', 'joomla_user', 'com_users', '', 'users'),
(4, 'Joomla! User Group', 'joomla_user_group', 'com_users', '', 'groups');


INSERT IGNORE INTO `#__cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(457, 'Core Conditional Trigger', 'core_conditional_trigger', 3, '42', '', 0, 'Condition', ' ', 3, '', '', '', '', '{"preparecontent":"","prepareform":"$form = JCckDev::getForm( ''core_conditional_trigger_type'', '''', $config, array() )\\r\\n      .\\tJCckDev::getForm( ''core_conditional_trigger_value'', '''', $config,\\r\\n        array( ''css''=>''trigger-type'' ) )\\r\\n      . ''&nbsp;<span class=\\"fill trigger-value\\" name=\\"''.$field->location.''\\">&laquo;<\\/span>'';\\r\\n$js = ''\\r\\n$(\\".trigger-value\\").live(\\"click\\", function() {\\r\\nvar url = \\"index.php?option=com_cck&task=box.add&tmpl=component&file=administrator\\/components\\/com_cck\\/views\\/field\\/tmpl\\/selection.php&title=conditional&name=''.$field->extended.''&type=''.$field->location.''\\";\\r\\n$.colorbox({href:url, iframe:true, innerWidth:300, innerHeight:200, scrolling:false, overlayClose:false, fixed:true, onLoad: function(){ $(\\"#cboxClose\\").remove();}}); });'';\\r\\n$field->script = $js;","preparestore":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'trigger', '', '', '', 0, '0000-00-00 00:00:00'),
(458, 'Core Conditional Trigger Type', 'core_conditional_trigger_type', 3, 'select_simple', '', 0, '', ' ', 3, '', '', 'isChanged', 'State Is Equal In=isEqual||State Is Different=isDifferent||State Is Filled=isFilled||State Is Empty=isEmpty||State Is Changed=isChanged', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', 'style="max-width:100px;"', 'dev', '', '', 'trigger_type', '', '', '', 0, '0000-00-00 00:00:00'),
(459, 'Core Conditional Trigger Value', 'core_conditional_trigger_value', 3, 'text', '', 0, 'Value', ' ', 3, '', '', '', '', '', 0, 255, 12, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'trigger_value', '', '', '', 0, '0000-00-00 00:00:00'),
(460, 'Core Dev Password', 'core_dev_password', 3, 'password', '', 0, 'clear', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'password', '', '', '', 0, '0000-00-00 00:00:00'),
(461, 'Core Options Enctype', 'core_options_enctype', 3, 'select_simple', '', 0, 'Enctype', ' ', 3, '', '', '', 'application/x-www-form-urlencoded||multipart/form-data||text/plain', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'json[options2][enctype]', '', '', '', 0, '0000-00-00 00:00:00');


UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$checked1 = ( $config[''item'']->client == ''search'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked2 = ( $config[''item'']->client == ''filter'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked3 = ( $config[''item'']->client == ''order'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked4 = ( $config[''item'']->client == ''list'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$checked5 = ( $config[''item'']->client == ''item'' ) ? ''checked=\\"checked\\"'' : '''';\\r\\n$selected1 = ( $config[''item'']->client == ''search'' ) ? ''selected'' : '''';\\r\\n$selected2 = ( $config[''item'']->client == ''filter'' ) ? ''selected'' : '''';\\r\\n$selected3 = ( $config[''item'']->client == ''order'' ) ? ''selected'' : '''';\\r\\n$selected4 = ( $config[''item'']->client == ''list'' ) ? ''selected'' : '''';\\r\\n$selected5 = ( $config[''item'']->client == ''item'' ) ? ''selected'' : '''';\\r\\n\\r\\n$form = ''<fieldset id=\\"client\\" class=\\"toggle\\">''\\r\\n      . ''<input type=\\"radio\\" id=\\"client1\\" name=\\"client\\" value=\\"search\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked1.'' \\/>''\\r\\n      \\/\\/. ''<input type=\\"radio\\" id=\\"client2\\" name=\\"client\\" value=\\"filter\\" ''\\r\\n      \\/\\/. ''style=\\"display: none\\" ''.$checked2.'' \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"client3\\" name=\\"client\\" value=\\"order\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked3.'' \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"client4\\" name=\\"client\\" value=\\"list\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked4.'' \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"client5\\" name=\\"client\\" value=\\"item\\" ''\\r\\n      . ''style=\\"display: none\\" ''.$checked5.'' \\/>''\\r\\n      . ''<label id=\\"client1_label\\" for=\\"client1\\" class=\\"toggle first ''.$selected1.''\\">''\\r\\n      . JText::_( ''COM_CCK_SEARCH_FORM'' ).''<\\/label>''\\r\\n      \\/\\/. ''<label id=\\"client2_label\\" for=\\"client2\\" class=\\"toggle ''.$selected2.''\\">''\\r\\n      \\/\\/. JText::_( ''COM_CCK_FILTER_FORM'' ).''<\\/label>''\\r\\n      . ''<label id=\\"client3_label\\" for=\\"client3\\" class=\\"toggle ''.$selected3.''\\">''\\r\\n      . JText::_( ''COM_CCK_ORDERING'' ).''<\\/label>''\\r\\n      . ''<label id=\\"client4_label\\" for=\\"client4\\" class=\\"toggle ''.$selected4.''\\">''\\r\\n      . JText::_( ''COM_CCK_LIST'' ).''<\\/label>''\\r\\n      . ''<label id=\\"client5_label\\" for=\\"client5\\" class=\\"toggle last ''.$selected5.''\\">''\\r\\n      . JText::_( ''COM_CCK_ITEM'' ).''<\\/label>''\\r\\n      . ''<div align=\\"center\\" class=\\"subtabs\\">''\\r\\n      . ''<div id=\\"subtab1\\"><\\/div>''\\r\\n      . ''<div id=\\"subtab2\\">''.JText::_( ''COM_CCK_VIEWS'' ).''<\\/div>''\\r\\n      . ''<div id=\\"subtab3\\"><\\/div>''\\r\\n      . ''<\\/div>''\\r\\n      . ''<\\/fieldset>'';"}' WHERE `id` = 68;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$app  = JFactory::getApplication();\\r\\n$view = $app->input->get( ''view'', '''' );\\r\\n$options = array();\\r\\nif ( trim( $field->selectlabel ) ) {\\r\\n  $options = array( JHtml::_( ''select.option'',  '''', ''- ''.$field->selectlabel.'' -'' ) );\\r\\n} else {\\r\\n  $value = ( $value ) ? $value : ''joomla_article'';\\r\\n  $options = array();\\r\\n}\\r\\nif ( $view == ''type'' || $view == ''types'' ) {\\r\\n  $options[] = JHtml::_( ''select.option'', ''none'', JText::_( ''COM_CCK_NONE'' ) );\\r\\n}\\r\\n$class = $field->css ? '' ''.$field->css : '''';\\r\\n$options = array_merge( $options, Helper_Admin::getPluginOptions( ''storage_location'', ''cck_'', false, false, true ) );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select''.$class.''\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 275;

UPDATE `#__cck_core_fields` SET `bool8` = 1 WHERE `type` IN ("freetext");