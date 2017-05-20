<?php
/**
 * Jamroom Polls module
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
 * jrPoll_db_schema
 */
function jrPoll_db_schema()
{
    // This module uses a Data Store - create it.
    jrCore_db_create_datastore('jrPoll', 'poll');

    // Poll Votes
    $_tmp = array(
        "created INT(11) UNSIGNED NOT NULL DEFAULT '0'",
        "user_id INT(11) UNSIGNED NOT NULL DEFAULT '0'",
        "user_ip VARCHAR(45) NOT NULL DEFAULT ''",
        "poll_item_id INT(11) UNSIGNED NOT NULL DEFAULT '0'",
        "poll_index TINYINT(3) UNSIGNED NOT NULL DEFAULT '0'",
        "INDEX user_id (user_id)",
        "INDEX user_ip (user_ip)",
        "INDEX poll_item_id (poll_item_id)",
    );
    jrCore_db_verify_table('jrPoll', 'votes', $_tmp);
    return true;
}