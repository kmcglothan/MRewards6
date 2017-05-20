<?php
/**
 * Jamroom Forum module
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
 * @copyright 2015 Talldude Networks, LLC.
 */

// make sure we are not being called directly
defined('APP_DIR') or exit();

/**
 * verify
 */
function jrForum_verify()
{
    // Bad form designer entries
    $tbl = jrCore_db_table_name('jrCore', 'form');
    $req = "DELETE FROM {$tbl} WHERE `module` = 'jrForum' AND `name` IN('forum_text','forum_locked','forum_pinned')";
    jrCore_db_query($req);

    // Keys no longer being used in DS:
    jrCore_db_delete_key_from_all_items('jrForum', 'forum_profile_url');
    jrCore_db_delete_key_from_all_items('jrForum', 'forum_updated_user_name');
    jrCore_db_delete_key_from_all_items('jrForum', 'forum_updated_profile_url');

    return true;
}
