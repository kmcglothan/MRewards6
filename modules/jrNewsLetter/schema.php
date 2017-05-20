<?php
/**
 * Jamroom Newsletters module
 *
 * copyright 2017 The Jamroom Network
 *
 * This Jamroom file is LICENSED SOFTWARE, and cannot be redistributed.
 *
 * This Source Code is subject to the terms of the Jamroom Network
 * Commercial License -  please see the included "license.html" file.
 *
 * This module may include works that are not developed by
 * The Jamroom Network
 * and are used under license - any licenses are included and
 * can be found in the "contrib" directory within this module.
 *
 * This software is provided "as is" and any express or implied
 * warranties, including, but not limited to, the implied warranties
 * of merchantability and fitness for a particular purpose are
 * disclaimed.  In no event shall the Jamroom Network be liable for
 * any direct, indirect, incidental, special, exemplary or
 * consequential damages (including but not limited to, procurement
 * of substitute goods or services; loss of use, data or profits;
 * or business interruption) however caused and on any theory of
 * liability, whether in contract, strict liability, or tort
 * (including negligence or otherwise) arising from the use of this
 * software, even if advised of the possibility of such damage.
 * Some jurisdictions may not allow disclaimers of implied warranties
 * and certain statements in the above disclaimer may not apply to
 * you as regards implied warranties; the other terms and conditions
 * remain enforceable notwithstanding. In some jurisdictions it is
 * not permitted to limit liability and therefore such limitations
 * may not apply to you.
 *
 * @copyright 2012 Talldude Networks, LLC.
 */

// make sure we are not being called directly
defined('APP_DIR') or exit();

/**
 * db_schema
 */
function jrNewsLetter_db_schema()
{
    jrCore_db_create_datastore('jrNewsLetter', 'letter');

    // Open Tracking (no longer used)
    $_tmp = array(
        "t_uid INT(11) UNSIGNED NOT NULL DEFAULT '0'",
        "t_lid INT(11) UNSIGNED NOT NULL DEFAULT '0'",
        "UNIQUE tid (t_uid, t_lid)",
        "INDEX t_lid (t_lid)"
    );
    jrCore_db_verify_table('jrNewsLetter', 'track', $_tmp);

    // Templates
    $_tmp = array(
        "t_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY",
        "t_time INT(11) UNSIGNED NOT NULL DEFAULT '0'",
        "t_title VARCHAR(256) NOT NULL DEFAULT ''",
        "t_template MEDIUMTEXT NOT NULL",
        "UNIQUE t_title (t_title)",
        "INDEX t_time (t_time)"
    );
    jrCore_db_verify_table('jrNewsLetter', 'template', $_tmp);

    // Newsletter Sent Emails
    $_tmp = array(
        "e_lid INT(11) UNSIGNED NOT NULL DEFAULT '0'",
        "e_time INT(11) UNSIGNED NOT NULL DEFAULT '0'",
        "e_emails LONGTEXT NOT NULL",
        "INDEX e_lid (e_lid)"
    );
    jrCore_db_verify_table('jrNewsLetter', 'emails', $_tmp);

    return true;
}
