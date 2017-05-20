{if isset($_items) && is_array($_items)}
    {foreach $_items as $item}
        {if $item.user_is_online == '1'}
            {$online = '1'}
        {/if}
        {if strlen($item.user_birthdate) > 0}
            <span>{jrCore_icon icon="birthday" size="16" color="11ab6b"} {jrCore_lang skin="jrNewLucid" id=59 default="Birthday"} {$item.user_birthdate|jrCore_date_birthday_format:"%B %d"}</span>
        {/if}
    {/foreach}
    {if $online == '1'}
         <span class="online_status"> {jrCore_icon icon="online" size="16" color="ff5500"} {jrCore_lang module="jrUser" id="101" default="online"}</span>
    {else}
        <span class="online_status">{jrCore_icon icon="online" size="16" color="333333"} {jrCore_lang module="jrUser" id="102" default="offline"}</span>
    {/if}
{/if}