<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'revando' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'FC,MFM.C(9MPpMfM+Y%-CqDUjWDjyFa$ ].;/nC:xO2O.[zmYT)`Fq*6;gEm6uy]' );
define( 'SECURE_AUTH_KEY',  'wP22o.m5Br=0[9s.E78Omc>)nf&K-g~udSGs:=*ncUC2FyzExgMI7V|8/!~i1y;q' );
define( 'LOGGED_IN_KEY',    't~m7rbexNDCg*oO&dAs*rE9OTk5:.-|k@6;!HyY^WE`9]CWCob^#r-r`~1x72_ul' );
define( 'NONCE_KEY',        '#D?E~cjZ8e,CQW/5B@mFEaaFf?WJ?f{x``.Z#_ti{MLbxkFS`#pGe#%rVnw6X#HT' );
define( 'AUTH_SALT',        '16<=re@{FI+i1.Bo=_d5LDyJZK+zvl@FQ0J[]8NGL!C>[7lu;DTVwydZ`f(=6~wT' );
define( 'SECURE_AUTH_SALT', 'cc_97|]>Cw9wGm#BMQmry@)E,+G{wYkJ.y>]O{FS@2|az;>hK_w|~M4]D~8M7 /W' );
define( 'LOGGED_IN_SALT',   'Cw+c,5IKN4VLKknF+lPz0]GkR,du.O*.S4qI =<j]:[vWbYcPU<;OOB1j6eAvFpx' );
define( 'NONCE_SALT',       '34{CnWjZRPq,_`)@~U#qs$@`1V+%HtUTX iRD=TTUa5F3%FqbX1`#sj``9,22!+2' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
