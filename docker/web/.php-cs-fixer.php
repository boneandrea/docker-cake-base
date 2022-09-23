<?php
/*
 * This document has been generated with
 * https://mlocati.github.io/php-cs-fixer-configurator/?version=2.15#configurator
 * you can change this configuration by importing this file.
 */

$finder = PhpCsFixer\Finder::create()
	->exclude('vendor')
	->notPath('src/Symfony/Component/Translation/Tests/fixtures/resources.php')
	->in(__DIR__)
;

$config = new PhpCsFixer\Config();

return $config
	->setIndent("\t")
	->setRules([
		'@PSR1' => true,
		'@PSR2' => true,
		'@Symfony' => true,
		'array_syntax' => ['syntax' => 'short'],
		'no_alternative_syntax' => false,
		'echo_tag_syntax' => false,
		'semicolon_after_instruction' => false,
		'yoda_style' => ['equal' => false, 'identical' => false],
	])
	->setFinder(PhpCsFixer\Finder::create())
    ;
