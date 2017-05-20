<div style="display:inline-block;vertical-align:middle;">
{if $jrRating.norate == 1}
    <ul class="star-rating">
        <li class="current-rating" style="width:{$jrRating.current}%;"></li>
        <li class="star1-rating"></li>
        <li class="star2-rating"></li>
        <li class="star3-rating"></li>
        <li class="star4-rating"></li>
        <li class="star5-rating"></li>
    </ul>
{else}
    <ul class="star-rating">
        <li id="{$jrRating.html_id}" class="current-rating" style="width:{$jrRating.current}%;"></li>
        <li><a title="{$jrRating.values.1}" class="star1-rating" onclick="jrRating_rate_item('#{$jrRating.html_id}','1','{$jrRating.module_url}','{$jrRating.item_id}','{$jrRating.index}');"></a></li>
        <li><a title="{$jrRating.values.2}" class="star2-rating" onclick="jrRating_rate_item('#{$jrRating.html_id}','2','{$jrRating.module_url}','{$jrRating.item_id}','{$jrRating.index}');"></a></li>
        <li><a title="{$jrRating.values.3}" class="star3-rating" onclick="jrRating_rate_item('#{$jrRating.html_id}','3','{$jrRating.module_url}','{$jrRating.item_id}','{$jrRating.index}');"></a></li>
        <li><a title="{$jrRating.values.4}" class="star4-rating" onclick="jrRating_rate_item('#{$jrRating.html_id}','4','{$jrRating.module_url}','{$jrRating.item_id}','{$jrRating.index}');"></a></li>
        <li><a title="{$jrRating.values.5}" class="star5-rating" onclick="jrRating_rate_item('#{$jrRating.html_id}','5','{$jrRating.module_url}','{$jrRating.item_id}','{$jrRating.index}');"></a></li>
    </ul>
{/if}
</div>

