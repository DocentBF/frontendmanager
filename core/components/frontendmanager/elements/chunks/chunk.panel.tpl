<div id="frontendManager" class="fm-panel" >
	<a href="manager" target="_blank" class="logo"><img src="manager/templates/default/images/modx-icon-color.svg"></a>
	<a href="manager/?a=resource/update&id={$_modx->resource.id}" data-action="iframe"><span class="icon-edit"></span> <span class="fm-text">Редактировать страницу</span></a>
	<a href="manager/?a=security/user" data-action="iframe"><span class="icon-users"></span> <span class="fm-text">Пользователи</span></a>
	<a href="manager/?id=0&a=context/update&key={$_modx->context.key}" data-action="iframe"><span class="icon-earth"></span> <span class="fm-text">Настройки контекста</span></a>
	<a href="manager/?a=system/settings" data-action="iframe"><span class="icon-settings"></span> <span class="fm-text">Настройки</span></a>
	<a href="manager/?a=system/event" data-action="iframe"><span class="fm-text">Журнал ошибок</span></a>
	<a href="manager/?a=system/refresh_site" data-action="iframe"><span class="fm-text">Очистить кэш</span></a>
</div>
