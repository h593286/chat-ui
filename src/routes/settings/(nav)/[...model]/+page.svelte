<script lang="ts">
	import { page } from "$app/stores";
	import { base } from "$app/paths";
	import { env as envPublic } from "$env/dynamic/public";
	import type { BackendModel } from "$lib/server/models";
	import { useSettingsStore } from "$lib/stores/settings";
	import CopyToClipBoardBtn from "$lib/components/CopyToClipBoardBtn.svelte";
	import TokensCounter from "$lib/components/TokensCounter.svelte";
	import CarbonArrowUpRight from "~icons/carbon/arrow-up-right";
	import CarbonLink from "~icons/carbon/link";
	import CarbonChat from "~icons/carbon/chat";

	import { goto } from "$app/navigation";

	const settings = useSettingsStore();

	$: if ($settings.customPrompts[$page.params.model] === undefined) {
		$settings.customPrompts = {
			...$settings.customPrompts,
			[$page.params.model]:
				$page.data.models.find((el: BackendModel) => el.id === $page.params.model)?.preprompt || "",
		};
	}

	$: hasCustomPreprompt =
		$settings.customPrompts[$page.params.model] !==
		$page.data.models.find((el: BackendModel) => el.id === $page.params.model)?.preprompt;

	$: model = $page.data.models.find((el: BackendModel) => el.id === $page.params.model);
</script>
