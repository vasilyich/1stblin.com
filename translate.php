<?php
// Function which encapsulates language translaions of bits of html which require localization
function translate($xsl_filename, $page = NULL, $param = NULL)
{
	$xml = new DOMDocument();
	$xml->load('content.xml');

	$xsl = new DOMDocument;
	$xsl->load($xsl_filename);

	$proc = new XSLTProcessor();
	$proc->importStyleSheet($xsl);

	$proc->setParameter('', 'lang', $_SESSION['lang'] );
	
	if ( !empty($page) ) {
		$proc->setParameter('', 'page', $page );
	}

	if ( !empty($param) ) {
		$proc->setParameter('', 'par', $param );
	}
	echo $proc->transformToXML( $xml );
}
?>