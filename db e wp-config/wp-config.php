<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */
define('FS_METHOD', 'direct');
// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'ranek' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '&tTS!i-L{iq1CY1d1mT/7,#><CFTkU+p;diu*Lsm+B@SIWz`+sqUL|AqF(=4gFD-' );
define( 'SECURE_AUTH_KEY',  ']NO5R<^C|z,8ZmMuT9N(ZmbU.]?j{ffr[#n2 &d9[}#3gB0SP,acf4&rlvz]KO96' );
define( 'LOGGED_IN_KEY',    '$o^)Q^L8zF%avIick6|zmA)?IhT,I7(!5y]L0CWja*` [RN*7=_O`I[ox3]q/A;c' );
define( 'NONCE_KEY',        '*mW}vAJ `P$4Us_#]pWmQl+!aJGQ=Jc hDDHTZ!i1v%}*vf$uG4o{;PJ$T|sEqVB' );
define( 'AUTH_SALT',        '>A{Ba4mVHc0+0>AoAl,a.1Nq~ARUzRR|XzkU:e:8D3?xhUF+`S.k/ihrL<d7+*:H' );
define( 'SECURE_AUTH_SALT', '[}m7aY PD^tR:^+-9?hpo7tdl7e<}1SY^FJ}~>msE/f+$8!$<atm6>y;pPVO/<X3' );
define( 'LOGGED_IN_SALT',   'OCVfU2?EsJwZ7~LMJE,DX67zw]yBTfMT%-;Q;zM5>P&bhK!QY<v`@,SmP[9vzOWH' );
define( 'NONCE_SALT',       '7anwjDr~K`k7-`5[| ]nvZot)0x8,5l}?GFgu48t;W`HN._c}$}C~^}} 4$rk^#f' );
define('JWT_AUTH_SECRET_KEY',',.s)[p_rY|-t?K|-t3vr+)$XRsZjw84y_M9R}OI2k+9<9Lg tbnz,B1n2Un!3F&l');


define('JWT_AUTH_CORS_ENABLE', true);

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'rk_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
