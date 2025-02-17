if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

OP.Global.Locales.Languages["ko-KR"] = {
	-- configuration settings for language
	largeNumberSeperator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeperator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "시스템",
		warning = "경고",
		invalid_input = "잘못된 입력.",
		missing_input = "입력 누락.",
		player_not_found = "서버 ID를 가진 플레이어를 찾을 수 없습니다. `${serverId}`.",
		something_went_wrong = "문제가 발생했습니다. 다시 시도하십시오.",
		yes = "네",
		no = "아니요"
	},

	-- animations/*
	chairs = {
		chair_is_occupied = "이 의자는 점유되어 있습니다."
	},

	emotes = {
		get_in_trunk = "트렁크로 들어가려면 ~INPUT_ENTER~ 키를 누르십시오..",
		put_boombox_in_trunk = "트렁크에 붐박스를 넣으려면 ~INPUT_ENTER~ 키를 누르십시오.",
		put_player_in_trunk = "~INPUT_ENTER~ 키를 눌러 플레이어를 트렁크에 넣습니다.",
		put_ped_in_trunk = "트렁크에 ped를 넣으려면 ~INPUT_ENTER~를 누르십시오..",
		put_bicycle_in_trunk = "~INPUT_ENTER~ 키를 눌러 자전거를 트렁크에 넣으십시오.",
		trunk_interaction_display = "[${VehicleEnterKey}] 밖으로 올라가기 [${InteractionKey}] 트렁크 열기/닫기",
		trunk_open_close_display = "[${InteractionKey}] 트렁크 열기/닫기",
		boombox_already_in_trunk = "트렁크에는 이미 붐박스가 있습니다.",
		the_trunk_is_occupied = "트렁크가 꽉 찼다.",
		unable_to_toggle_carry = "잠시 기다린 후 캐리커처를 토글하십시오.",
		carry_disabled_animal = "동물는 가지고 다닐수 없습니다.",

		you_are_not_being_carried = "현재 이동 중이 아닙니다.",
		successfully_uncarried = "강제로 캐리를 중지했습니다.",
		failed_uncarried = "캐리를 강제로 중지하지 못했습니다.",
		uncarry_missing_permissions = "적절한 허가 없이 강제로 휴대를 중지하려고 시도했습니다.",

		uncarry_logs_title = "포스 언캐리",
		uncarry_logs_details = "${consoleName} 포스 ${targetName} to 들고 다니지 마세요.",

		failed_carry_npc = "NPC를 전달하지 못했습니다.",
		carry_npc_something_wrong = "PED를 운반하는 동안 문제가 발생했습니다.",
		throwing_force = "투척력"
	},

	-- base/*
	admin = {
		feature_toggle_not_admin = "자신 또는 다른 사람의 '${featureName}'을(를) 전환하려고 했지만 적절한 권한이 없습니다.",
		feature_toggle_activated_logs_title = "원격 토글 기능",
		feature_toggle_activated_logs_details = "${consoleName} 토글 `${featureName}` 플레이어를 위해 ${targetConsoleName}.",
		feature_toggle_activated_logs_details_state = "${consoleName} 토글 `${featureName}` ${newState} 플레이어를 위해  ${targetConsoleName}.",
		feature_toggle_activated_all_logs_title = "모든 사용자를 위한 원격 토글 기능",
		feature_toggle_activated_all_logs_details = "${consoleName} 토글 `${featureName}` 모든 사용자를 위한.",
		feature_toggle_activated_self_logs_title = "토글 기능",
		feature_toggle_activated_self_on_logs_details = "${consoleName} 토글 `${featureName}` on 그들 자신을 위해.",
		feature_toggle_activated_self_off_logs_details = "${consoleName} 토글 `${featureName}` off 그들 자신을 위해.",
		feature_toggle_success = "토글 `${featureName}` 위해 ${consoleName}.",
		feature_toggle_success_all = "토글 `${featureName}` 모든 사용자를 위한.",
		feature_toggle_failed = "토글 실패 `${featureName}` 서버 ID 위해 ${serverId}.",
		feature_toggle_success_on = "토글 `${featureName}` on 위해 ${consoleName}.",
		feature_toggle_success_off = "토글 `${featureName}` off 위해 ${consoleName}.",

		noclip_toggle_activated_self_logs_title = "노클립 토글",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} 위치에 있는 노클립 토글 on  `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`. (In vehicle: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} 위치에 있는 노클립 토글 off `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`.",

		model_name_not_provided = "전달된 모델 이름이 없습니다.",
		model_name_invalid = "모델 이름이 `${modelName}` 유효하지 않음.",
		failed_to_spawn_vehicle = "'/spawn_veicle' 명령을 올바르게 실행하지 못했습니다..",
		spawned_vehicle_for_player = "성공적으로 스폰되었습니다 `${modelName}` 위해 ${consoleName}.",
		spawned_vehicle_for_everyone = "성공적으로 스폰었습니다 `${modelName}` 모든 사용자를 위한.",
		spawn_vehicle_for_player_not_staff = "플레이어가 다른 사람을 위해 차량을 생성하려고 시도했지만, 필요한 권한을 가지고 있지 않았습니다.",
		spawn_vehicle_for_self_not_staff = "플레이어가 직접 차량을 생성하려고 했지만, 필요한 권한을 가지고 있지 않았습니다.",
		spawned_vehicle_for_self_title = "스폰 차량",
		spawned_vehicle_for_self_details = "${consoleName} 모델 이름이 있는 차량을 탄생시켰다 `${modelName}`.",
		spawned_vehicle_for_player_title = "플레이어를 위해 스폰된 차량",
		spawned_vehicle_for_player_details = "${consoleName} 모델 이름을 가진 차량 스폰  `${modelName}` 플레이어를 위해 ${targetConsoleName}.",
		spawned_vehicle_for_everyone_title = "Spawned Vehicle For Everyone",
		spawned_vehicle_for_everyone_details = "${consoleName} s모델 이름을 가진 차량 스폰 `${modelName}` 모든 사용자를 위한.",

		invalid_amount = "잘못된 금액.",

		added_cash_title = "추가된 현금",
		added_cash_details = "${consoleName} 추가됨 $${amount} 현금.",
		added_cash_to_player_title = "플레이어에게 현금 추가",
		added_cash_to_player_details = "${consoleName} 추가됨 $${amount} 현금 to ${targetConsoleName}.",
		added_cash_to_everyone_title = "모든 사람에게 현금을 부가하다",
		added_cash_to_everyone_details = "${consoleName} 추가됨 $${amount} 모두에게 현금.",

		removed_cash_title = "제거된 현금",
		removed_cash_details = "${consoleName} 제거된 $${amount} 현금.",
		removed_cash_from_player_title = "플레이어에서 현금을 제거했습니다.",
		removed_cash_from_player_details = "${consoleName} 제거된 $${amount} 현금 from ${targetConsoleName}.",
		removed_cash_from_everyone_title = "모든 사람에게 현금 제거했습니다",
		removed_cash_from_everyone_details = "${consoleName} 제거된 $${amount} 현금 모든 사람에게.",

		added_bank_title = "추가된 은행",
		added_bank_details = "${consoleName} 추가된 $${amount} 은행.",
		added_bank_to_player_title = "플레이어에 은행 추가된",
		added_bank_to_player_details = "${consoleName} 추가된 $${amount} 은행 to ${targetConsoleName}.",
		added_bank_to_everyone_title = "모든 사람에게 은행 추가된",
		added_bank_to_everyone_details = "${consoleName} 추가된 $${amount} 은행 모든 사람에게.",

		removed_bank_title = "제거된 은행",
		removed_bank_details = "${consoleName} 제거된 $${amount} 은행.",
		removed_bank_from_player_title = "플레이어에서 은행 제거됨",
		removed_bank_from_player_details = "${consoleName} 제거된 $${amount} 은행 from ${targetConsoleName}.",
		removed_bank_from_everyone_title = "모든 사람으로부터 은행을 제거했습니다.",
		removed_bank_from_everyone_details = "${consoleName} 님이 모든 사람으로부터 $${amount} 은행을 제거했습니다.",

		added_cash = "${amount} 현금을 추가했습니다.",
		added_cash_to_player = "$${amount} 현금을 ${targetConsoleName}에 추가했습니다.",
		added_cash_to_everyone = "모든 사람에게 $${amount} 현금을 추가했습니다.",

		removed_cash = "$${amount} 현금을 제거했습니다.",
		removed_cash_from_player = "${targetConsoleName}에서 $${amount} 현금을 제거했습니다.",
		removed_cash_from_everyone = "모든 사람에게서 $${amount} 현금을 제거했습니다.",

		added_bank = "$${amount} 은행을 추가했습니다.",
		added_bank_to_player = "$${amount} 은행을 ${targetConsoleName}에 추가했습니다.",
		added_bank_to_everyone = "모든 사람에게 $${amount} 은행을 추가했습니다.",

		removed_bank = "${amount} 뱅크를 제거했습니다.",
		removed_bank_from_player = "${targetConsoleName}에서 $${amount} 은행을 제거했습니다.",
		removed_bank_from_everyone = "모든 사람으로부터 $${amount} 은행을 제거했습니다.",

		money_event_not_admin = "머니 이벤트 `${moneyEvent}` 전환 시도 중.",

		event_not_admin = "${eventName}을(를) 시도했지만 사용자에게 적절한 권한이 없습니다.",

		removed_bank_balance_from_player = "${consoleName}에서 $${amount} 은행 잔액을 제거했습니다.",

		spawned_item_title = "스폰된 아이템",
		spawned_item_details = "${consoleName} 스폰 in ${amount}x `${itemName}` 자신을 위해.",
		spawned_item_for_player_title = "플레이어용 스폰된 아이템",
		spawned_item_for_player_details = "${consoleName} 스폰 in ${amount}x `${itemName}` 위해 ${targetConsoleName}.",
		spawned_item_for_everyone_title = "모든 사용자 위해 스폰된 아이템",
		spawned_item_for_everyone_details = "${consoleName} 스폰 in ${amount}x `${itemName}` 모든 사용자 위해.",

		report_title = "보고서-${reportId} ${reporterName}",
		report_logs_title = "보고서",
		report_logs_details = "${consoleName}이(가) 다음 메시지와 함께 ${reportId} 보고서를 만들었습니다. `${reportMessage}`",

		announcement_staff_title = "직원 알림",
		announcement_server_title = "서버 알림",

		announcement_logs_title = "서버 전체 알림",
		announcement_logs_details = "${consoleName} 다음 메시지를 전체 서버에 브로드캐스트했습니다. `${announcementMessage}`",
		announcement_not_admin = "직원 알림을 게시하려고 했습니다.",

		announcement_maintenance = "유지 관리를 위해 ${minutes}분 후에 서버가 종료됩니다.",
		announcement_update = "업데이트에 대해 ${minutes}분 후에 서버가 종료됩니다.",
		announcement_restart = "서버를 다시 시작하기 위해 ${minutes}분 후에 다운됩니다.",

		posted_announcement = "알림 메시지를 게시했습니다.",
		posted_announcement_locale = "로케일의 알림 메시지를 게시했습니다.",
		failed_to_post_announcement = "추가된 메시지가 없어 알림 메시지를 게시하지 못했습니다.",
		failed_to_post_announcement_locale = "추가된 알림 로캘이 지원되지 않아 알림 메시지를 게시하지 못했습니다.",

		staff_title = "직원 ${staffName}",
		staff_message_logs_title = "직원 메시지",
		staff_message_logs_details = "${consoleName} 직원 채팅에서 다음 메시지를 보냈습니다: `${staffMessage}`",
		staff_message_illegal = "플레이어가 직원 채팅에서 메시지를 보내려고 했지만 직원이 아닙니다.",

		staff_pm_title = "직원 PM ${transmissionTitle}",
		staff_pm_logs_title = "직원 PM",
		staff_pm_logs_details = "${senderConsoleName} 다음 메시지를 보냈습니다. ${recipientConsoleName}: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "로그인하지 않았습니다.",
		staff_pm_not_user_not_found = "서버 ID가 ${serverId}인 사용자를 찾을 수 없습니다.",
		staff_pm_not_recipient_not_staff = "메시지를 보내려는 플레이어가 직원이 아닙니다.",
		staff_pm_unable_to_message_self = "메시지를 직접 보낼 수 없습니다.",
		staff_pm_warning = "직원 PM 경고",
		staff_pm_first_time = "PM을 사용한 적이 없으시군요. 직원 PM에 응답하려면 /staffpm 명령을 사용합니다.",

		external_staff_message = "외부 직원 메시지",
		external_staff_message_from_player = "${playerName}의 외부 직원 메시지",
		external_staff_message_content = "${staffMessage}(이 메시지에 응답할 수 없습니다.)",

		unable_to_staff_message_yourself = "직접 직원 메시지를 보낼 수 없습니다.",
		message_sent = "메시지를 보냈습니다.",
		player_not_found = "플레이어를 찾을 수 없습니다.",
		missing_valid_target_source_parameter = "올바른 'target source' 매개 변수가 없습니다.",
		missing_valid_message_parameter = "올바른 '메시지' 매개 변수가 없습니다.",

		player_revived_success = "부활한 플레이어가 성공했습니다.",

		missing_valid_steam_identifier_parameter = "유효한 '스팀 식별자' 매개 변수가 없습니다.",

		illegal_entity_wipe = "플레이어가 엔터티를 삭제하려고 했지만 권한이 없습니다.",
		wiped_entities = "지워진 엔티티",
		wipe_entities_logs_title = "지워진 엔티티",
		wipe_entities_logs_details = "${consoleName} 님이 다음 구성으로 엔터티 삭제를 실행했습니다. distance = `${distance}`, ignoreLocalEntities = `${ignoreLocalEntities}`, modelName = `${modelName}`",

		wipe_awaiting_confirmation = "이제 지우기가 확인 대기 중입니다. `/wipe_confirm`을 수행하여 응답하거나 60초 후에 만료될 때까지 기다립니다.\n\n선택한 매개 변수는 다음과 같습니다.\n- distance: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- modelName: `${modelName}`",
		wipe_awaiting_confirmation_big = "거리 경고! 선택한 지우기는 매우 넓은 영역에 대한 것이므로 확인을 기다리고 있습니다. `/wipe_confirm`을 수행하여 응답하거나 60초 후에 만료될 때까지 기다립니다.\n\n선택한 매개 변수는 다음과 같습니다.\n- distance: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- modelName: `${modelName}`",
		a_wipe_is_already_awaiting_confirmation = "이미 확인 대기 중인 지우기가 있습니다. `/wipe_confirm`을 수행하여 응답하거나 ${expiresIn}초 후에 만료될 때까지 기다립니다.",
		cancelled_wipe = "지우기가 취소되었습니다.",
		no_wipe_is_awaiting_confirmation = "확인을 기다리는 지우기가 없습니다.",

		you_have_been_kicked = "`${reason}` 이유로 ${kicker}에게 쫓겨났습니다.",
		you_have_been_kicked_no_reason = "${kicker} 님이 지정한 이유 없이 추방했습니다.",

		logs_player_kicked_title = "플레이어가 쫓겨났습니다.",
		logs_player_kicked_details = "${consoleName}이(가) `${reason}` 이유로 ${kicker}에 의해 서버에서 추방되었습니다.",
		logs_player_kicked_no_reason_details = "${consoleName}이(가) 지정된 이유 없이 ${kicker}에 의해 서버에서 추방되었습니다.",

		you_have_been_banned = "${reason}` 때문에 ${banner}에서 금지되었습니다.",
		you_have_been_banned_no_reason = "${banner} 님이 지정한 이유 없이 귀하를 금지했습니다.",

		logs_player_banned_title = "플레이어 금지",
		logs_player_banned_details = "${consoleName}이(가) `${reason}` 때문에 ${banner}에 의해 서버에서 금지되었습니다.",
		logs_player_banned_no_reason_details = "${consoleName}이(가) 특정 이유 없이 ${banner}에 의해 서버에서 금지되었습니다.",

		player_kicked = "${consoleName} 님이 서버에서 추방되었습니다.",
		player_banned = "${consoleName}이(가) 서버에서 금지되었습니다.",

		kick_player_not_staff = "적절한 권한 없이 플레이어를 발로 찼습니다.",
		ban_player_not_staff = "올바른 권한 없이 플레이어를 금지하려고 했습니다.",

		hide_staff_not_staff = "적절한 권한 없이 직원 상태를 숨기려고 했습니다.",
		toggle_staff_not_staff = "적절한 권한 없이 직원 가용성을 전환하려고 했습니다.",

		logs_hide_staff_title = "숨겨진 직원",
		logs_hide_staff_hidden_details = "${consoleName} 님이 직원 상태를 숨겼습니다.",
		logs_hide_staff_shown_details = "${consoleName} 님이 직원 상태를 표시했습니다.",

		logs_toggle_staff_title = "직원 토글",
		logs_toggle_staff_off_details = "${consoleName} 님이 직원 가용성을 해제하도록 전환했습니다.",
		logs_toggle_staff_on_details = "${consoleName} 님이 직원 가용성을 설정 전환했습니다.",

		staff_hidden = "직원 상태가 이제 숨겨졌습니다.",
		staff_shown = "직원 상태가 표시되었습니다.",
		staff_toggled_on = "직원 가용성이 설정되어 있습니다.",
		staff_toggled_off = "직원 가용성이 전환되었습니다.",

		staff_feature_unavailable = "직원 가용성이 꺼져 있는 동안에는 이 기능을 사용할 수 없습니다.",

		protective_mode_not_staff = "적절한 권한 없이 서버 보호 모드를 전환하려고 했습니다.",
		protective_mode_toggled_on = "이제 서버 보호 모드를 사용할 수 있습니다. 서버에 연결하는 데 필요한 재생 시간이 `${playtime}`.",
		protective_mode_toggled_off = "이제 서버 보호 모드를 사용할 수 없습니다.",
		protective_mode_already_on = "`${playtime}`에서 필요한 재생 시간을 사용하여 서버 보호 모드가 이미 활성화되었습니다.",
		protective_mode_already_off = "서버 보호 모드가 이미 사용하지 않도록 설정되어 있습니다.",
		logs_protective_mode = "서버 보호 모드",
		logs_protective_mode_on = "${consoleName} 님이 필요한 재생 시간으로 서버 보호 모드를 전환했습니다. `${playtime}`.",
		logs_protective_mode_off = "${consoleName} 님이 서버 보호 모드를 해제하도록 전환했습니다.",

		spawn_item_not_staff = "적절한 권한 없이 항목을 생성하려고 했습니다.",
		no_item_name = "항목 이름을 제공하지 않았습니다.",
		invalid_item_name = "${itemName}은(는) 올바른 항목 이름이 아닙니다.",
		item_spawned = "${consoleName}에 대해 ${amount}x `${itemName}`을(를) 생성했습니다.",
		item_spawned_for_everyone = "모든 사용자에 대해 ${amount}x `${itemName}`을(를) 생성했습니다.",

		set_warning_message_not_staff = "적절한 권한 없이 서버의 경고 메시지를 설정하려고 했습니다.",
		warning_message_set_to = "경고 메시지가 `${warningMessage}`(으)로 설정되었습니다.",
		warning_message_removed = "경고 메시지가 제거되었습니다.",
		warning_message_error = "경고 메시지를 설정하는 동안 오류가 발생했습니다.",
		warning_message_identical = "경고 메시지를 이미 설정된 것으로 설정할 수 없습니다.",
		warning_message_set_to_title = "경고 메시지 집합",
		warning_message_set_to_details = "${consoleName} 님이 경고 메시지를 `${warningMessage}`.",
		warning_message_removed_title = "경고 메시지 제거됨",
		warning_message_removed_details = "${consoleName} 님이 경고 메시지를 제거했습니다.",

		indestructibility_on = "Indestructubility를 설정 전환했습니다.",
		indestructibility_off = "Indestructubility를 해제했습니다.",
		speed_boost_on = "Speed Boost를 설정 전환했습니다.",
		speed_boost_off = "Speed Boost를 껐습니다.",
		nitro_boost_on = "니트로 부스트를 설정 전환했습니다.",
		nitro_boost_off = "니트로 부스트를 껐습니다.",
		no_nearby_vehicles_on = "No Nearby Vehicles(근처 차량 없음) 켜짐",
		no_nearby_vehicles_off = "주변 차량 없음을 껐습니다.",
		speed_up_progress_bar_on = "진행률 표시줄 속도를 높입니다.",
		speed_up_progress_bar_off = "진행률 표시줄 속도를 높입니다.",
		invisibility_on = "Invisibility를 설정/해제합니다.",
		invisibility_off = "'Invisibility' Off를 전환했습니다.",
		wallhack_on = "Wallhack을 설정",
		wallhack_off = "Wallhack을 껐습니다.",
		aimbot_on = "Aimbot을 설정 전환했습니다.",
		aimbot_off = "Aimbot을 끄고 있습니다.",
		player_bones_on = "플레이어 뼈'를 설정 상태로 전환했습니다.",
		player_bones_off = "플레이어 뼈'를 설정 해제했습니다.",
		vehicle_smoke_on = "차량 연기를 켰습니다.",
		vehicle_smoke_off = "차량 연기가 꺼졌습니다.",

		evidence_view_on = "증거 보기를 전환했습니다.",
		evidence_view_off = "증거 보기를 취소했습니다.",
		evidence_view_title = "전환된 증거 보기",
		evidence_view_details_on = "${consoleName} 님이 의 고급 증명 보기를 전환했습니다.",
		evidence_view_details_off = "${consoleName} 님이 고급 증명 정보 보기를 해제했습니다.",

		report_muted_no_reason = "지정된 이유 없이 보고서 명령에서 음소거되었습니다.",
		report_muted = "`${reason}` 이유로 보고서 명령에서 음소거되었습니다.",

		already_sending_report = "이미 보고서를 보내고 있습니다. 잠시 기다려 주십시오.",
		unable_to_send_identical_report = "두 개의 동일한 보고서를 차례로 보낼 수 없습니다.",

		already_sending_staff_message = "이미 직원 메시지를 보내고 있습니다. 잠시 기다려 주십시오.",
		unable_to_send_identical_staff_message = "동일한 직원 메시지 두 개를 차례로 보낼 수 없습니다.",

		user_indefinitely_banned_warning_no_reason = "나는 특별한 이유 없이 이 사람을 무기한 금지했다. 이 경고는 금지의 결과로 자동으로 생성되었습니다.",
		user_indefinitely_banned_warning = "'${reason}' 이유로 이 사람을 무기한 금지했습니다. 이 경고는 금지의 결과로 자동으로 생성되었습니다.",
		user_temporarily_banned_warning_no_reason = "${displayTime}에 대해 지정된 이유 없이 이 사람을 금지했습니다. 이 경고는 금지의 결과로 자동으로 생성되었습니다.",
		user_temporarily_banned_warning = "${reason}` 이유를 사용하여 ${displayTime}을(를) 금지했습니다. 이 경고는 금지의 결과로 자동으로 생성되었습니다.",

		tp_coords_invalid_coordinates = "잘못된 좌표입니다.",
		tp_coords_teleported_to_coordinates = "X 좌표로 텔레포트: ${x}, Y: ${y}, Z: ${z}.",

		teleported_to_waypoint = "${locationLabel}의 웨이포인트로 원격 전송되었습니다.",
		no_waypoint_set = "웨이포인트를 설정해야 합니다.",

		teleported_to_coordinates_logs_title = "좌표로 텔레포트",
		teleported_to_coordinates_logs_details = "${consoleName} 님이 텔레포트 좌표 X: ${x}, Y: ${y}, Z: ${z}.",
		teleported_to_waypoint_logs_title = "웨이포인트로 텔레포트",
		teleported_to_waypoint_logs_details = "${consoleName} 님이 ${locationLabel}의 웨이포인트로 텔레포트되었습니다.",

		teleport_to_coordinates_not_staff = "그 선수는 일부 좌표로 전신을 보내려고 시도했지만 그들은 직원이 아니었다.",
		teleport_to_waypoint_not_staff = "그 선수는 경유지로 텔레포트하려고 시도했지만 그들은 직원이 아니었다.",

		failed_isolate = "플레이어를 격리하지 못했습니다.",
		invalid_server_id = "잘못된 서버 ID.",
		isolate_success_on = "${consoleName}을 격리했습니다.",
		isolate_success_off = "${consoleName} 격리를 중지했습니다.",

		isolate_missing_permissions = "플레이어가 적절한 권한 없이 다른 플레이어를 격리하려고 했습니다.",

		population_density_set_to = "모집단 밀도 승수 재정의가 ${multiplierLabel}%(으)로 설정되었습니다.",
		population_density_set_off = "모집단 밀도 승수 재정의가 해제되었습니다.",
		population_density_is_not_on = "모집단 밀도 승수 재정의가 설정되어 있지 않습니다.",
		population_density_already_set_to = "모집단 밀도 승수 재정의가 이미 ${multiplierLabel}%로 설정되어 있습니다.",

		population_density_not_super_admin = "플레이어가 모집단 밀도를 설정하려고 했지만 수퍼 관리자가 아닙니다.",

		enabled_features_list = "Enabled Features:",
		aimbot_feature = "아이봇",
		disabled_collisions_feature = "비활성화된 충돌",
		disabled_recoil_feature = "반동 사용 안 함",
		evidence_view_feature = "증거 보기",
		indestructibility_feature = "Indestructibility",
		invisibility_feature = "Invisibility",
		nitro_boost_feature = "Nitro Boost",
		no_nearby_vehicles_feature = "No Nearby Vehicles",
		speed_boost_feature = "Speed Boost",
		speed_up_progress_bar_feature = "진행 표시줄 속도 높이기",
		wallhack_feature = "월핵",

		you_are_not_in_a_vehicle = "당신은 차량에 있지 않습니다.",
		repaired_vehicle = "수리된 차량.",

		success_nos_refill = "NOS를 다시 입력했습니다.",
		failed_nos_refill = "NOS를 다시 채우지 못했습니다.",

		refill_nitro_missing_permissions = "플레이어는 그들의 NOS를 다시 채우려고 시도했지만 그들은 슈퍼 관리자가 아니었다.",

		vehicle_smoke_invalid_class = "이 차량 클래스에 대해 차량 연기를 사용할 수 없습니다.",

		repair_vehicle_not_super_admin = "플레이어가 차량 수리를 시도했지만 슈퍼 관리자가 아니었습니다.",

		repaired_vehicle_logs_title = "수리된 차량",
		repaired_vehicle_logs_details = "${consoleName}이(가) 있는 차량을 복구했습니다.",

		unable_to_enter_vehicle_while_dead = "죽은 동안은 차량에 들어갈 수 없습니다.",
		you_are_already_in_a_vehicle = "당신은 이미 차에 있어요.",
		the_closest_vehicle_had_no_free_seats = "가장 가까운 차는 무료좌석이 없었다.",
		there_are_no_nearby_vehicles = "근처에 차량이 없습니다.",
		entered_vehicle = "${vehicleName} 근처에 들어가려고 했습니다.",

		set_vehicle_modifications_logs_title = "차량 수정 설정",
		set_vehicle_modifications_logs_details = "${consoleName} 플레이트가 `${vehiclePlate}'인 차량에 대한 차량 수정을 설정했습니다. 수정 내용: modType-${modType}, modIndex-${modIndex}, customTires-${customTires}.",

		set_vehicle_modification = "모드 유형 `${modType}`의 차량에 대한 차량 수정을 인덱스 `${modIndex}`로 설정합니다. (사용자 정의 타이어: ${customTires}",
		mod_index_invalid_for_type = "Mod 인덱스 `${modIndex}`는 mod 유형 `${modType}`에 사용할 수 없습니다.",
		mod_type_invalid = "Mod 유형 `${modType}`이(가) 잘못되었습니다.",
		no_mod_type_set = "설정된 모드 유형이 없습니다.",

		invalid_plate_number = "플레이트 번호가 잘못되었습니다.",
		set_fake_plate_number = "차량 번호를 `${plateNumber}`(으)로 설정합니다.",

		invalid_dirt_level = "잘못된 먼지 수준입니다.",
		set_dirt_level = "차량의 먼지 레벨이 `${dirtLevel}`(으)로 설정되었습니다.",

		set_dirt_level_not_super_admin = "플레이어는 차량의 먼지 수준을 설정하려고 시도했지만 수퍼 관리자가 아닙니다.",

		set_fake_plate_not_super_admin = "플레이어는 차량의 가짜 플레이트를 설정하려고 시도했지만 그들은 슈퍼 관리자가 아니었다.",

		already_fake_disconnecting = "이미 연결 끊기를 페이크 방식으로 시도하고 있습니다. 잠시 기다려 주십시오.",
		started_fake_disconnect = "가짜 연결을 시작했습니다. 중지하려면 명령을 반복합니다.",
		stopped_fake_disconnect = "가짜 연결을 중지했습니다.",

		fake_disconnect_not_super_admin = "플레이어가 가짜 연결을 시도했지만 슈퍼 관리자가 아닙니다.",

		disabled_idle_cam = "유휴 캠을 비활성화했습니다.",
		enabled_idle_cam = "유휴 캠을 다시 활성화했습니다.",

		created_vehicle_smoke_for_player_logs_title = "차량 연기 발생",
		created_vehicle_smoke_for_player_logs_details = "${consoleName}이(가) 차량 연기를 만들었습니다.",

		player_info_not_staff = "올바른 허가 없이 플레이어의 캐릭터 정보를 가져오려고 했습니다.",
		player_info_title = "${consoleName}",
		player_info = "${fullName} (#${characterId})\n${jobName}, ${departmentName}, ${positionName}",

		inventory_name_missing = "인벤토리 이름 매개 변수가 없습니다.",
		force_inventory_missing_perms = "적절한 권한 없이 인벤토리를 강제로 열려고 했습니다.",

		not_in_interior = "넌 인테리어가 아니야.",
		interior_id = "인테리어 ID는 ${interiorId}입니다.",

		auto_driving_engaged = "자동차 운전이 진행되었습니다(스타일: ${style}).",
		auto_driving_updated = "자동차 주행 속도/위치가 업데이트되었습니다.",
		auto_driving_disengaged = "자동차 운전이 해제되었습니다.",

		disable_collisions_on = "이제 충돌이 비활성화되었습니다.",
		disable_collisions_off = "이제 충돌을 사용할 수 있습니다.",

		disabled_recoil_on = "반동을 사용할 수 없습니다.",
		disabled_recoil_off = "반동을 활성화했습니다.",

		attachment_missing = "첨부 파일 매개 변수가 없습니다.",
		no_weapon_equipped = "무기는 준비되지 않았다",
		attachment_invalid = "첨부 파일이 잘못되었거나 이 무기에 사용할 수 없습니다.",
		attachment_failed_toggle = "이 무기에서 첨부 파일을 설정 해제하지 못했습니다.",
		attachment_on = "'${attachment}' 첨부 파일을 토글했습니다.",
		attachment_off = "'${attachment}' 첨부 파일을 해제하도록 전환했습니다.",

		tint_invalid = "잘못된 무기 색조",
		tint_range_invalid = "무기 색조 범위가 잘못되었습니다(0에서 ${max} 사이여야 함).",
		tint_failed_set = "무기 색조를 설정하지 못했습니다.",
		tint_removed = "무기 색조를 제거했습니다.",
		tint_set = "무기 색조를 `${tint}`(${tintIndex})(으)로 설정했습니다.",
		no_weapon_tint = "이 무기는 선미가 없다",

		tint_normal_0 = "검정",
		tint_normal_1 = "녹색",
		tint_normal_2 = "골드",
		tint_normal_3 = "핑크",
		tint_normal_4 = "군대",
		tint_normal_5 = "LSPD",
		tint_normal_6 = "오렌지",
		tint_normal_7 = "플래티넘",

		tint_mk2_0 = "클래식 블랙",
		tint_mk2_1 = "클래식 그레이",
		tint_mk2_2 = "클래식 투톤",
		tint_mk2_3 = "클래식 화이트",
		tint_mk2_4 = "클래식 베이지",
		tint_mk2_5 = "클래식 그린",
		tint_mk2_6 = "클래식 블루",
		tint_mk2_7 = "클래식 지구",
		tint_mk2_8 = "클래식 브라운 & 블랙",
		tint_mk2_9 = "빨간색 대비",
		tint_mk2_10 = "블루 콘트라스트",
		tint_mk2_11 = "노란색 대비",
		tint_mk2_12 = "주황색 대비",
		tint_mk2_13 = "볼드핑크",
		tint_mk2_14 = "굵은 보라색 및 노란색",
		tint_mk2_15 = "굵은 주황색",
		tint_mk2_16 = "진한 녹색 & 보라색",
		tint_mk2_17 = "굵은 빨간색 기능",
		tint_mk2_18 = "진한 녹색 기능",
		tint_mk2_19 = "진한 녹청 기능",
		tint_mk2_20 = "굵은 노란색 기능",
		tint_mk2_21 = "굵은 적색 및 흰색",
		tint_mk2_22 = "굵은 파란색 및 흰색",
		tint_mk2_23 = "메탈릭 골드",
		tint_mk2_24 = "메탈릭 플래티넘",
		tint_mk2_25 = "메탈릭 그레이 & 라일락",
		tint_mk2_26 = "메탈릭 퍼플 & 라임",
		tint_mk2_27 = "메탈릭 레드",
		tint_mk2_28 = "메탈릭 그린",
		tint_mk2_29 = "메탈릭 블루",
		tint_mk2_30 = "메탈릭 화이트 & 바다색",
		tint_mk2_31 = "메탈릭 레드 및 옐로우",

		tint_ray_0 = "스페이스 레인저",
		tint_ray_1 = "자주색",
		tint_ray_2 = "녹색",
		tint_ray_3 = "주황",
		tint_ray_4 = "분홍색",
		tint_ray_5 = "골드",
		tint_ray_6 = "플래티넘",

		weapon_attachment_missing_perms = "적절한 허가 없이 무기 연결을 전환하려고 했습니다.",
		weapon_tint_missing_perms = "적절한 허가 없이 무기 농도를 설정하려고 했습니다.",

		no_attachments = "이 무기에는 첨부 파일이 없습니다.",
		available_attachments = "사용 가능한 첨부 파일",
		current_attachments = "현재 첨부 파일",
		no_attachments = "첨부 파일 없음",
		attachments_list = "첨부 파일:",
		tint_label = "색조: \"${tintLabel}\"(${tintIndex})",

		attachment_label_suppressor = "억제",
		attachment_label_flashlight = "손전등",
		attachment_label_extended_clip = "확장 클립",
		attachment_label_luxury = "럭셔리 피니시",
		attachment_label_incendiary = "Incendiary 라운드",
		attachment_label_tracer = "추적 라운드",
		attachment_label_hollow_point = "빈 점 라운드",
		attachment_label_scope = "범위",
		attachment_label_grip = "그립",
		attachment_label_drum = "드럼 매거진",
		attachment_label_heavy_barrel = "무거운 통",
		attachment_label_armor_piercing = "갑옷 피어싱 라운드",
		attachment_label_explosive = "폭발음",
		attachment_label_sight = "홀로그래픽 사이트",
		attachment_label_fmj = "풀 메탈 재킷 라운드",
		attachment_label_scope_nv = "야간 비전경",
		attachment_label_scope_thermal = "열 범위",

		item_name_failed_set = "항목 이름 재정의를 설정하지 못했습니다.",
		item_name_removed = "항목 이름 재정의를 제거했습니다.",
		item_name_set = "항목 이름 재정의를 '${itemName}'(으)로 설정했습니다.",
		item_name_invalid_slot = "항목 슬롯이 잘못되었거나 없습니다.",

		cleaned_ped = "${consoleName} 경로를 정리했습니다.",
		cleaned_ped_self = "성공적으로 씻었습니다.",
		clean_ped_failed = "닦지 못했습니다.",
		cleaned_ped_for_all = "모든 소아과들을 성공적으로 치웠어",
		clean_ped_no_permission = "필요한 권한 없이 플레이어 파일을 정리하려고 했습니다.",

		item_durability_set_success = "슬롯 ${slotId}의 항목에 대한 내구성을 ${amount}%(으)로 설정했습니다.",
		item_durability_set_failed = "내구성을 설정하지 못했습니다.",
		item_durability_invalid_amount = "잘못된 내구성 금액(0 <> 100)",
		item_durability_set_no_permission = "필요한 권한 없이 항목 내구성을 설정하려고 했습니다.",

		advanced_metagame_on = "고급 메타게임 켜짐",
		advanced_metagame_off = "고급 메타게임을 꺼버렸습니다.",

		identity_set = "ID를 '${name}'(으)로 설정했습니다.",
		identity_reset = "ID를 재설정했습니다.",
		identity_set_failed = "ID를 설정하지 못했습니다.",
		identity_hud = "정체성: ${playerName}",

		set_identity_no_permission = "플레이어가 적절한 권한 없이 플레이어 이름을 설정하려고 했습니다.",

		you_do_not_have_permission_to_use_this = "이것을 사용할 권한이 없습니다.",

		invalid_range_parameter = "범위 매개 변수가 잘못되었습니다.",
		wipe_first_owned_success = "서버 ID가 '${serverId}'인 플레이어가 처음으로 소유한 ${amount} 엔터티를 모두 삭제했습니다.",
		wipe_first_owned_success_range = " ${range}m 범위에서 서버 ID가 '${serverId}'인 플레이어가 처음으로 소유한 모든 ${amount} 엔터티를 삭제했습니다.",
		wipe_first_owned_failed = "서버 ID가 '${serverId}'인 플레이어가 처음으로 소유한 엔터티를 삭제하지 못했습니다.",

		toggle_collisions_missing_permissions = "플레이어가 적절한 권한 없이 충돌을 토글하려고 했습니다.",
		wipe_first_owned_missing_permissions = "플레이어가 적절한 사용 권한 없이 첫 번째 소유된 엔터티를 초기화하려고 했습니다.",

		freeze_missing_permissions = "플레이어가 적절한 사용 권한 없이 플레이어를 정지하거나 정지하려고 했습니다.",

		freeze_success = " ${consoleName}을(를) 고정했습니다.",
		failed_freeze = "플레이어를 정지시키지 못했습니다.",
		unfreeze_success = " ${consoleName} 의 고정 해제 성공.",
		failed_unfreeze = "플레이어 동결을 해제하지 못했습니다.",

		freeze_logs_title = "플레이어 동결",
		freeze_logs_details = "${consoleName} 님이 ${targetName} 님을 일시 중지했습니다.",
		unfreeze_logs_title = "미동결 플레이어",
		unfreeze_logs_details = "${consoleName} 님이 ${targetName} 고정 해제되었습니다.",
	},

	anti_cheat = {
		illegal_client_event = "이름이 '${eventName}'인 잘못된 클라이언트 이벤트를 트리거했습니다.",
		illegal_server_event = "이름이 '${eventName}'인 잘못된 서버 이벤트를 트리거했습니다.",
		illegal_weapon = "이름이 '${weaponLabel}'인 불법 무기를 생성했습니다.",
		illegal_alpha = "플레이어 피드 알파 값(${alphaValue})을 수정했습니다.",
		semi_god_mode = "준god 모드가 감지되었습니다.",
		bad_entity_spawn = "모델 이름이 `${modelName}` 인 엔터티에 생성되었습니다.",
		bad_entity_title = "잘못된 엔터티가 생성됨",
		bad_entity_message = "${consoleName}이(가) 모델 이름 `${modelName}`(으)로 엔터티를 생성했습니다.",
		detected_entity_title = "검색된 엔터티가 생성되었습니다.",
		detected_entity_message = "${consoleName}이(가) 모델 이름 `${modelName}`(으)로 엔터티를 생성했습니다.",
		added_model_to_list = "`${modelName}`(${modelHash}) 모델을 검색 목록에 추가했습니다.",
		model_already_added_to_list = "모델 `${modelName}`(${modelHash})이(가) 검색 목록에 이미 추가되었습니다.",
		removed_model_to_list = "Removed model `${modelName}` (${modelHash}) from the detection list.",
		model_not_in_list = "모델 `${modelName}`(${modelHash})이(가) 검색 목록에 추가되지 않았습니다.",
		set_model_detected_not_staff = "검색 목록에 모델을 추가하려고 했지만 올바른 권한이 없습니다.",
		set_model_undetected_not_staff = "검색 목록에서 모델을 제거하려고 했지만 올바른 권한이 없습니다.",
		add_detection_area_not_staff = "검색 영역을 추가하려고 했지만 올바른 권한이 없습니다.",
		remove_detection_area_not_staff = "검색 영역을 제거하려고 했지만 올바른 권한이 없습니다.",
		detection_area_close = "[${InteractionKey}] 검색 영역(${areaId}) 제거.",
		detection_area = "탐지 영역(${areaId})",

		mp_f_freemode_01_label = "자유 모드(여성)",
		mp_m_freemode_01_label = "자유 모드(남성)",
		player_one_label = "프랭클린",
		player_two_label = "트레버",
		player_zero_label = "마이컬",

		ig_orleans_label = "사스콰치",
		u_m_m_jesus_01_label = "예수",
		u_m_y_babyd_label = "보디 빌더",
		u_m_y_imporage_label = "슈퍼히어로",
		a_m_m_bevhills_02_label = "백인 남자",
		a_m_m_fatlatin_01_label = "뚱뚱한 남자",
		a_m_m_hasjew_01_label = "유태인 페드",
		a_m_m_beach_01_label = "토플리스 (검정, 남성)",
		a_m_m_beach_02_label = "토플리스 (흰색, 남성)",
		a_m_m_afriamer_01_label = "뚱뚱한 흑인",
		ig_jimmydisanto_label = "Jimmy",
		ig_jimmydisanto2_label = "Jimmy 2",
		a_m_y_musclbeac_01_label = "",
		csb_ramp_marine_label = "해병대",
		s_f_y_stripperlite_label = "스트리퍼 페드",
		mp_f_stripperlite_label = "스트리퍼 ped 2",
		mp_m_marston_01_label = "팔과 다리가 없어졌다",
		mp_m_niko_01_label = "니코(GTA IV)",
	},

	authentication = {
		ip_not_found = "IP 주소를 가져올 수 없습니다.",
		checking_steam_account = "스팀 계정이 있는지 확인하는 중...",
		steam_account_not_found = "당신은 스팀에 연결되어 있지 않습니다. 증기가 열려 있고 로그인되어 있는 동안 FiveM을 다시 시작하십시오.",
		authenticating_local_server = "로컬 서버로 인증하는 중...",
		authenticating_global_server = "OP-FW 서버로 인증 중...",
		error_fetching_data = "데이터를 가져오는 동안 오류가 발생했습니다.",
		region_blocked = "이 서버가 연결 중인 지역을 차단했습니다.",
		server_config_not_loaded = "서버 구성이 로드되지 않았습니다.",
		something_went_horribly_wrong = "무언가가 끔찍하게 잘못되었다 다시 시도하십시오.",
		local_firewall_enabled = "로컬 방화벽을 사용하도록 설정했습니다.",

		local_firewall_on = "차단 메시지 `${blockMessage}`(으)로 로컬 방화벽을 사용하도록 설정했습니다.",
		local_firewall_re_enabled = "차단 메시지 `${blockMessage}`(으)로 로컬 방화벽을 다시 활성화했습니다.",
		local_firewall_off = "로컬 방화벽을 비활성화했습니다.",
		local_firewall_blocked = "로컬 방화벽: 차단된 ${playerName}(${steamIdentifier})",

		developer = "개발자",
		super_admin = "최고 관리자",
		staff = '직원',
		reconnect = "다시 연결",
		random = "무작위의",
		beginner = "초보자",
		custom = "커스텀",
		christmas = "크리스마스",
		casino = "카지노",

		job_low = "낮은 직업",
		job_medium = "중간 작업",
		job_high = "높은 직업",

		banned_globally = "모든 OP-FW 서버에서 전역으로 사용이 금지되었습니다.\n해시 금지: ${banHash}\n차단 이유: ${banReason}\n잘못된 금지라고 생각되면 ${frameworkInterrupation}에서 항소 방법에 대한 자세한 내용을 보려면 OP-FW Aggregation에 참여하세요.",
		banned_locally = "${communityName}에서 사용이 금지되었습니다.\n해시 금지: ${banHash}\n차단 기준: ${creatorName}\n차단 이유: ${banReason}\n타임스탬프: ${timestamp}\n${infinityOrExpires}\n${communityAggregation}에서 항소 방법에 대한 자세한 내용을 보려면 Aggregation에 참여하십시오.",
		ban_indefinite = "이 금지는 무기한입니다.",
		ban_expires = "이 금지 사항은 ${timeLeft} 후에 만료됩니다.",
		not_whitelisted = "이 서버에서 허용되지 않습니다. 신청 방법에 대한 자세한 내용은 Dell의 불화 조합과 함께 하십시오.\n${communityDialog}",
		api_error = "데이터를 가져오는 동안 오류가 발생했습니다. (오류 코드 ${errorCode})",
		pepega_moderate = "특정 이유 없이 모든 OP-FW 서버에서 전역으로 사용이 금지되었습니다.",
		pepega_ultimate = "이 서버에서 사용이 금지되었습니다.", -- NOTE: this text will be 'pepegad' so it will randomize the casing of all letters.
		ban_code_not_found = "모든 OP-FW 서버에서 전사적으로 사용이 금지되었습니다. 사용 금지 코드에 대한 데이터를 찾을 수 없습니다.",
		fraud_chargeback = "사기 / 지불 거절",
		threatening_ddos = "우리의 인프라를 공격하겠다고 위협하고 있습니다.",
		unknown = "알 수 없음",
		api_offline = "현재 백 엔드 서비스를 사용할 수 없으므로 데이터를 가져올 수 없습니다. 잠시 후 다시 시도하십시오.",
		protective_mode_on = "현재 이 서버에서 서버 보호 모드가 활성화되어 있습니다. 즉, 일정한 재생 시간을 가진 플레이어만 서버에 연결할 수 있습니다. 이것은 일시적인 것이며 서버가 곧 정상으로 복원되어야 합니다.\n이 문제에 대한 자세한 내용은 ${communityAggregation}에서 문제를 확인하세요.",
		server_restarting = "서버가 현재 다시 시작되고 있습니다. 잠시 후에 다시 시도하십시오.",
		connection_cancelled = "다른 연결이 이미 활성화되어 있으므로 이 연결이 취소되었습니다.",
		no_reason_provided = "이유가 제공되지 않았습니다.",
		discord_whitelist_id_not_found = "discord ID를 찾을 수 없습니다. 백그라운드에서 불화가 열려 있는지, FiveM이 불화 클라이언트로부터 데이터를 가져오도록 허용했는지 확인하십시오.\n${communityDiscord}"
	},

	characters = {
		character_id_available = "캐릭터 ID '${characterId}'을(를) 사용할 수 있습니다.",
		character_id_not_available = "캐릭터 ID '${characterId}'을(를) 사용할 수 없습니다.",
		character_id_invalid = "캐릭터 ID '${characterId}'은(는) 올바른 캐릭터 ID가 아닙니다.",
		character_id_missing = "캐릭터 ID를 입력하지 않았습니다.",

		lowest_character_id_available_is = "사용할 수 있는 가장 낮은 캐릭터 ID는 '${characterId}'입니다.",
		there_are_no_available_character_ids = "사용 가능한 캐릭터 ID가 없습니다.",
	},

	commands = {
		only_commands = "채팅은 명령에 엄격하게 사용됩니다. /help를 입력하여 사용 가능한 모든 명령을 표시합니다.",
		command_unavailable = "이 명령을 사용할 수 없습니다!",
		available_commands = "사용 가능한 명령",
		available_substitutes = "사용 가능한 대체품",

		substitute_command_for = "'${command}'에 대한 대체 명령입니다.",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "/carry",
		carry_command_help = "휴대 장치 전환",
		carry_command_substitutes = "",

		carry_npc_command = "/carry_npc",
		carry_npc_command_help = "가장 가까운 데드 npc를 옮기도록 전환합니다.",
		carry_npc_command_substitutes = "",

		uncarry_command = "/uncarry",
		uncarry_command_help = "너를 들고 있는 플레이어가 강제로 너를 가지고 있지 않게 한다.",
		uncarry_command_substitutes = "",

		-- animations/chairs
		sit_command = "/sit",
		sit_command_help = "근처 의자에 앉아 있으려고",
		sit_command_parameter_variation = "변화",
		sit_command_parameter_variation_help = "재생할 사이트 애니메이션(1 - 6)",
		sit_command_substitutes = "/chair",

		-- animations/emotes
		ragdoll_command = "/ragdoll",
		ragdoll_command_help = "토글 래그돌.",
		ragdoll_command_substitutes = "",

		-- base/admin
		report_command = "/report",
		report_command_help = "모든 활성 직원에게 메시지를 보냅니다.",
		report_command_parameter_message = "메시지",
		report_command_parameter_message_help = "보내려는 메시지",
		report_command_substitutes = "",

		announce_command = "/announce",
		announce_command_help = "모든 플레이어에게 방송 발표",
		announce_command_parameter_message = "메시지",
		announce_command_parameter_message_help = "브로드캐스트할 메시지",
		announce_command_substitutes = "",

		staff_pm_command = "/staff_pm",
		staff_pm_command_help = "직원 또는 직원에게 직원 구성원으로 메시지를 보냅니다.",
		staff_pm_command_parameter_server_id = "서버 아이디",
		staff_pm_command_parameter_server_id_help = "메시지를 보내려는 플레이어의 서버 ID입니다.",
		staff_pm_command_parameter_message = "메시지",
		staff_pm_command_parameter_message_help = "보내려는 메시지",
		staff_pm_command_substitutes = "/staffpm",

		staff_command = "/staff",
		staff_command_help = "모든 활성 직원에게 메시지를 브로드캐스트합니다.",
		staff_command_parameter_message = "메시지",
		staff_command_parameter_message_help = "The message you would like to send.",
		staff_command_substitutes = "",

		wipe_command = "/wipe",
		wipe_command_help = "맵에서 원치 않는 엔터티를 지웁니다.",
		wipe_command_parameter_distance = "거리",
		wipe_command_parameter_distance_help = "특정 범위 내의 엔티티만 삭제하려면 여기에 거리를 삽입합니다. 전체 맵에 대해 'false' 또는 '0'에 둡니다.",
		wipe_command_parameter_ignore_local_entities = "로컬 엔터티 무시",
		wipe_command_parameter_ignore_local_entities_help = "네트워크로 연결되지 않은 엔터티를 무시하시겠습니까? 매거진에서 정리하는 경우 이를 'true' 또는 '1'로 설정하는 것이 좋습니다.",
		wipe_command_parameter_model_name = "모델명",
		wipe_command_parameter_model_name_help = "특정 모델 이름의 엔티티만 삭제하려면 여기에 모델 이름을 삽입합니다. 그렇지 않으면 'false' 또는 '0'에 빈 상태로 둡니다. '차량' 또는 '소아과학'으로 설정할 수도 있습니다.",
		wipe_command_substitutes = "",

		wipe_confirm_command = "/wipe_confirm",
		wipe_confirm_command_help = "지우기 확인",
		wipe_confirm_command_parameter_confirm = "확인",
		wipe_confirm_command_parameter_confirm_help = "확실한가요? 지우기를 확인하려면 '0' 또는 'false'를 제외한 모든 항목에 입력하십시오.",
		wipe_confirm_command_substitutes = "/confirm",

		noclip_command = "/noclip",
		noclip_command_help = "noclip 전환",
		noclip_command_parameter_server_id = "서버 아이디",
		noclip_command_parameter_server_id_help = "다른 사용자를 위해 noclip을 전환하려면 여기에 해당 서버 ID를 삽입하십시오.",
		noclip_command_substitutes = "",

		delete_vehicle_command = "/delete_vehicle",
		delete_vehicle_command_help = "주변 차량 삭제",
		delete_vehicle_command_parameter_ignore_heading = "예",
		delete_vehicle_command_parameter_ignore_heading_help = "플레이어 제목을 무시하시겠습니까? 이 공백을 두면 '아니요'가 됩니다.",
		delete_vehicle_command_substitutes = "/dv",

		delete_vehicle_interactively_command = "/delete_vehicle_interactively",
		delete_vehicle_interactively_command_help = "대화식 차량 삭제를 토글합니다.",
		delete_vehicle_interactively_command_substitutes = "/dvi",

		kick_command = "/kick",
		kick_command_help = "서버에서 플레이어를 시작합니다.",
		kick_command_parameter_server_id = "서버 아이디",
		kick_command_parameter_server_id_help = "시작하려는 플레이어의 서버 ID입니다.",
		kick_command_parameter_reason = "이유",
		kick_command_parameter_reason_help = "선수 차드의 배경입니다. 빈 칸으로 남겨둘 수 있습니다.",
		kick_command_substitutes = "",

		ban_command = "/ban",
		ban_command_help = "서버에서 플레이어를 금지합니다.",
		ban_command_parameter_server_id = "se서버 아이디",
		ban_command_parameter_server_id_help = "금지하려는 플레이어의 서버 ID입니다.",
		ban_command_parameter_expire = "만료",
		ban_command_parameter_expire_help = "선수 금지의 길이. 이 값은 '0'에서 'false'로 비워 둘 수 있습니다. w/d/h를 길이로 사용할 수 있습니다. (예: '3d2h' -> 3일, 2시간)",
		ban_command_parameter_reason = "이유",
		ban_command_parameter_reason_help = "선수 금지에 대한 이유. 빈 칸으로 남겨둘 수 있습니다.",
		ban_command_substitutes = "",

		staff_hidden_command = "/staff_hidden",
		staff_hidden_command_help = "다른 플레이어가 사용자의 직원 상태를 볼 수 있는지 여부를 전환합니다.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "/staff_toggle",
		staff_toggle_command_help = "직원의 가용성을 전환합니다. 이를 해제하면 보고서, 직원 PM 및 직원 메시지가 표시되지 않습니다.",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "/protective_mode",
		protective_mode_command_help = "서버 보호 모드를 전환합니다. 이렇게 하면 지정된 재생 시간 미만의 플레이어로부터의 새 연결이 취소됩니다. 이 확인은 직원 및 서버 지지자에서 제외됩니다.",
		protective_mode_command_parameter_enabled = "사용 가능",
		protective_mode_command_parameter_enabled_help = "검사를 활성화해야 합니까? 유효한 입력은 다음과 같습니다. `참` `거짓` `1` `0``.",
		protective_mode_command_parameter_playtime = "재생 시간",
		protective_mode_command_parameter_playtime_help = "새 연결을 수락하는 데 필요한 재생 시간(초)",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "/spawn_vehicle",
		spawn_vehicle_command_help = "차량을 산란하다.",
		spawn_vehicle_command_parameter_model_name = "모델 이름",
		spawn_vehicle_command_parameter_model_name_help = "당신이 낳고 싶은 차량의 모델명",
		spawn_vehicle_command_parameter_server_id = "서버 id",
		spawn_vehicle_command_parameter_server_id_help = "플레이어의 서버 ID를 사용하여 이 차량을 생성하려는 경우 이 항목을 공백이나 `0` 로 남겨 자신을 선택할 수 있습니다.",
		spawn_vehicle_command_substitutes = "/sv",

		aimbot_command = "/aimbot",
		aimbot_command_help = "aimbot을 설정/해제합니다.",
		aimbot_command_parameter_server_id = "서버 id",
		aimbot_command_parameter_server_id_help = "다른 사람을 위해 'aimbot'을 전환하려면 여기에 서버 ID를 삽입하십시오.",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "/player_bones_debug",
		player_bones_debug_command_help = "플레이어 뼈 디버거를 전환합니다.",
		player_bones_debug_command_parameter_server_id = "서버 id",
		player_bones_debug_command_parameter_server_id_help = "다른 사용자에 대해 Player Bones 디버거를 전환하려면 서버 ID를 여기에 삽입하십시오.",
		player_bones_debug_command_substitutes = "/player_bones",

		wallhack_command = "/wallhack",
		wallhack_command_help = "월핵 토글",
		wallhack_command_parameter_server_id = "서버 id",
		wallhack_command_parameter_server_id_help = "다른 사람을 위해 '월핵'을 전환하려면 서버 ID를 여기에 삽입하십시오.",
		wallhack_command_substitutes = "",

		speed_boost_command = "/speed_boost",
		speed_boost_command_help = "속도 부스트를 설정/해제합니다.",
		speed_boost_command_parameter_server_id = "서버 id",
		speed_boost_command_parameter_server_id_help = "다른 사용자의 '속도 부스트'를 전환하려면 서버 ID를 여기에 삽입하십시오.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "/nitro_boost",
		nitro_boost_command_help = "니트로 부스트 설정",
		nitro_boost_command_parameter_server_id = "서버 id",
		nitro_boost_command_parameter_server_id_help = "다른 사용자를 위해 '니트로 부스트'를 전환하려면 서버 ID를 여기에 삽입하십시오.",
		nitro_boost_command_substitutes = "/nitro",

		indestructibility_command = "/indestructibility",
		indestructibility_command_help = "불멸성을 설정/해제합니다.",
		indestructibility_command_parameter_server_id = "서버 id",
		indestructibility_command_parameter_server_id_help = "다른 사용자의 '불멸성'을 전환하려면 서버 ID를 여기에 삽입하세요.",
		indestructibility_command_substitutes = "/ind, /god, /god_mode, /godmode",

		no_nearby_vehicles_command = "/no_nearby_vehicles",
		no_nearby_vehicles_command_help = "가까운 차량 없음",
		no_nearby_vehicles_command_parameter_server_id = "서버 id",
		no_nearby_vehicles_command_parameter_server_id_help = "다른 사람을 위해 '주변 차량 없음'을 전환하려면 서버 ID를 여기에 삽입하십시오.",
		no_nearby_vehicles_command_substitutes = "",

		disable_collisions_command = "/disable_collisions",
		disable_collisions_command_help = "10미터 반경에서 차량과 페드와의 충돌을 무력화하라",
		disable_collisions_command_substitutes = "/collisions",

		disable_recoil_command = "/disable_recoil",
		disable_recoil_command_help = "모든 무기 반동을 무력화",
		disable_recoil_command_substitutes = "",

		clean_ped_command = "/clean_ped",
		clean_ped_command_help = "인물 피, 총알, 먼지 등을 청소한다",
		clean_ped_command_parameter_server_id = "서버 id",
		clean_ped_command_parameter_server_id_help = "핸드를 정리하려는 플레이어의 서버 ID입니다. 비어 있으면 자동으로 선택됩니다.",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "/toggle_vehicle_smoke",
		toggle_vehicle_smoke_command_help = "차량 연기를 토글합니다.",
		toggle_vehicle_smoke_command_parameter_server_id = "서버 id",
		toggle_vehicle_smoke_command_parameter_server_id_help = "다른 사람을 위해 '차량 연기'를 전환하려면 서버 ID를 여기에 삽입하십시오.",
		toggle_vehicle_smoke_command_parameter_color_r = "color r",
		toggle_vehicle_smoke_command_parameter_color_r_help = "연기 색상의 빨간색 값(0 - 255)",
		toggle_vehicle_smoke_command_parameter_color_g = "color g",
		toggle_vehicle_smoke_command_parameter_color_g_help = "연기 색상의 녹색 값(0 - 255)",
		toggle_vehicle_smoke_command_parameter_color_b = "color b",
		toggle_vehicle_smoke_command_parameter_color_b_help = "연기 색상의 파란색 값(0 - 255)",
		toggle_vehicle_smoke_command_substitutes = "/vehicle_smoke, /smoke",

		speed_up_progress_bar_command = "/speed_up_progress_bar",
		speed_up_progress_bar_command_help = "진행률 표시줄 속도를 높입니다.",
		speed_up_progress_bar_command_parameter_server_id = "서버 id",
		speed_up_progress_bar_command_parameter_server_id_help = "다른 사용자에 대한 '속도 향상 진행률 표시줄'을 전환하려면 서버 ID를 여기에 삽입하세요.",
		speed_up_progress_bar_command_substitutes = "/speed_up",

		invisibility_command = "/invisibility",
		invisibility_command_help = "'invisibility' 전환",
		invisibility_command_parameter_server_id = "서버 id",
		invisibility_command_parameter_server_id_help = "다른 사용자의 '비가시성'을 전환하려면 서버 ID를 여기에 삽입하십시오.",
		invisibility_command_substitutes = "/inv, /invis, /invisible",

		add_cash_command = "/add_cash",
		add_cash_command_help = "다른 사람의 성격에 현금을 추가하세요.",
		add_cash_command_parameter_amount = "금액",
		add_cash_command_parameter_amount_help = "당신이 선수에게 주고 싶은 현금의 양.",
		add_cash_command_parameter_server_id = "서버 id",
		add_cash_command_parameter_server_id_help = "플레이어의 서버 ID입니다. 비워 두면 자동으로 선택됩니다.",
		add_cash_command_substitutes = "",

		remove_cash_command = "/remove_cash",
		remove_cash_command_help = "다른 사람의 성격에서 현금을 제거합니다.",
		remove_cash_command_parameter_amount = "금액",
		remove_cash_command_parameter_amount_help = "플레이어에서 제거하려는 현금의 양.",
		remove_cash_command_parameter_server_id = "서버 id",
		remove_cash_command_parameter_server_id_help = "플레이어의 서버 ID입니다. 비워 두면 자동으로 선택됩니다.",
		remove_cash_command_substitutes = "",

		add_bank_command = "/add_bank",
		add_bank_command_help = "은행 잔고를 다른 사람의 성격에 추가하세요.",
		add_bank_command_parameter_amount = "금액",
		add_bank_command_parameter_amount_help = "당신이 선수에게 주고 싶은 은행 잔고 액수.",
		add_bank_command_parameter_server_id = "서버 id",
		add_bank_command_parameter_server_id_help = "플레이어의 서버 ID입니다. 비워 두면 자동으로 선택됩니다.",
		add_bank_command_substitutes = "",

		remove_bank_command = "/remove_bank",
		remove_bank_command_help = "은행 잔고를 다른 사람의 성격에서 제거하라.",
		remove_bank_command_parameter_amount = "금액",
		remove_bank_command_parameter_amount_help = "플레이어에서 제거하려는 은행 잔고 금액입니다.",
		remove_bank_command_parameter_server_id = "서버 id",
		remove_bank_command_parameter_server_id_help = "플레이어의 서버 ID입니다. 비워 두면 자동으로 선택됩니다.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "/spawn_item",
		spawn_item_command_help = "항목을 생성하는 데 사용됩니다.",
		spawn_item_command_parameter_item_name = "항목 이름",
		spawn_item_command_parameter_item_name_help = "생성하려는 항목의 이름입니다. 이 이름은 *item name*이어야 하므로 레이블이 작동하지 않습니다.",
		spawn_item_command_parameter_amount = "금액",
		spawn_item_command_parameter_amount_help = "당신이 낳고 싶은 품목의 양. 비워 두면 하나가 선택됩니다.",
		spawn_item_command_parameter_server_id = "서버 id",
		spawn_item_command_parameter_server_id_help = "항목을 생성할 플레이어의 서버 ID입니다. 비워 두면 사용자가 선택됩니다.",
		spawn_item_command_substitutes = "/si",

		warning_message_command = "/warning_message",
		warning_message_command_help = "모든 플레이어에 대한 글로벌 서버 메시지를 추가합니다.",
		warning_message_command_parameter_message = "메시지",
		warning_message_command_parameter_message_help = "플레이어에게 표시할 메시지입니다. 이 매개 변수를 비워 두면 경고 메시지를 제거할 수 있습니다.",
		warning_message_command_substitutes = "",

		tp_coords_command = "/tp_coords",
		tp_coords_command_help = "어떤 좌표로 텔레포트.",
		tp_coords_command_parameter_x = "x",
		tp_coords_command_parameter_x_help = "X 좌표로 원격 전송할 위치",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "텔레포트할 Y 좌표",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "텔레포트할 Z 좌표입니다. 이 매개 변수는 선택 사항이며 비워 두면 자동으로 그라운드 좌표가 검색됩니다.",
		tp_coords_command_substitutes = "/tpc",

		tp_waypoint_command = "/tp_waypoint",
		tp_waypoint_command_help = "설정된 경유지로 텔레포트",
		tp_waypoint_command_substitutes = "/tp_marker, /tp",

		isolate_player_command = "/isolate_player",
		isolate_player_command_help = "선수들을 격리시키고, 그들이 하려고 하는 어떤 것도 거부한다.",
		isolate_player_command_parameter_server_id = "서버 id",
		isolate_player_command_parameter_server_id_help = "대상 플레이어",
		isolate_player_command_substitutes = "/isolate",

		show_all_evidence_command = "/show_all_evidence",
		show_all_evidence_command_help = "주변의 모든 탄피 케이스 증거를 보여",
		show_all_evidence_command_substitutes = "/all_evidence, /show_evidence, /evidence",

		population_density_command = "/population_density",
		population_density_command_help = "전역 인구 밀도 승수를 재정의합니다.",
		population_density_command_parameter_multiplier = "승수",
		population_density_command_parameter_multiplier_help = "설정하려는 모집단 밀도 승수입니다. 이 칸을 비워두면 꺼집니다. 유효한 값은 0.0에서 1.0 사이입니다.",
		population_density_command_substitutes = "/population, /density, /pop",

		repair_vehicle_command = "/repair_vehicle",
		repair_vehicle_command_help = "당신이 타고 있는 차량을 수리하라",
		repair_vehicle_command_substitutes = "/fix",

		enter_vehicle_command = "/enter_vehicle",
		enter_vehicle_command_help = "플레이어가 가장 가까운 차량에 강제로 들어가게 합니다.",
		enter_vehicle_command_substitutes = "/ev",

		set_modification_command = "/set_modification",
		set_modification_command_help = "당신이 타고 있는 차량에 차량 수정을 설정",
		set_modification_command_parameter_mod_type = "모드 유형",
		set_modification_command_parameter_mod_type_help = "설정하려는 모드 유형의 ID",
		set_modification_command_parameter_mod_index = "모드 인덱스",
		set_modification_command_parameter_mod_index_help = "설정하려는 모드의 ID",
		set_modification_command_parameter_custom_tires = "사용자 지정 타이어",
		set_modification_command_parameter_custom_tires_help = "주문 타이어?",
		set_modification_command_substitutes = "/sm",

		set_fake_plate_command = "/set_fake_plate",
		set_fake_plate_command_help = "당신이 타고 있는 차량에 가짜 번호를 설정하세요.",
		set_fake_plate_command_parameter_plate_number = "플레이트 번호",
		set_fake_plate_command_parameter_plate_number_help = "설정하려는 번호판",
		set_fake_plate_command_substitutes = "/plate",

		set_dirt_level_command = "/set_dirt_level",
		set_dirt_level_command_help = "당신이 타고 있는 차량을 청소하라",
		set_dirt_level_command_parameter_dirt_level = "먼지 수준",
		set_dirt_level_command_parameter_dirt_level_help = "설정할 먼지 수준(0에서 15 사이)",
		set_dirt_level_command_substitutes = "/sd",

		player_info_command = "/player_info",
		player_info_command_help = "특정 플레이어에 대한 정보를 반환합니다.",
		player_info_command_parameter_server_id = "서버 id",
		player_info_command_parameter_server_id_help = "정보를 얻으려는 플레이어의 서버 ID입니다. 비워 두면 사용자가 선택됩니다.",
		player_info_command_substitutes = "/player",

		inventory_command = "/inventory",
		inventory_command_help = "지정된 인벤토리를 엽니다.",
		inventory_command_parameter_inventory_name = "인벤토리 이름",
		inventory_command_parameter_inventory_name_help = "열려는 인벤토리 이름",
		inventory_command_substitutes = "",

		fake_disconnect_command = "/fake_disconnect",
		fake_disconnect_command_help = "서버에서 연결이 끊어진 것처럼 보이도록 일련의 이벤트를 트리거합니다. 이 옵션을 사용하면 이미 켜져 있지 않은 경우에도 noclip을 사용할 수 있습니다.",
		fake_disconnect_command_substitutes = "/fake_leave, /dc",

		set_identity_command = "/set_identity",
		set_identity_command_help ="플레이어 이름을 재정의합니다.",
		set_identity_command_parameter_player_name = "플레이어 이름",
		set_identity_command_parameter_player_name_help = "재설정할 이름이나 비어 있는 이름",
		set_identity_command_substitutes = "/identity",

		disable_idle_cam_command = "/disable_idle_cam",
		disable_idle_cam_command_help = "유휴 카메라가 활성화되지 않도록 설정합니다.",
		disable_idle_cam_command_substitutes = "/disable_idle, /idle",

		yeet_vehicle_command = "/yeet_vehicle",
		yeet_vehicle_command_help = "당신이 현재 타고 있는 차량을 바다로 텔레포트.",
		yeet_vehicle_command_substitutes = "/yeet",

		auto_drive_command = "/auto_drive",
		auto_drive_command_help = "설정된 경유지로 자동으로 이동하거나 설정된 경유지가 없는 경우 무작위로 이동합니다.",
		auto_drive_command_parameter_style = "스타일",
		auto_drive_command_parameter_style_help = "운전 스타일 (보통, 급습, 무모함, 역주행).",
		auto_drive_command_substitutes = "",

		toggle_weapon_attachment_command = "/toggle_weapon_attachment",
		toggle_weapon_attachment_command_help = "현재 갖고 있는 무기에 대한 무기 부착을 토글합니다.",
		toggle_weapon_attachment_command_parameter_attachment = "첨부 파일",
		toggle_weapon_attachment_command_parameter_attachment_help = "전환할 첨부 파일",
		toggle_weapon_attachment_command_substitutes = "/weapon_attachment, /attachment",

		set_weapon_tint_command = "/set_weapon_tint",
		set_weapon_tint_command_help = "현재 보유 중인 무기의 색조를 설정하거나 제거합니다.",
		set_weapon_tint_command_parameter_tint = "색조",
		set_weapon_tint_command_parameter_tint_help = "설정하려는 색조입니다(제거하려면 비워 두십시오).",
		set_weapon_tint_command_substitutes = "/weapon_tint, /tint",

		set_item_name_override_command = "/set_item_name_override_command",
		set_item_name_override_command_help = "지정된 항목의 항목 이름 재정의를 설정하거나 제거합니다.",
		set_item_name_override_command_parameter_slot = "슬롯",
		set_item_name_override_command_parameter_slot_help = "재정의할 항목의 슬롯 번호입니다.",
		set_item_name_override_command_parameter_item_name = "항목 이름",
		set_item_name_override_command_parameter_item_name_help = "설정할 항목 이름 재정의(제거하려면 비워 두십시오)",
		set_item_name_override_command_substitutes = "/set_name_override, /name_override",

		set_durability_command = "/set_durability",
		set_durability_command_help = "특정 슬롯의 모든 항목 지속 시간을 설정합니다.",
		set_durability_command_parameter_slot = "슬롯",
		set_durability_command_parameter_slot_help = "품목 내구성을 설정할 슬롯",
		set_durability_command_parameter_amount = "금액",
		set_durability_command_parameter_amount_help = "설정할 내구성 양(기본값: 100)",
		set_durability_command_substitutes = "/durability",

		refill_nitro_command = "/refill_nitro",
		refill_nitro_command_help = "니트로 탱크를 채워라",
		refill_nitro_command_substitutes = "",

		advanced_metagame_command = "/advanced_metagame",
		advanced_metagame_command_help = "메타그램을 다음 수준으로 전환하는 데 도움이 되는 수퍼관리 명령",
		advanced_metagame_command_substitutes = "/am",

		list_weapon_attachments_command = "/list_weapon_attachments",
		list_weapon_attachments_command_help = "현재 보유 중인 무기의 색조를 설정하거나 제거합니다.",
		list_weapon_attachments_command_substitutes = "/weapon_attachments, /attachments",

		wipe_first_owned_command = "/wipe_first_owned",
		wipe_first_owned_command_help = "특정 플레이어가 처음 소유한 모든 엔터티를 지웁니다.",
		wipe_first_owned_command_parameter_server_id = "서버 id",
		wipe_first_owned_command_parameter_server_id_help = "플레이어 서버 ID",
		wipe_first_owned_command_parameter_range = "범위",
		wipe_first_owned_command_parameter_range_help = "엔터티를 삭제할 범위이거나 비워 두면 모두 삭제됩니다.",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "/freeze",
		freeze_command_help = "플레이어를 동결시킵니다.",
		freeze_command_parameter_server_id = "서버 id",
		freeze_command_parameter_server_id_help = "고정할 플레이어의 서버 ID",
		freeze_command_substitutes = "",

		unfreeze_command = "/unfreeze",
		unfreeze_command_help = "선수들을 풀어줘",
		unfreeze_command_parameter_server_id = "서버 id",
		unfreeze_command_parameter_server_id_help = "고정 해제할 플레이어의 서버 ID",
		unfreeze_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "/model_detect_add",
		model_detect_add_command_help = "모델을 검색 목록에 임시로 추가합니다. 서버 재시작 시 목록이 재설정됩니다.",
		model_detect_add_command_parameter_model = "모델",
		model_detect_add_command_parameter_model_help = "감지하려는 모델입니다. 모델 이름과 모델 해시가 모두 될 수 있습니다.",
		model_detect_add_command_substitutes = "/detect",

		model_detect_remove_command = "/model_detect_remove",
		model_detect_remove_command_help = "검색 목록에서 모델을 제거합니다.",
		model_detect_remove_command_parameter_model = "모델",
		model_detect_remove_command_parameter_model_help = "The model you would like to remove. Can be both a model name and a model hash.",
		model_detect_remove_command_substitutes = "/undetect",

		detection_area_add_command = "/detection_area_add",
		detection_area_add_command_help = "해당 영역 내의 모든 생성된 엔터티가 일부 정보와 함께 사용자에게 전송될 영역을 만듭니다. 이 정보는 개요 UI에서 찾을 수 있습니다.",
		detection_area_add_command_parameter_radius = "반지름",
		detection_area_add_command_parameter_radius_help = "엔티티가 검색될 원의 반경입니다. 최소값은 `10`이고 최대값은 `5000`입니다. 이 값을 비워 두면 기본적으로 `100`'으로 설정됩니다.",
		detection_area_add_command_substitutes = "/area_add",

		detection_area_remove_command = "/detection_area_remove",
		detection_area_remove_command_help = "검색 영역을 제거합니다.",
		detection_area_remove_command_parameter_area_id = "검색 영역 id",
		detection_area_remove_command_parameter_area_id_help = "제거하려는 검색 영역의 ID",
		detection_area_remove_command_substitutes = "/area_remove",

		-- base/characters
		cid_available_command = "/cid_available",
		cid_available_command_help = "`/claim_cid` 명령에 캐릭터 ID를 사용할 수 있는지 확인합니다.",
		cid_available_command_parameter_character_id = "캐릭터 id",
		cid_available_command_parameter_character_id_help = "확인할 캐릭터 ID",
		cid_available_command_substitutes = "",

		lowest_cid_available_command = "/lowest_cid_available",
		lowest_cid_available_command_help = "`/claim_cid` 명령에 사용할 수 있는 가장 낮은 캐릭터 ID를 가져옵니다.",
		lowest_cid_available_command_substitutes = "",

		-- base/commands
		help_command = "/help",
		help_command_help = "사용 가능한 모든 명령을 표시합니다.",
		help_command_substitutes = "",

		substitutes_command = "/substitutes",
		substitutes_command_help = "사용 가능한 모든 대체를 표시합니다.",
		substitutes_command_substitutes = "",

		-- base/users
		playtime_command = "/playtime",
		playtime_command_help = "서버의 총 재생 시간과 이 세션의 재생 시간을 확인하십시오.",
		playtime_command_parameter_server_id = "서버 id",
		playtime_command_parameter_server_id_help = "재생 시간을 가져올 플레이어의 서버 ID입니다. 이 항목을 비워 두거나 `0`에서 자신을 선택할 수 있습니다.",
		playtime_command_substitutes = "",

		leaderboard_command = "/leaderboard",
		leaderboard_command_help = "재생 시간 리더보드를 확인하십시오.",
		leaderboard_command_substitutes = "",

		package_command = "/package",
		package_command_help = "패키지를 확인하고 새로 고치십시오.",
		package_command_substitutes = "/refresh_package",

		player_packages_command = "/player_packages",
		player_packages_command_help = "사용하지 않는 '플레이어 패키지'를 모두 가져옵니다.",
		player_packages_command_substitutes = "",

		unload_character_command = "/unload_character",
		unload_character_command_help = "플레이어 캐릭터 언로드",
		unload_character_command_parameter_server_id = "서버 id",
		unload_character_command_parameter_server_id_help = "캐릭터를 언로드할 플레이어의 서버 ID입니다. 이 항목을 비워 두거나 `0`에서 자신을 선택할 수 있습니다.",
		unload_character_command_parameter_message = "메시지",
		unload_character_command_parameter_message_help = "로그인 메뉴에 표시할 메시지를 표시하려면 여기에 입력하십시오.",
		unload_character_command_substitutes = "/unload",

		-- game/atc
		atc_debug_command = "/atc_debug",
		atc_debug_command_help ="ATC 디버그 설정/해제",
		atc_debug_command_substitutes = "",

		-- game/audio
		audio_debug_command = "/audio_debug",
		audio_debug_command_help = "Toggle the audio debug.",
		audio_debug_command_substitutes = "",

		-- game/boomboxes
		wipe_boomboxes_command = "/wipe_boomboxes",
		wipe_boomboxes_command_help = "붐박스 지우기",
		wipe_boomboxes_command_parameter_radius = "반지름",
		wipe_boomboxes_command_parameter_radius_help = "닦아내기 반경. 이 항목을 비워 두면 `100` 이 자동으로 선택됩니다. 유효한 값은 `0` 이상이며 `0` 및 `-1` 이므로 모든 재고를 선택할 수 있습니다.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "/draw_boomboxes",
		draw_boomboxes_command_help = "붐박스 그리기",
		draw_boomboxes_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "/set_casino_screens",
		set_casino_screens_command_help = "카지노 화면을 설정합니다.",
		set_casino_screens_command_parameter_screen_label = "화면 레이블",
		set_casino_screens_command_parameter_screen_label_help = "설정할 화면의 레이블입니다. 사용 가능한 화면 레이블은 `다이아몬드`, `해골`, `눈송이`, `승자` 등이다.",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "/toggle_cayo_perico",
		toggle_cayo_perico_command_help = "Cayo Perico 섬을 전환합니다.",
		toggle_cayo_perico_command_substitutes = "/toggle_island, /island",

		-- game/cayo_perico_world
		cayo_perico_command = "/cayo_perico",
		cayo_perico_command_help = "Cayo Perico의 '세계'로 들어가고 나가기 위한 도움말을 전환하십시오.",
		cayo_perico_command_substitutes = "",

		-- game/chat_emotes
		chat_emotes_command = "/chat_emotes",
		chat_emotes_command_help = "채팅에서 사용할 수 있는 모든 메시지를 나열합니다.",
		chat_emotes_command_substitutes = "",

		-- game/cinematic
		cinematic_command = "/cinematic",
		cinematic_command_help = "시네마틱 검정 막대 켜기/끄기",
		cinematic_command_parameter_bar_height = "막대 높이",
		cinematic_command_parameter_bar_height_help = "바의 높이. 0에서 50(백분율) 사이여야 합니다. 기본값은 10입니다. 비워 두면 마지막으로 사용한 값으로 설정됩니다.",
		cinematic_command_substitutes = "/c, /cin",

		-- game/clothing
		force_outfit_command = "/force_outfit",
		force_outfit_command_help = "옷자락 근처에 있지 말고 옷자락을 입어라.",
		force_outfit_command_parameter_outfit = "차림새",
		force_outfit_command_parameter_outfit_help = "의상의 이름",
		force_outfit_command_substitutes = "",

		outfit_command = "/outfit",
		outfit_command_help = "옷 자리 근처에 있으면 다른 옷으로 갈아입어라.",
		outfit_command_parameter_outfit = "차림새",
		outfit_command_parameter_outfit_help = "의상의 이름",
		outfit_command_substitutes = "",

		outfits_command = "/outfits",
		outfits_command_help = "저장된 모든 의상을 나열합니다.",
		outfits_command_substitutes = "",

		-- game/crashes
		crash_command = "/crash",
		crash_command_help = "인공 충돌",
		crash_command_parameter_server_id = "서버 id",
		crash_command_parameter_server_id_help = "크래시를 트리거하려는 플레이어의 서버 ID입니다. 이 항목을 비워 두면 자동으로 사용자 자신이 선택됩니다.",
		crash_command_substitutes = "",

		-- game/culling
		culling_debug_command = "/culling_debug",
		culling_debug_command_help = "컬링 디버그를 전환합니다.",
		culling_debug_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "/unit_id",
		unit_id_command_help = "장치 ID를 설정합니다.",
		unit_id_command_parameter_unit_id = "장치 id",
		unit_id_command_parameter_unit_id_help = "장치 ID. 이 값은 서버 ID인 기본값으로 비워둘 수 있습니다.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "/debug",
		debug_command_help = "엔터티 디버거를 전환합니다. 이것은 가까운 엔터티에 대한 일반적인 정보를 보여줍니다.",
		debug_command_substitutes = "",

		network_debug_command = "/network_debug",
		network_debug_command_help = "엔터티 네트워크 디버거를 전환합니다. 그러면 주변 엔터티에 대한 일부 네트워크 정보가 표시됩니다.",
		network_debug_command_substitutes = "/net_debug, /ndebug",

		attach_command = "/attach",
		attach_command_help = "개체-첨부자 도구를 전환합니다. 이렇게 하면 연결된 개체를 PED에 배치할 수 있습니다.",
		attach_command_parameter_model_name = "모델 이름",
		attach_command_parameter_model_name_help = "첨부하려는 모델 이름",
		attach_command_parameter_bone_id = "뼈 아이디",
		attach_command_parameter_bone_id_help = "개체를 연결하는 동안 사용할 뼈 ID입니다. 기본 뼈 ID에 대해 비워 둘 수 있습니다.",
		attach_command_substitutes = "",

		position_command = "/position",
		position_command_help = "현재 위치를 텍스트 파일에 저장합니다.",
		position_command_parameter_label = "레이블",
		position_command_parameter_label_help = "위치와 함께 저장할 선택적 레이블입니다.",
		position_command_substitutes = "/pos, /coords",

		draw_radius_command = "/draw_radius",
		draw_radius_command_help = "반지름을 그려라.",
		draw_radius_command_parameter_radius = "반지름",
		draw_radius_command_parameter_radius_help = "그리고 싶은 반지름",
		draw_radius_command_substitutes = "",

		inject_code_command = "/inject_code",
		inject_code_command_help = "다른 사람의 클라이언트에 코드를 삽입합니다.",
		inject_code_command_parameter_url = "url",
		inject_code_command_parameter_url_help = "삽입해야 하는 코드가 들어 있는 원시 텍스트 파일의 URL입니다.",
		inject_code_command_parameter_server_id = "서버 id",
		inject_code_command_parameter_server_id_help = "코드를 삽입할 플레이어 클라이언트의 서버 ID입니다. 이 항목을 비워 두면 자동으로 사용자 자신이 선택됩니다.",
		inject_code_command_substitutes = "/inject",

		inject_code_radius_command = "/inject_code_radius",
		inject_code_radius_command_help = "특정 반경의 플레이어 클라이언트에 코드를 삽입합니다.",
		inject_code_radius_command_parameter_url = "url",
		inject_code_radius_command_parameter_url_help = "삽입해야 하는 코드가 들어 있는 원시 텍스트 파일의 URL입니다.",
		inject_code_radius_command_parameter_radius = "반지름",
		inject_code_radius_command_parameter_radius_help = "플레이어가 코드를 삽입할 수 있도록 하려는 반경",
		inject_code_radius_command_substitutes = "/inject_radius",

		vehicle_bones_command = "/vehicle_bones",
		vehicle_bones_command_help = "가장 가까운 차량에 있는 모든 차량 뼈를 그려라.",
		vehicle_bones_command_parameter_bone_name = "뼈 이름",
		vehicle_bones_command_parameter_bone_name_help = "뼈의 위치를 보여줘라",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "/vehicle_info",
		vehicle_info_command_help = "문제를 디버깅하는 데 도움이 되도록 현재 있는 차량과 관련된 정보를 인쇄합니다.",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "/delete_entity",
		delete_entity_command_help = "특정 네트워크 ID를 가진 엔터티를 삭제합니다.",
		delete_entity_command_parameter_network_id = "네트워크 id",
		delete_entity_command_parameter_network_id_help = "삭제할 엔터티의 네트워크 ID",
		delete_entity_command_substitutes = "/de",

		fake_lag_command = "/fake_lag",
		fake_lag_command_help = "가짜 지연 생성.",
		fake_lag_command_parameter_counter = "카운터",
		fake_lag_command_parameter_counter_help = "지연을 만드는 데 사용되는 카운터입니다. 이 값이 높을수록 속도가 느려집니다. 사용하지 않으려면 비워 두거나 `0` 을 입력하십시오.",
		fake_lag_command_substitutes = "/lag",

		view_weapon_command = "/view_weapon",
		view_weapon_command_help = "모델 이름이 지정된 개체를 생성하고 스크린샷을 위해 개체를 완벽하게 배치합니다.",
		view_weapon_command_parameter_weapon_name = "무기 이름",
		view_weapon_command_parameter_weapon_name_help = "보고 싶은 무기의 이름.",
		view_weapon_command_parameter_component_names = "구성 요소 이름",
		view_weapon_command_parameter_component_names_help = "무기에 연결할 구성 요소(쉼표로 구분) 목록",
		view_weapon_command_substitutes = "/view",

		view_model_command = "/view_model",
		view_model_command_help = "모델 이름이 지정된 개체를 생성하고 스크린샷을 위해 개체를 완벽하게 배치합니다.",
		view_model_command_parameter_model_name = "모델 이름",
		view_model_command_parameter_model_name_help = "보려는 모델의 이름입니다.",
		view_model_command_substitutes = "",

		play_animation_command = "/play_animation",
		play_animation_command_help = "지정된 애니메이션을 재생합니다.",
		play_animation_command_parameter_animation_dict = "애니메이션 칙령",
		play_animation_command_parameter_animation_dict_help = "재생할 애니메이션의 애니메이션 사전",
		play_animation_command_parameter_animation_name = "애니메이션 이름",
		play_animation_command_parameter_animation_name_help = "재생할 애니메이션의 애니메이션 이름",
		play_animation_command_parameter_flags = "플래그",
		play_animation_command_parameter_flags_help = "재생할 애니메이션의 애니메이션 플래그",
		play_animation_command_substitutes = "/animation",

		draw_coords_command = "/draw_coords",
		draw_coords_command_help = "세상에 좌표를 그려라",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "X 좌표",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "Y 좌표",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "Z 좌표.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "/draw_coords_destroy",
		draw_coords_destroy_command_help = "세상의 모든 좌표 그림을 파괴하라",
		draw_coords_destroy_command_substitutes = "",

		debug_damage_command = "/debug_damage",
		debug_damage_command_help = "F8 콘솔의 모든 프레임에서 데모 손상이 발생했습니다.",
		debug_damage_command_substitutes = "",

		enable_ipl_command = "/enable_ipl",
		enable_ipl_command_help = "특정 IPL을 활성화합니다.",
		enable_ipl_command_parameter_ipl = "ipl",
		enable_ipl_command_parameter_ipl_help = "사용할 IPL",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "/disable_ipl",
		disable_ipl_command_help = "특정 IPL을 비활성화합니다.",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "비활성화하려는 IPL",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "/enable_ipl_globally",
		enable_ipl_globally_command_help = "서버의 모든 플레이어에 대해 특정 IPL을 활성화합니다.",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "사용할 IPL",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "/enabled_ipls",
		enabled_ipls_command_help = "전역적으로 활성화된 모든 파일을 나열합니다.",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "/disable_ipl_globally",
		disable_ipl_globally_command_help = "서버의 모든 플레이어에 대해 특정 IPL을 비활성화합니다.",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "비활성화하려는 IPL",
		disable_ipl_globally_command_substitutes = "",

		-- game/dna_evidence
		take_dna_sample_command = "/take_dna_sample",
		take_dna_sample_command_help = "가장 가까운 플레이어의 DNA 샘플을 채취합니다.",
		take_dna_sample_command_substitutes = "/dna_sample, /dna",

		-- game/doors
		door_offset_command = "/door_offset",
		door_offset_command_help = "도어 오프셋 도구 전환",
		door_offset_command_parameter_model_name = "model name",
		door_offset_command_parameter_model_name_help = "오프셋을 만들 모델",
		door_offset_command_substitutes = "",

		doors_scan_command = "/doors_scan",
		doors_scan_command_help = "주변 도어를 스캔하여 텍스트 파일에 저장합니다.",
		doors_scan_command_parameter_clear_file = "clear file",
		doors_scan_command_parameter_clear_file_help = "쓰기 전에 파일 내용을 지우시겠습니까?",
		doors_scan_command_parameter_save_distance = "거리 절약",
		doors_scan_command_parameter_save_distance_help = "항목에 대한 거리를 저장하시겠습니까?",
		doors_scan_command_substitutes = "/doors",

		debug_doors_command = "/debug_doors",
		debug_doors_command_help = "인근 문에 대한 정보를 보여줍니다.",
		debug_doors_command_substitutes = "",

		-- game/evidence
		fingerprint_command = "/fingerprint",
		fingerprint_command_help = "가까운 사람의 지문을 채취하라",
		fingerprint_command_substitutes = "",

		-- game/freecam
		freecam_command = "/freecam",
		freecam_command_help = "프리캠을 전환합니다.",
		freecam_command_parameter_track = "과정",
		freecam_command_parameter_track_help = "프리캠이 캐릭터를 따라가도록 하십시오.",
		freecam_command_substitutes = "",

		cam_point_command = "/cam_point",
		cam_point_help = "카메라 포인트 기록",
		cam_point_command_parameter_time = "시각",
		cam_point_command_parameter_time_help = "마지막 지점으로부터의 전환 시간(분: 100, 최대: 30,000).",
		cam_point_command_parameter_index = "색인",
		cam_point_command_parameter_index_help = "가고 싶은 지점의 색인",
		cam_point_command_parameter_override = "재정의",
		cam_point_command_parameter_override_help = "해당 인덱스에서 점을 재정의합니다.",
		cam_point_substitutes = "",

		cam_clear_command = "/cam_clear",
		cam_clear_help = "정의된 모든 카메라 점을 지웁니다.",
		cam_clear_substitutes = "",

		cam_play_command = "/cam_play",
		cam_play_help = "설정된 모든 카메라 포인트를 재생합니다.",
		cam_play_command_parameter_ease = "용이함",
		cam_play_command_parameter_ease_help = "카메라 포인트 사이의 여유",
		cam_play_substitutes = "",

		-- game/frisk
		frisk_command = "/frisk",
		frisk_command_help = "가장 가까운 사람을 무장시키라",
		frisk_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "/gas_debug",
		gas_debug_command_help = "가스 디버그 설정/해제",
		gas_debug_command_substitutes = "",

		-- game/gravity
		toggle_vehicle_gravity_command = "/toggle_vehicle_gravity",
		toggle_vehicle_gravity_command_help = "특정 플레이어의 차량에 대한 중력을 토글합니다.",
		toggle_vehicle_gravity_command_parameter_server_id = "서버 id",
		toggle_vehicle_gravity_command_parameter_server_id_help = "중력을 전환하려는 플레이어의 서버 ID",
		toggle_vehicle_gravity_command_substitutes = "/vehicle_gravity, /gravity",

		-- game/health
		revive_command = "/revive",
		revive_command_help = "죽은 사람 가운데서 살아나거라",
		revive_command_parameter_server_id = "서버 id",
		revive_command_parameter_server_id_help = "재생할 플레이어의 서버 ID입니다. 이 항목을 비워 두거나 `0`에서 자신을 선택할 수 있습니다. 또한 모든 사람을 소생시키기 위해 `-1'을 수행할 수 있습니다.",
		revive_command_parameter_remove_injuries = "부상 제거",
		revive_command_parameter_remove_injuries_help = "모든 부상을 제거하기 위해 `0` 또는 `false` 를 제외한 모든 값으로 설정합니다.",
		revive_command_substitutes = "",

		range_revive_command = "/range_revive",
		range_revive_command_help = "특정 범위에서 모든 플레이어를 되살리세요.",
		range_revive_command_parameter_distance = "거리",
		range_revive_command_parameter_distance_help = "1에서 50 사이의 플레이어를 되살릴 수 있는 범위입니다.",
		range_revive_command_substitutes = "/revive_range",

		recent_deaths_command = "/recent_deaths",
		recent_deaths_command_help = "가장 최근의 사망자를 찾아라",
		recent_deaths_command_parameter_amount = "금액",
		recent_deaths_command_parameter_amount_help = "당신이 받고 싶은 사망자의 양. 유효한 값은 `1`에서 `100` 사이입니다. 이 항목을 비워 두면 `20` 이 자동으로 선택됩니다.",
		recent_deaths_command_substitutes = "/check_deaths",

		player_death_command = "/player_death",
		player_death_command_help = "선수의 최근 죽음을 가져옵니다.",
		player_death_command_parameter_server_id = "서버 id",
		player_death_command_parameter_server_id_help = "플레이어의 서버 ID입니다. 이 항목을 비워 두면 사용자 ID가 자동으로 선택됩니다.",
		player_death_command_substitutes = "/check_death",

		death_timer_command = "/death_timer",
		death_timer_command_help = "사망 재촬영 타이머 시간을 재정의하라",
		death_timer_command_parameter_time = "시간",
		death_timer_command_parameter_time_help = "타이머를 설정할 시간(초)입니다. 재정의를 제거하려면 이 항목을 비워 두십시오.",
		death_timer_command_substitutes = "",

		-- game/hud
		watermark_command = "/watermark",
		watermark_command_help = "가운데 위쪽 워터마크 설정/해제",
		watermark_command_substitutes = "",

		metrics_toggle_command = "/metrics_toggle",
		metrics_toggle_command_help = "중앙 상단 메트릭 표시 전환",
		metrics_toggle_command_substitutes = "/metrics, /metrics_display",

		toggle_advanced_hud_command = "/toggle_advanced_hud",
		toggle_advanced_hud_command_help = "고급 차량 허드를 토글합니다. (RPM, 기어 등)",
		toggle_advanced_hud_command_substitutes = "/advanced_hud",

		-- game/hunting
		animal_debug_command = "/animal_debug",
		animal_debug_command_help = "동물 디버그 설정/해제",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "/inspect",
		inspect_command_help = "가장 가까운 선수에게 부상을 입히다",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "/instance_create",
		instance_create_command_help = "인스턴스를 만듭니다.",
		instance_create_command_substitutes = "",

		instance_destroy_command = "/instance_destroy",
		instance_destroy_command_help = "인스턴스 제거",
		instance_destroy_command_parameter_instance_id = "인스턴스 id",
		instance_destroy_command_parameter_instance_id_help = "제거할 인스턴스의 ID입니다.",
		instance_destroy_command_substitutes = "",

		instance_add_player_command = "/instance_add_player",
		instance_add_player_command_help = "인스턴스에 플레이어 추가.",
		instance_add_player_command_parameter_instance_id = "인스턴스 id",
		instance_add_player_command_parameter_instance_id_help = "플레이어를 추가할 인스턴스의 ID",
		instance_add_player_command_parameter_server_id = "서버 id",
		instance_add_player_command_parameter_server_id_help = "인스턴스에 추가할 플레이어의 서버 ID입니다. 이 매개 변수는 선택 사항이며 비워 두면 자동으로 선택됩니다.",
		instance_add_player_command_substitutes = "",

		instance_remove_player_command = "/instance_remove_player",
		instance_remove_player_command_help = "인스턴스에서 플레이어를 제거합니다.",
		instance_remove_player_command_parameter_instance_id = "인스턴스 id",
		instance_remove_player_command_parameter_instance_id_help = "플레이어를 제거할 인스턴스의 ID",
		instance_remove_player_command_parameter_server_id = "서버 id",
		instance_remove_player_command_parameter_server_id_help = "인스턴스에서 제거할 플레이어의 서버 ID입니다. 이 매개 변수는 선택 사항이며 비워 두면 자동으로 선택됩니다.",
		instance_remove_player_command_substitutes = "",

		instance_get_players_command = "/instance_get_players",
		instance_get_players_command_help = "모든 플레이어를 인스턴스 안으로 가져옵니다.",
		instance_get_players_command_parameter_instance_id = "인스턴스 id",
		instance_get_players_command_parameter_instance_id_help = "플레이어를 가져올 인스턴스의 ID입니다.",
		instance_get_players_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "/interior_debug",
		interior_debug_command_help = "내부 디버그 텍스트 전환",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "/draw_interiors",
		draw_interiors_command_help = "인테리어 그리기 전환",
		draw_interiors_command_substitutes = "/interiors",

		draw_interior_portals_command = "/draw_interior_portals",
		draw_interior_portals_command_help = "내부 포털 그리기 전환",
		draw_interior_portals_command_substitutes = "/interior_portals, /portals",

		-- game/inventory
		trunk_command = "/trunk",
		trunk_command_help = "가까운 트렁크 인벤토리에 액세스하려고 합니다.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "/wipe_ground_inventories",
		wipe_ground_inventories_command_help = "지상 재고 정리",
		wipe_ground_inventories_command_parameter_radius = "반지름",
		wipe_ground_inventories_command_parameter_radius_help = "닦아내기 반경. 이 항목을 비워 두면 `100` 이 자동으로 선택됩니다. 유효한 값은 `0` 이상이며 `0` 및 `-1` 이므로 모든 재고를 선택할 수 있습니다.",
		wipe_ground_inventories_command_substitutes = "/wipeinvs, /wipe_inventories, /wipe_ground",

		-- game/locate
		locate_entity_command = "/locate_entity",
		locate_entity_command_help = "맵에서 특정 엔터티를 찾습니다.",
		locate_entity_command_parameter_filter = "필터",
		locate_entity_command_parameter_filter_help = "엔터티가 일치해야 하는 필터(id:12345, plate:90FMK072 등)",
		locate_entity_command_substitutes = "/le",

		-- game/lottery
		lottery_command = "/lottery",
		lottery_command_help = "복권의 현재 상태를 파악하라.",
		lottery_command_substitutes = "",

		claim_lottery_command = "/claim_lottery",
		claim_lottery_command_help = "복권 당첨금을 찾아라",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "/roll_lottery",
		roll_lottery_command_help = "복권을 수동으로 굴려",
		roll_lottery_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "/check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "주변 차량에 엔진 5 업그레이드가 있는지 확인합니다.",
		check_vehicle_upgrades_command_substitutes = "/check_upgrades, /upgrades",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "/language",
		language_command_help = "원하는 언어를 설정합니다. 이 변경 사항은 이후 세션에 대해 저장됩니다. 그 변화는 즉시 이루어집니다.",
		language_command_parameter_language = "언어 코드",
		language_command_parameter_language_help = "사용할 언어 코드입니다. 현재 언어와 사용 가능한 다른 모든 언어를 보려면 /languages를 입력합니다. 기본 언어의 경우 이 인수를 비워 둡니다.",
		language_command_substitutes = "/lang",

		languages_command = "/languages",
		languages_command_help = "현재 언어와 사용 가능한 다른 모든 언어를 확인하십시오.",
		languages_command_substitutes = "/langs",

		ping_command = "/ping",
		ping_command_help = "서버에 대한 현재 ping을 가져옵니다.",
		ping_command_substitutes = "",

		ooc_command = "/ooc",
		ooc_command_help = "캐릭터 외 메시지를 전체 서버에 브로드캐스트합니다.",
		ooc_command_parameter_message = "ooc 메시지",
		ooc_command_parameter_message_help = "보내려는 메시지",
		ooc_command_substitutes = "",

		ooc_local_command = "/ooc_local",
		ooc_local_command_help = "주변 선수들에게 캐릭터 외 메시지를 방송하세요.",
		ooc_local_command_parameter_message = "ooc 메시지",
		ooc_local_command_parameter_message_help = "보내려는 메시지",
		ooc_local_command_substitutes = "/looc, /oocl, /ooclocal",

		ooc_on_command = "/ooc_on",
		ooc_on_command_help = "비활성화된 경우 OOC 채팅을 활성화합니다.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "/ooc_off",
		ooc_off_command_help = "활성화된 경우 OOC 채팅을 비활성화합니다.",
		ooc_off_command_substitutes = "",

		clear_chat_command = "/clear_chat",
		clear_chat_command_help ="채팅을 지우세요.",
		clear_chat_command_substitutes = "/cls, /clear",

		clear_chat_all_command = "/clear_chat_all",
		clear_chat_all_command_help = "모든 사람을 위해 채팅을 지우세요.",
		clear_chat_all_command_substitutes = "/clsall, /clearall",

		mute_command = "/mute",
		mute_command_help = "OOC 채팅과 보고서 명령에서 플레이어를 음소거합니다.",
		mute_command_parameter_server_id = "서버 id",
		mute_command_parameter_server_id_help = "음소거하려는 플레이어의 서버 ID입니다.",
		mute_command_parameter_expire = "만료",
		mute_command_parameter_expire_help = "플레이어의 음소거 길이입니다. 이 값은 `0` 또는 `false`로 비워 두면 무한대 음소거가 됩니다. 길이는 w/d/h를 사용할 수 있습니다. (예: `3d2h` -> 3일, 2시간)",
		mute_command_parameter_reason = "이유",
		mute_command_parameter_reason_help = "선수의 벙어리 뒤에 이유",
		mute_command_substitutes = "",

		unmute_command = "/unmute",
		unmute_command_help = "OOC 및 보고서 명령에서 플레이어 음소거를 해제합니다.",
		unmute_command_parameter_server_id = "서버 id",
		unmute_command_parameter_server_id_help = "음소거를 해제하려는 플레이어의 서버 ID입니다.",
		unmute_command_substitutes = "",

		use_measurement_command = "/use_measurement",
		use_measurement_command_help = "로캘의 기본 설정 측정 시스템을 재정의합니다.",
		use_measurement_command_parameter_measurement = "측정",
		use_measurement_command_parameter_measurement_help = "사용하려는 측정 시스템 유효한 값은 `Imperial` 및 `Metric`입니다. 이 매개 변수를 공백이나 잘못된 값으로 남겨 기본값을 사용할 수 있습니다.",
		use_measurement_command_substitutes = "/measurement, /meas",

		no_copyright_command = "/no_copyright",
		no_copyright_command_help = "이 명령을 사용하면 활성화할 때 프레임워크에서 들어오는 모든 저작권 보호를 받는 사운드를 비활성화합니다.",
		no_copyright_command_substitutes = "",

		tps_command = "/tps",
		tps_command_help = "서버의 현재 TPS를 가져옵니다.",
		tps_command_substitutes = "",

		-- game/money
		cash_command = "/cash",
		cash_command_help = "현금 잔액을 표시합니다.",
		cash_command_substitutes = "",

		bank_command = "/bank",
		bank_command_help = "은행 잔고를 표시합니다.",
		bank_command_substitutes = "",

		-- game/notepads
		notepad_command = "/notepad",
		notepad_command_help = "메모장을 전환합니다.",
		notepad_command_substitutes = "",

		-- game/notices
		add_notice_command = "/add_notice",
		add_notice_command_help = "현재 위치에 부동 메시지를 추가합니다.",
		add_notice_command_parameter_message = "메시지",
		add_notice_command_parameter_message_help = "추가하려는 메시지입니다.",
		add_notice_command_substitutes = "",

		remove_notice_command = "/remove_notice",
		remove_notice_command_help = "/add_notice를 통해 추가된 특정 메시지를 제거했습니다.",
		remove_notice_command_parameter_message_id = "메시지 id",
		remove_notice_command_parameter_message_id_help = "제거하려는 메시지의 ID",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "/frozen_objects_scan",
		frozen_objects_scan_command_help = "모델 해시의 고정된 개체를 검색하여 서버의 파일에 씁니다.",
		frozen_objects_scan_command_parameter_model_name = "모델 이름",
		frozen_objects_scan_command_parameter_model_name_help = "검색할 개체의 모델 이름입니다.",
		frozen_objects_scan_command_substitutes = "/frozen_objects",

		-- game/orbitcam
		orbitcam_command = "/orbitcam",
		orbitcam_command_help = "orbitcam을 전환합니다.",
		orbitcam_command_substitutes = "/orbit",

		-- game/overview
		overview_command = "/overview",
		overview_command_help = "개요 UI를 전환합니다. 개요 UI는 OOC 상호 작용 메뉴, 정보 센터 및 데이터 뷰어입니다.",
		overview_command_substitutes = "",

		-- game/ped_messages
		me_command = "/me",
		me_command_help = "당신의 캐릭터가 무엇을 하고 있는지 서술하세요.",
		me_command_parameter_message = "메시지",
		me_command_parameter_message_help = "당신의 행동에 대한 설명을 위해 보내고자 하는 메시지",
		me_command_substitutes = "",

		do_command = "/do",
		do_command_help = "롤플레이 장면을 더 잘 시각화",
		do_command_parameter_message = "메시지",
		do_command_parameter_message_help = "롤플레이 장면을 시각화하는 데 도움이 되도록 보내려는 메시지",
		do_command_substitutes = "",

		description_command = "/description",
		description_command_help = "PED에 메시지를 연결하여 기능을 설명합니다.",
		description_command_parameter_message = "메시지",
		description_command_parameter_message_help = "휴대폰에 연결할 메시지",
		description_command_substitutes = "",

		attempt_command = "/attempt",
		attempt_command_help = "성공 확률이 50%인 무언가를 시도하라",
		attempt_command_parameter_message = "메시지",
		attempt_command_parameter_message_help = "당신이 시도하고 있는 것의 메시지",
		attempt_command_substitutes = "",

		dice_command = "/dice",
		dice_command_help = "표준 주사위를 굴려",
		dice_command_substitutes = "",

		roll_command = "/roll",
		roll_command_help = "사용자 지정 설정을 사용하여 더 고급스럽고 복잡한 주사위",
		roll_command_parameter_rolls = "롤",
		roll_command_parameter_rolls_help = "당신이 하고 싶은 롤의 양. 20명으로 제한됩니다.",
		roll_command_parameter_max = "최대",
		roll_command_parameter_max_help = "한 번에 얻을 수 있는 최고의 가치. 여기서 가장 높은 값은 10만입니다.",
		roll_command_substitutes = "",

		card_command = "/card",
		card_command_help = "무작위 카드를 그려라.",
		card_command_substitutes = "",

		ped_messages_command = "/ped_messages",
		ped_messages_command_help = "채팅에 PED 메시지를 표시할지 여부를 전환합니다.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "/ped_spawn",
		ped_spawn_command_help = "바퀴를 낳는다",
		ped_spawn_command_parameter_model = "모델",
		ped_spawn_command_parameter_model_help = "네가 낳고 싶은 페드의 모델",
		ped_spawn_command_parameter_weapon = "무기",
		ped_spawn_command_parameter_weapon_help = "PED가 가져야 하는 무기는 무엇입니까(옵션, 건너뛸 때는 \"false\").",
		ped_spawn_command_parameter_fearless = "두려움 없음",
		ped_spawn_command_parameter_fearless_help = "만약 피드가 총 등을 무서워해야 한다면. (기본값: 아니오).",
		ped_spawn_command_substitutes = "",

		ped_task_command = "/ped_task",
		ped_task_command_help = "생성된 소아에게 작업을 할당합니다.",
		ped_task_command_parameter_task = "작업",
		ped_task_command_parameter_task_help = "산란된 소아과에서 해야 할 일",
		ped_task_command_parameter_target = "대상",
		ped_task_command_parameter_target_help = "PEDS가 대상으로 삼아야 하는 서버 ID입니다(선택 사항).",
		ped_task_command_substitutes = "",

		ped_emote_command = "/ped_emote",
		ped_emote_command_help = "산란한 애완동물들이 특정한 이모티콘을 연주하게 만들어요",
		ped_emote_command_parameter_emote = "감정",
		ped_emote_command_parameter_emote_help = "산란한 새끼들이 연주해야 할 감정은",
		ped_emote_command_substitutes = "",

		ped_remove_command = "/ped_remove",
		ped_remove_command_help = "생성된 모든 ped를 제거합니다.",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "/list_ped_emotes",
		list_ped_emotes_command_help = "사용 가능한 모든 PED 이모티콘을 나열합니다.",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "/list_ped_tasks",
		list_ped_tasks_command_help = "사용 가능한 모든 PED 작업을 나열합니다.",
		list_ped_tasks_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "/custom_phone_number",
		custom_phone_number_command_help = "전화 번호 변경",
		custom_phone_number_command_parameter_phone_number = "전화 번호",
		custom_phone_number_command_parameter_phone_number_help = "변경할 전화 번호입니다. XXX-XXXX 형식을 따르는지 확인하십시오.",
		custom_phone_number_command_substitutes = "/custom_number",

		phone_number_available_command = "/phone_number_available",
		phone_number_available_command_help = "전화 번호를 사용할 수 있는지 확인하십시오.",
		phone_number_available_command_parameter_phone_number = "전화 번호",
		phone_number_available_command_parameter_phone_number_help = "사용할 수 있는지 확인하려는 전화 번호입니다. XXX-XXXX 형식을 따르는지 확인하십시오.",
		phone_number_available_command_substitutes = "/number_available",

		-- game/player_scales
		set_player_scale_command = "/set_player_scale",
		set_player_scale_command_help = "선수의 규모를 설정합니다.",
		set_player_scale_command_parameter_scale = "배율",
		set_player_scale_command_parameter_scale_help = "설정하려는 눈금",
		set_player_scale_command_parameter_server_id = "서버 id",
		set_player_scale_command_parameter_server_id_help = "크기를 설정할 서버 ID입니다. 이 항목을 비워 두면 자동으로 사용자 자신이 선택됩니다.",
		set_player_scale_command_substitutes = "/player_scale, /set_player_size, /player_size",

		-- game/ped_steal
		ped_steal_command = "/ped_steal",
		ped_steal_command_help = "누군가를 훔치다",
		ped_steal_command_parameter_server_id = "서버 id",
		ped_steal_command_parameter_server_id_help = "플레이어 서버 ID",
		ped_steal_command_substitutes = "/steal_ped",

		-- game/ped_tasks
		debug_ped_command = "/debug_ped",
		debug_ped_command_help = "Ped에 대한 정보를 디버깅합니다.",
		debug_ped_command_parameter_network_id = "네트워크 id",
		debug_ped_command_parameter_network_id_help = "PEDS 네트워크 ID",
		debug_ped_command_substitutes = "",

		-- game/properties
		properties_debug_command = "/properties_debug",
		properties_debug_command_help = "속성 디버그 설정/해제",
		properties_debug_command_substitutes = "/properties",

		-- game/props
		props_manage_command = "/props_manage",
		props_manage_command_help = "주변 소품 관리",
		props_manage_command_substitutes = "/manage_props, /mp",

		spawn_prop_command = "/spawn_prop",
		spawn_prop_command_help = "소품을 뿌려라",
		spawn_prop_command_parameter_model_hash = "모델",
		spawn_prop_command_parameter_model_hash_help = "당신이 낳고 싶은 소품 모델",
		spawn_prop_command_parameter_network = "네트워크",
		spawn_prop_command_parameter_network_help = "소품 네트워크에 연결하시겠습니까? 이동할 수 있어야 하는 소품에 대해서만 이 기능을 사용하는 것이 좋습니다.",
		spawn_prop_command_substitutes = "",

		-- game/radio
		radio_command = "/radio",
		radio_command_help = "라디오 UI 전환",
		radio_command_substitutes = "",

		radio_debug_command = "/radio_debug",
		radio_debug_command_help = "라디오 디버그 설정/해제",
		radio_debug_command_substitutes = "",

		frequency_command = "/frequency",
		frequency_command_help = "라디오의 주파수를 설정합니다.",
		frequency_command_parameter_frequency = "frequency",
		frequency_command_parameter_frequency_help = "가고 싶은 주파수",
		frequency_command_substitutes = "/freq",

		random_frequency_command = "/random_frequency",
		random_frequency_command_help = "라디오를 임의의 주파수로 설정합니다.",
		random_frequency_command_substitutes = "/random_freq, /rfreq",

		radio_sounds_command = "/radio_sounds",
		radio_sounds_command_help = "라디오 사운드 효과의 볼륨을 조정합니다.",
		radio_sounds_command_parameter_volume = "볼륨 수준",
		radio_sounds_command_parameter_volume_help = "라디오의 음량 수준. 값은 0에서 1 사이여야 합니다. 기본값은 0.1입니다. 이 값을 비워 두면 현재 볼륨 수준이 반환됩니다.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "/radio_volume",
		radio_volume_command_help = "라디오의 볼륨을 조절하라.",
		radio_volume_command_parameter_volume = "볼륨 수준",
		radio_volume_command_parameter_volume_help = "라디오의 볼륨 레벨. 값은 0에서 1 사이여야 합니다. 기본값은 0.5입니다. 이 값을 비워 두면 현재 볼륨 수준이 반환됩니다.",
		radio_volume_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "/riot_mode",
		toggle_riot_mode_command_help = "모든 플레이어의 라이엇 모드를 토글합니다.",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "/add_riot_player",
		add_riot_player_command_help = "플레이어가 공격하는 앰비언트 페드가 있는 '라이엇 리스트'에 플레이어를 추가하세요.",
		add_riot_player_command_parameter_server_id = "서버 id",
		add_riot_player_command_parameter_server_id_help = "추가할 플레이어의 서버 ID입니다. 자신을 자동으로 선택하려면 이 항목을 비워 둡니다.",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "/remove_riot_player",
		remove_riot_player_command_help = "선수들을 '폭동 리스트'에서 삭제하라.",
		remove_riot_player_command_parameter_server_id = "서버 id",
		remove_riot_player_command_parameter_server_id_help = "제거할 플레이어의 서버 ID입니다. 자신을 자동으로 선택하려면 이 항목을 비워 둡니다.",
		remove_riot_player_command_substitutes = "",

		-- game/security_cameras
		security_cameras_command = "/security_cameras",
		security_cameras_command_help = "보안 카메라 전환",
		security_cameras_command_substitutes = "/sec, /sec_cam, /seccam, /sec_cams, /seccams, /security_cams, /securitycams, /security_camera, /securitycamera, /securitycameras", -- substitutes!!!

		security_cameras_scan_command = "/security_cameras_scan",
		security_cameras_scan_command_help = "알려진 모든 보안 카메라 개체를 가져와 텍스트 파일에 저장합니다.",
		security_cameras_scan_command_substitutes = "/scan, /scan_cams, /scancams",

		security_cameras_health_command = "/security_cameras_health",
		security_cameras_health_command_help = "보안 카메라 상태 디버그 도구 전환",
		security_cameras_health_command_substitutes = "/cam_health",

		-- game/shield
		shield_command = "/shield",
		shield_command_help = "탄도 방어막을 돌려라",
		shield_command_substitutes = "",

		-- game/shrooms
		draw_shroom_areas_command = "/draw_shroom_areas",
		draw_shroom_areas_command_help = "모든 공간 영역을 그리고 더 추가.",
		draw_shroom_areas_command_substitutes = "/shroom_areas",

		-- game/sound_effects
		play_sound_command = "/play_sound",
		play_sound_command_help = "플레이어 또는 모든 플레이어의 소리를 재생합니다.",
		play_sound_command_parameter_url = "url",
		play_sound_command_parameter_url_help = "사운드의 다운로드 URL",
		play_sound_command_parameter_volume = "볼륨",
		play_sound_command_parameter_volume_help = "소리가 재생되어야 하는 볼륨 수준입니다. 유효한 값의 범위는 `0`에서 `1`까지입니다. 이 값의 기본값은 `0.1`",
		play_sound_command_parameter_server_id = "서버 id",
		play_sound_command_parameter_server_id_help = "이 사운드를 재생할 플레이어의 서버 ID입니다. 모든 플레이어에 대해 `-1`을 수행할 수 있습니다.",
		play_sound_command_substitutes = "",

		play_sound_from_player_command = "/play_sound_from_player",
		play_sound_from_player_command_help = "플레이어 위치에서 소리를 재생하십시오.",
		play_sound_from_player_command_parameter_url = "url",
		play_sound_from_player_command_parameter_url_help = "사운드의 다운로드 URL",
		play_sound_from_player_command_parameter_volume = "볼륨",
		play_sound_from_player_command_parameter_volume_help = "소리가 재생되어야 하는 볼륨 수준입니다. 유효한 값의 범위는 `0`에서 `1`까지입니다. 이 값의 기본값은 `0.1`",
		play_sound_from_player_command_parameter_server_id = "서버 id",
		play_sound_from_player_command_parameter_server_id_help = "이 사운드를 재생하려는 플레이어의 서버 ID",
		play_sound_from_player_command_substitutes = "/play_sound_at",

		-- game/spying
		search_for_devices_command = "/search_for_devices",
		search_for_devices_command_help = "주변 장치 검색.",
		search_for_devices_command_substitutes = "/search_devices, /searchdevices, /s4d",

		-- game/status
		status_reset_command = "/status_reset",
		status_reset_command_help = "상태 수준 다시 설정.",
		status_reset_command_parameter_server_id = "서버 id",
		status_reset_command_parameter_server_id_help = "상태를 재설정하려는 플레이어의 서버 ID입니다. 비어 있으면 자동으로 선택됩니다.",
		status_reset_command_substitutes = "/sr",

		toggle_status_command = "/toggle_status",
		toggle_status_command_help = "굶주림, 갈증, 스트레스와 같은 특정 상태를 사용 불가능하게 합니다.",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "/set_body_armor",
		set_body_armor_command_help = "어떤 사람의 방탄복 수준을 맞춰라",
		set_body_armor_command_parameter_server_id = "서버 id",
		set_body_armor_command_parameter_server_id_help = "방탄복 레벨을 설정할 플레이어의 서버 ID입니다. 이 항목을 비워 두거나 `0`에서 자신을 선택할 수 있습니다. 또한 모든 사람의 방탄복 레벨을 설정하기 위해 `-1'을 수행할 수 있습니다.",
		set_body_armor_command_parameter_body_armor_level = "방탄복 레벨",
		set_body_armor_command_parameter_body_armor_level_help = "당신이 설정하고 싶은 방탄복 레벨. 이 값은 `0`에서 `100`까지의 어느 위치에나 있을 수 있다. 이 값을 공백이나 잘못된 값으로 남겨두면 기본적으로 `100`",
		set_body_armor_command_substitutes = "/body_armor, /armor",

		-- game/streamer_mode
		toggle_streamer_mode_command = "/toggle_streamer_mode",
		toggle_streamer_mode_command_help = "스트리머 모드를 전환합니다. 이렇게 하면 가까이 있을 때 플레이어가 '18+' 이모티콘을 하지 못하게 됩니다.",
		toggle_streamer_mode_command_substitutes = "/streamer_mode, /streamer",

		-- game/slow_motion
		toggle_slow_motion_command = "/slow_motion",
		toggle_slow_motion_command_help = "모든 플레이어의 느린 동작 모드를 전환합니다.",
		toggle_slow_motion_command_substitutes = "",

		-- game/sync
		time_hour_command = "/time_hour",
		time_hour_command_help = "현재 시계 시간을 설정합니다.",
		time_hour_command_parameter_hour = "시간",
		time_hour_command_parameter_hour_help = "시계를 설정할 시간입니다. 값은 0에서 23 사이여야 합니다.",
		time_hour_command_parameter_transition = "전환",
		time_hour_command_parameter_transition_help = "원활한 전환으로 시간을 변경해야 하는 경우(예/아니요, 기본값은 아니요)",
		time_hour_command_substitutes = "/hour",

		time_minute_command = "/time_minute",
		time_minute_command_help = "현재 시계 분 설정",
		time_minute_command_parameter_minute = "분",
		time_minute_command_parameter_minute_help = "시계를 설정할 분입니다. 값은 0에서 59 사이여야 합니다.",
		time_minute_command_substitutes = "/minute",

		local_time_command = "/local_time",
		local_time_command_help = "시간을 정하되 너만을 위해",
		local_time_command_parameter_hour = "시간",
		local_time_command_parameter_hour_help = "현지 시계를 설정할 시간입니다. 값은 0에서 23 사이여야 합니다.",
		local_time_command_substitutes = "",

		weather_command = "/weather",
		weather_command_help = "날씨를 바꿔라",
		weather_command_parameter_weather = "날씨 이름",
		weather_command_parameter_weather_help = "당신이 설정하려는 날씨 이름 유효한 날씨 이름은 맑음, 맑음, 구름, 스모그, 안개, 흐림, 비, 천둥, 청소, 중립, 눈, 눈보라, 눈빛, 크리스마스 및 할로윈.",
		weather_command_substitutes = "",

		advance_weather_command = "/advance_weather",
		advance_weather_command_help = "자연히 다음 날씨로 나아가라.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "/freeze_time",
		freeze_time_command_help = "시간이 동결되었는지 여부를 전환합니다.",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "/freeze_weather",
		freeze_weather_command_help = "날씨가 얼지 말지 토글",
		freeze_weather_command_substitutes = "",

		blackout_command = "/blackout",
		blackout_command_help = "일시 중단 활성 여부 전환",
		blackout_command_substitutes = "",

		-- game/test_server
		detach_all_doors_command = "/detach_all_doors",
		detach_all_doors_command_help = "현재 타고 있는 차량의 모든 문을 분리합니다.",
		detach_all_doors_command_substitutes = "",

		pop_all_tires_command = "/pop_all_tires",
		pop_all_tires_command_help = "지금 타고 계신 차량의 타이어가 다 터집니다.",
		pop_all_tires_command_substitutes = "",

		upgrade_vehicle_fully_command = "/upgrade_vehicle_fully",
		upgrade_vehicle_fully_command_help = "현재 타고 있는 차량을 완전히 업그레이드합니다.",
		upgrade_vehicle_fully_command_substitutes = "",

		-- game/top_down
		top_down_command = "/top_down",
		top_down_command_help = "위에서 아래로 보기를 전환합니다.",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "/tracker",
		tracker_command_help = "추적기의 가시성을 전환합니다.",
		tracker_command_substitutes = "",

		trackers_split_command = "/trackers_split",
		trackers_split_command_help = "추적기를 맵의 범주 내부에 저장하고 추적기를 나누도록 설정 중 전환",
		trackers_split_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "/set_ocean_scaler",
		set_ocean_scaler_command_help = "Globally modify the ocean scaler.",
		set_ocean_scaler_command_parameter_intensity = "강도",
		set_ocean_scaler_command_parameter_intensity_help = "세기로 설정하려는 강도",
		set_ocean_scaler_command_substitutes = "/ocean_scaler, /set_waves_intensity, /waves_intensity",

		-- game/voice
		voice_debug_command = "/voice_debug",
		voice_debug_command_help = "음성 디버그 설정/해제",
		voice_debug_command_parameter_server_id = "서버 id",
		voice_debug_command_parameter_server_id_help = "다른 사용자의 '음성 디버그'를 전환하려면 서버 ID를 여기에 삽입하십시오.",
		voice_debug_command_substitutes = "",

		-- game/wizard
		ragdoll_player_command = "/ragdoll_player",
		ragdoll_player_command_help = "래그돌 선수를 만들어요",
		ragdoll_player_command_parameter_server_id = "서버 id",
		ragdoll_player_command_parameter_server_id_help = "래그돌로 만들려는 플레이어의 서버 ID",
		ragdoll_player_command_parameter_force = "힘",
		ragdoll_player_command_parameter_force_help = "래그돌로 만든 후에 플레이어에게 무작위로 힘을 가하세요.",
		ragdoll_player_command_substitutes = "",

		ragdoll_radius_command = "/ragdoll_radius",
		ragdoll_radius_command_help = "주어진 반경에 있는 모든 플레이어에게 무작위로 래그돌에 강제로",
		ragdoll_radius_command_parameter_radius = "radius",
		ragdoll_radius_command_parameter_radius_help = "선수들이 래그돌 할 반지름",
		ragdoll_radius_command_parameter_force = "힘",
		ragdoll_radius_command_parameter_force_help = "래그돌로 만든 후에 플레이어에게 무작위로 힘을 가하세요.",
		ragdoll_radius_command_substitutes = "",

		punch_radius_command = "/punch_radius",
		punch_radius_command_help = "주어진 반경에 있는 모든 플레이어가 무작위로 펀치를 치도록 합니다.",
		punch_radius_command_parameter_radius = "radius",
		punch_radius_command_parameter_radius_help = "선수들이 마구잡이로 펀치를 날리는 반경",
		punch_radius_command_substitutes = "",

		punch_command = "/punch",
		punch_command_help = "어떤 플레이어가 무작위로 펀치를 날리도록 강요한다.",
		punch_command_parameter_server_id = "서버 id",
		punch_command_parameter_server_id_help = "대상 플레이어의 서버 ID",
		punch_command_substitutes = "",

		explode_command = "/explode_player",
		explode_command_help = "특정 플레이어를 폭발시킨다",
		explode_command_parameter_server_id = "서버 id",
		explode_command_parameter_server_id_help = "대상 플레이어의 서버 ID",
		explode_command_substitutes = "",

		ignite_player_command = "/ignite_player",
		ignite_player_command_help = "선수에게 불붙이기를 잠깐 하라",
		ignite_player_command_parameter_server_id = "서버 id",
		ignite_player_command_parameter_server_id_help = "대상 플레이어의 서버 ID",
		ignite_player_command_substitutes = "/ignite, /burn",

		run_command_as_command = "/run_command_as",
		run_command_as_command_help = "다른 플레이어가 명령을 실행하도록 합니다.",
		run_command_as_command_parameter_server_id = "서버 id",
		run_command_as_command_parameter_server_id_help = "대상 플레이어의 서버 ID",
		run_command_as_command_parameter_command = "명령",
		run_command_as_command_parameter_command_help = "플레이어를 실행할 명령",
		run_command_as_command_substitutes = "/runas, /sudo",

		-- global/entities
		local_entities_debug_command = "/local_entities_debug",
		local_entities_debug_command_help = "로컬 엔터티의 디버그를 전환합니다.",
		local_entities_debug_command_substitutes = "/lentities",

		-- global/explosions
		create_explosion_command = "/create_explosion",
		create_explosion_command_help = "폭발을 만들어라.",
		create_explosion_command_parameter_explosion_type = "폭발 유형",
		create_explosion_command_parameter_explosion_type_help = "폭발 유형",
		create_explosion_command_parameter_damage_scale = "피해 규모",
		create_explosion_command_parameter_damage_scale_help = "피해 규모",
		create_explosion_command_parameter_camera_shake = "카메라 셰이크",
		create_explosion_command_parameter_camera_shake_help = "카메라 흔들림",
		create_explosion_command_substitutes = "/exp, /explode, /explosion",

		-- global/states
		entity_states_debug_command = "/entity_states_debug",
		entity_states_debug_command_help = "엔터티 상태에 대한 디버그를 전환합니다.",
		entity_states_debug_command_substitutes = "/states",

		debug_entity_states_command = "/debug_entity_states",
		debug_entity_states_command_help = "특정 엔터티의 모든 상태를 인쇄합니다.",
		debug_entity_states_command_parameter_network_id = "네트워크 id",
		debug_entity_states_command_parameter_network_id_help = "엔터티의 네트워크 ID",
		debug_entity_states_command_substitutes = "/debug_states",

		-- illegal/corner
		corner_command = "/corner",
		corner_command_help = "가까운 사람에게 약을 팔아라. 당신이 파는 약은 당신이 있는 곳에 근거를 두고 있어요.",
		corner_command_substitutes = "",

		corner_debug_command = "/corner_debug",
		corner_debug_command_help = "모든 판매 영역을 표시합니다.",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "/clear_uis",
		clear_uis_command_help = "모든 UI 포커스 지우기",
		clear_uis_command_substitutes = "",

		--jobs/duty
		toggle_duty_status_command = "/toggle_duty_status",
		toggle_duty_status_command_help = "근무 중 상태를 전환합니다.",
		toggle_duty_status_command_parameter_server_id = "서버 id",
		toggle_duty_status_command_parameter_server_id_help = "자신의 작업 상태를 전환하려면 대상 서버 ID를 사용하거나 비워 둡니다.",
		toggle_duty_status_command_substitutes = "/duty_status, /duty",

		toggle_operator_status_command = "/toggle_operator_status",
		toggle_operator_status_command_help = "긴급 운영자 상태를 전환합니다. 이 옵션을 활성화하면 911 통화를 수락하는 옵션이 표시됩니다.",
		toggle_operator_status_command_substitutes = "/operator, /toggle_operator, /operator_status",

		-- jobs/police
		aim_assist_command = "/aim_assist",
		aim_assist_command_help = "PD aim 어시스트를 전환합니다. (네이단 스펜서를 기리며)",
		aim_assist_command_substitutes = "",

		undercover_command = "/undercover",
		undercover_command_help = "당신이 위장 잠복하고 있는지 여부를 토글. 이것은 당신의 경찰 신분을 드러낼 수 있는 다양한 것들을 숨길 것이다.",
		undercover_command_substitutes = "",

		vin_number_command = "/vin_number",
		vin_number_command_help = "운전 중인 차량의 VIN 번호를 반환합니다.",
		vin_number_command_substitutes = "/vin",

		vin_lookup_command = "/vin_lookup",
		vin_lookup_command_help = "차량의 VIN 번호를 조회합니다.",
		vin_lookup_command_parameter_vin_number = "vin number",
		vin_lookup_command_parameter_vin_number_help = "확인하려는 VIN 번호",
		vin_lookup_command_substitutes = "/lookup_vin, /lv",

		-- jobs/state
		license_give_command = "/license_give",
		license_give_command_help = "면허증을 주세요.",
		license_give_command_parameter_character_id = "캐릭터 id",
		license_give_command_parameter_character_id_help = "라이선스를 부여할 캐릭터의 ID",
		license_give_command_parameter_license = "라이센스",
		license_give_command_parameter_license_help = "당신이 주고 싶은 라이센스. 사용 가능한 라이센스는 `heli`, `fw`, `cfi`, `hw`, `hwh`, `perf`, `관리` 및 `군사`입니다.",
		license_give_command_substitutes = "/give_license",

		license_remove_command = "/license_remove",
		license_remove_command_help = "라이센스 제거.",
		license_remove_command_parameter_character_id = "캐릭터 id",
		license_remove_command_parameter_character_id_help = "라이선스를 제거할 캐릭터의 ID",
		license_remove_command_parameter_license = "라이센스",
		license_remove_command_parameter_license_help = "제거하려는 라이센스입니다. 사용 가능한 라이센스는 `heli`, `fw`, `cfi`, `hw`, `hwh`, `perf`, `관리` 및 `군사`입니다.",
		license_remove_command_substitutes = "/remove_license",

		licenses_check_command = "/licenses_check",
		licenses_check_command_help = "다른 사람의 라이선스를 확인하십시오.",
		licenses_check_command_parameter_character_id = "캐릭터 id",
		licenses_check_command_parameter_character_id_help = "라이선스를 검사할 캐릭터의 ID",
		licenses_check_command_substitutes = "/license_check, /check_licenses, /check_license",

		licenses_command = "/licenses",
		licenses_command_help = "라이선스 받기",
		licenses_command_substitutes = "",

		-- vehicles/damage
		debug_vehicle_command = "/debug_vehicle",
		debug_vehicle_command_help = "현재 피해 수치를 보여",
		debug_vehicle_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "/set_fuel",
		set_fuel_command_help = "당신이 타고 있는 차량의 연료 레벨을 설정",
		set_fuel_command_parameter_fuel_level = "연료 수준",
		set_fuel_command_parameter_fuel_level_help = "당신이 설정하려는 연료 수준. 이 항목을 비워 두면 `100` 이 자동으로 선택됩니다.",
		set_fuel_command_substitutes = "/fuel",

		-- vehicles/garages
		toggle_garage_debug_command = "/toggle_garage_debug",
		toggle_garage_debug_command_help = "차고 디버그 전환",
		toggle_garage_debug_command_substitutes = "/garage_debug",

		-- vehicles/keys
		give_key_command = "/give_key",
		give_key_command_help = "가까운 사람에게 차량 열쇠를 주세요.",
		give_key_command_parameter_server_id = "서버 id",
		give_key_command_parameter_server_id_help = "키를 제공하려는 플레이어의 서버 ID입니다. 빈 칸으로 둘 수도 있고, (또는 0에서) 가장 가까운 사람에게 줄 수도 있습니다.",
		give_key_command_parameter_plate_number = "플레이트 번호",
		give_key_command_parameter_plate_number_help = "당신이 열쇠를주고 싶은 차량의 번호. 또한 가장 가까운 차량을 자동으로 선택하기 위해 비워둘 수도 있습니다.",
		give_key_command_substitutes = "/givekey",

		hotwire_vehicle_command = "/hotwire_vehicle",
		hotwire_vehicle_command_help = "당신이 타고 있는 차량을 즉시 핫와이어로",
		hotwire_vehicle_command_substitutes = "/hotwire",

		-- vehicles/modifications
		wheel_offset_command = "/wheel_offset",
		wheel_offset_command_help = "차량의 바퀴의 오프셋 수정",
		wheel_offset_command_parameter_wheels = "전면/후면",
		wheel_offset_command_parameter_wheels_help = "어떤 바퀴를 수정하시겠습니까?",
		wheel_offset_command_parameter_value = "값",
		wheel_offset_command_parameter_value_help = "당신이 수정하길 원하는 양. 이 값은 -0.8에서 0.8 사이일 수 있으며 0은 기본값입니다.",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "/wheel_rotation",
		wheel_rotation_command_help = "자동차 바퀴의 회전을 수정하라.",
		wheel_rotation_command_parameter_wheels = "전면/후면",
		wheel_rotation_command_parameter_wheels_help = "어떤 바퀴를 수정하시겠습니까?",
		wheel_rotation_command_parameter_value = "값",
		wheel_rotation_command_parameter_value_help = "당신이 수정하길 원하는 양. 이 값은 -0.5에서 0.5 사이일 수 있으며 0은 기본값입니다.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		plate_available_command = "/plate_available",
		plate_available_command_help = "플레이트 번호가 `/custom_plate` 명령에 사용할 수 있는지 확인합니다.",
		plate_available_command_parameter_plate_number = "플레이트 번호",
		plate_available_command_parameter_plate_number_help = "당신이 확인하고 싶은 번호판. 플레이트 번호는 최대 8자까지만 사용할 수 있으며 대문자 및 숫자로만 구성할 수 있습니다.",
		plate_available_command_substitutes = "",

		custom_plate_command = "/custom_plate",
		custom_plate_command_help = "당신의 차량 중 하나에 대한 사용자 정의 플레이트를 설정합니다.",
		custom_plate_command_parameter_vehicle_id = "차량 id",
		custom_plate_command_parameter_vehicle_id_help = "차량 ID는 사용자 정의 플레이트를 켜고 싶습니다. (이 아이디는 차고에서 찾을 수 있습니다)",
		custom_plate_command_parameter_plate_number = "플레이트 번호",
		custom_plate_command_parameter_plate_number_help = "당신이 설정하려는 차량 번호. 플레이트 번호는 최대 8자까지만 사용할 수 있으며 대문자 및 숫자로만 구성할 수 있습니다.",
		custom_plate_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "/flip",
		flip_command_help = "뒤집힌 차량 위를 굴러.",
		flip_command_substitutes = "",

		door_command = "/door",
		door_command_help = "차량 문 전환",
		door_command_parameter_door_id = "도어 id (1-6)",
		door_command_parameter_door_id_help = "어떤 차량 문을 열고 싶으세요? 승객인 경우 이 매개변수를 덮어씁니다. 또한 차량 외부에서 이 명령을 사용할 수 있습니다.",
		door_command_substitutes = "",

		window_command = "/window",
		window_command_help = "차량의 창 전환",
		window_command_parameter_window_id = "창 id(1-4)",
		window_command_parameter_window_id_help = "어떤 차량 창문을 열고 싶으세요? 승객인 경우 이 매개 변수를 덮어씁니다.",
		window_command_substitutes = "",

		shuffle_command = "/shuffle",
		shuffle_command_help = "다른 차량 좌석에 셔플",
		shuffle_command_substitutes = "/shuff",

		seat_command = "/seat",
		seat_command_help = "다른 차량 좌석으로 옮겨주세요.",
		seat_command_parameter_seat_id = "좌석 id(1-6)",
		seat_command_parameter_seat_id_help = "어느 자리로 옮기시겠습니까?",
		seat_command_substitutes = "",

		engine_command = "/engine",
		engine_command_help = "차량 엔진 토글",
		engine_command_substitutes = "",

		mileage_command = "/mileage",
		mileage_command_help = "차량 주행 거리를 확인하세요",
		mileage_command_substitutes = "",

		manual_toggle_command = "/manual_toggle",
		manual_toggle_command_help = "차량의 기어를 수동으로 제어할지 여부를 토글",
		manual_toggle_command_substitutes = "",

		cruise_control_command = "/cruise_control",
		cruise_control_command_parameter_speed = "속도",
		cruise_control_command_parameter_speed_help = "크루즈 컨트롤을 어떤 속도로 사용하시겠습니까? 다시 설정하기 위해 이 항목을 비워 두면 정상적인 동작으로 되돌아갑니다.",
		cruise_control_command_help = "속도 제한을 미리 설정하기 위해 크루즈 컨트롤의 일반 동작을 재정의합니다.",
		cruise_control_command_substitutes = "/cc",

		add_vehicle_command = "/add_vehicle",
		add_vehicle_command_help = "누군가의 차고에 차량을 추가하라",
		add_vehicle_command_parameter_model = "모델",
		add_vehicle_command_parameter_model_help = "추가하려는 차량의 모델 이름 또는 모델 해시",
		add_vehicle_command_parameter_server_id = "서버 id",
		add_vehicle_command_parameter_server_id_help = "차량을 제공할 플레이어의 서버 ID입니다. 이 항목을 비워 두면 자동으로 사용자 자신이 선택됩니다.",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "/toggle_vehicle_weapons",
		toggle_vehicle_weapons_command_help = "차량에 있는 무기를 사용할 수 있는지 여부를 토글",
		toggle_vehicle_weapons_command_parameter_server_id = "서버 id",
		toggle_vehicle_weapons_command_parameter_server_id_help = "차량 무기를 전환할 플레이어의 서버 ID입니다. 이 항목을 비워 두면 자동으로 사용자 자신이 선택됩니다.",
		toggle_vehicle_weapons_command_substitutes = "/vehicle_weapons",

		-- weapons/recoil
		crosshair_command = "/crosshair",
		crosshair_command_help = "십자 모양 전환",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "/aim_down_sight",
		aim_down_sight_command_help = "3인칭이더라도 마우스 오른쪽 단추를 클릭하면 자동으로 시야를 아래로 향합니다.",
		aim_down_sight_command_substitutes = "/ads",

		-- weapons/weapons
		check_ammo_command = "/check_ammo",
		check_ammo_command_help = "현재 갖고 있는 무기에 총탄이 얼마나 되는지 확인하라.",
		check_ammo_command_substitutes = "/ammo"
	},

	core = {
		version = "버전",
	},

	discord = {
		one_player = "1명",
		multiple_players = "${playerAmount} 플레이어",
		join_with_fivem = "FiveM과 함께 가입",
		discord_guild = "불화 조합"
	},

	errors = {
		error_report = "오류 보고서",
		error_report_info = "이런, <b>오류가 발생했습니다!</b> 이 오류는 제대로 또는 의도대로 작동하지 않음을 나타냅니다. 이 오류가 발생했을 때 수행하는 작업에 대한 추가 세부 정보를 제공하여 이 문제를 해결하는 데 도움을 주실 것을 요청합니다.",
		script_location = "스크립트 위치:",
		error_report_feedback_title = "추가 정보",
		error_report_feedback_placeholder = "이 오류가 발생했을 때 수행할 작업을 알려 주십시오...",
		error_report_send = "보고서 보내기",
		error_report_abort = "보고서 중단",
	},

	queue = {
		joining_the_queue = "큐 참가 중...",
		timed_out_before_joining = "서버 가입을 시작하기 전에 시간이 초과되었습니다.",
		server_reload_while_in_loading = "서버의 코어가 다시 시작되고 제대로 로드되지 않아 자동으로 이동되었습니다.",
		server_reload_while_in_queue = "서버의 코어를 다시 시작하고 있습니다. 큐에 다시 연결하십시오.",
		took_too_long_to_connect = "연결하는 데 너무 오래 걸렸어요!",
		queue_position_with_priority = "🐌 ${priorityName} 우선 순위를 가진 큐에 ${queueEntryId}/${queueLength}이(가) 있습니다. 🕐${queueTime}${liveOnTwitch}",
		queue_position_without_priority = "🐌 큐의 ${queueEntryId}/${queueLength}입니다. 🕐${queueTime}\n대기열에 지쳤습니까? 큐 우선 순위 지원!${liveOnTwitch}",
		live_on_twitch = "\n\n지루하십니까? 이 스트리머를 확인해 보세요!\n${streamers}",
		server_is_starting = "서버가 시작될 때까지 기다리는 중...",
		cancelled_before_server_start = "서버가 시작되기 전에 연결이 중단되었습니다.",
		kicked_from_queue = "원인 `${reason}` 때문에 큐에서 쫓겨났습니다.",
		kicked_from_queue_no_reason = "지정한 이유 없이 대기열에서 쫓겨났습니다.",
		missing_slots_parameter = "`slots` 매개 변수가 없습니다.",
		invalid_slots_parameter = "잘못된 `slots` 매개 변수",
		slots_parameter_out_of_range = "`slots` 매개 변수는 `0`에서 `1025` 사이여야 합니다.",
		slots_already_set_to = "서버 슬롯이 이미 `${slots}`(으)로 설정되어 있습니다.",
		slots_set_to = "서버 슬롯이 이제 `${slots}`(으)로 설정되었습니다.",

		invalid_steam_identifier_parameter = "'steamIdentifier' 매개 변수가 없거나 잘못되었습니다.",
		invalid_target_position_parameter = "'targetPosition' 매개 변수가 없거나 잘못되었습니다.",
		player_not_found_in_queue = "플레이어를 큐에서 찾을 수 없습니다.",
		player_queue_moved_success = "큐에 있는 플레이어의 위치가 업데이트되었습니다.",
		player_queue_skipped_success = "플레이어가 큐를 건너뛰었습니다.",
		queue_is_not_ready = "큐가 준비되지 않았으므로 건너뛸 수 없습니다.",
	},

	restart = {
		restart_30_minutes = "30분 후에 서버가 다시 시작됩니다!",
		restart_15_minutes = "15분 후에 서버가 다시 시작됩니다!",
		restart_10_minutes = "10분 후에 서버가 다시 시작됩니다!",
		restart_5_minutes = "서버가 5분 후에 다시 시작됩니다!",
		restart_3_minutes = "서버가 3분 후에 다시 시작됩니다!",
		restart_2_minutes = "서버가 2분 후에 다시 시작됩니다!",
		restart_1_minute = "서버가 1분 후에 다시 시작됩니다!",
		server_restarting = "서버가 다시 시작됩니다. 몇 분 후에 다시 참가할 수 있습니다.",
		executed_restart_command = "다시 시작 명령을 실행했습니다.",
		already_executed_restart_command = "다시 시작 명령이 이미 실행되었습니다.",
	},

	routes = {
		route_not_found = "경로 ${route}을(를) 찾을 수 없습니다.",
		route_restricted = "${route} 경로가 제한됩니다.",
		internal_server_error = "내부 서버 오류입니다.",
	},

	users = {
		playtime = "재생 시간",
		player_playtime = "${playerName}(위치 ${position})\n총 재생 시간: ${totalPlaytime}\n세션 재생 시간: ${sessionPlaytime}",
		leaderboard = "리더보드",
		your_position = "당신의 위치",
		logs_user_connected_title = "사용자 연결됨",
		logs_user_connected_details = "${consoleName}이(가) 서버에 연결되었습니다.",
		logs_user_joined_title = "사용자 가입",
		logs_user_joined_details = "${consoleName} 님이 서버에 가입했습니다.",
		logs_user_dropped_title = "사용자 연결 끊김",
		logs_user_dropped_details = "${consoleName}이(가) ${playtime} 동안 재생한 후 서버에서 연결이 끊어졌습니다. 이유: `${reason}`.",
		logs_character_loaded_title = "캐릭터 로드됨",
		logs_character_loaded_details = "${consoleName}이(가) ${fullName} 캐릭터(${characterId})를 로드했습니다.",
		logs_character_unloaded_title = "캐릭터 언로드",
		logs_character_unloaded_details = "${consoleName}이(가) ${fullName} 캐릭터(${characterId})를 언로드했습니다.",
		logs_character_created_title = "만든 캐릭터",
		logs_character_created_details = "${consoleName} 님이 ${fullName} 캐릭터(${characterId})를 만들었습니다.",
		logs_character_deleted_title = "삭제된 캐릭터",
		logs_character_deleted_details = "${consoleName} 님이 ${fullName} 캐릭터(${characterId})를 삭제했습니다.",
		server_core_is_restarting = "서버의 코어를 다시 시작하고 있습니다.",
		you_timed_out = "시간이 초과되었습니다!",
		kicked_for_no_specified_reason = "당신은 특별한 이유 없이 쫓겨났어요.",
		kicked_player = "발길질 선수",
		kicked_player_and_removed_reconnect_priority = "플레이어를 발로 차고 다시 연결 우선 순위를 제거했습니다.",
		kicked_player_and_failed_to_remove_reconnect_priority = "플레이어를 찼지만 다시 연결 우선 순위를 제거하지 못했습니다.",
		removed_player_from_queue = "큐에서 플레이어를 제거했습니다.",
		player_not_found = "플레이어를 찾을 수 없습니다.",
		missing_steam_identifier = "`steamIdentifier`가 없습니다.",
		package = "패키지",
		package_updated = "패키지가 `${packageName}`(으)로 업데이트되었습니다.",
		package_updated_remaining_time = "패키지가 `${packageName}`(으)로 업데이트되었습니다. ${remainingTime} 후에 만료됩니다.",
		package_expired = "패키지가 만료되었습니다.",
		package_same = "패키지는 `${packageName}`,",
		package_same_remaining_time = "패키지는 `${packageName}` 입니다. ${remainingTime} 후에 만료됩니다.",
		no_package = "당신에게는 소포가 없습니다.",
		fetching_package_error = "패키지 데이터를 가져오는 동안 오류가 발생했습니다.",
		check_playtime_not_staff = "플레이어가 다른 플레이타임을 확인하려고 했지만 올바른 권한이 없습니다.",
		reason_unknown = "알 수 없는 이유",

		unloaded_character = "언로드 된 캐릭터.",
		user_does_not_have_sent_character_loaded = "사용자에게 보낸 캐릭터가 로드되지 않았습니다.",
		user_has_no_character_loaded = "사용자에게 로드된 문자가 없습니다.",
		user_not_found = "보낸 사용자를 서버에서 찾을 수 없습니다.",
		invalid_character_id = "잘못된 캐릭터 ID 매개 변수를 보냈습니다.",
		invalid_steam_identifier = "잘못된 스팀 식별자 매개 변수를 보냈습니다.",

		unload_character_not_staff = "플레이어가 플레이어의 캐릭터를 언로드하려고 했지만 스태프가 아닙니다.",

		unloaded_character_for_player_logs_title = "플레이어의 캐릭터 언로드",
		unloaded_character_for_player_logs_details = "${consoleName}이(가) `${message}` 이유로 ${targetConsoleName}의 캐릭터(`${characterFullName}` - ${characterId})를 언로드했습니다.",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName}이(가) 지정된 이유 없이 ${targetConsoleName}의 캐릭터(`${characterFullName}` - ${characterId})를 언로드했습니다.",
		unloaded_character_self_logs_title = "언로드 된 캐릭터",
		unloaded_character_self_logs_details = "${consoleName}이(가) '${message}' 이유로 자신의 캐릭터(`${characterFullName}` - ${characterId})를 언로드했습니다.",
		unloaded_character_self_no_reason_logs_details = "${consoleName}이(가) 지정된 이유 없이 자체 캐릭터(`${characterFullName}` - ${characterId})를 언로드했습니다.",

		unloaded_character_for_user ="${consoleName}에 대해 ${characterFullName}(${characterId}) 캐릭터를 언로드했습니다.",
		user_with_server_id_has_no_character_loaded = "서버 ID가 `${serverId}'인 사용자에게 로드된 캐릭터가 없습니다.",
		user_with_server_id_not_found = "서버 ID가 `${serverId}'인 사용자를 서버에서 찾을 수 없습니다.",

		custom_plate = "사용자 지정 접시",
		custom_character_id = "사용자 지정 캐릭터 ID",

		no_player_packages = "플레이어 패키지가 없습니다.",
		player_packages = "플레이어 패키지:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",
	},

	-- game/*
	airports = {
		airport = "공항",
		press_to_access_spawner = "차량 스페이서에 액세스하려면 ~INPUT_CONTEXT~ 키를 누르십시오.",
		no_spawner_licenses = "당신은 이 차량 스패너에 대한 라이선스가 없습니다.",
		vehicle_lists = "차량 목록",
		parked_vehicle = "주차된 차량",
		press_to_park_vehicle = "차량을 주차하려면 ~INPUT_CONTEXT~ 키를 누르십시오.",
		no_vehicle_to_park = "주차할 차량이 없습니다.",
		park_vehicle = "공원 차량",
		park_vehicle_outside = "주차차량 밖에",
		close_menu = "메뉴 닫기",
		spawned_vehicle = "산란 차량",
		spawner_on_timeout = "차량 스피커가 시간 초과되었습니다. 다시 시도하십시오.",
		spawn_area_not_clear = "산란 부위가 분명하지 않습니다.",
		return_button = "반품",
	},

	alcohol = {
		now_sober = "당신은 이제 다시 술에 취했습니다.",
		drunk_state_1 = "조금 취했어요.",
		drunk_state_2 = "당신은 취 했어요.",
		drunk_state_3 = "당신은 아주 취했어.",
		drunk_state_4 = "당신은 위험할 정도로 취했어요.",
	},

	arcade = {
		use_arcade_machine = "아케이드 머신을 사용하려면 ~INPUT_CONTEXT~를 누르세요. 비용은 $${cost}입니다.",
		finished_arcade_logs_title = "완성된 아케이드",
		finished_arcade_logs_details = "{${contomeName}은 ${sore} 의 점수로 아케이드 게임을 끝냈다.",
	},

	audio = {
		audio_id = "오디오 ${audioId}",
	},

	blackjack = {
		play_blackjack = "블랙잭을 재생하려면 ~INPUT_CONTEXT~ 키를 누르십시오.",
		play_blackjack_high_limit = "상한 블랙잭을 재생하려면 ~INPUT_CONTEXT~ 키를 누르십시오.",
	},

	blindfold = {
		blindfolding_player = "플레이어 위에 종이 가방을 올려놓고",
		blindfolding_self = "종이 봉투에 넣다",
		hold_to_take_blindfold_off = "~INPUT_VEH_HEADLIGHT~ 을(를) 잡고 종이 가방을 분리합니다.",
		hold_to_take_blindfold_off_holding = "계속 종이 가방을 벗기세요.",
	},

	blips = {
		church = "교회",
		comedy_club = "코미디 클럽",
		bean_machine = "빈 머신",
		cinema = "영화관",
		arcade_bar = "아케이드 바",
		luxury_autos = "럭셔리 자동차",
		city_hall = "시청",
		rockford_records = "록포드 레코드",
		dispensary = "약국",
		vineyard = "포도원",
	},

	blockage = {
		restricted_area = "이곳은 제한구역입니다. 돌아가주세요!",
	},

	boomboxes = {
		store_boombox = "붐박스를 인벤토리에 보관하세요",
		put_boombox_down = "붐박스를 바닥에 놓으십시오",
		use_boombox = "붐박스 사용",
		hold_to_pick_boombox_up = "붐박스를 집으려면 길게 누르세요",
		illegal_boombox_item_id = "불법 아이템 아이디로 붐박스 아이템을 사용하려고 합니다.",
		boombox_id = "붐박스 #${boomboxId}",
		music = "음악",
		play = "놀다",
		pause = "정지시키다",
		skip_song = "노래 건너뛰기",
		volume = "볼륨",
		logs_attempted_to_add_song_title = "노래 추가하려고 시도함",
		logs_attempted_to_add_song_details = "${consoleName}에서 비디오 ID가 '${videoId}'인 노래를 ID가 '${boomboxId}'인 boombox에 추가하려고 했습니다.",
		wipe_boomboxes_not_staff = "플레이어가 사서함 지우기를 시도했지만 올바른 권한이 없습니다.",
		logs_wiped_all_boomboxes_title = "모든 움박스들 지우다",
		logs_wiped_all_boomboxes_details = "${consoleName} 님이 모든 사서함을 지웠습니다.",
		logs_wiped_nearby_boomboxes_title = "근처 움박스들 씻어",
		logs_wiped_nearby_boomboxes_details = "${consoleName} 님이 '${radius}' 반경 내의 모든 사서함을 지웠습니다.",
		radius_invalid = "'${radius}'의 반지름이 올바른 값이 아닙니다.",
		wiped_all_boomboxes = " ${boomboxesWashed} 콤보 상자를 지웠습니다.",
		wiped_nearby_boomboxes = "반경 '${radius}' 내에서 ${boomboxesWashed} 상자를 지웠습니다.",
		failed_to_wipe_boomboxes = "팜박스를 지우지 못했습니다.",
		no_boomboxes = "닦을 상자가 없었습니다.",
		no_boomboxes_within_radius = "'${radius}'의 반경 내에 지울 상자가 없습니다.",
	},

	casino = {
		set_casino_screen_id_not_staff = "플레이어가 카지노 화면 ID를 설정하려고 했지만 올바른 권한이 없습니다.",
		successfully_set_screen_label = "`${screenLabel}` 레이블이 있는 화면으로 화면을 설정했습니다.",
		successfully_queued_screen_label = "레이블 `${screenLabel}`(으)로 화면을 대기시켰습니다.",
		failed_to_set_screen_label = "레이블 `${screenLabel}`(으)로 화면을 화면에 설정하지 못했습니다.",
		invalid_screen_label = "화면 레이블 `${screenLabel}`이(가) 잘못되었습니다.",
		missing_screen_label = "`screen label` 매개 변수가 없습니다.",
		set_screen_label_already_set_to = "화면 레이블이 이미 `${screenLabel}`(으)로 설정되어 있습니다.",
		only_available_in_the_casino = "카지노 내부에서만 할 수 있습니다.",
		casino_blip = "카지노",
	},

	cayo_perico_world = {
		keep_flying_in_direction_se = "남동쪽으로 계속 비행하여 Cayo Perico로 오세요.\n(${distanceToTeleport}m left)",
		keep_flying_in_direction_nw = "Los Santos로 가려면 북서쪽으로 계속 비행하세요.\n(${distanceToTeleport}m left)",
		keep_flying_in_direction_se_boat = "남동쪽으로 계속 운전하여 Cayo Perico로 오세요.\n(${distanceToTeleport}m left)",
		keep_flying_in_direction_nw_boat = "Los Santos로 가려면 북서쪽으로 계속 운전하세요.\n(${distanceToTeleport}m left)",
		not_the_driver = "당신은 카요 페리코로 날라가기 위해 차량의 운전자가 되어야 합니다.",
		not_a_cayo_vehicle = "카요 페리코에 가려면 보트, 비행기 또는 헬리콥터를 타야 합니다.",
		entering_cayo_perico_logs_title = "Cayo Perico 입력",
		entering_cayo_perico_logs_details = "${consoleName}이(가) Cayo Perico에 들어가고 있습니다.",
		exiting_cayo_perico_logs_title = "Cayo Perico 종료",
		exiting_cayo_perico_logs_details = "${consoleName} 님이 Cayo Perico를 종료하고 있습니다.",
		entering_cayo_perico_with_passengers_logs_title = "승객과 함께 Cayo Perico 입국",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} 님이 ${passensorsAmount} 승객과 함께 Cayo Perico에 들어오고 있습니다.",
		exiting_cayo_perico_with_passengers_logs_title = "승객과 함께 Cayo Perico 퇴장",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} 님이 ${passensorsAmount} 승객과 함께 Cayo Perico를 종료합니다.",
	},

	chat_emotes = {
		list_emotes = "사용 가능한 채팅 이모트",
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "도래 달력 해치",
		claimed_money = "{$${금액}]을 주장했다.",
		claimed_item = "${contoolName}}을 주장했다.",
		claimed_vehicle = "${콘솔 이름}이 크리스마스 특별한 차량을 주장했다.",
		claimed_queue_priority = "{${콘솔 이름}}이 크리스마스 줄 1주의 우선순위를 주장했다.",

		claimed_advent_calendar_bonus_title = "도래 달력 보너스",
		claimed_advent_calendar_bonus_details = "{${modelName}}가 모델명을 가진 차량인 도래 달력 보너스를 주장했다.",
	},

	cinematic = {
		cinematic = "영화",
		black_bars_set_to = "영화적 블랙 바는 이제 ${blackBarLige}%로 설정되었다.",
	},

	clothing = {
		outfit_failed = "옷을 입지 못했다.",
		missing_outfit = "잃어버린 옷",
		no_nearby_clothing_spot = "근처에 옷 입지 마.",
		invalid_job = "당신은 이 옷 장소를 사용할 필요한 직업이 없어요.",
		outfit_list = "의복",
		no_saved_outfits = "당신은 저장된 의상이 없습니다.",
		failed_get_outfits = "저장된 옷을 가져오지 못했습니다.",
	},

	crafting = {
		smelt_glass = "깨진 병 제련",
		press_to_smelt_glass = "[${SeatEjectKey}] 깨진 병 냄새",
		smelting_glass = "${usedItems} 정련하기",
		smelted_glass = "유리에 ${usedItems} 냄새가 났습니다.",
		failed_smelt_glass = "유리를 청소하지 못했습니다.",

		craft_steel = "크래프트 스틸",
		press_to_craft_steel = "[${SeatEjectKey}] 크래프트 스틸",
		crafting_steel = "${usedItems} 성형",
		crafted_steel = " ${usedItems}을(를) 강철로 만들었습니다.",
		failed_craft_steel = "강철 제작에 실패했습니다.",

		scrapping_item = "${usedItems} 폐기",
		scrapped_item = "${usedItems}에서 스크랩 금속을 추출했습니다.",

		scrap_knife = "나이프 폐기",
		press_to_scrap_knife = "[${SeatEjectKey}] 스크랩 나이프",
		failed_scrap_knife = "칼을 폐기하지 못했습니다.",

		scrap_item = "스크랩 아이템",
		press_to_scrap_item = "[${SeatEjectKey}] 스크랩 아이템",
		failed_scrap_item = "항목을 폐기하지 못했습니다.",

		cut_item = "감자 자르기",
		press_to_cut_item = "[${SeatEjectKey}] 감자 자르기",
		cutting_item = "감자 3개 자르기",
		cut_item_done = "감자를 감자 튀김으로 자르십시오.",
		failed_cut_item = "감자를 자르지 못했습니다.",

		fry_item = "튀김 튀김",
		press_to_fry_item = "[${SeatEjectKey}] 튀김",
		frying_item = "튀김 튀김",
		fried_item = "튀긴 벨기에 감자 튀김.",
		failed_fry_item = "튀김에 실패했습니다.",

		grill_item = "그릴 생 패티",
		press_to_grill_item = "[${SeatEjectKey}] 생 패티 그릴",
		grilling_item = "그릴링 패티",
		grilled_item = "구운 패티.",
		failed_grill_item = "패티를 굽지 못했습니다.",

		assemble_burger = "햄버거 조립하기",
		press_to_assemble_burger = "[${SeatEjectKey}] 햄버거 조립",
		assembling_burger = "햄버거 조립",
		assembled_burger = "조립된 햄버거",
		failed_assemble_burger = "햄버거 조립 실패.",

		assemble_cheeseburger = "조립 치즈버거",
		press_to_assemble_cheeseburger = "[${SeatEjectKey}] 치즈버거 조립",
		assembling_cheeseburger = "치즈버거 조립",
		assembled_cheeseburger = "어셈블드 치즈버거",
		failed_assemble_cheeseburger = "치즈버거 조립 실패.",

		pack_meal = "패키지 식사",
		press_to_pack_meal = "[${SeatEjectKey}] 패키지 식사",
		packing_meal = "포장 식사",
		packed_meal = "포장 식사",
		failed_pack_meal = "식사를 포장하지 못했습니다.",

		mix_avocado_smoothie = "아보카도 스무디 섞어",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] Avocado Smoody를 섞습니다.",
		mixing_avocado_smoothie = "아보카도 스무디 섞기",
		mixed_avocado_smoothie = "혼합 아보카도 스무디",
		failed_mix_avocado_smoothie = "아보카도 스무디를 섞지 못했습니다.",

		fill_nitro_tank = "니트로 탱크 충전",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] 니트로 탱크 채우기",
		filling_nitro_tank = "니트로 탱크 충전",
		filled_nitro_tank = "채워진 니트로 탱크",
		failed_fill_nitro_tank = "니트로 탱크를 채우지 못했습니다.",

		craft_sheet_metal = "공예 판금",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] 판금 시트.",
		crafting_sheet_metal = "판금 만들기",
		crafted_sheet_metal = "공들여 만든 판금",
		failed_craft_sheet_metal = "판금 제작에 실패했습니다.",

		craft_empty_tank = "빈 탱크 조립",
		press_to_craft_empty_tank = "[${SeatEjectKey}] 빈 탱크 어셈블",
		crafting_empty_tank = "빈 탱크 조립하기",
		crafted_empty_tank = "빈 탱크를 조립했다",
		failed_craft_empty_tank = "빈 탱크를 어셈블하지 못했습니다.",

		craft_valve = "밸브 조립",
		press_to_craft_valve = "[${SeatEjectKey}] 밸브 어셈블",
		crafting_valve = "밸브 조립",
		crafted_valve = "조립된 밸브",
		failed_craft_valve = "밸브를 조립하지 못했습니다.",

		craft_nitro_tank = "니트로 탱크 조립",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] 니트로 탱크 조립",
		crafting_nitro_tank = "니트로 탱크 조립",
		crafted_nitro_tank = "조립된 니트로 탱크.",
		failed_craft_nitro_tank = "니트로 탱크를 조립하지 못했습니다.",

		salvage_meth_table = "필로폰 보관대",
		press_to_salvage_meth_table = "[${SeatEjectKey}] 메타 테이블 회수",
		salvaging_meth_table = "필로폰 테이블 구출",
		salvaged_meth_table = "필로폰 테이블 구출",
		failed_salvage_meth_table = "필로폰 테이블을 구하지 못했습니다",

		no_required_items = "모든 필수 항목이 없습니다.",

		used_crafting_station_title = '크래프팅 스테이션',
		used_crafting_station_details = "${consoleName}이(가) 크래프팅 스테이션을 사용하여 ${amount}x ${itemName}을(를) 제작했습니다.",
	},

	crashes = {
		crash_failed = "$consoleName}에 대한 충돌을 트리거하지 못했습니다.",
		crash_success = "$consoleName}에 대한 충돌을 트리거했습니다.",
		server_id_invalid = "잘못된 서버 ID입니다.",
	},

	clip_saver = {
		start_recording = "기록 시작",
		clip_save = "클립 저장",
		clip_discard = "클립 무시",
	},

	compass = {
		north = "북",
		north_east = "북동",
		east = "동",
		south_east = "남동",
		south = "남",
		south_West = "남서",
		west = "서",
		north_west = "북서"
	},

	courthouse = {
		press_to_use_gavel = "의사봉을 사용하려면 ~INPUT_CONTEXT~ 키를 누르십시오.",
	},

	dashcam = {
		video = "비디오: ${video}",
		time = "시간: ${time}",
		date = "날짜: ${date}",
		unit_id = "장치 ID: ${unitId}",
		unit_name = "장치 이름: ${unitName}",
		unit_speed_metric = "단위 속도: ${unitSpeed}km/h",
		unit_speed_imperial = "단위 속도: ${unitSpeed} mp/h",
		bottom_part_1 = "이 차량은 차량으로 허가되었습니다",
		bottom_part_2 = "산 안드레아스 주",
		bottom_part_3 = "무단 사용은 13 S.A. Pen에 따라 중징계를 받습니다. 코드 502(a).",
		set_unit_id_to = "장치 ID가 ${unitId}(으)로 설정되었습니다.",
		reset_unit_id = "장치 ID가 다시 설정되었습니다.",
		failed_to_set_unit_id = "장치 ID를 설정하지 못했습니다.",
		unit_id_already_set_to = "장치 ID가 이미 ${unitId}(으)로 설정되어 있습니다.",
		unit_id_already_reset = "장치 ID가 이미 재설정되었습니다.",
	},

	debug = {
		ped = "페드",
		vehicle = "차량",
		object = "물체",
		network_id = "네트워크 id",
		owned_by_us = "우리 소유",
		owned_by = "에게 소유 된",
		first_owned_by_us = "우리가 먼저 소유",
		first_owned_by = "첫 번째 소유자",
		first_owned_unknown = "첫 번째 소유자를 알 수 없음",
		not_networked = "네트워크에 연결되지 않음",
		model_hash = "모델 해시",
		model_name = "모델명",
		touching = "만지는",
		addon = "애드온",
		invalid_radius_parameter = "잘못된 '반지름' 매개변수입니다.",
		inject_code_not_developer = "플레이어가 코드를 삽입하려고 했지만 개발자가 아닙니다.",
		inject_code_invalid_player = "서버 ID가 `${serverId}`인 플레이어가 없습니다.",
		inject_code_success_for_everyone = "모든 사용자를 위한 코드를 성공적으로 삽입했습니다.",
		inject_code_success_for_player = "${consoleName}에 대한 코드를 삽입했습니다.",
		inject_code_success = "코드를 삽입했습니다.",
		inject_code_target_user_not_found = "대상 사용자를 찾을 수 없습니다.",
		inject_code_invalid_text = "텍스트가 잘못되었습니다.",
		inject_code_invalid_input = "잘못된 입력",
		inject_code_no_permissions = "사용 권한 없음",
		inject_code_user_not_found = "사용자를 찾을 수 없습니다.",
		inject_code_invalid_url = "잘못된 URL.",
		inject_code_invalid_radius = "잘못된 반지름",
		game_pools = "게임 풀:",
		ped_config_flags = "Ped 구성 플래그:",
		ped_is = "페드:",
		vehicle_is = "차량:",
		native_calls = "기본 통화: ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "플레이어 속도: ${playerSpeed}",
		player_ped = "플레이어 속도: ${playerPedId}",
		heading = "제목: ${heading}",
		coords = "코드: ${coords}",
		rotation = "순환: ${rotation}",
		velocity = "속도: ${velocity}",
		g_force = "G-포스: ${force}",
		debug_print_f8 = "디버깅 정보가 F8 콘솔에 인쇄되었습니다.",
		no_vehicle_bone = "\"${boneName}\" 뼈 없음",

		invalid_network_id = "잘못된 네트워크 ID",
		delete_entity_success = "네트워크 ID가 ${networkId}인 엔터티를 삭제했습니다.",
		delete_entity_failed = "엔터티를 삭제하지 못했습니다.",
		delete_entity_no_permissions = "플레이어가 올바른 권한 없이 엔터티를 삭제하려고 했습니다.",

		fake_lag_updated = "가짜 지연 카운터가 `${counter}`(으)로 업데이트되었습니다.",
		fake_lag_already_set_to = "가짜 지연 카운터가 이미 `${counter}`(으)로 설정되어 있습니다.",
		fake_lag_enabled = "짝퉁 지연이 `${counter}` 카운터를 사용하여 활성화되었습니다.",
		fake_lag_invalid_counter_value = "값 `${counter}'은(는) 가짜 시차에 대한 잘못된 카운터입니다.",
		fake_lag_disabled = "가짜 지연 기능이 비활성화되었습니다.",
		fake_lag_not_enabled = "가짜 지연이 활성화되지 않았습니다.",

		weapon_name_missing = "무기 이름 매개 변수가 없습니다.",
		weapon_name_invalid = "`${weaponName}` 은(는) 올바른 무기 이름이 아닙니다.",
		model_name_missing = "모델 이름 매개 변수가 없습니다.",
		model_name_invalid = "`${modelName}` 은(는) 올바른 모델 이름이 아닙니다.",
		model_view_enabled = "모델 보기를 사용할 수 있습니다.",
		model_view_disabled = "모델 뷰를 사용할 수 없습니다.",
		invalid_component = "잘못된 구성 요소 `${componentName}`.",

		animation_currently_playing = "현재 애니메이션 재생 중",
		invalid_or_missing_animation_dict = "애니메이션 사전 `${animationDict}` 이(가) 잘못되었거나 없습니다.",
		missing_animation_name = "애니메이션 이름 `${animationName}` 이(가) 잘못되었거나 없습니다.",
		invalid_animation_flags = "잘못된 애니메이션 플래그",
		animation_finished = "`${animationDict}`${animationName}`(플래그: ${flags}).",
		no_flags = "N/A",

		invalid_coordinates = "잘못된 좌표입니다.",
		added_coordinates_draw = "좌표 `x: ${x}, y: ${y}, z: ID가 `${drawId}` 인 그리기 목록으로 ${z}`.",
		no_coordinate_draws_to_destroy = "제거할 좌표 드로잉이 없습니다.",
		destroyed_coordinate_draws = "`${drawingCoordinatesAmount}` 좌표 드로잉이 제거되었습니다.",

		debug_damage_enabled = "손상 디버깅 사용",
		debug_damage_disabled = "손상 디버깅을 사용할 수 없습니다.",

		enabled_network_debug = "엔터티 네트워크 디버깅을 사용하도록 설정했습니다.",
		disabled_network_debug = "엔터티 네트워크 디버깅을 사용할 수 없습니다.",
		failed_network_debug = "엔터티 네트워크 디버깅을 사용하도록 설정하지 못했습니다.",

		network_owner_subscription_no_permissions = "적절한 권한 없이 엔터티 네트워크 소유자에 가입하려고 했습니다.",

		missing_ipl = "ipl 매개 변수가 없습니다.",
		enabled_ipl = "ipl `${ipl}` 을(를) 사용하도록 설정했습니다.",
		disabled_ipl = "ipl `${ipl}` 을(를) 비활성화했습니다.",

		enabled_ipl_globally = "ipl `${ipl}` 전역을 사용하도록 설정했습니다.",
		failed_enabled_ipl_globally = "전역적으로 ipl을 사용하도록 설정하지 못했습니다.",
		disabled_ipl_globally = "ipl `${ipl}` 전역적으로 비활성화했습니다.",
		failed_disabled_ipl_globally = "ipl을 전역적으로 사용하지 않도록 설정하지 못했습니다.",

		enabled_ipls_list = "IPL 사용: ${list}.",
		no_ipls_enabled = "사용할 수 있는 IPL이 없습니다."
	},

	dna_evidence = {
		taking_sample = "DNA 샘플 채취",
		already_taking_sample = "당신은 이미 선수의 DNA 샘플을 가지고 있습니다.",
		sample_no_player = "DNA 샘플을 얻을 수 있는 플레이어가 근처에 없습니다.",
		sample_no_bags = "증거 가방도 없잖아요.",
		dna_evidence_bag = "DNA 증거",

		evidence_failed = "DNA 증거를 취하지 못했습니다.",

		evidence_text = "증거 유형: DNA 증거\n${fullName} #${characterId}에서 수집된 DNA\n추가 정보:\n· 픽업 타임스탬프: ${time}",
	},

	doors = {
		locked = "잠김",
		unlocked = "잠금 해제",
		locked_press_to_unlock = "[${InteractionKey}] 잠김",
		unlocked_press_to_lock = "[${InteractionKey}] 잠금 해제됨",
		locking = "잠금",
		unlocking = "잠금 해제",
		jewelry_store_closed = "주얼리 매장은 현재 문을 닫았습니다. 나중에 다시 오십시오.",
		bank_closed = "은행은 현재 문을 닫았습니다. 나중에 다시 오십시오.",
		store_closed = "스토어가 현재 닫혀 있습니다. 나중에 다시 오십시오.",
		failed_to_sync_doors = "도어를 동기화하지 못했습니다. 뭔가 손상되었을 가능성이 높습니다. 다시 시도하십시오.",
		saved_doors_to_file = "`${amount}` 문을 서버의 파일에 저장했습니다.",
		no_nearby_doors = "가까운 곳에 저장할 문이 없습니다.",

		debug_doors_on = "도어 디버깅이 설정되었습니다.",
		debug_doors_off = "도어 디버깅이 꺼져 있습니다.",
		doors_no_job = "N/A",
	},

	elevators = {
		use_elevator = "[${InteractionKey}] 엘리베이터 사용",
		elevator_title = "엘리베이터",
		close_menu = "메뉴 닫기",
		already_on_floor = "당신은 이미 이 층에 있습니다.",

		current = "현재",
		up = "위로",
		down = "아래로",

		floor_garage = "차고",
		floor_lobby = "로비",
		floor_roof = "지붕",

		floor_second_floor = "2층",
		floor_icu = "ICU",
		floor_surgery = "수술",

		floor_entrance = "입구",
		floor_server_room = "서버 룸",

		floor_50 = "50층",
		floor_49 = "49층",
		floor_47 = "47층",
		floor_basement = "지하",

		floor_exclusive_dealership = "독점 대리점",
		floor_mayors_office = "시장실",
		floor_mechanic_shop = "정비소",

		floor_fourth_floor = "4층",
		floor_third_floor = "3층",

		floor_hangout = "행아웃 장소",
		floor_penthouse = "옥상 창고",
		floor_theatre_office = "극장 사무실",
		floor_psychiatrists_office = "정신과 진료실",
		floor_nightclub_garage = "나이트클럽 차고",
		floor_submarine = "잠수함",

		floor_lower_penthouse = "하층 펜트하우스",
		floor_middle_penthouse = "미들 펜트하우스",
		floor_upper_penthouse = "어퍼 펜트하우스",

		floor_showroom = "쇼룸",
		floor_office = "사무실",
	},

	emote_items = {
		give_item = "[${InteractionKey}] ${itemName} 제공",
		received_item = "${firstName}이(가) ${itemName}(을)를 제공했습니다.",
		give_item_success = "플레이어에 ${itemName}을(를) 제공했습니다.",
		give_item_failed = "플레이어에 ${itemName}을(를) 제공하지 못했습니다.",
	},

	exclusive_dealerhship = {
		marker_label = "${label} | $${price}",
		marker_label_purchase = "[${SeatEjectKey}] ${price}에 대한 ${label} 구매",
		marker_label_purchase_timer = "[${timer}s] ${price}에 대해 ${label}을(를) 구입하려면 ${SeatEjectKey}을(를) 보류하십시오.",

		purchased_vehicle = "${price}에 대해 ${label}을(를) 구입했습니다.",
		insufficient_funds = "자금이 부족합니다.",
		area_not_clear = "스폰 영역이 명확하지 않습니다.",
		invalid_package = "잘못된 지지자가 서약합니다.",
		something_went_wrong = "Something went wrong.",

		exclusive_dealerhship_blip = "독점적인 디럭스 모터스포츠",

		log_title = "EDM 구매",
		log_description = "$${price}에 `${vehicleName}`을(를) 구매했습니다.",
	},

	fingerprint = {
		taking_fingerprint = "지문 채취",
		already_fingerprinting = "이미 플레이어의 지문을 찍고 있습니다.",
		sample_no_player = "지문을 입력할 수 있는 플레이어가 근처에 없습니다.",
		sample_no_bags = "당신은 증거 가방이 없습니다.",
		fingerprint_evidence = "지문",

		evidence_failed = "지문을 찍지 못했습니다.",

		evidence_text = "증거 유형: 지문\n${fullName} #${characterId}의 지문\n추가 정보:\n픽업타임 스탬프: ${time}",
	},

	freecam = {
		enabled_freecam = "사용 가능한 빈도",
		disabled_freecam = "비활성화된 빈도",
		freecam_failed = "프리캠을 사용하도록 설정하지 못했습니다. 클립 또는 이와 유사한 기능을 사용할 수 있습니까?",

		freecam_logs_title = "토글 프리캠",
		freecam_on_logs_details = "${consoleName}이(가) 해당 통화를 전환했습니다.",
		freecam_off_logs_details = "${consoleName}이(가) 해당 잠금을 해제했습니다.",

		freecam_no_permission = "필요한 사용 권한 없이 사용 권한을 전환하려고 했습니다.",

		freecam_inactive = "당신은 현재 근래에 없습니다.",
		added_point = "${index} 인덱스에 카메라 포인트를 추가했습니다(전환: ${transition}ms)",
		disable_freecam = "리플레이 포인트를 사용하지 않습니다.",
		not_enough_points = "플레이하려면 최소 2점이 필요합니다.",
		already_replaying = "이미 카메라 포인트를 재생하고 있습니다.",
		cleared_points = "모든 카메라 포인트를 지웠습니다.",
		replaced_point = "인덱스 ${index}의 카메라 지점을 교체했습니다(전환: ${transition}ms)",
		moved_to_point = "카메라 지점 ${index}(으)로 거리를 이동했습니다(전환: ${transition}ms)",
		invalid_point_index = "카메라 지점 인덱스가 잘못되었습니다.",
	},

	frisk = {
		frisk_no_player = "주변에 디스크를 넣을 수 있는 플레이어가 없습니다.",
		already_frisking = "당신은 이미 플레이어 원반을 치고 있어요.",
		frisk_failed = "플레이어 코드를 표시하지 못했습니다.",
		frisking = "프리스킹 플레이어.",

		frisk_category_0 = "무기는 없는 것 같습니다.",
		frisk_category_1 = "아마 무기를 가지고 있는 것 같아.",
		frisk_category_2 = "무기를 가지고 있는 것 같아.",
		frisk_category_3 = "분명히 큰 무기를 가지고 있는 것 같다.",
		frisk_category_4 = "확실히 큰 무기를 가지고 있어."
	},

	gas_masks = {
		gas_grenade = "가스 수류탄",
		in_gas_circle = "가스원 안에!",
		not_in_gas_circle = "가스원 안에서요.",
		gas_time_left = "가스 마스크의 남은 시간이 ${gasTime}입니다.",
		hold_to_take_gas_mask_off = "~INPUT_VEH_HEADLIGHT~를 길게 눌러 방독면을 벗으세요.",
		hold_to_take_gas_mask_off_holding = "계속 누르고 있으면 방독면이 벗겨집니다."
	},

	gravity = {
		gravity_success_on = "${consoleName}에 대한 중력 끄기를 전환했습니다.",
		gravity_success_off = "${consoleName}에 대해 중력을 다시 켭니다.",
		gravity_client_failed = "${consoleName}에 대해 중력을 전환하지 못했습니다.",
		gravity_failed = "중력을 전환하는 동안 문제가 발생했습니다.",
		invalid_server_id = "잘못된 서버 ID.",
		yourself = "자기 자신"
	},

	grills = {
		campfire = "캠프파이어",
		use_campfire = "[${InteractionKey}] 캠프파이어 사용",
		grill = "그릴",
		use_grill = "[${InteractionKey}] 그릴 사용"
	},

	health = {
		successfully_revived_player = "${consoleName}을(를) 다시 활성화했습니다.",
		successfully_revived_player_removed_injuries = "${consoleName}을(를) 되살리고 부상을 제거했습니다.",
		successfully_revived_everyone = "성공적으로 모두를 되살렸다.",
		successfully_revived_everyone_removed_injuries = "성공적으로 부활했고 모든 사람의 부상을 제거했다.",
		failed_to_revive = "`/revive` 명령을 올바르게 실행하지 못했습니다.",
		revive_player_not_staff = "플레이어가 다른 플레이어를 재생하려고 시도했지만 필요한 권한이 없습니다.",
		revive_self_not_staff = "플레이어가 다른 사용자를 재생하려고 했지만 필요한 권한이 없습니다.",
		revived_self_removed_injuries_title = "자기를 되살리고 부상을 제거했다",
		revived_self_removed_injuries_details = "${consoleName}이(가) 자신을 되살리고 부상을 제거했습니다.",
		revived_self_title = "부활한 자기",
		revived_self_details = "${consoleName}이(가) 자체적으로 되살아났습니다.",
		revived_everyone_removed_injuries_title = "모든 사람을 되살리고 부상을 제거했다",
		revived_everyone_removed_injuries_details = "${consoleName}이(가) 모든 사람을 되살리고 부상을 제거했습니다.",
		revived_everyone_title = "모든 사람을 되살렸다",
		revived_everyone_details = "${consoleName}이(가) 모든 사용자를 다시 활성화했습니다.",
		revived_player_removed_injuries_title = "부활한 선수와 부상을 제거했다",
		revived_player_removed_injuries_details = "${consoleName}이(가) ${targetConsoleName}을(를) 다시 활성화하여 부상을 제거했습니다.",
		revived_player_title = "부활한 플레이어",
		revived_player_details = "${consoleName}이(가) ${targetConsoleName}을(를) 다시 만들었습니다.",
		get_recent_deaths_not_staff = "플레이어가 최근 사망률을 찾으려고 했지만 이를 수행할 수 있는 권한이 없습니다.",
		get_player_last_death_not_staff = "플레이어가 마지막 사망까지 시도했지만 이를 수행할 수 있는 권한이 없습니다.",
		recent_deaths ="최근 사망자",
		no_recent_deaths = "최근에 사망한 사람은 없다.",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName}이(가) ${timer}초 전에 종료되었습니다.",
		target_user_not_found = "대상 사용자를 찾을 수 없습니다.",
		no_server_id_sent = "보낸 서버 ID가 없습니다.",
		no_permissions = "사용 권한 없음",
		user_not_found = "사용자를 찾을 수 없습니다.",
		player_death = "플레이어 사망",
		player_death_recent = "${consoleName}이(가) ${timer}초 전에 종료되었습니다.",
		no_recent_death = "${consoleName}이(가) 최근에 삭제되지 않았습니다.",
		death_alcohol_poisoning = "알코올 중독 때문에 기절했어요.",
		character_has_hardcore_died = "${fullName}이(가) 종료되었습니다. 다른 문자를 선택할 수 있습니다.",

		death_timer_override_already_set_to = "사망 타이머 재정의가 이미 '${time}'(으)로 설정되어 있습니다.",
		set_death_timer_override = "사망 타이머 재정의가 '${time}'(으)로 설정되었습니다.",
		time_parameter_is_invalid = "'시간' 매개변수가 잘못되었습니다.",
		death_timer_override_removed = "사망 타이머 재정의가 제거되었습니다.",
		no_death_timer_override_set = "사망 타이머 재정의 설정이 없습니다.",

		invalid_distance = "유효하지 않은 복구 범위(1에서 50 사이여야 함).",
		no_players_in_range = "${distance}m 반경 내에 플레이어가 없습니다.",
		successfully_revived_range = "${distance}m 반경에 ${amount}개의 플레이어를 성공적으로 복원했습니다.",
		failed_revive_range = "플레이어를 살리는데 실패했습니다.",
		range_revive_not_staff = "그는 특정 지역에서 플레이어를 살리기 위해 시도했으나 권한이 없었다고 말했다."
	},

	hud = {
		mph = "mp/h",
		kmh = "km/h",
		knots = "매듭",
		ft = "ft",
		m = "m",
		belt = "벨트",
		cruise = "크루즈",
		fuel = "연료",
		nitro = "니트로",
		battery = "배터리",
		fps = "FPS",
		ping = "핑",
		autopilot = "자동 조종 장치",
		ground_asl = "AGL/ASL (${unit})",
		gear = "기어",
		rpm = "rpm",
		degrees = "°C",

		advanced_hud_on = "고급 허드를 토글링했습니다.",
		advanced_hud_off = "고급 허드를 토글링했습니다."
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] 피부에 고정",
		skinning_animal = "죽은 동물 스키닝",
		hit_by_vehicle = "이 동물의 육류가 너무 훼손되었습니다.",
		animal_is_being_skinned = "동물은 피부를 벗기고 있다."
	},

	identification = {
		los_santos = "로스 산토스",
		citizen_card = "시민 카드",
		first_name = "이름",
		last_name = "성",
		gender = "성별",
		gender_male = "남자",
		gender_female = "여자",
		date_of_birth = "생일",
		citizen_id = "주민등록번호",
		citizen_card_details = "${firstName} ${lastName} | 생년월일: ${dateOfBirth} | 성별: ${gender} | 시민 ID: ${characterId}",
		just_showed_citizen_card = "방금 시민카드를 보여주셨군요. 잠시만 기다려 주십시오.",

		just_showed_badge = "방금 뱃지를 보여 주셨습니다. 잠시만 기다려 주십시오.",
		sasp_badge = "SASP 배지",
		sasp_badge_details = "SASP | ${firstName} ${lastName} | 직위: ${positionName}",
		bcso_badge = "BCSO 배지",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | 직위: ${positionName}",
		iaa_badge = "IAA Badge",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | 직위: ${positionName}",
		fib_badge = "FIB 배지",
		fib_badge_details = "FIB | ${firstName} ${lastName} | 직위: ${positionName}",
		swat_badge = "SWAT 배지",
		swat_badge_details = "SWAT | ${firstName} ${lastName} | 직위: ${positionName}",
		management_badge = "경영 뱃지",
		management_badge_details = "경영 | ${firstName} ${lastName} | 직위: ${positionName}",
		ems_badge = "EMS ID",
		ems_badge_details = "EMS | ${firstName} ${lastName} | 직위: ${positionName}",
		doctor_badge = "의사  ID",
		doctor_badge_details = "의사  | ${firstName} ${lastName} | 직위: ${positionName}",
		bcfd_badge = "BCFD Badge",
		bcfd_badge_details = "BCFD | ${firstName} ${lastName} | 직위: ${positionName}",

		badge_type_sasp = "산 안드레아스 주 경찰",
		badge_type_bcso = "블레인 카운티 보안관 사무실",
		badge_type_iaa = "내부 업무 기관",
		badge_type_fib = "연방 수사국",
		badge_type_swat = "특별한 무기와 전술",
		badge_type_management = "SASP 관리",
		badge_type_ems = "응급 의료 서비스",
		badge_type_doctor = "의료 상주",
		badge_type_bcfd = "블레인 카운티 소방서",

		badge_type_short_sasp = "SASP",
		badge_type_short_bcso = "BCSO",
		badge_type_short_iaa = "IAA",
		badge_type_short_fib = "FIB",
		badge_type_short_swat = "SWAT",
		badge_type_short_management = "관리",
		badge_type_short_ems = "EMS",
		badge_type_short_doctor = "의사",
		badge_type_short_bcfd = "BCFD"
	},

	injuries = {
		inspect_no_player = "주변에 검사할 수 있는 플레이어가 없습니다.",
		already_inspecting = "이미 플레이어를 검사하고 있습니다.",
		inspect_failed = "플레이어 검사에 실패했습니다.",
		inspecting = "플레이어 검사",
		no_injuries = "부상·출혈 없어"
	},

	instances = {
		instance_created = "ID가 `${instanceId}`인 인스턴스를 생성합니다.",
		instance_creation_failed = "인스턴스를 생성하지 못했습니다.",
		instance_destroyed = "ID가 `${instanceId}`인 인스턴스를 파괴하십시오.",
		instance_destruction_failed = "인스턴스를 파기하지 못했습니다.",
		instance_id_parameter_invalid = "인스턴스 ID 매개변수가 잘못되었습니다.",
		added_player_to_instance = "ID${인스턴스 Id}로 인스턴스에 ${콘솔 이름}을 추가했다.`",
		failed_to_add_player_to_instance = "플레이어를 인스턴스에 추가하지 못했습니다.",
		server_id_parameter_invalid = "서버 ID 매개변수가 잘못되었습니다.",
		removed_player_from_instance = "ID가 `${instanceId}`인 인스턴스에서 ${consoleName}을(를) 제거했습니다.",
		failed_to_remove_player_from_instance = "인스턴스에서 플레이어를 제거하지 못했습니다.",
		instance_players = "ID가 `${instanceId}`인 인스턴스의 인스턴스 플레이어: `${players}`.",
		failed_to_get_instance_players = "인스턴스에서 플레이어를 가져오지 못했습니다.",
		no_players = "플레이어 없음",

		create_instance_not_developer = "플레이어가 인스턴스를 만들려고 했지만 개발자가 아닙니다.",
		destroy_instance_not_developer = "플레이어가 인스턴스를 제거하려고 했지만 개발자가 아닙니다.",
		add_player_to_instance_not_developer = "플레이어가 인스턴스에 플레이어를 추가하려고 했지만 개발자가 아닙니다.",
		remove_player_from_instance_not_developer = "플레이어가 인스턴스에서 플레이어를 제거하려고 했지만 개발자가 아닙니다.",
		get_players_from_instance_not_developer = "플레이어는 인스턴스로부터 플레이어들을 얻으려고 시도했지만 개발자가 아니었다."
	},

	interiors = {
		in_interior = "내부: ${interiorId} (${portals} 포털).",
		total_interiors = "전체 인테리어: ${totalInteriors} (${totalInteriorPortals} total portals).",
		total_unloaded_interiors = "전체 언로드된 내부: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} 총 포털)."
	},

	inventory = {
		access_trunk = "트렁크에 접근하려면 여기로 이동하세요",

		used = "사용",
		added = "추가됨",

		pounds = "lb",

		store = "가게",
		gas_station = "주유소",
		cleaning_station = "클리닝 스테이션",
		grocery_store = "식료품점",
		prison_store = "감옥 가게",
		fruit_vendor = "과일 상인",
		island_store = "아일랜드 스토어",
		island_bar = "아일랜드 술집",
		burger_bar = "버거 바",
		tool_store = "도구 가게",
		gun_store = "아뮤네이션",
		gun_store_with_shooting_range = "범위가 있는 아뮤네이션",
		green_wonderland = "그린 원더랜드",
		bar = "술집",
		strip_club = "스트립 클럽",
		police_store = "경찰 상점",
		fib_store = "FIB 스토어",
		police_badge_store = "경찰 배지 책상",
		flower_store = "스테이시의 꽃 가게",
		gift_store = "델 페로 선물",
		ems_store = "EMS 스토어",
		drug_store = "마약 캐비닛",
		ems_badge_store = "EMS 배지 데스크",
		pharmacy = "약국",
		chop_shop = "찹샵",
		courthouse = "법원",
		burger_shot = "버거 샷",
		burger_shot_fridge = "버거 샷 냉장고",
		erp_shop = "ERP 샵",
		pet_shop = "애완 동물 가게",
		bean_machine = "콩 기계",
		hunting_store = "사냥 가게",
		fishing_store = "낚시 가게",
		los_santos_golf_club = "로스 산토스 골프 클럽",
		pd_prefix = "PD",
		ems_prefix = "EMS",
		inventory_overweight = "인벤토리가 과체중입니다!",
		vehicle_locked = "차량이 잠겨 있습니다.",
		press_to_access_store = "스토어에 액세스하려면 ~INPUT_REPLAY_SHOWOTKEY~를 누르세요.",
		press_to_access_locker = "개인 사물함에 액세스하려면 ~INPUT_REPLAY_SHOWOTKEY~를 누르세요.",
		press_to_access_shared_storage = "공유 저장소에 액세스하려면 ~INPUT_REPLAY_SHOWOTKEY~를 누르세요.",

		press_to_access_shredder = "[${InteractionKey}] 분쇄기에 액세스합니다.",

		shredder_title = "슈레더",
		shredder_description = "경고: 여기서 이동된 모든 항목은 즉시 삭제되며 검색할 수 없습니다.",

		store_help = "항목을 구매하려면 보조 인벤토리의 항목을 자신의 인벤토리로 끌어옵니다.",
		store_tax = "상점 세금",
		store_tax_percentage = "${tax}%",

		missing_job = "이 인벤토리를 사용하는 데 필요한 작업이 없습니다.",

		item_is_broken = "이 물건이 파손되었습니다",

		broken_food = "이 물건은 부패했습니다",
		broken_drugs = "이 항목은 만료되었습니다.",

		search = "검색",
		amount = "금액",
		use = "사용",
		close = "닫기",

		done = "완료",
		burnt = "번트",
		danger = "위험",
		fuel = "연료: ${fuel}",

		item_does_stack = "이 항목은 스택됩니다.",
		item_does_not_stack = "이 항목은 스택되지 않습니다.",
		individual_weight = "개별 중량",
		stack_amount = "스택 양",

		logs_secondary_inventory_title = "보조 인벤토리 열림",
		logs_secondary_inventory_details = "${consoleName} 님이 이름이 `${inventoryName}`인 보조 인벤토리를 열었습니다.",
		logs_ground_inventory_created_title = "기본 재고 생성됨",
		logs_ground_inventory_created_details = "${consoleName} 님이 이름이 `${inventoryName}`인 기본 인벤토리를 만들었습니다.",

		logs_item_moved_title = "항목 이동됨",
		logs_item_moved_details = "${consoleName} 님이 ${moveAmount}x ${itemLabel}을(를) ${endInventory}:${endSlot} 인벤토리에서 ${startInventory}:${startSlot}(으)로 이동했습니다.",

		logs_item_purchased_title = "구매 품목",
		logs_item_purchased_no_tax_details = "${consoleName} 님이 $${purchaseCost}에 대해 ${purchaseAmount}x `${itemLabel}`을(를) 구매했습니다.",
		logs_item_purchased_tax_details = "${consoleName} 님은 ${salesTaxPercentage}% 판매세로 인해 $${taxCost}을(를) 추가하여 $${purchaseCost}에 대해 ${purchaseAmount}x `${itemLabel}`을(를) 구입했습니다.",

		radius_invalid = "`${radius}` 의 반경은 유효한 값이 아닙니다.",
		wiped_all_ground_inventories = "${inventoryWiped}개의 기본 인벤토리를 지웠습니다.",
		wiped_nearby_ground_inventories = "${inventoryWiped} 지상 인벤토리를 `${radius}` 범위 내에서 지웠습니다.",
		failed_to_wipe_ground_inventories = "기본 인벤토리를 지우지 못했습니다.",
		no_ground_inventories = "쓸어버릴 지상 재고는 없었다.",
		no_ground_inventories_within_radius = "`${radius}` 반경 내에 지울 그라운드 인벤토리가 없습니다.",

		wipe_inventories_not_staff = "인벤토리를 지우려고 했지만 올바른 권한이 없습니다.",

		logs_wiped_all_ground_inventories_title = "모든 지상 재고 삭제",
		logs_wiped_all_ground_inventories_details = "${consoleName} 님이 모든 기본 인벤토리를 지웠습니다.",

		logs_wiped_nearby_ground_inventories_title = "주변 지반 재고 삭제",
		logs_wiped_nearby_ground_inventories_details = "${consoleName}이(가) `${radius}` 범위 내의 모든 지상 인벤토리를 지웠습니다.",

		press_use_campfire = "[${InteractionKey}] 캠프파이어 사용",
		use_campfire = "캠프파이어 사용",

		dumpster_sandwich = "휴지통 샌드위치",
		dumpster_beer = "쓰레기 맥주",
		dumpster_milk = "유통기한이 지난 비둘기 우유",

		-- items & item descriptions
		body_armor = "방탄복",
		body_armor_description = "LS의 거리에서 접시를 세우고, 전쟁을 준비하거나, 아니면 다른 날을 준비하세요.",
		first_aid_kit = "구급 상자",
		first_aid_kit_description = "\"직접 수행\" 의사 키트.",
		oxygen_tank = "산소 탱크",
		oxygen_tank_description = "폐 확장 팩.",
		ifak = "IFAK",
		ifak_description = "\"PD 전원 팩은 W를 보호합니다. 1개 이상을 복용하면 EZ가 투옥될 때 범법자들에 대한 참가 트로피를 나눠주는 것과 함께 박수치는 느낌을 갖게 됩니다.\"<br><br>-Joe, 2020",

		citizen_card = "시민 카드",
		citizen_card_description = "신분증, 화기면허증, 운전면허증 등의 역할을 한다.",
		phone = "핸드폰",
		phone_description = "절대:tm:",
		radio = "라디오",
		radio_description = "모든 메타게이머들에게 유용한 자산입니다!",

		sasp_badge = "SASP 배지",
		sasp_badge_description = "산 안드레아스 경찰국의 경찰관을 위한 배지.",
		bcso_badge = "BCSO 배지",
		bcso_badge_description = "블레인 카운티 보안관 사무실의 대리인을 위한 배지.",
		iaa_badge = "IAA 배지",
		iaa_badge_description = "내무부 요원을 위한 배지.",
		fib_badge = "FIB 배지",
		fib_badge_description = "연방수사국 요원들을 위한 배지.",
		swat_badge = "SWAT 배지",
		swat_badge_description = "특수 무기와 전술 부서의 장교들을 위한 배지.",
		management_badge = "관리 배지",
		management_badge_description = "SASP 관리 부서의 에이전트를 위한 배지입니다.",
		ems_badge = "EMS ID",
		ems_badge_description = "EMS 구급대원의 신분증.",
		doctor_badge = "의사 ID",
		doctor_badge_description = "의사 신분증.",
		bcfd_badge = "BCFD",
		bcfd_badge_description = "블레인 카운티 소방서의 소방관들을 위한 배지.",

		radio_chop_shop = "촙샵 라디오",
		radio_chop_shop_description = "잡초 가게를 운영하는 존재하지 않는 사람들로부터 '뜨거운' 차량에 대한 정보를 받는 데 사용됩니다.",

		binoculars = "쌍안경",
		binoculars_description = "로스 산토스에서 잠복하고 있는 모든 소름끼치는 사람들을 위한 필수품이라구!",
		photo_camera = "사진 카메라",
		photo_camera_description = "니콘앤이그나가 시장에 출시된 최신 전문 카메라를 개발했다. 고급 렌즈 (70-300mm f/4.5-5.6E)를 사용하면 지상의 작은 것까지도 가장 세밀한 부분까지 캡처할 수 있습니다.",

		handcuffs = "수갑",
		handcuffs_description = "완전한 ERP 경험을 위해.",
		bolt_cutter = "볼트 커터",
		bolt_cutter_description = "TERP는 생각보다 재미가 없었습니다...",
		drill = "드릴",
		drill_description = "여기 많은 사람들이 이걸 사용했을 거야 어떻게 나사가 좀 느슨해 보이는지 생각하면.",
		umbrella = "우산",
		umbrella_description = "당신의 내부 팝핀스를 연결하세요.",
		watch = "시계",
		watch_description = "조심할 시간 없어",
		compass = "나침반",
		compass_description = "43.3068 N 0.7668 W",
		map = "지도",
		map_description = "당신이 어디로 가고 있었는지 그리고 어디에 있었는지 보여줍니다. 아니면 저기에 계셨던 건가요?",

		basic_repair_kit = "기본 복구 키트",
		basic_repair_kit_description = "그것은 일을 만들지만, 거의 하지 않습니다.",
		advanced_repair_kit = "고급 복구 키트",
		advanced_repair_kit_description = "깨진 영혼을 치료하는데 쓰였었죠.",
		basic_lockpick = "기본 자물쇠 따기",
		basic_lockpick_description = "자물쇠를 따는 데 사용",
		advanced_lockpick = "고급 자물쇠 따기",
		advanced_lockpick_description = "하이드 요 키즈, 하이드 요 와이프",
		cleaning_kit = "클리닝 키트",
		cleaning_kit_description = "차량 청소에 완벽합니다. 트렁크 뒤쪽에 묻은 핏자국을 말려버리는데 말이죠.",

		microphone_bug = "마이크 버그",
		microphone_bug_description = "대화에 끼어들곤 했지",
		vehicle_tracker = "차량 추적기",
		vehicle_tracker_description = "이 추적기는 정확히 마이클이 필요로 하는 것인데, 그는 7년 이상 그의 아내, 아만다를 의심해왔고, 그가 그녀를 얻은 테니스 코치와 함께 그를 속여왔다.",
		device_scanner = "장치 스캐너",
		device_scanner_description = "주변 크립 장치를 검색하는 데 사용됩니다.",

		paper_bag = "종이 봉지",
		paper_bag_description = "식료품이나 죽은 사람, 살아 있는 사람의 머리를 저장하기에 완벽하다.",
		burger_shot_delivery = "버거샷 식사",
		burger_shot_delivery_description = "그들이 제공하는 모든 엉성한 고기 경이로움의 훌륭한 컬렉션.",

		water = "물",
		water_description = "위험! 일산화 이수소는 무색 무취이다. DHMO를 우발적으로 흡입하면 치명적일 수 있다. 그의 고체 형태에 장기간 노출되는 것은 심각한 조직 손상을 야기한다. DHMO 섭취의 증상은 과다한 땀과 배뇨, 그리고 아마도 부어오른 느낌, 메스꺼움, 구토 및 신체 전해질 불균형을 포함할 수 있습니다.",
		hamburger = "햄버거",
		hamburger_description = "미국의 맛!",
		belgian_fries = "벨기에 프라이",
		belgian_fries_description = "향상된 맛을 위해 DM@Giv3n#0753은 \"fritas\" 이외의 메시지도 표시하지 않습니다.",
		coke = "콜라",
		coke_description = "파블로?",
		wonder_waffle = "원더 와플",
		wonder_waffle_description = "비건, 무유당, 무유당, 무계란, 무글루텐, 무유기, 무항생제, 무콩, 무 과당, 무견과당, 비 GMA, 무설탕, 무지방 및 저탄수화물",
		cheeseburger = "치즈버거",
		cheeseburger_description = "기름진, 기름진, 고무 같은, 더블 디럭스, 눅눅한 더블, 기름진 더블, 망할 괜찮은, 큰, 기름진, 차갑고 기름진, 보통의 두 배, 큰 뚱뚱한, 가장 쥬시한, 킹 사이즈, 디럭스, 망할 좋은, 더블, 기름진, 평범한 오래된 , 트리플, 고무 같은, 수분이 많은, 죄 많은, 평범한, 축축한, 뚱뚱한, 큰, 무료",
		donut = "도넛",
		donut_description = "왜 가운데에 구멍이 나 있어요",
		green_apple = "녹색 사과",
		green_apple_description = "레드불 같기는 하지만 경기에서 레드불 캔을 맞춰주는 객체가 없었다.",
		sandwich = "샌드위치",
		sandwich_description = "채식주의자에요.",
		taco = "타코",
		taco_description = "엘 브라얀의 특기입니다.",
		banana = "바나나",
		banana_description = "서스",
		smores = "스모르",
		smores_description = "예",
		tic_tac = "틱 택",
		tic_tac_description = "옥시? 아니요, 전 그냥 틱타크를 먹고 있어요!",

		burger_buns = "버거 빵",
		burger_buns_description = "이 나쁜 녀석들 사이에 고기를 살짝 끼워.",
		cheese = "치즈",
		cheese_description = "젖당 불내증이 있다고 상상해 보세요.",
		lettuce = "양상추",
		lettuce_description = "길거리에서 팔지 않는 초록색 물건.",
		patty = "버거 패티",
		patty_description = "어느 날 한 작은 남자가 이 고기의 비밀 공식을 찾을 것이다, 그때까지, 계속 튀김 요리를 뒤집어.",
		potato = "감자",
		potato_description = "AK나 우편주문 신부가 아닌 러시아에서 온 건",
		raw_fries = "날 프라이",
		raw_fries_description = "기본적으로 감자에 불과하지만, 어떤 것을 만들기 위해 충분한 노력을 기울이지 않았습니다.",
		raw_patty = "생패티",
		raw_patty_description = "90% Real Meat, 나머지 10%는 포장 번역에서 손실되었습니다.",

		apple = "애플",
		apple_description = "사악한 의사들을 막아!",
		banana = "바나나",
		banana_description = "서스",
		cherry = "체리",
		cherry_description = "위에(원하는 경우)",
		kiwi = "키위",
		kiwi_description = "과일은 동물이 아닙니다. (A-32와 혼동하지 마십시오.)",
		mango = "망고",
		mango_description = "쏘지 마세요! 그냥 망고 놔줘",
		orange = "오렌지",
		orange_description = "내가 바나나라고 하지 않았다니 기쁘구나.",
		peach = "복숭아",
		peach_description = "개머리도 아니고.",
		pineapple = "파인애플",
		pineapple_description = "펜 파인애플 펜.",
		pomegranate = "석류",
		pomegranate_description = "우리가 철자를 제대로 썼다는 것을 그저 기쁠 뿐이다.",
		strawberry = "딸기",
		strawberry_description = "보통 들판에서... 영원히 발견됩니다",
		watermelon = "수박",
		watermelon_description = "물인가요 아니면 멜론인가요? 우리는 결코 모를 수도 있습니다.",

		beer = "맥주",
		beer_description = "화난 물.",
		vodka = "보드카",
		vodka_description = "Русский стиль, cука ебать.",
		tequila = "데킬라",
		tequila_description = "걱정마, 음료수에 아무것도 들어가지 않았어. ( ͡° ͜ʖ ͡°)",
		whiskey = "위스키",
		whiskey_description = "최고급 알콜중독자들만",
		cider = "사과주스",
		cider_description = "어른 사과주스",
		rum = "럼",
		rum_description = "캐리비안의 해적을 다시 볼 시간입니다!",
		absinthe = "압생트",
		absinthe_description = "경고: 알코올을 포함합니다. 어린이는 적당량만 마시도록 하세요.",
		wine = "포도주",
		wine_description = "포도주스",

		cigarette = "담배",
		cigarette_description = "담배를 피우지 않으면 풋내기다",
		cocaine_bag = "코카인 봉지",
		cocaine_bag_description = "콜롬비아의 작은 역사.",
		cocaine_brick = "코카인 벽돌",
		cocaine_brick_description = "콜롬비아 역사의 한 조각.",
		joint = "관절",
		joint_description = "420 블레이즈 잇 도그",
		oxy = "옥시",
		oxy_description = "가장 지루한 마약.",
		antibiotics = "항생제",
		antibiotics_description = "감염과 기생충을 제거하는 데 도움이 됩니다.",
		pain_killers = "진통제",
		pain_killers_description = "고통을 잊기 위해.",
		weed_seeds = "잡초 씨앗",
		weed_seeds_description = "420을 키운다, 형",
		weed_1q = "잡초 1q",
		weed_1q_description = "420 형",
		weed_1oz = "잡초 1oz",
		weed_1oz_description = "1680 형",

		ejector_seat = "이젝터 시트",
		ejector_seat_description = "에젝토 세토 쿠즈!",
		tuner_chip = "튜너 칩",
		tuner_chip_description = "나는 속도입니다.",

		chip = "칩",
		chip_description = "멋진 해커칩이에요",
		decryption_key_red = "빨간색 암호 해독 키",
		decryption_key_red_description = "알고 있었어? 붉은 마피아는 사실 단지 겁쟁이들일 뿐이에요.",
		decryption_key_green = "녹색 암호 해독 키",
		decryption_key_green_description = "알고 있었어? 콜라는 원래 녹색이었습니다.",
		decryption_key_blue = "파란색 암호 해독 키",
		decryption_key_blue_description = "알고 있었어? 푸른발 새가 있나요? 참조: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "탄도방패",
		ballistic_shield_description = "이 방패는 RP의 갱을 탐사할 때 사용되어야 한다.",

		boxing_gloves = "권투 장갑",
		boxing_gloves_description = "록키처럼 변하긴 하지만 속편은 못 볼 거야...",
		leash = "속박",
		leash_description = "아무도 당신이 이것을 왜 샀는지 알 수 없겠지만, 그들은 틀림없이 당신이 그것을 가지고 있다고 판단할 것입니다.",

		shrooms = "객실",
		shrooms_description = "누군가 이걸 피자에 넣으라고 했는데, 피자가 나한테 뒤집어씌워지다니..",

		bucket = "버킷",
		bucket_description = "임시 헬멧으로 사용할 수 있습니다.",
		fertilizer = "비료",
		fertilizer_description = "더 푸른 세상을 위해",

		aluminium = "알루미늄",
		aluminium_description = "수리 및 공예 작업에 사용됩니다.",
		glass = "유리",
		glass_description = "수리 및 공예 작업에 사용됩니다.",
		gold_bar = "골드 바",
		gold_bar_description = "수리 및 공예 작업에 사용됩니다.",
		rubber = "고무",
		rubber_description = "수리 및 공예 작업에 사용됩니다.",
		scrap_metal = "고철",
		scrap_metal_description = "수리 및 공예 작업에 사용됩니다.",
		steel = "강철",
		steel_description = "수리 및 공예 작업에 사용됩니다.",

		thermite = "더마이트",
		thermite_description = "휘발성이 강한 가루는 냄새가 나지 않는다.",
		fake_plate = "가짜 판",
		fake_plate_description = "헤헤 경찰들 빌어먹을, 그들은 나를 화나게 하지 않아.",
		evidence_bag_empty = "빈 증거 가방",
		evidence_bag_empty_description = "그것을 강화시킬 수 있나요?",
		evidence_bag = "증거 가방",
		evidence_bag_description = "가방의 밀봉된 범죄.",
		fingerprint_evidence = "지문 증거",
		fingerprint_evidence_description = "그들을 잡도록 도와주는 것.",

		pistol_ammo = "권총탄약",
		pistol_ammo_description = "캐주얼하게 사용하기에 완벽하다. 대부분의 손잡이에 적합하다.",
		sub_ammo = "서브 탄약",
		sub_ammo_description = "경쟁관계에 있는 그룹을 몰아내려고? 이것은 정확히 그것을 가능하게 하는 적당한 자산이다. 완전한 효과를 위해, 서브머신 무기가 추천된다.",
		rifle_ammo = "라이플탄약",
		rifle_ammo_description = "이것은 모든 하드코어 은행 강도들이 도중에 몇몇 돼지를 도살하려고 하는 것이다.",
		sniper_ammo = "스나이퍼 탄약",
		sniper_ammo_description = "시작을 망쳐!",
		shotgun_ammo = "산탄총 탄약",
		shotgun_ammo_description = "사람들은 이 안에 화약이 있다고 생각해요! 광대... 그들은 사랑과 기쁨으로 가득 차 있어.",

		silver_watches = "Silver Watches",
		silver_watches_description = "조심하세요!",
		necklaces = "목걸이",
		necklaces_description = "너의 옷에 약간의 여분의 블링을 추가해라!",
		gold_watches = "금시계",
		gold_watches_description = "그리고.... 당신은 이것을 어디서 샀나요, 정확히?",
		diamonds = "다이아몬드",
		diamonds_description = "너는 전체 갑옷을 만들기 위해 24가 필요해. 나는 27을 받는 것을 권장하고 싶지만, 네가 곡괭이를 잡을 수 있도록.",

		weather_spell_snow = "날씨 주문(눈)",
		weather_spell_snow_description = "이 물건을 사용하면 일시적으로 날씨를 조절하고 눈이 올 수 있을 거예요! 일회용이니 조심해서 사용하세요. 만약 여러분이 한번에 두 번의 날씨 주문을 사용한다면, 두 번째 마법은 그저 줄을 설 것입니다.",
		weather_spell_rain = "날씨 주문(비)",
		weather_spell_rain_description = "이 물건을 사용하면 일시적으로 날씨를 조절하고 비가 오게 할 거예요! 일회용이니 조심해서 사용하세요. 만약 여러분이 한번에 두 번의 날씨 주문을 사용한다면, 두 번째 마법은 그저 줄을 설 것입니다.",
		weather_spell_thunder = "날씨 주문(천둥)",
		weather_spell_thunder_description = "이 물건을 사용하면 일시적으로 날씨를 조절하고 뇌우를 일으킬 수 있을 거예요! 일회용이니 조심해서 사용하세요. 만약 여러분이 한번에 두 번의 날씨 주문을 사용한다면, 두 번째 마법은 그저 줄을 설 것입니다.",

		zombie_pill = "좀비 알약",
		zombie_pill_description = "이상한 알약이 낯선 것조차 해.. 자신의 위험을 무릅쓰고 삼켜라.",

		acid = "산",
		acid_description = "당신을 영구적으로 높이 사세요. 탈출할 수 없어요.",

		rose = "장미",
		rose_description = "idk 남자 erp 나는 추측한다",

		teddy_bear = "테디 베어",
		teddy_bear_description = "당신의 말을 실제로 들어줄 친구.",

		self_driving_chip = "자율주행 칩",
		self_driving_chip_description = "죽은 사슴이 어디든지... 정말 웃겨.",

		ticket_50 = "$50 복권",
		ticket_50_description = "냄비 속으로 약간 던지다.",
		ticket_250 = "$250 복권",
		ticket_250_description = "이제 우리는 어딘가로 가고 있어, 위험을 감수해.",
		ticket_500 = "$500 복권",
		ticket_500_description = "자, 그게 너의 월급이야!",

		avocado = "아보카도",
		avocado_description = "작은 녹색 불버스 물체가 떨어졌으면 좋겠다.",
		avocado_smoothie = "아보카도 스무디",
		avocado_smoothie_description = "건강한 녹색 주스, 덩어리는 무시하세요.",

		raspberry = "라즈베리",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		note = "메모",
		note_description = "Some note idk man.",

		pigeon_milk = "비둘기 우유",
		pigeon_milk_description = "'슈트다'가 비둘기 우유를 마셔서 그것이 당신을 바로 쓰러뜨릴 것입니다' 그리고 베다르(Vedder)가 사랑의 힘으로 추출한 우유.",

		bandana = "반다나",
		bandana_description = "완전 빌어먹을. (피가 이긴다)",

		battering_ram = "배트링 램",
		battering_ram_description = "그 문을 가지고 와서 마을을 박아!",

		trading_card = "트레이딩 카드",
		trading_card_description = "수집할 수 있는 거래 카드, 다 가져가야 해!",

		trading_card_pack = "거래 카드 팩",
		trading_card_pack_description = "무작위 거래 카드 3장 한 장, 좋은 밀림 좀 하자.",

		boombox = "붐박스",
		boombox_description = "음악을 연주하고 언제 어디서나 불쾌해!",

		lighter = "라이터",
		lighter_description = "어떤 사람은 세상을 보고 싶어한다",

		nitro_tank = "니트로 탱크",
		nitro_tank_description = "당신이 필요한 속도가 있을 때 완벽하다.",

		empty_nitro_tank = "빈 니트로 탱크.",
		empty_nitro_tank_description = "빈 콩 깡통만큼 유용하다.",

		sheet_metal = "판금",
		sheet_metal_description = "2x2 업그레이드에 적합합니다.",

		valve = "밸브",
		valve_description = "반감기 3 언제?",

		empty_tank = "빈 탱크",
		empty_tank_description = "더 이상 프로판 또는 프로판 액세서리가 포함되지 않습니다.",

		pepper_spray = "페퍼 스프레이",
		pepper_spray_description = "내 눈!",

		jail_card = "감옥 증서",
		jail_card_description = "감옥 카드를 꺼내!",

		vape = "괴크 바",
		vape_description = "멋지게 보이려고? 보지같은거 지겨워? 한 대 치세요!",

		acetone = "아세톤",
		acetone_description = "페인트나 허핑하기에 완벽해요, 쿠퍼 스타일이요.",

		ammonia = "암모니아",
		ammonia_description = "표백제와 섞어 마법 같은 놀라움을 선사하세요.",

		lithium_batteries = "리튬 배터리",
		lithium_batteries_description = "붐을 일으키고 싶지 않으면 상업용 항공기에 탑승할 수 없다.",

		meth_bag = "메스백",
		meth_bag_description = "\"쿠퍼의 향신료\" 라는 별명이 붙었습니다. 알라모 해를 장식할 가장 순수한 크리스털",

		meth_table = "메타 테이블",
		meth_table_description = "하하 재미있게도 요리법에 대한 나쁜 참조를 깨고 있다.",

		campfire = "캠프파이어",
		campfire_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한! 이 항목은 다시 픽업할 수 없습니다.",
		tent = "텐트",
		tent_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		cloth_tent = "천 텐트",
		cloth_tent_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		canvas_tent = "캔버스 텐트",
		canvas_tent_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		plastic_chair = "플라스틱 의자",
		plastic_chair_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		fishing_chair = "낚시 의자",
		fishing_chair_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		yoga_mat = "요가 매트",
		yoga_mat_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		cooler_box = "쿨러 박스",
		cooler_box_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		parasol = "파라솔",
		parasol_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		parasol_table = "파라솔 테이블",
		parasol_table_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		table = "테이블",
		table_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		towel = "수건",
		towel_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		disposable_grill = "일회용 그릴",
		disposable_grill_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한! 이 항목은 다시 픽업할 수 없습니다.",
		grill = "석쇠",
		grill_description = "세계 어디에나 배치할 수 있습니다. 캠핑, 사냥 및 낚시 완벽한!",
		barrier = "장벽",
		barrier_description = "세계 어디에나 배치할 수 있습니다.",
		dummy = "더미",
		dummy_description = "세계 어디에나 배치할 수 있습니다.",
		target = "표적",
		target_description = "세계 어디에나 배치할 수 있습니다.",
		large_target = "큰 표적",
		large_target_description = "세계 어디에나 배치할 수 있습니다.",
		cone = "원뿔",
		cone_description = "세계 어디에나 배치할 수 있습니다.",
		spike_strips = "스파이크 스트립",
		spike_strips_description = "세계 어디에나 배치할 수 있습니다.",
		floodlight = "투광등",
		floodlight_description = "세계 어디에나 배치할 수 있습니다.",
		left_diversion_sign = "왼쪽 전환 기호",
		left_diversion_sign_description = "세계 어디에나 배치할 수 있습니다.",
		right_diversion_sign = "오른쪽 전환 기호",
		right_diversion_sign_description = "세계 어디에나 배치할 수 있습니다.",
		stop_sign = "정지 기호",
		stop_sign_description = "세계 어디에나 배치할 수 있습니다.",
		bear_trap = "베어 트랩",
		bear_trap_description = "세계 어디에나 배치할 수 있습니다.",

		black_dildo = "블랙 딜도",
		black_dildo_description = "우리는 어떻게든 그 고백을 받을 것이다.",
		pink_dildo = "핑크 딜도",
		pink_dildo_description = "수제, 조각 및 벅시 미들맨에 의해 테스트.",

		bean_coffee = "빈 커피",
		bean_coffee_description = "콩물.... 모든 게.",
		cappuccino = "카푸치노",
		cappuccino_description = "모유를 포함한 에스프레소, 모유, 모유....",
		espresso = "에스프레소",
		espresso_description = "집에 전력을 공급할 충분한 에너지, 모두 깔끔한 작은 컵에.",
		cream_cookie = "크림 쿠키",
		cream_cookie_description = "크리미, 딱 네 맘대로야.",
		cheesecake = "치즈 케이크",
		cheesecake_description = "치즈로 만든 케이크와 헷갈리지 마세요.",
		chocolate_cake = "초콜릿 케이크",
		chocolate_cake_description = "최고급 코코아콩으로 만든 맛있는 케이크입니다",

		chip_10 = "$10 칩",
		chip_10_description = "도박 칩. 도박에 사용될 수 있습니다. 그 물건은 카지노에서 돈으로 바꿀 수 있다.",
		chip_50 = "$50 칩",
		chip_50_description = "도박 칩. 도박에 사용될 수 있습니다. 그 물건은 카지노에서 돈으로 바꿀 수 있다.",
		chip_100 = "$100 칩",
		chip_100_description = "도박 칩. 도박에 사용될 수 있습니다. 그 물건은 카지노에서 돈으로 바꿀 수 있다.",
		chip_500 = "$500 칩",
		chip_500_description = "도박 칩. 도박에 사용될 수 있습니다. 그 물건은 카지노에서 돈으로 바꿀 수 있다.",
		chip_1000 = "$1000 칩",
		chip_1000_description = "도박 칩. 도박에 사용될 수 있습니다. 그 물건은 카지노에서 돈으로 바꿀 수 있다.",
		chip_5000 = "$5000 칩",
		chip_5000_description = "도박 칩. 도박에 사용될 수 있습니다. 그 물건은 카지노에서 돈으로 바꿀 수 있다.",
		chip_10000 = "$10000 칩",
		chip_10000_description = "도박 칩. 도박에 사용될 수 있습니다. 그 물건은 카지노에서 돈으로 바꿀 수 있다.",

		grubs = "땅벌레",
		grubs_description = "낚시에 안성.",
		leeches = "거머리",
		leeches_description = "낚시에 안성.",
		earthworms = "지렁이",
		earthworms_description = "낚시에 안성.",
		fishing_rod = "낚싯대",
		fishing_rod_description = "낚시에 안성.",
		raw_meat = "날고기",
		raw_meat_description = "신선한 고기 덩어리.",
		cooked_meat = "요리된 고기",
		cooked_meat_description = "방금 조리한 고기입니다.",
		burnt_meat = "구운 고기",
		burnt_meat_description = "고기를 태웠습니다",
		leather = "가죽",
		leather_description = "사슴에서 갓 나온 좋은 가죽.",
		wood = "나무",
		wood_description = "나무에서 갓 나온 나무 조각.",
		charcoal = "Charcoal",
		charcoal_description = "Superior to normal coal.",

		golf_ball = "골프공",
		golf_ball_description = "골프용으로 사용된다.",
		golf_ball_yellow = "노란색 골프 공",
		golf_ball_yellow_description = "골프용으로 사용된다.",
		golf_ball_orange = "오렌지 골프 공",
		golf_ball_orange_description = "골프용으로 사용된다.",
		golf_ball_pink = "핑크 골프 공",
		golf_ball_pink_description = "골프용으로 사용된다.",

		gas_mask = "가스 마스크",
		gas_mask_description = "모든 종류의 가스로부터 당신을 구해줄 것입니다. 심지어 할머니 농장에서도 말이죠",

		weapon_dagger = "고대 기병대 단검",
		weapon_bat = "야구박쥐",
		weapon_bottle = "깨진 병",
		weapon_crowbar = "크라우드 바",
		weapon_unarmed = "주먹",
		weapon_flashlight = "손전등",
		weapon_golfclub = "골프 클럽",
		weapon_hammer = "망치",
		weapon_hatchet = "자귀",
		weapon_knuckle = "황동 너클",
		weapon_knife = "칼",
		weapon_machete = "마체테",
		weapon_switchblade = "스위치 블레이드",
		weapon_nightstick = "나이트스틱",
		weapon_wrench = "파이프 렌치",
		weapon_battleaxe = "배틀 액스",
		weapon_poolcue = "당구 큐",
		weapon_stone_hatchet = "돌 도끼",

		weapon_pistol = "권총",
		weapon_pistol_mk2 = "권총 Mk II",
		weapon_combatpistol = "전투 권총",
		weapon_appistol = "AP 권총",
		weapon_stungun = "스툰건",
		weapon_pistol50 = "권총 0.50",
		weapon_snspistol = "SNS 권총",
		weapon_snspistol_mk2 = "SNS 권총 Mk II",
		weapon_heavypistol = "중권총",
		weapon_vintagepistol = "빈티지 권총",
		weapon_flaregun = "플레어총",
		weapon_marksmanpistol = "명사 권총",
		weapon_revolver = "헤비 리볼버",
		weapon_revolver_mk2 = "헤비 리볼버 Mk II",
		weapon_doubleaction = "더블 액션 리볼버",
		weapon_raypistol = "업-엔-아토마이저",
		weapon_ceramicpistol = "Ceramic Pistol",
		weapon_navyrevolver = "Navy Revolver",
		weapon_gadgetpistol = "Perico Pistol",
		weapon_stungun_mp = "스턴 총 (MP)",

		weapon_microsmg = "마이크로 SMG",
		weapon_smg = "SMG",
		weapon_smg_mk2 = "SMG Mk II",
		weapon_assaultsmg = "돌격 SMG",
		weapon_combatpdw = "전투 PDW",
		weapon_machinepistol = "기관총",
		weapon_minismg = "미니 SMG",
		weapon_raycarbine = "언홀리 헬브링거",

		weapon_pumpshotgun = "펌프식 산탄총",
		weapon_pumpshotgun_mk2 = "펌프식 산탄총 Mk II",
		weapon_sawnoffshotgun = "짧은 산탄총",
		weapon_assaultshotgun = "돌격용 산탄총",
		weapon_bullpupshotgun = "불팝 샷건",
		weapon_musket = "머스켓",
		weapon_heavyshotgun = "헤비 샷건",
		weapon_dbshotgun = "더블 배럴 샷건",
		weapon_autoshotgun = "스위퍼 샷건",
		weapon_combatshotgun = "컴뱃 샷건",

		weapon_assaultrifle = "돌격 소총",
		weapon_assaultrifle_mk2 = "돌격 소총 Mk II",
		weapon_carbinerifle = "카빈 소총",
		weapon_carbinerifle_mk2 = "카빈 소총 Mk II",
		weapon_advancedrifle = "고급 라이플",
		weapon_specialcarbine = "특수 카바인",
		weapon_specialcarbine_mk2 = "특수 카바인 Mk II",
		weapon_bullpuprifle = "불팝 소총",
		weapon_bullpuprifle_mk2 = "불팝 소총 Mk II",
		weapon_compactrifle = "콤팩트 소총",
		weapon_militaryrifle = "군용 소총",
		weapon_heavyrifle = "무거운 소총",

		weapon_mg = "MG",
		weapon_combatmg = "컴뱃 MG",
		weapon_combatmg_mk2 = "컴뱃 MG Mk II",
		weapon_gusenberg = "구센버그 스위퍼",

		weapon_sniperrifle = "스나이퍼 소총",
		weapon_heavysniper = "헤비 스나이퍼",
		weapon_heavysniper_mk2 = "헤비 스나이퍼 Mk II",
		weapon_marksmanrifle = "마크스만 소총",
		weapon_marksmanrifle_mk2 = "마크스만 소총 Mk II",

		weapon_rpg = "RPG",
		weapon_grenadelauncher = "유탄 발사기",
		weapon_grenadelauncher_smoke = "유탄 발사기 연기",
		weapon_minigun = "미니건",
		weapon_firework = "화재 발사기",
		weapon_railgun = "레일건",
		weapon_hominglauncher = "호밍 발사기",
		weapon_compactlauncher = "소형 수류탄",
		weapon_rayminigun = "위도우메이커",
		weapon_emplauncher = "컴팩트 EMP 발사기",

		weapon_grenade = "수류탄",
		weapon_bzgas = "BZ 가스",
		weapon_molotov = "화염병 칵테일",
		weapon_stickybomb = "점착 폭탄",
		weapon_proxmine = "근접 광산",
		weapon_snowball = "눈덩이",
		weapon_pipebomb = "파이프 폭탄",
		weapon_ball = "야구",
		weapon_smokegrenade = "연막탄", -- NOTE: this is called "Tear Gas" in the native game for some reason
		weapon_flare = "플레어",

		weapon_petrolcan = "제리 캔",
		gadget_parachute = "낙하산",
		weapon_fireextinguisher = "소화기",
		weapon_hazardcan = "위험한 제리 캔",
		weapon_fertilizercan = "비료 캔",

		weapon_dagger_description = "해적의 멋있는 외관을 오랫동안 흔드셨지만 외관을 완성할 흉기는 하나도 없다고요? 이 단검에 철창을 달아라.",
		weapon_bat_description = "가죽 손잡이가 달린 알루미늄 야구 박쥐. 가볍지만 강력한 기술을 가진 모든 이들을 위해 말이죠.",
		weapon_bottle_description = "영리하지도, 예쁘지도 않죠. 하지만 대부분의 경우 칼을 들고 당신에게 달려오는 사람도 아닙니다. 다른 모든 것이 실패했을 때, 이 작업은 완료됩니다.",
		weapon_crowbar_description = "높은 품질의 강화 강철로 만든 무거운 크라우드바입니다. 추가적인 힘을 얻기 위해 일을 완수해야 합니다.",
		weapon_unarmed_description = "다른 모든 것이 실패했을 때, 손가락을 꺾어서 당신이 가진 것을 열심히 해라.",
		weapon_flashlight_description = "이 짧은 길이의 배터리 전원으로 어둠에 대한 공포를 강화하십시오. 둔기 외상을 위한 손쉬운 방법",
		weapon_golfclub_description = "치명적인 쇼트 게임을 위한 고무 그립이 있는 표준 길이, 중간 철 골프 클럽.",
		weapon_hammer_description = "튼튼한 다용도 망치와 나무 손잡이와 구부러진 집게로, 이 오래된 고전은 여전히 경쟁을 못 하게 한다.",
		weapon_hatchet_description = "친절을 베풀어... 너의 친구들을 쉽게 휘둘러지고.",
		weapon_knuckle_description = "금니를 뽑아내기에 완벽하거나 모든 것을 가진 트로피 파트너에게 선물하기에 완벽합니다.",
		weapon_knife_description = "이 탄소 강철 7\" 블레이드된 칼은 강화된 척추를 가지고 양쪽을 이루고 찌르는 기능이 향상되었다.",
		weapon_machete_description = "미국 서아프리카의 무기 거래는 단순히 나눠주는 것이 아닙니다. 이 녹슨 식칼 하나로 단순한 생명체를 재발견하세요.",
		weapon_switchblade_description = "주머니에서 저 남자의 갈비뼈에 아주 가까운 순간까지 접는 칼은 절대로 유행이 되지 않는다.",
		weapon_nightstick_description = "24\" 폴리카보네이트 사이드 처리된 나이트스틱.",
		weapon_wrench_description = "세계 종말론의 생존자들과 폭력적인 아버지들이 늘 즐겨 쓰는 이 로봇은 일종의 도구로도 쓰이게 됩니다.",
		weapon_battleaxe_description = "만약 중세의 보병이나, 현대의 국경 수비대, 그리고 강압적인 축구 엄마들에게 충분하다면, 그것은 여러분에게 충분합니다.",
		weapon_poolcue_description = "완벽한 휴식만큼 만족스러운 소리는 없습니다. 특히 다른 남자의 척추일 때는 더더욱 그렇죠.",
		weapon_stone_hatchet_description = "250만 년의 연구 개발 기간 동안 우리는 여전히 여기에 있습니다.",

		weapon_pistol_description = "표준 권총. 45구경 권총에는 12발 전투력 16발까지 확장 가능합니다.",
		weapon_pistol_mk2_description = "균형, 단순함, 정밀도: 그 어떤 것도 다른 사람의 입 속에 있는 긴 통처럼 평화를 유지하지 못합니다.",
		weapon_combatpistol_description = "경량 소형 반자동 권총입니다. 사법 기관과 개인 방어를 위해 고안된 것이죠. 16라운드까지 확장할 수 있는 옵션이 있는 12라운드 매거진",
		weapon_appistol_description = "높은 침투와 자동 권총입니다. 매거진의 18라운드를 36라운드까지 확장할 수 있는 옵션을 제공합니다.",
		weapon_stungun_description = "전가족을 위한 즐거운 재미!",
		weapon_pistol50_description = "강력한 힘을 주지만 아주 강한 반지름을 가진 고충격 권총. 매거진에서 9라운드.",
		weapon_snspistol_description = "콘돔, 헤어스프레이 같은 건 하룻밤 새에 주머니에 넣을 수 있어요. 클럽에서 마시는 병 값은 샴페인 코르크마보다 절반이고 치명적입니다.",
		weapon_snspistol_mk2_description = "최고의 지갑 필러: 토요일 밤을 정말 특별하게 만들고 싶다면, 이 티켓입니다.",
		weapon_heavypistol_description = "그 잡지의 헤비급 챔피언인 반자동 권총계. 정확성과 엄밀한 전구운동을 항상 제공합니다.",
		weapon_vintagepistol_description = "정말 필요한 건 좀 더 알아볼수 있는 총입니다. 이 권총을 새긴 무장 강도에게 군중 속에서 일어나세요.",
		weapon_flaregun_description = "곤경과 술취한 흥분을 신호로 사용하라. 경고: 사람을 직접적으로 가리키는 것은 자연발화를 일으킬 수 있다. 히스트 일원입니다.",
		weapon_marksmanpistol_description = "위험을 회피하려는 건 아닙니다. 총만큼 재적재할 수 있도록 하세요",
		weapon_revolver_description = "광대한 코뿔소를 떨어뜨릴 정도의 정력을 가진 권총입니다. 탄약이 바닥나면 박살 낼 만큼 무겁죠.",
		weapon_revolver_mk2_description = "이걸 들어올리면 화물열차에 누굴 쏘는데 가장 가까운 곳이에요",
		weapon_doubleaction_description = "왜냐하면 때로는 복수가 여섯 번 연속으로, 두 눈 사이에 있는 가장 좋은 요리이기 때문입니다.",
		weapon_raypistol_description = "사회주의에 대한 은하계 전쟁으로부터 막 나온 공화당 우주 특공대. 탄약도 없고, 마지도 없고, 잔인한 에너지 맥박도 하나 없고.",
		weapon_ceramicpistol_description = "할머니의 도자기가 아니네요 비록 이 작은 권총은 그녀의 지갑에 들어갈 수 있을 정도로 작지만 금속 탐지기를 작동시키지는 않는다.",
		weapon_navyrevolver_description = "진정한 박물관 작품입니다. 서양이 어떻게 이겼는지 알고 싶을 겁니다. 장전 속도가 느리고 엄청난 유혈사태가 일어났죠.",
		weapon_gadgetpistol_description = "치명적인 사격이었습니다. 소중하게 굴지마 티타늄을 질산화 마무리 하지 않을 겁니다.",
		weapon_stungun_mp = "",

		weapon_microsmg_description = "소형 디자인과 분당 약 700-900 라운드의 높은 화질로 결합합니다.",
		weapon_smg_description = "이것은 좋은 전신기관총으로 알려져 있습니다. 정확한 시야와 30라운드 매거진 용량을 갖춘 경량",
		weapon_smg_mk2_description = "가볍고 작고, 화약 때문에 아주 쉽게 죽을 수 있습니다. 잘 휘어진 트리거를 클릭하면 제한된 공간을 킬 상자로 전환합니다.",
		weapon_assaultsmg_description = "소형과 경량인 대용량 하부 기관총. 한 잡지에서 최대 30개의 탄환이 들어갑니다.",
		weapon_combatpdw_description = "누가 개인용 무기가 군인들에게 가치있는 것이 아니라고 말했는가? 로비스트들 덕분이지 의회가 아닙니다. 적분 억제",
		weapon_machinepistol_description = "완전히 자동인 이 고마는 쌍동이 엔진 V8 베이스에 들어가는 드럼 소리입니다. 드라이브바이 소리가 없으면 딱 맞는 소리죠.",
		weapon_minismg_description = "마케팅 팀이 사양 운영 단위를 넘어 저소득 지역에 있는 작은 사람들에 대해 관심을 가지기 시작한 이후로 점점 더 인기를 얻고 있다.",
		weapon_raycarbine_description = "공화당 우주 특공대. 만약 여러분이 작은 녹색 남자를 작은 녹색 끈으로 바꾸고 싶다면, 이것이 미국만의 방법입니다.",

		weapon_pumpshotgun_description = "단거리 전투엔 표준형 산탄총이 이상적이다. 높은 발사체의 확산은 더 낮은 정확도를 유지한다.",
		weapon_pumpshotgun_mk2_description = "펌프 행동보다 더 많은 행동을 하는 것은 단 하나입니다. 주의하세요. 리코프는 거의 슛만큼 치명적입니다.",
		weapon_sawnoffshotgun_description = "이 단통모양의 산탄총은 가까운 전투에서의 파괴적인 효율과 낮은 사정거리 및 탄약 용량을 보상합니다.",
		weapon_assaultshotgun_description = "총 자동 엽총, 8개의 둥근 매거진, 높은 화재율.",
		weapon_bullpupshotgun_description = "화재의 속도는 태동보다 더 느리지만, 화재의 범위는 넓어지고 확산되었습니다. 발사된 길에서 어떤 것도 죽입니다.",
		weapon_musket_description = "곱사병이나 고급 콤플렉스만으로 무장한채 지구촌의 반을 점령했다. 제국을 세운 총을 소유하고",
		weapon_heavyshotgun_description = "그 무기는 당신이 정말 끔찍한 난장판을 만들 필요가 있을 때 그것을 향해 도달합니다. 쉽게 닦을 수 있는 표면에만 가장 적합합니다.",
		weapon_dbshotgun_description = "한 가지, 잘 하세요. 첫번째 슛이 다른 남자를 안개로 만들었을때 누가 높은 화약을 필요로 할까요?",
		weapon_autoshotgun_description = "폭동진압용 효과적인 도구는 몇 개나 있나요? 두 개. 하지만 이것은 다른 것입니다.",
		weapon_combatshotgun_description = "LSFD 경보 종을 울리게 하는 화재율을 가진 반자동식 산탄총이 단 하나밖에 없으며, 여러분은 그것을 보고 있습니다.",

		weapon_assaultrifle_description = "이 표준 공격용 소총은 대용량 잡지와 장거리 정확도를 자랑한다.",
		weapon_assaultrifle_mk2_description = "사상 최고의 고전의 최종적인 개정입니다. 작은 일이면 충분하고 외모가 사람을 죽일 수도 있습니다.",
		weapon_carbinerifle_description = "장거리 정확도와 고용량 잡지가 결합된 카빈소총은 추락의 빌미가 될 수 있다.",
		weapon_carbinerifle_mk2_description = "이것은 맞춤 제작의 화력입니다. 사랑과 배려가 넘치는 총알이 빗발치는 것은 불가능하죠. 손으로 직접 삽입하면 말이죠.",
		weapon_advancedrifle_description = "모든 공격용 소총에서 가장 가볍고 컴팩트한 총입니다. 정확성과 화재율을 양보하지 않고 말이죠.",
		weapon_specialcarbine_description = "정확성, 기동성, 화력, 저공 장비를 결합하면 어떤 전투 상황이든 매우 다재다능의 공격용 라이플이 됩니다.",
		weapon_specialcarbine_mk2_description = "모든 거래의 장애물은 단지 심각한 업그레이드를 받았습니다. 주인께 절을 하라.",
		weapon_bullpuprifle_description = "최근 미국을 강타한 중국의 수입품, 이 소총은 균형잡힌 취급 수단으로 알려져 있습니다. 가볍고 자동화재에서 매우 조절 가능합니다.",
		weapon_bullpuprifle_mk2_description = "아주 정밀하고 정교한 것은 교향곡처럼 총탄 우박이 아닙니다.",
		weapon_compactrifle_description = "절반의 크기, 모든 힘, 반구는 두배가 됩니다. \"나는 무언가에 대해 보상하고 있다\"라고 말하는 더 위험한 방법은 없다.",
		weapon_militaryrifle_description = "이 엄청나게 강력한 공격용 소총은 매우 자격을 갖추고, 대단히 숙련된 군인들을 위해 고안되었습니다. 네살 수 있습니다",
		weapon_heavyrifle_description = "무거운게 낫죠? 네, 같이 갑시다.",

		weapon_mg_description = "견고한 디자인과 신뢰할 수 있는 성능을 결합한 범용 기관총입니다. 광구는 관엽. 대규모 집단에게는 매우 효과적입니다.",
		weapon_combatmg_description = "경량 소형 기관총은 기동성이 뛰어나고 높은 화력이 결합되어 엄청난 효과를 냅니다.",
		weapon_combatmg_mk2_description = "좋은 일은 절대 많이 가질 수 없습니다. 결국, 첫 번째 샷이 중요하다면, 다음 100개 정도는 더블 샷을 해야 합니다.",
		weapon_gusenberg_description = "금주총으로 당신의 얼굴을 완성하세요. 루즈벨트의 창 밖으로 튀어나온 것 같거나, 가는 양복과 짝을 이룬 것 같군요.",

		weapon_sniperrifle_description = "표준 저격수 소총 정확성이 긴 상황에서 이상적입니다. 제한 사항에는 느린 재로드 속도와 매우 낮은 화재 발생 속도가 포함됩니다.",
		weapon_heavysniper_description = "갑옷을 찢는 회전이 있어서 큰 피해를 입습니다. 레이저 범위가 표준으로 제공됩니다.",
		weapon_heavysniper_mk2_description = "멀리 떨어져 있지만 항상 친밀합니다. 만약 여러분이 그 장거리 관계를 위한 안전한 기반을 찾고 있다면 바로 이것입니다.",
		weapon_marksmanrifle_description = "가까이 다가서든, 당황스러울 정도로 먼 거리든 이 무기는 완성될 것입니다. 도구를 위한 다양한 도구.",
		weapon_marksmanrifle_mk2_description = "\"The Dislocator\"로 군 조직에서 알려진 이 수정 세트는 그 순서대로 대상과 어깨가 모두 파괴됩니다.",

		weapon_rpg_description = "폭발탄을 발사하는 휴대용 어깨발식 대전차 무기. 교통수단이나 대규모 공격자들을 제거하는데 매우 효과적이죠.",
		weapon_grenadelauncher_description = "초소형 가벼운 유탄 발사기가 있고 반자동 기능이 있습니다. 최대 10회까지 잡습니다.",
		weapon_grenadelauncher_smoke_description = "\"수류탄을 차고, 연기와 수류탄을 받아서, 연기수류탄을 얻습니다.\" - 오프라!",
		weapon_minigun_description = "개틀링 스타일의 회전 통을 특징으로 하는 파괴적인 6배럴 기관총. 매우 높은 화재 비율(분당 2000에서 6000회)입니다.",
		weapon_firework_description = "이 화염병 발사장치를 다시 번쩍여서 군중으로부터 약간의 음과 탄성을 확실히 받을 수 있게 하세요.",
		weapon_railgun_description = "여러분이 아셔야 할 것은 자석입니다. 이 자석은 뾰족한 곳을 보면 끔찍한 일을 저지릅니다.",
		weapon_hominglauncher_description = "적외선 유도 미사일 발사기. 모든 이동 대상 요구 사항",
		weapon_compactlauncher_description = "이 규칙적인 모델을 사용하는 포커스 그룹들은 그것이 너무 정확하다는 것을 암시했고 한 손으로 스로틀에 사용하기에는 어색하다는 것을 발견했습니다. 쉬운 문제.",
		weapon_rayminigun_description = "공화당 우주 특공대. 제가 보상하고 있다고 말해주세요. 감히 그럴 수 있어",
		weapon_emplauncher_description = "드론이나 헬기로 쏴 졸리게 만들죠.",

		weapon_grenade_description = "표준 단편화 수류탄입니다. 핀을 당겨 던지고, 덮개를 찾습니다. 클러스터된 공격자를 제거하는 데 이상적입니다.",
		weapon_bzgas_description = "여러분이 좋아하지 않는 핫 복싱 사람들을 위해 쓰세요.",
		weapon_molotov_description = "조잡하지만 매우 효과적인 소화 무기. 이 칵테일은 행복한 시간이 아닙니다.",
		weapon_stickybomb_description = "원격 기폭 장치가 장착된 플라스틱 폭탄. 던져진 다음 폭발하거나 차량에 부착한 다음 폭발합니다.",
		weapon_proxmine_description = "이 모션 센서 지뢰 장비를 가지고 친구들에게 선물을 남겨주세요. 활성화 후 짧은 지연.",
		weapon_snowball_description = "경계하고, 친근한 눈덩이 싸움을 위해 선원들을 태울 준비를 하세요, 하지만 미리 경고하세요, 저 작고 얼빠진 멍청이들이 워커들을 싸줄 수 있어요.",
		weapon_pipebomb_description = "명심하세요. 이것은 IED로 간주되지 않습니다. 상점에서 사거나 세계 최초의 국가에서 사용할 때 말이죠.",
		weapon_ball_description = "베이브 루스가 서명했는데, 완전히 가짜가 아닙니다.",
		weapon_smokegrenade_description = "최루탄 투탄은 특히 여러 공격자를 무력화하는 데 효과적이다. 지속적인 노출은 치명적일 수 있습니다.",
		weapon_flare_description = "공기방울을 떨어뜨리세요.",

		weapon_petrolcan_description = "불 붙을 수 있는 가솔린의 흔적을 남깁니다.<br><br>가솔린 남은 값: ${pearputsAmount}%",
		gadget_parachute_description = "이 나일론 스포츠 낙하산은 람-공기 파라오일 디자인을 통해 방향과 속도를 더 잘 조절할 수 있습니다.",
		weapon_fireextinguisher_description = "소화기는 \"연기 기계\"라고 불리죠.",
		weapon_hazardcan_description = "가스처럼, 하지만 쓸모없는거죠.",
		weapon_fertilizercan_description = "좋은 건 똥이야 작물보다 더 좋은 건 없어",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "헌팅 라이플",
		weapon_addon_huntingrifle_description = "사냥용 소총입니다.",

		weapon_addon_vfcombatpistol = "VF 전투 권총",
		weapon_addon_vfcombatpistol_description = "미소를 지으며 플래시를 기다립니다.",

		weapon_addon_dp9 = "D&P 9 권총",
		weapon_addon_dp9_description = "더빙을 잡을 12번의 기회.",

		weapon_addon_dutypistol = "SIG 자우어 P226",
		weapon_addon_dutypistol_description = "오리지널 무선 홈 프로텍션 시스템.",

		weapon_addon_gardonepistol = "가르돈 권총",
		weapon_addon_gardonepistol_description = "의심이 들 때, 잡지를 비워라.",

		weapon_addon_endurancepistol = "인듀런스 권총",
		weapon_addon_endurancepistol_description = "권총의 비아그라",

		weapon_addon_sentinelshotgun = "센티넬 샷건",
		weapon_addon_sentinelshotgun_description = "단방향 살인 기계",

		weapon_addon_sentinelbbshotgun = "빈백 샷건",
		weapon_addon_sentinelbbshotgun_description = "재미있는 가방입니다.",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "코일 섬광",
		weapon_addon_stungun_description = "",

		weapon_addon_m4 = "M4 카르빈",
		weapon_addon_m4_description = "\"군 등급\" 정확히 경찰청에 부여된 이유입니다.",

		weapon_addon_mp9 = "B&T MP9",
		weapon_addon_mp9_description = "작고, 빠르고, 이것을 들고 있는 사람과 같은..",

		weapon_addon_rc4 = "레밍턴 R4-C",
		weapon_addon_rc4_description = "Festy와 빠른, 당신의 선수단에 가질 완벽한 파트너. 빨간 머리가 그것을 잡고 있지 않는 한.",

		weapon_addon_pp19 = "PP-19 비티야즈",
		weapon_addon_pp19_description = "모든 종류의 \"Raid\"에 완벽한 러시아어 최고의 정점입니다.",

		weapon_addon_m9a3 = "베레타 M9A3",
		weapon_addon_m9a3_description = "더러운 짓을 하는 데 필요한 모든 것이 싸구려 짓이다.",

		weapon_addon_357mag = "357 매그넘",
		weapon_addon_357mag_description = "교통 정류장에서 좀비까지, 이 리볼버는 보안관의 가장 좋은 친구이다.",

		weapon_addon_hk416b = "H&K 416",
		weapon_addon_hk416b_description = "AMG처럼, 이 총은 사용자 정의 가능하고 전쟁에 대비하고, 그냥 그것을 반전하지 마십시오...",

		weapon_addon_m870 = "레밍턴 M870",
		weapon_addon_m870_description = "완벽한 스포츠와 사냥용 샷건, 하지만 총격 댄서는 정말로 스포츠가 아닙니다... 그렇죠?",

		weapon_addon_rpk16 = "RPK-16",
		weapon_addon_rpk16_description = "지금까지 존재하는 가장 완벽한 기관총입니다. 트랙슈트를 잊지 마세요.",

		weapon_addon_tacknife = "궁극적 전술용 칼",
		weapon_addon_tacknife_description = "마침내 100단계에 도달했습니다. 대령이 자랑스러울 것입니다.",

		weapon_addon_reaper = "리퍼",
		weapon_addon_reaper_description = "마체테지만 더 멋지다.",

		weapon_addon_berserker = "베르세르커",
		weapon_addon_berserker_description = "멋진 도끼.",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "미래는 이제 노인입니다, 단지 작은 구경 ...",

		weapon_addon_g36c = "헤클러 & 코흐 G36C",
		weapon_addon_g36c_description = "5.56 mm NATO 라운드의 말단 탄도를 가진 기관전포의 치수. 경찰과 군대의 특수 전술 응용을 위해 개발되었습니다."
	},

	items = {
		move_to_repair = "차량을 수리하려면 여기로 이동하세요",
		repairing_vehicle = "수리차량",
		using_first_aid_kit = "구급 키트 사용",
		using_ifak = "IFAK 사용",
		move_to_wash = "차를 세차하려면 여기로 이동하세요",
		move_to_put_fake_plate = "가짜 번호판을 달려면 여기로 이동하세요.",
		unable_to_repair = "안에 플레이어가 있는 동안에는 차량을 수리할 수 없습니다.",
		failed_lockpicking = "자물쇠 따기 실패했습니다",
		lockpicking_succeeded = "자물쇠 따기 성공.",
		hotwiring_vehicle = "열선 차량",
		lockpick_broke = "락픽이 깨졌어요",
		failed_hotwire = "실패한 핫와이어",
		rolling_joint = "롤링 조인트",
		rolling_joints = "롤링 조인트",
		changing_license_plate = "라이센스 플레이트 변경",
		unable_to_change_license_plate = "차량 안에 플레이어가 있는 동안에는 번호판을 변경할 수 없습니다.",
		equipping_parachute = "낙하산 장비를 갖춘",
		lockpicking_vehicle = "자물쇠 따기 차량",
		illegal_weather_name = "잘못된 날씨 이름으로 날씨 주문을 사용하려고 합니다.",
		equipping_body_armor = "body armor equipment",
		illegal_burger_shot_delivery_item_id = "잘못된 항목 ID가 있는 버거샷 배달 항목을 사용하려고 합니다.",
		illegal_lighter_item_id = "잘못된 항목 ID가 있는 더 밝은 항목을 사용하려고 합니다.",
		unable_to_use_lighter_in_vehicle = "차에서는 라이터를 사용할 수 없습니다.",
		not_possible_in_a_vehicle = "이 작업은 차량에서는 수행할 수 없습니다.",
		just_used_bandage = "방금 응급 키트를 사용했습니다. 다른 키트를 사용하기 전에 잠시 기다려 주십시오.",

		logs_used_weather_spell_title = "사용된 날씨 맞춤법",
		logs_used_weather_spell_details = "${consoleName}에서 날씨 맞춤법 '${itemName}'을(를) 사용했습니다.",

		you_have_used_jail_card = "당신은 '출소 카드'를 사용했어요'!",
		you_are_not_in_jail = "당신은 감옥에 있지 않습니다."
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] 줄 사용",
		putting_leash_on = "목줄 매고",
		press_to_take_leash_off = "[${InteractionKey}] 줄 해제",
		takeing_leash_off = "목줄을 벗기는 중."
	},

	locate = {
		invalid_filter_value = "잘못된 필터 값입니다.",
		locate_failed = "'${filter}'과(와) 일치하는 엔터티를 찾지 못했습니다.",
		something_went_wrong = "엔터티를 찾지 못했습니다..",
		locate_success = "(${x}, ${y}, ${z})에서 '${filter}'과(와) 일치하는 엔터티를 찾았습니다.",

		locate_entity_no_permissions = "플레이어가 적절한 권한 없이 엔터티를 찾으려고 했습니다."
	},

	login = {
		loading_character = "캐릭터 불러오는 중...",
		deleting_character = "캐릭터 삭제 중...",
		fetching_character_data = "캐릭터 데이터를 가져오는 중...",
		complete = "완료",
		welcome_to = "Welcome to",
		press = "참가하려면",
		enter = "ENTER",
		to_join = "누르세요",
		main_menu = "메인 메뉴",
		disconnect = "연결 해제",
		disconnect_confirm = "서버에서 연결을 끊으시겠습니까?",
		yes = "예",
		no = "아니오",
		name = "이름",
		dob = "생일",
		gender = "성별",
		cash = "현금",
		bank = "은행",
		story = "스토리",
		empty_slot = "빈 슬롯",
		new_character = "새로운 캐릭터",
		select_character = "캐릭터 선택",
		delete_character = "캐릭터 삭제",
		delete_character_confirm = "이 캐릭터를 삭제하시겠습니까?",
		create_character = "캐릭터 생성",
		first_name = "이름",
		last_name = "성",
		date_of_birth = "생일",
		male = "남성(M)",
		female = "여성(F)",
		character_backstory = "캐릭터 뒷이야기",
		cancel = "취소",
		action_can_not_be_undone = "이 작업은 취소할 수 없습니다.",
		exit_city = "도시를 종료합니다.",
		press_to_exit_city = "~g~${InteractionKey} ~w~를 눌러 도시를 종료합니다.",
		character_slot_occupied = "이 캐릭터 슬롯은 이미 사용 중입니다.",
		something_went_wrong = "캐릭터를 생성하는 동안 문제가 발생했습니다.",
		name_already_taken = "이미 사용 중인 이름입니다.",
		bad_words = "캐릭터 이름이나 뒷이야기에 좋지 않은 단어가 있습니다.",
		disallowed_name = "캐릭터 이름에 허용되지 않는 단어가 있습니다.",
		illegal_character_slot = "이 슬롯에서는 캐릭터를 생성할 수 없습니다.",
		missing_character_creation_data = "캐릭터 생성 데이터가 없습니다.",
		character_already_loaded = "이미 로드된 캐릭터가 있습니다.",
		bad_words_in_character_creation = "이름이나 배경 스토리에 잘못된 단어가 포함된 캐릭터를 만들려고 했습니다. \"${badWords}\"",
		disallowed_words_in_character_name = "\"${characterName}\" 이름이 잘못되었을 수 있는 캐릭터를 만들려고 했습니다.",
		discord = "Discord",
		you_have_disconnected_from_the_server = "서버에서 연결이 끊어졌습니다.",
		notice = "알림"
	},

	lottery = {
		lottery_announcement = "추첨 공고",
		lottery_about_to_roll = "오늘 추첨은 5분 후에 당첨자가 추첨됩니다. 현재 $${totalPot}에서 $${betAmount}을 넣었습니다. 당첨될 확률은 ${odds}%입니다.",
		current_lottery_pot = "현재 $${totalPot}에서 $${betAmount}을 넣었습니다. 당첨될 확률은 ${odds}%입니다.",
		drew_a_lottery_winner = "복권에 당첨된 사람이 추첨되었습니다.",
		roll_lottery_no_permission = "플레이어는 복권을 굴려려고 했지만 그렇게 할 수 있는 권한이 없었습니다.",
		winner_has_been_picked = "${fullName}님이 $${totalPot}의 복권에 당첨되었습니다! 그들은 $${betAmount}에 베팅했고 우승 확률은 ${odds}%였습니다.",
		claimed_lottery_winnings = "모든 복권 당첨금을 청구했습니다.",
		no_lottery_winnings = "귀하는 청구되지 않은 복권 당첨금이 없습니다.",
		internal_server_error = "내부 서버 오류가 발생했습니다."
	},

	lucky_wheel = {
		spin_lucky_wheel = "~INPUT_CONTEXT~ 키를 눌러 Lucky Wheel을 회전합니다. 비용은 $${cost}입니다.",
		spin_lucky_wheel_for_free = "~INPUT_CONTEXT~ 키를 눌러 Lucky Wheel을 회전합니다. 오늘 한 번 프리스핀이 남았어요.",
		unable_to_spin_lucky_wheel = "오늘 허용된 만큼 이미 Lucky Wheel을 돌렸습니다. 다른 스핀을 위해 나중에 다시 오세요!",
		unable_to_spin_lucky_wheel_time = "오늘 허용된 만큼 이미 Lucky Wheel을 돌렸습니다. ${displayTime}에 다음 회전이 가능합니다.",
		lucky_wheel_is_occupied = "Lucky Wheel은 현재 사용 중입니다. 기다리세요.",
		not_enough_balance_to_spin = "당신은 바퀴를 돌릴 충분한 돈이 없습니다. 비용은 $${비용}입니다.",
		logs_lucky_wheel_reward_title = "Lucky Wheel 리워드",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} 님이 휠을 회전시켜 차량을 획득했습니다.",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName}에 모델 이름 `${modelName}` 차량을 성공적으로 지정했습니다.",
		logs_lucky_wheel_reward_money_details = "${consoleName} 님이 휠을 회전시켜 $${amount} 을(를) 획득했습니다.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} 님이 휠을 회전하고 `${itemName}'(으)로 보석을 획득했습니다.",
		logs_lucky_wheel_reward_item_details = "${consoleName} 님이 휠을 회전하고 `${itemName}` 이름을 가진 항목을 획득했습니다.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} 이(가) 휠을 회전시켜 1주일의 대기열 우선 순위를 획득했습니다."
	},

	mechanics = {
		move_here_check = "업그레이드를 확인하려면 여기로 이동하세요.",
		checking_upgrades = "차량 업그레이드 확인",
		upgrades_list = "${engine}, ${breaks}, ${transmission} 및 ${turbo}.",

		has_no_turbo = "turbo가 설치되지 않았습니다.",
		has_turbo = "turbo가 장착되어 있습니다",

		breaks_0 = "스톡 브레이크",
		breaks_1 = "스트리트 브레이크",
		breaks_2 = "스포츠 브레이크",
		breaks_3 = "레이스 브레이크",

		transmission_0 = "스톡 전송",
		transmission_1 = "거리 전송",
		transmission_2 = "스포츠 전송",
		transmission_3 = "레이스 전송",

		engine_0 = "스톡 엔진",
		engine_1 = "엔진 EMS 레벨 2",
		engine_2 = "엔진 EMS 레벨 3",
		engine_3 = "엔진 EMS 레벨 4",
		engine_4 = "엔진 EMS 레벨 5",

		no_nearby_vehicle = "주변에 차량이 없습니다.",
		already_checking_upgrades = "이미 차량 곡을 확인하고 있습니다.",
		engine_is_running = "차량 엔진이 작동 중입니다."
	},

	meth = {
		press_to_sell_meth = "~INPUT_CONTEXT~ 를 눌러 Meth 를 판매하십시오.",
		selling_meth = "Meth를 판매하는 중입니다."
	},

	miscellaneous = {
		language_unavailable = "언어 `${languageCode}`를 아직 사용할 수 없습니다. 이 언어에 대한 지역화를 만들려면 ${frameworkDiscord}!에서 자세한 내용을 보려면 OP-FW 개발 디스코드 길드에 참여하세요!",
		same_language = "${languageCode}이(가) 이미 설정 언어로 있습니다.",
		language_set = "기본 설정 언어가 ${languageCode}(으)로 설정되었습니다.",
		current_language = "현재 언어",
		available_language_codes = "사용 가능한 언어",
		ping_pong = "퐁!",
		ping_response = "${ping}ms(콜백 시간: ${callbackTime}ms)",
		ooc_first_time = "아직 /ooc를 사용하지 않았습니다! 사용을 허가하기 전에 작은 경고를 드리고자 합니다. /ooc 명령은 즉각적인 상황에서만 사용할 수 있으며, 모든 즉각적인 질문이나 메시지는 ${communityDiscord}에서 당사의 불화 길드로 리디렉션되어야 합니다. 그게 다예요 /ooc를 사용하려면 /ooc_on을 입력합니다. /ooc_off를 사용하여 다시 해제할 수 있습니다.",
		ooc_not_logged_in = "로그인되어 있지 않습니다.",
		ooc_timed_out = "현재 OOC 채팅에서 시간이 초과되었습니다. 잠시 기다려 주십시오.",
		ooc_muted_no_reason = "지정한 이유 없이 전역 OOC 채팅에서 음소거되었습니다.",
		ooc_muted = "`${reason}' 이유로 전역 OOC 채팅에서 음소거되었습니다.",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "로컬 OOC ${playerDescriptor}",
		ooc_is_disabled = "전역 OOC 채팅을 사용하지 않도록 설정했습니다.",
		ooc_enabled = "글로벌 OOC가 활성화되었습니다.",
		ooc_already_enabled = "글로벌 OOC가 이미 활성화되어 있습니다.",
		ooc_disabled = "글로벌 OOC가 비활성화되었습니다.",
		ooc_already_disabled = "글로벌 OOC는 이미 비활성화되어 있습니다.",
		ooc_local_logs_title = "로컬 OOC 메시지",
		ooc_local_logs_details = "${consoleName} 님이 로컬 OOC 채팅에서 다음 메시지를 보냈습니다. `${oocMessage}`.",
		ooc_global_logs_title = "글로벌 OOC 메시지",
		ooc_global_logs_details = "${consoleName} 님이 전역 OOC 채팅에서 다음 메시지를 보냈습니다. `${oocMessage}`",
		bad_ooc_message = "OOC 채팅에서 잘못된 메시지를 게시하려고 했습니다. `${oocMessage}`",
		bad_ped_message = "잘못된 ped 메시지를 만들려고 했습니다. `${pedMessage}`",
		mute_toggle_not_staff = "플레이어가 플레이어를 음소거하려고 했지만 올바른 권한이 없습니다.",
		unmute_toggle_not_staff = "플레이어가 플레이어의 음소거를 해제하려고 했지만 올바른 권한이 없습니다.",
		user_not_found = "서버 ID가 `${serverId}`인 사용자를 찾을 수 없습니다.",
		player_already_muted = "${consoleName}이(가) 이미 음소거되었습니다.",
		player_has_been_muted_no_reason = "${consoleName}이(가) 지정된 이유 없이 음소거되었습니다.",
		player_has_been_muted = "${consoleName} 님이 다음 이유로 음소거되었습니다. `${reason}`.",
		player_not_muted = "${consoleName}이(가) 음소거되지 않았습니다.",
		player_has_been_unmuted = "${consoleName} 님의 음소거가 해제되었습니다.",
		clear_chat_not_admin = "플레이어가 모든 플레이어에 대한 채팅을 지우려고 시도했지만 적절한 권한이 없습니다.",
		yes = "예",
		ooc_clear_chat_title = "채팅 지우기",
		ooc_clear_chat_details = "${consoleName} 님이 모든 사용자의 채팅을 지웠습니다.",
		muted_player = "음소거된 플레이어",
		muted_player_no_reason_details = "${consoleName} 님이 지정된 이유 없이 ${targetConsoleName} 님을 음소거했습니다.",
		muted_player_details = "${consoleName} 님이 ${targetConsoleName} 님을 음소거했습니다. 원인 `${muteReason}`.",
		player_muted = "플레이어 음소거됨",
		player_muted_no_reason_details = "${targetConsoleName}이(가) 지정된 이유 없이 ${consoleName}에 의해 음소거되었습니다.",
		player_muted_details = "${consoleName} 님이 ${targetConsoleName}을(를) 이유로 음소거했습니다. `${muteReason}`.",
		muted_self = "음소거된 자체",
		muted_self_no_reason_details = "${consoleName} 님이 지정된 이유 없이 음소거했습니다.",
		muted_self_details = "${consoleName} 님이 이유 `${muteReason}`(으)로 음소거했습니다..",
		unmuted_self = "음소거되지 않은 자체",
		unmuted_self_details = "${consoleName} 님의 음소거가 해제되었습니다.",
		unmuted_player = "음소거되지 않은 플레이어",
		unmuted_player_details = "${consoleName} 님이 ${targetConsoleName} 음소거를 해제했습니다.",
		player_unmuted = "음소거되지 않은 플레이어",
		player_unmuted_details = "${targetConsoleName}이(가) ${consoleName}에서 음소거를 해제했습니다.",
		ooc_cancelled_same_as_last = "두 개의 동일한 메시지를 연속으로 보내려고 했으므로 OOC 메시지가 취소되었습니다.",
		use_measurement_metric = "선호하는 측정 시스템을 측정 단위로 설정했습니다..",
		use_measurement_imperial = "선호하는 측정 시스템을 임페리얼로 설정했습니다.",
		use_measurement_default = "이제 로케일의 기본 측정 시스템을 사용합니다.",
		already_using_metric_measurement = "기본 설정 측정 시스템으로 측정 단위 세트가 이미 있습니다.",
		already_using_imperial_measurement = "기본 설정 측정 시스템으로 임페리얼 세트가 이미 있습니다.",
		already_using_default_measurement = "이미 로캘의 기본 측정 시스템을 사용하고 있습니다.",
		no_copyright = "저작권 없음",
		no_copyright_warning = "안녕하세요! DMCA 및 저작권 관련 문제가 있는 스트리머 또는 컨텐츠 제작자입니까? 그렇다면, 특정 저작권 보호 자료가 게임에 표시되고 플레이되지 않도록 `${noCopyrightCommand}` 명령을 토글하는 것이 좋습니다. 이 기능은 전환되는 즉시 작동합니다.",
		no_copyright_enabled = "'저작권 없음' 기능이 활성화되었습니다.",
		no_copyright_disabled = "'저작권 없음' 기능을 사용할 수 없습니다.",
		server_tps = "서버 TPS",
		server_tps_response = "${tps}"
	},

	nos = {
		press_to_install_nitro_tank = "~INPUT_CONTEXT~ 키를 눌러 니트로 탱크를 설치합니다.",
		installing_nitro_tank = "니트로 탱크 설치",
		press_to_remove_nitro_tank = "~INPUT_CONTEXT~ 키를 눌러 니트로 탱크를 제거합니다.",
		removing_nitro_tank = "니트로 탱크 제거"
	},

	notepads = {
		placeholder = "메모 만들기...",
		press_to_open = "~INPUT_CONTEXT~ 키를 눌러 이 메모장을 엽니다.",
		notepad_busy = "다른 사람이 이 메모지에 있습니다.",
		dropped_notepad_title = "메모장 삭제됨",
		dropped_notepad_text_and_pixels_title_details = "${consoleName} 님이 드로잉과 텍스트가 '${text}'인 메모장을 삭제했습니다.",
		dropped_notepad_text_title_details = "${consoleName} 님이 텍스트가 '${text}'인 메모장을 삭제했습니다..",
		dropped_notepad_pixels_title_details = "${consoleName} 드로잉이 있는 메모장을 삭제했습니다..",
		dropped_notepad_pixels_penis_title_details = "${consoleName}에서 음경처럼 보이는 드로잉이 있는 메모장을 삭제했습니다.",
		updated_notepad_title = "메모장 업데이트",
		updated_notepad_text_and_pixels_title_details = "${consoleName} 님이 드로잉 및 텍스트 '${text}'(으)로 메모장을 업데이트했습니다..",
		updated_notepad_text_title_details = "${consoleName} 님이 텍스트 '${text}'(으)로 메모장을 업데이트했습니다..",
		updated_notepad_pixels_title_details = "${consoleName} 드로잉으로 메모장을 업데이트했습니다..",
		updated_notepad_pixels_penis_title_details = "${consoleName} 님이 메모장과 비슷한 드로잉으로 메모장을 업데이트했습니다.",
		picked_up_notepad_title = "${consoleName} 텍스트가 '${text}'인 메모장을 가져왔습니다.",
		picked_up_notepad_text_title_details = "메모장 받음"
	},

	notices = {
		message_too_long = "메시지에 문자 또는 줄이 너무 많습니다.",
		invalid_notice_id = "잘못된 알림 ID입니다.",
		successfully_removed_notice = "알림을 제거했습니다.",
		failed_remove_notice = "알림을 제거하지 못했습니다..",

		add_notice_missing_permissions = "플레이어가 적절한 권한 없이 알림을 추가하려고 했습니다.",
		remove_notice_missing_permissions = "플레이어가 적절한 권한 없이 알림을 제거하려고 했습니다."
	},

	objects = {
		saved_found_objects = "`${foundObjectsAmount}` 모델이 `${modelName}`인 발견 개체를 서버의 파일에 저장했습니다.",
		no_nearby_objects_with_model_found = "모델 '${modelName}'을(를) 가진 근처 개체가 없습니다.",
		invalid_model_name = "'${modelName}' 모델은 올바른 모델이 아닙니다.",
		missing_model_name = "모델 이름이 없습니다."
	},

	orbitcam = {
		enabled_orbitcam = "orbitcam을 사용하도록 설정했습니다.",
		disabled_orbitcam = "orbitcam을 사용하지 않도록 설정했습니다",
		orbitcam_failed = "orbitcam을 사용하도록 설정하지 못했습니다. 클립이나 비슷한 기능이 활성화되어 있습니까?",

		orbitcam_logs_title = "토글된 Orbitcam",
		orbitcam_on_logs_details = "${consoleName}이(가) orbitcam을 전환했습니다.",
		orbitcam_off_logs_details = "${consoleName}이(가) orbitcam을 껐습니다.",

		orbitcam_no_permission = "필요한 사용 권한 없이 해당 웹캠을 토글하려고 했습니다."
	},

	overview = {
		header_title = "OP 프레임워크 - 개요 UI",
		select_information = "정보",
		select_activity_points = "활동 포인트",
		select_staff_points = "직원 포인트",
		select_moderation = "절도",
		select_handling_overrides = "재정의 처리",
		select_settings = "설정",
		about_title = "개요 UI 정보",

		-- eh idk if putting entire chunks of html code is the way to go but for now it is xd
		about_text = [[
			이 인터페이스는 OOC 상호 작용 메뉴, 정보 센터 및 플레이어용 데이터 뷰어로 사용됩니다.
			<br><br>
			지금으로서는 유일하게 "직업 우선 순위" 상태를 보는 것이었죠.
			<br><br>
			앞으로 다음과 같은 기능이 더 많이 구현될 것으로 예상됩니다.
			<ul class="list">
				<li>이러한 작업을 제어하는 사람들이 볼 수 있도록 화이트드된 작업을 보다 심층적으로 보고 관리합니다</li>
				<li>복잡한 플레이어 통계.</li>
				<li>성취 시스템.</li>
				<li>직원들을 위한 더 나은 보고서 시스템.</li>
				<li>서버를 보다 쉽게 처리하고 제어하는 데 사용할 수 있는 추가 기능.</li>
				<li>...그리고 더 나아가, 자유롭게 제안을 하세요!</li>
			</ul>
			<br>
			미래로!
		]],

		about_activity_points_title = "활동 포인트 정보",

		about_activity_points_text = [[
			여러분은 이러한 포인트를 제공하는 직종에 근무 중이어서 활동포인트를 얻을 수 있습니다. 현재, 오직 의료/EMS와 사법 집행/경찰 직업만이 이것을 제공한다.
			<br><br>
			매 분마다, 특정 양의 활동 포인트가 근무 중인 선수들 사이에 각 직장의 분배됩니다. 경찰 복무 중인 선수가 4명이라면 그 순간 선수 활동점의 25%를 차지할 수 있다는 얘기다. 분산 작업 포인트의 양은 서버의 현재 플레이어 양을 32로 나눈 다음 결정됩니다.
			<br><br>
			매 주 초에 모든 사용자에 대해 활동 포인트가 재설정됩니다. 일정량의 활동 포인트가 있는 경우 다음 주 내내 대기열에서 우선 순위가 부여됩니다.
				<br><br>
				현재 큐 우선 순위에 필요한 작업 지점:
				<ul class="list">
				<li>400: 낮은 작업 우선 순위</li>
				<li>700: 중간 작업 우선 순위.</li>
				<li>1000: 높은 작업 우선 순위.</li>
			</ul>
		]],

		activity_points_this_week = "이번 주",
		activity_points_last_week = "지난 주",
		activity_points_current = "활동 지점: <b>${activityPoints} + ${gainAmount}/minute</b>",
		activity_points_current_no_gain = "활동 지점: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>현재 작업 우선 순위가 낮으면 400점, <b>${remainingPoints} 시작 </b>!",
		activity_points_goal_medium = "<br><br>현재 작업 목표는 중간 작업 우선 순위에 대해 700포인트, <b>${remainingPoints} 시작 </b>!",
		activity_points_goal_high = "<br><br>현재 작업 목표는 높은 작업 우선 순위에 대해 1000점을 초과하며 <b>${remainingPoints} 시작 </b>!",
		activity_points_goal_none = "<br><br>현재 작업 목표가 없습니다.",
		activity_points_not_enough = "지난 주에 큐 우선 순위를 지정할 수 있는 활동 포인트가 충분하지 않았습니다.",
		activity_points_last_week_low = "인상적이게도, 지난 주에 작업 우선 순위가 낮을 때까지 대기열에서 충분한 작업 점수를 받았습니다!",
		activity_points_last_week_medium = "지난 주에 큐에 있는 중간 작업 우선 순위 자격을 인정하기에 충분한 활동 포인트가 있습니다!",
		activity_points_last_week_high = "지난 주에 작업 우선 순위가 높은 작업을 수행하기에 충분한 활동 점수를 받았습니다.",

		about_staff_points_title = "직원 포인트 정보",

		about_staff_points_text = [[
			Job에 대한 활동 포인트와 마찬가지로, 서버에 있을 때 직원 가용성이 켜져 있을 때 직원 포인트를 얻을 수 있습니다.
			<br><br>
			매 분마다, 일정한 양의 직원이 활동중인 모든 직원에게 분배된다. 4명이 활동하면 1인당 25%의 점수를 받는다. 분산되는 직원의 점수는 서버의 현재 플레이어 용량을 32로 나눈 뒤 결정합니다.
			<br><br>
			직원들은 매 주 초에 모든 사람들을 위해 리셋 포인트를 제공한다. 가장 최근 8주를 아래 표에 표시할 수 있습니다.
		]],

		staff_points_this_week = "이번 주",
		staff_points_current = "직원 포인트: <b>${staffPoints} + ${게인금액}/분</b>",
		staff_points_current_no_gain = "직원 포인트: <b>${staffPoints}</b>",
		staff_points_table = "직원 포인트 테이블",
		this_week = "이번 주",
		one_week_ago = "1주 전",
		two_weeks_ago = "2주 전",
		three_weeks_ago = "3주 전",
		four_weeks_ago = "4주 전",
		five_weeks_ago = "5주 전",
		six_weeks_ago = "6주 전",
		seven_weeks_ago = "7주 전",
		eight_weeks_ago = "8주 전",
		previous_weeks_average = "이전 주 평균",

		about_detection_areas_title = "검색 영역",
		about_detection_areas_text = "감지 영역은 원치 않는 차량 산란 및/또는 소아과에서 부정행위를 적발하는 직원을 위해 유용한 도구가 될 수 있다. 검색 영역을 만들려면 '/detection_area_add'를 사용합니다. 영역을 만든 후에는 여기에 표시됩니다. 각 영역에 최신 100개의 엔티티만 기록됩니다.",
		detection_area_title = "검색 영역 #${detectionAreaId}",

		about_sound_effects_title = "음향 효과",
		about_sound_effects_text = "이러한 필드를 사용하면 일부 사운드 효과를 무시할 수 있습니다. 제대로 작동하려면 .oog 파일에 대한 링크가 필요합니다. 또한 http://이 아닌 https:// URL이어야 합니다. 파일을 업로드하는 쉬운 방법은 불화에 업로드한 다음 링크를 복사해서 여기 필드에 삽입하는 것입니다.",
		radio_mic_click_on = "라디오 마이크 클릭(켜기)",
		radio_mic_click_off = "라디오 마이크 클릭(끄기)",
		sound_effect_placeholder = ".oog 파일에 대한 URL..",
		sound_effect_save = "저장",
		sound_effect_reset = "다시 설정",

		december_1 = "12월 1일",
		december_2 = "12월 2일",
		december_3 = "12월 3일",
		december_4 = "12월 4일",
		december_5 = "12월 5일",
		december_6 = "12월 6일",
		december_7 = "12월 7일",
		december_8 = "12월 8일",
		december_9 = "12월 9일",
		december_10 = "12월 10일",
		december_11 = "12월 11일",
		december_12 = "12월 12일",
		december_13 = "12월 13일",
		december_14 = "12월 14일",
		december_15 = "12월 15일",
		december_16 = "12월 16일",
		december_17 = "12월 17일",
		december_18 = "12월 18일",
		december_19 = "12월 19일",
		december_20 = "12월 20일",
		december_21 = "12월 21일",
		december_22 = "12월 22일",
		december_23 = "12월 23일",
		december_24 = "12월 24일",
		hatch_closed = "닫힘",
		hatch_open = "열기",
		hatch_claim = "청구",
		hatch_opened = "주장",
		hatch_waiting = "대기 중",

		about_advent_calendar_title = "강림절 달력 정보",

		-- NOTE: this is the most aids shit ever, please ignore the HTML stuff in here
		about_advent_calendar_text = [[
			The advent calendar is a holiday feature meant to bring some more joy to the players of ${communityName} throughout the month of December!
			<br><br>
			Every day, another hatch will become available, containing money, an item, a vehicle or something else. All hatches belonging to a previous date will be available. Once a hatch has been opened, you must claim it in order to receive it. Opening and collecting will become impossible after the 25th of December.
			<br><br>
			Next hatch unlocks in ${time}.
			<br><br>
			Opening a hatch on the day it was unlocked, gives you a bonus point. If you obtain enough bonus points, you will receive a special gift on the 24th of December. (The bonus gift must be claimed before the 26th.)
			<br><br>
			<div class="bonusPoints">
				<div>Bonus Points: ${bonusPoints}/22</div>
				<div>
					<button class="button" style="${buttonStyle}" id="claimBonusButton">${buttonText}</button>
				</div>
			</div>
		]],

		unlocks_in_days_hours_minutes_seconds = "${days}일, ${hours}시간, ${minutes}분 및 ${seconds}초",
		unlocks_in_hours_minutes_seconds = "${hours}시간, ${minutes}분 및 ${seconds}초",
		unlocks_in_minutes_seconds = "${minutes}분 및 ${seconds}초",
		unlocks_in_seconds = "${seconds} 초",
		unlocks_in_an_unknown_amount_of_time = "알 수 없는 시간",

		unopened_hatch = "열려 있지 않은 해치",
		won_money = "$${amount} 현금",
		won_vehicle = "차량(크리스마스 특별)",
		won_queue_priority = "1주일의 대기열 우선 순위!",

		about_handling_overrides_title = "재정의 처리",
		about_handling_overrides_text = "클래스를 동적으로 처리하기 위한 임시 처리 재정의를 만듭니다. 무시는 제거되거나 서버가 다시 시작될 때까지 지속됩니다. 오버라이드는 서버의 모든 플레이어에 대해 설정됩니다.",
		add_override = "재정의 추가",
		add = "추가",
		model_name = "모델 이름...",
		field_name = "필드...",
		value = "값...",
		current_overrides = "현재 재정의",

		about_explosion_events_title = "폭발 이벤트",
		about_explosion_events_about = "여기에 마지막 500개의 폭발 이벤트에 대한 정보가 기록됩니다. 이것은 직원들이 음식을 찾는 데 도움이 될 것이다.",
		about_unusual_explosions = "평상시에는 발생하지 않는 특이한 폭발 사건.",
		explosions_by_type_title = "유형별 폭발",
		players_causing_explosions_title = "폭발을 일으키는 플레이어",
		show_common_events_off = "일반적인 이벤트 표시: 꺼짐",
		show_common_events_on = "일반적인 이벤트 표시: 켜짐",

		illegal_weapons_title = "생성된 무기",
		illegal_weapons_about = "여기에 시스템에 의해 감지된 무기에서 생성된 마지막 500번의 발생이 기록됩니다. 누군가 무기에 스폰된 경우 모더가 다른 플레이어의 손에 무기를 스폰할 수 있으므로 다른 플레이어도 여기에 나타날 수 있으므로 모딩 중임을 의미하지는 않습니다.",
		illegal_weapons_by_type = "종류별 무기",
		players_with_spawned_weapons = "생성된 무기를 가진 플레이어",

		ped_models_title = "플레이어 페드 모델",
		ped_models_about = "여기에는 자유 모드 캐릭터 모델을 사용하지 않는 모든 플레이어가 나열됩니다. 이것은 단지 트롤이나 잠재적인 모더를 찾기 위해 여기에 있는 플레이어를 찾는 데 도움이 될 것입니다.",
		local_ped_models_title = "로컬 Ped 모델",
		animal_ped_models_title = "동물 Ped 모델",

		no_entries = "항목이 없습니다."
	},

	pawn_shops = {
		sell_items = "${itemLabel} 판매",
		press_to_sell_items = "[${InteractionKey}] ${itemLabel} 판매",
		sold_items = "${sellPrice}에 ${sellAmount}x ${itemLabel}을(를) 판매했습니다.",
		no_items_to_sell = "판매할 ${itemLabel}이(가) 없습니다.",
		illegal_pawn_shop_id = "존재하지 않는 전당포에 대한 값을 전달하려고 합니다.",
		used_pawn_shop_title = "중고 전당포",
		used_pawn_shop_details = "${consoleName} 님이 전당포를 이용해 ${sellAmount} `${itemLabel}` 상품을 판매하고 $${sellPrice} 상품을 받았습니다."
	},

	ped_messages = {
		attempt_succeeded = "${attemptMessage}을(를) 시도했지만 성공했습니다.",
		attempt_failed = "${attemptMessage}을(를) 시도했지만 실패했습니다.",
		dice_message = "주사위를 굴려 ${diceNumber}을(를) 얻었습니다.",
		roll_message = "${rolls}d${max} 설정으로 사용자 지정 주사위를 롤링하고 ${totalValue}을(를) 가져왔습니다.",
		card_message = "카드를 그려서 ${cardLabel} 카드를 받았습니다.",
		citizen_card_message = "시민 카드(${characterId})를 표시했습니다.",
		badge_message = "배지(${characterId}) 표시",
		ped_message_logs_title = "Ped 메시지",
		ped_message_logs_details = "${consoleName} 님이 다음 메시지와 함께 ped 메시지를 보냈습니다. `${pedMessage}`",
		attached_ped_message_logs_title = "첨부된 Ped 메시지",
		attached_ped_message_logs_details = "${consoleName} 님이 다음 메시지와 함께 ped 메시지를 첨부했습니다. `${pedMessage}`",
		hearts_1 = "하트 에이스",
		hearts_2 = "두 개의 하트",
		hearts_3 = "세 개의 하트",
		hearts_4 = "네 개의 하트",
		hearts_5 = "다섯 개의 하트",
		hearts_6 = "여섯 개의 하트",
		hearts_7 = "일곱 개의 하트",
		hearts_8 = "마음의 여덟",
		hearts_9 = "하트 아홉",
		hearts_10 = "하트 열 개",
		hearts_11 = "하트 잭",
		hearts_12 = "하트 퀸",
		hearts_13 = "하트 킹",
		diamonds_1 = "에이스 오브 다이아몬드",
		diamonds_2 = "다이아몬드 두 개",
		diamonds_3 = "다이아몬드 세 개",
		diamonds_4 = "네 개의 다이아몬드",
		diamonds_5 = "다섯 개의 다이아몬드",
		diamonds_6 = "다섯 개의 다이아몬드",
		diamonds_7 = "다이아몬드 일곱",
		diamonds_8 = "여덟 개의 다이아몬드",
		diamonds_9 = "다이아몬드 아홉",
		diamonds_10 = "열 개의 다이아몬드",
		diamonds_11 = "다이아몬드 잭",
		diamonds_12 = "다이아몬드의 여왕",
		diamonds_13 = "다이아몬드의 왕",
		spades_1 = "스페이드의 에이스",
		spades_2 = "두 개의 스페이드",
		spades_3 = "세 개의 스페이드",
		spades_4 = "네 개의 스페이드",
		spades_5 = "스페이드의 다섯",
		spades_6 = "다섯 개의 스페이드",
		spades_7 = "스페이드의 일곱",
		spades_8 = "스페이드 여덟",
		spades_9 = "스페이드 아홉",
		spades_10 = "열 개의 스페이드",
		spades_11 = "스페이드 잭",
		spades_12 = "스페이드 퀸",
		spades_13 = "스페이드 킹",
		clubs_1 = "에이스 오브 클럽",
		clubs_2 = "클럽 두 개",
		clubs_3 = "세 개의 클럽",
		clubs_4 = "네 개의 클럽",
		clubs_5 = "다섯 개의 클럽",
		clubs_6 = "여섯 개의 클럽",
		clubs_7 = "일곱 개의 클럽",
		clubs_8 = "여덟 개의 클럽",
		clubs_9 = "아홉 개의 클럽",
		clubs_10 = "열 개의 클럽",
		clubs_11 = "잭 오브 클럽",
		clubs_12 = "클럽의 여왕",
		clubs_13 = "클럽의 왕",
		chat_ped_messages_enabled = "이제 Ped 메시지가 채팅에 표시됩니다.",
		chat_ped_messages_disabled = "Ped 메시지는 더 이상 채팅에 표시되지 않습니다.",
		me_message_chat_title = "/me [${serverId}]",
		inspect_chat_title = "/inspect [${serverId}]",
		frisk_chat_title = "/frisk [${serverId}]",
		do_message_chat_title = "/do [${serverId}]",
		attempt_message_chat_title = "/attempt [${serverId}]",
		dice_message_chat_title = "/dice [${serverId}]",
		roll_message_chat_title = "/roll [${serverId}]",
		card_message_chat_title = "/card [${serverId}]",
		description_message_chat_title = "/description [${serverId}]",
		message_too_long = "메시지에 문자 또는 줄이 너무 많습니다!"
	},

	ped_objects = {
		illegal_ped_object = "ped 개체의 '허용' 목록에 없는 ped 개체를 추가하려고 합니다.",
		illegal_ped_weapon_object = "무기 목록에 없는 PED 무기 개체를 추가하려고 합니다."
	},

	ped_task = {
		network_id_invalid = "잘못된 네트워크 ID입니다.",
		ped_not_found = "네트워크 ID가 `${networkId}'인 PED를 찾을 수 없습니다.",
		tracked_ped = "추적된 Ped",
		tracked_ped_is = "Ped(${entity}):"
	},

	ped_spawn = {
		ped_missing_model = "모델 매개 변수가 없습니다.",
		ped_spawn_success = "ped를 성공적으로 생성되었습니다.",
		ped_failed_spawn = "ped를 생성하지 못했습니다.",
		invalid_weapon = "잘못된 무기입니다.",
		ped_remove_success = "생성된 ped를 성공적으로 제거했습니다.",
		ped_failed_remove = "생성된 ped를 제거하지 못했습니다.",
		ped_task_success = "생성된 ped에 '${task}' 작업을 성공적으로 할당했습니다.",
		ped_failed_task = "생성된 ped에 '${task}' 작업을 할당하지 못했습니다.",
		invalid_target = "잘못된 대상 서버 ID입니다.",
		missing_task = "작업 매개변수가 없습니다.",
		invalid_task = "잘못된 ped 작업 '${task}'.",
		target_required = "이 ped 작업에는 유효한 대상이 필요합니다.",
		ped_emote_success = "생성된 ped가 '${emote}' 이모티콘을 재생하도록 했습니다.",
		ped_failed_emote = "생성된 ped가 '${emote}' 이모트를 재생하도록 하지 못했습니다.",
		invalid_emote = "잘못된 이모티콘 '${emote}'.",
		missing_emote = "이모티콘 매개변수가 없습니다.",

		emote_list = "사용 가능한 ped 이모티콘: ${list}.",
		task_list = "사용 가능한 ped 작업: ${list}.",

		spawn_ped_missing_perms = "적절한 권한 없이 ped를 생성하려고 시도했습니다.",
		remove_peds_missing_perms = "적절한 권한 없이 생성된 ped를 제거하려고 했습니다.",
		ped_assign_task_missing_perms = "적절한 권한 없이 생성된 ped에 작업 할당을 시도했습니다."
	},

	ped_steal = {
		ped_steal_reset = "플레이어 ped가 재설정되었습니다.",
		ped_steal_success = "ped 스킨을 훔쳤습니다.",
		ped_steal_failed = "ped 스킨을 훔치지 못했습니다.",
		ped_not_found = "플레이어 ped를 찾을 수 없습니다.",
		invalid_server_id = "잘못된 서버 ID."
	},

	peds = {
		ped_robbing_injection = "과도한 ped-robbing! (이를 수행하기 위해 인젝터를 사용할 가능성이 가장 높은 서버 타임아웃을 우회했습니다.)",
		robbed_ped_logs_title = "강탈된 ped",
		robbed_ped_logs_details = "${consoleName}이(가) ped를 털고 $${payout}을(를) 받았습니다."
	},

	pepper_spray = {
		press_to_pepper_spray = "페퍼 스프레이를 사용하려면 ~INPUT_ATTACK~을 누르세요.",
		using_pepper_spray = "페퍼 스프레이 사용하기."
	},

	phone_numbers = {
		no_phone_number_set = "전화번호가 설정되지 않았습니다.",
		invalid_format = "설정된 전화번호의 형식이 잘못되었습니다.",
		invalid_length = "설정된 전화번호의 길이가 잘못되었습니다.",
		invalid_characters = "설정된 전화번호에 잘못된 문자가 포함되어 있습니다.",
		phone_number_changed_to = "전화번호가 `${phone Number}`(으)로 변경되었습니다..",
		phone_number_taken = "전화 번호 '${phoneNumber}'을(를) 사용했습니다.",
		database_error = "백 엔드 데이터베이스 오류가 발생했습니다.",
		no_packages = "여기에 대한 패키지가 없습니다.",
		api_error = "백엔드 API에서 오류를 반환했습니다.",
		api_not_available = "백엔드 API를 사용할 수 없습니다.",
		phone_number_is_available = "전화 번호 '${phoneNumber}'을(를) 사용할 수 있습니다.",
		phone_number_is_not_available = "전화 번호 '${phoneNumber}'을(를) 사용할 수 없습니다."
	},

	player_scales = {
		reset_player_scale_for = "${consoleName}에 대한 플레이어 비율을 다시 설정합니다.",
		set_player_scale_to_for = "${consoleName}의 플레이어 크기를 '${scale}'(으)로 설정합니다.",
		reset_player_scale = "플레이어 비율을 다시 설정합니다.",
		set_player_scale_to = "플레이어 크기를 '${scale}'(으)로 설정.",
		set_player_scale_no_permission = "플레이어가 플레이어 크기를 설정할 수 있는 권한이 없습니다.",
		player_is_already_set_to_scale = "${consoleName}이(가) 이미 '${scale}' 배율로 설정되어 있습니다.",
		you_are_already_set_to_scale = "'${scale}'의 배율을 이미 설정했습니다..",
		player_is_not_scaled = "${consoleName}의 배율이 조정되지 않았습니다.",
		you_are_not_scaled = "크기가 조절되지 않습니다."
	},

	players = {
		player_left = "[${serverId}] 플레이어가 나갔습니다."
	},

	pools = {
		pools_overflowing = "풀 넘침: ~r~${poolsOverlable}"
	},

	prop_hunt = {
		prop_hunt_blip = "프로프 헌트"
	},

	props = {
		illegal_prop_item_id = "플레이어가 잘못된 아이템 ID를 가진 소품 아이템을 사용하려고 했습니다.",
		spawn_prop_not_staff = "플레이어가 소품을 생성하려고 시도했지만 그렇게 하는 데 필요한 권한이 없습니다.",
		managing_props_help = "현재 소품을 관리하고 있습니다. 소품으로 걸어가서 ~INPUT_CONTEXT~를 눌러 주우십시오.",
		press_to_pick_up = "[${InteractionKey}] 픽업",
		pick_up = "픽업",
		picking_up = "픽업",
		press_to_destroy = "[${InteractionKey}] 제거",
		destroy = "제거",
		destroying = "제거",
		prop = "소품",
		model_parameter_missing = "'모델' 매개변수가 누락되었습니다.",
		model_parameter_invalid = "모델 `${model}`은(는) 잘못된 모델입니다.",
		model_parameter_is_not_an_object = "모델 `${model}`은(는) 개체가 아닙니다.",
		spawned_prop_non_networked = "모델 `${model}`로 네트워크에 연결되지 않은 소품을 생성했습니다.",
		spawned_prop_networked = "모델 `${model}`로 네트워크 소품을 생성했습니다.",
		failed_to_spawn_prop = "`${model}` 모델이 있는 소품을 생성하지 못했습니다.",
		not_able_to_spawn_in_vehicle = "소품을 생성할 때 차량에 있을 수 없습니다.",
		not_able_to_spawn_while_dead = "소품을 생성할 때 죽을 수 없습니다.",
		not_able_to_spawn_while_moving = "소품을 생성할 때 가만히 서 있어야 합니다.",
		stand_still_to_place_prop = "버팀목을 놓으려면 가만히 서 있어야 합니다."
	},

	radio = {
		frequency = "빈도",
		switch = "스위치",
		radio_turned_off = "라디오가 꺼졌습니다.",
		radio_removed = "라디오를 잃어버렸어요.",
		no_radio = "당신은 라디오가 없습니다.",
		unable_to_use_radio_while_cuffed = "수갑이 있는 동안에는 라디오를 사용할 수 없습니다.",
		unable_to_use_radio_while_down = "다운된 동안에는 라디오를 사용할 수 없습니다.",
		frequency_set_to = "빈도가 ${frequency}(으)로 설정되었습니다.",
		frequency_already_set_to = "빈도가 이미 ${frequency}로 설정되어 있습니다.",
		radio_volume_same = "라디오 볼륨이 이미 `${radioVolume}`로 설정되어 있습니다.",
		radio_volume_reset = "이제 라디오 볼륨이 다시 설정되었습니다.",
		radio_volume_set = "이제 라디오 볼륨이 `${radioVolume}`(으)로 설정되었습니다..",
		radio_volume_current = "현재 라디오 볼륨이 `${radioVolume}`(으)로 설정되어 있습니다..",
		radio_volume_current_default = "현재 라디오 볼륨이 기본값입니다.",
		radio_sound_effects_same = "라디오 사운드 효과의 볼륨이 이미 `${radioSoundEffects}`로 설정되어 있습니다.",
		radio_sound_effects_reset = "이제 라디오 사운드 효과의 볼륨이 다시 설정되었습니다.",
		radio_sound_effects_set = "이제 라디오 사운드 효과의 볼륨이 `${radioSoundEffects}`로 설정되었습니다.",
		radio_sound_effects_current = "라디오 사운드 효과의 볼륨은 현재 `${radioSoundEffects}`로 설정되어 있습니다.",
		radio_sound_effects_current_default = "라디오 사운드 효과의 볼륨이 현재 기본값입니다.",

		radio_debug_failed = "라디오 디버그를 전환하지 못했습니다.",
		radio_debug_off = "라디오 디버그를 끄도록 전환했습니다.",
		radio_debug_on = "라디오 디버그를 전환했습니다.",

		radio_debug_no_permissions = "적절한 권한 없이 라디오 디버그를 전환하려고 했습니다."
	},

	riot_mode = {
		riot_mode_enabled = "Riot 모드를 사용하도록 설정했습니다.",
		riot_mode_disabled = "Riot 모드를 비활성화했습니다. 이미 공격적인 패딩들은 그들이 죽을 때까지 싸움을 계속할 것입니다.",
		riot_mode_failed = "라이엇 모드를 전환하지 못했습니다.",
		riot_mode_missing_perms = "적절한 권한 없이 Riot 모드를 전환하려고 했습니다.",

		riot_mode_enabled_help = "Riot 모드가 활성화되었습니다.",
		riot_mode_disabled_help = "Riot 모드가 비활성화되었습니다..",

		add_riot_player_no_permissions = "적절한 허가 없이 선수 명단을 추가하려고 했습니다.",
		remove_riot_player_no_permissions = "적절한 허가 없이 선수 명단을 추가하려고 했습니다.",

		player_already_in_riot_list = "${consoleName}이(가) 이미 실행 목록에 있습니다.",
		player_not_in_riot_list = "${consoleName}이(가) 실행 목록에 없습니다.",
		added_riot_player = "실행 목록에 ${consoleName}을(를) 추가했습니다.",
		failed_to_add_riot_player = "실행 목록에 ${consoleName}을(를) 추가하지 못했습니다.",
		removed_riot_player = "실행 목록에서 ${consoleName}을(를) 제거했습니다.",
		failed_to_remove_riot_player = "실행 목록에서 ${consoleName}을(를) 제거하지 못했습니다."
	},

	screenshots = {
		screenshot_created = "스크린샷을 만들었습니다.",
		screenshot_failed = "지정된 사용자로부터 스크린샷을 가져오지 못했습니다.",
		user_not_found_with_server_id = "지정된 서버 ID를 가진 사용자를 찾을 수 없습니다.",
		invalid_lifespan_parameter = "수명 매개 변수가 잘못되었습니다.",
		invalid_server_id_parameter = "서버 ID 매개 변수가 잘못되었습니다.",
		missing_server_id_parameter = "서버 ID 매개 변수가 없습니다."
	},

	scuba = {
		sunken_ship = "침몰선",
		gather_item = "항목 수집(${distance}m)",

		collected_junk = "수집된 스팸 메일",
		collected_item = "${itemLabel}을(를) 수집했습니다.",

		collected_scuba_item_logs_title = "수집된 스쿠버 항목",
		collected_scuba_item_logs_details = "${consoleName}이(가) 스쿠버 항목을 수집하고 `${itemName}'을(를) 받았습니다."
	},

	scuba_gear = {
		equipping_scuba_tank = "스쿠버 탱크",
		equipping_scuba_mask = "스쿠버 마스크"
	},

	security_cameras = {
		illegal_security_camera = "불법 보안 카메라를 변조하려고 시도하는 중입니다.",
		saved_security_cameras_to_file = "`${amount}` 보안 카메라를 서버의 파일에 저장했습니다.",
		no_nearby_security_cameras = "근처에 보관할 수 있는 감시 카메라가 없습니다.",
		no_city_ping = "도시 카메라에 핑하는 데 실패했습니다.",
		offline = "오프라인",
		camera_list = "카메라 목록",
		camera = "카메라 ${cameraId}",
		mission_row_pd = "미션 행 PD",
		pillbox_hospital = "필박스 병원",
		jewelry_store = "록포드 힐스 주얼리 스토어",
		principal_bank = "주요 은행",
		bolingbroke_penitentiary = "볼링브룩 교도소",
		fort_zancudo = "잔쿠도 요새",
		del_perro_pier = "델 페로 피어",
		flywheels_garage = "플라이휠 차고",
		sandy_shores_pd = "샌디 쇼어 PD",
		sandy_shores_hospital = "샌디 쇼어 병원",
		davis_sheriffs_station = "데이비스 보안관 역",
		vespucci_pd = "베스푸치 경찰서",
		rockford_hills_pd = "베스푸치 경찰서",
		la_mesa_pd = "라 메사 PD",
		beaver_bush_ranger_station = "비버부시레인저 역",
		cinema = "영화",
		st_fiacre_hospital = "세인트 피커 병원",
		weazel_news = "위젤 뉴스",
		palomino_fib_facility = "팔로미노 FIB 시설",
		bank_1 = "레지온 스퀘어 뱅크",
		bank_2 = "록퍼드 힐스 은행",
		bank_3 = "알타 은행",
		bank_4 = "버튼 은행",
		bank_5 = "밴햄 캐년 은행",
		bank_6 = "그랜드 세노라 은행",
		bank_7 = "팔레토 베이 은행",
		grocery_store_1 = "데이비스 LTD 가솔린",
		grocery_store_2 = "딸기 24/7",
		grocery_store_3 = "무리에타 하이츠 롭스 리퀴즈",
		grocery_store_4 = "리틀서울주식회사 휘발유",
		grocery_store_5 = "베스푸치 캐널스 롭스 리퀴즈",
		grocery_store_6 = "모닝우드 롭스 리퀴즈",
		grocery_store_7 = "미러 파크",
		grocery_store_8 = "다운타운 빈우드 24/7",
		grocery_store_9 = "타타비암 산맥 24/7",
		grocery_store_10 = "밴햄 캐년 롭스 리퀴즈",
		grocery_store_11 = "Banham Canyon 24/7",
		grocery_store_12 = "리치먼 글렌",
		grocery_store_13 = "Chumash 24/7",
		grocery_store_14 = "하모니 24/7",
		grocery_store_15 = "그랜드 세노라 롭스 리퀴즈",
		grocery_store_16 = "그랜드 세노라 24/7",
		grocery_store_17 = "샌디 쇼어 리퀴즈 에이스",
		grocery_store_18 = "샌디 쇼어 24/7",
		grocery_store_19 = "그라페시드 LTD 가솔린",
		grocery_store_20 = "칠리아드 산 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "현재 차량을 운행하고 있지 않습니다.",
		not_a_self_driving_vehicle = "운행중인 차량은 자동 조종 기능을 지원하지 않습니다.",
		no_waypoint_set = "목적지를 표시할 경유지를 설정하십시오.",
		invalid_waypoint_set = "설정한 경유점은 자동으로 제어할 수 없습니다.",
		self_driving_engaged = "자동 조종 장치가 작동했다. ~INPUT_SPRINT~ 및 ~INPUT_DUCK~ 을 눌러 순항 속도를 제어합니다.",
		self_driving_disengaged = "자동 조종 장치가 분리되었습니다.",
		destination_too_close = "표시된 대상이 너무 가깝습니다.",
		self_driving_could_not_be_engaged = "자동 조종 장치를 사용할 수 없습니다."
	},

	shield = {
		no_weapon_equipped = "탄도 방어막을 갖추기 위해서는 반드시 무기를 갖추어야 한다.",
		no_shield = "당신은 당신의 재고에 탄도 방패가 없습니다."
	},

	shooting_ranges = {
		turn_on = "켜기($${cost})",
		turn_off = "끄기",
		toggle_through_targets = "대상 전환(${modelId})",
		increase_speed = "속도 증가(${speedLevel})",
		decrease_speed = "속도 줄이기(${speedLevel})",
		increase_rotation = "순환 증가(${rotationLevel})",
		decrease_rotation = "순환 감소(${rotationLevel})",
		clear_bullet_impacts = "Clear Bullet Impacts",
		illegal_shooting_spot_value = "촬영 지점에 대해 잘못된 값을 전달하려고 합니다.",
		illegal_shooting_spot_id = "존재하지 않는 촬영 지점에 대한 값을 전달하려고 합니다.",
		not_enough_cash = "현금이 부족합니다."
	},

	shrooms = {
		press_to_pick_up_shrooms = "~INPUT_CONTEXT~ 키를 눌러 Shrooms를 선택합니다.",
		picking_up_shrooms = "객실 픽업.",
		press_to_sell_shrooms = "버섯을 판매하려면 ~INPUT_CONTEXT~를 누르세요.",
		not_interested = "이 지역 사람들은 당신의 방에 관심이 없는 것 같아요.",
		selling_shrooms = "버섯 판매합니다.",
		shrooms_not_ripe = "이 방은 아직 덜 익은 것 같은데, 조금 더 앉게 해줄지도 몰라.",
		shroom_id = "shroom-${shroomId}"
	},

	skylift = {
		press_to_toggle_magnet = "~INPUT_CONTEXT~ 키를 눌러 자석을 토글합니다.",
		skylift_magnet_turned_off_logs_title = "스카이리프트 자석 끄기",
		skylift_magnet_turned_off_logs_details = "${consoleName}이(가) Skylift 자석을 껐습니다.",
		skylift_magnet_turned_on_logs_title = "스카이리프트 자석 켜기",
		skylift_magnet_turned_on_logs_details = "${consoleName} 님이 Skylift 자석을 켰습니다.",
		skylift_attached_vehicle_logs_title = "스카이리프트 부착차량",
		skylift_attached_vehicle_logs_details = "${consoleName} 님이 차량을 스카이리프트에 연결했습니다."
	},

	slow_motion = {
		slow_motion_enabled = "느린 동작 모드를 사용하도록 설정했습니다.",
		slow_motion_disabled = "슬로우 모션 모드를 비활성화했습니다.",
		slow_motion_failed = "느린 동작 모드를 전환하지 못했습니다.",
		slow_motion_missing_perms = "적절한 권한 없이 느린 동작 모드를 전환하려고 했습니다.",

		slow_motion_enabled_help = "슬로우 모션 모드가 설정되었습니다.",
		slow_motion_disabled_help = "느린 동작 모드를 사용할 수 없습니다."
	},

	snow = {
		hold_to_pick_up_snowballs = "~INPUT_CONTEXT~ 을 길게 눌러 스노우볼을 선택합니다."
	},

	sound_effects = {
		illegal_sound_effect = "다른 클라이언트에 외부 사운드 효과를 재생하도록 지시하려고 했습니다.",
		played_sound_effect_for_everyone_title = "모든 사용자에게 사운드 효과 재생",
		played_sound_effect_for_everyone_details = "${consoleName} 님이 모든 사람에게 사운드 효과를 재생했습니다. 사운드 효과는 URL `${url}'을(를) 가지며 볼륨 수준 `${volume}'에서 재생되도록 설정되었습니다..",
		played_sound_effect_for_player_title = "플레이어의 사운드 효과 재생",
		played_sound_effect_for_player_details = "${consoleName} 님이 ${targetConsoleName}에 대한 사운드 효과를 재생했습니다. 사운드 효과는 URL `${url}'을(를) 가지며 볼륨 수준 `${volume}'에서 재생되도록 설정되었습니다..",
		played_sound_effect_at_player_title = "플레이어 위치에서 사운드 효과 재생",
		played_sound_effect_at_player_details = "${consoleName} 님이 ${targetConsoleName} 님의 위치에서 사운드 효과를 재생했습니다. 사운드 효과는 URL `${url}'을(를) 가지며 볼륨 수준 `${volume}'에서 재생되도록 설정되었습니다.",
		url_invalid = "제공된 URL이 잘못되었습니다. 보안 연결에서 업로드해야 합니다. (https://)",
		url_missing = "재생하려는 사운드에 URL을 추가하십시오.",
		invalid_server_id = "잘못된 서버 ID.",
		error_invalid_url = "제공된 URL이 잘못되었습니다. 보안 연결에서 업로드해야 합니다. (https://)",
		error_missing_url = "제공된 URL이 없습니다.",
		error_no_permissions = "이 사운드를 재생하는 데 필요한 권한이 없습니다.",
		error_user_not_found = "사용자 데이터를 찾을 수 없습니다.",
		error_not_found = "알 수 없는 오류가 발생했습니다.",
		played_sound_effect_at_player = "${consoleName} 위치에서 사운드 효과를 재생했습니다. 사운드 효과는 URL `${url}'을(를) 가지며 볼륨 수준 `${volume}'에서 재생되도록 설정되었습니다.",
		played_sound_effect_for_player = "${consoleName}에 대해 사운드 효과를 재생했습니다. 사운드 효과는 URL `${url}'을(를) 가지며 볼륨 수준 `${volume}'에서 재생되도록 설정되었습니다.",
		played_sound_effect_for_everyone = "모든 사람에게 효과음을 재생했습니다. 사운드 효과는 URL `${url}'을(를) 가지며 볼륨 수준 `${volume}'에서 재생되도록 설정되었습니다."
	},

	spawn = {
		spawn_now = "지금 산란",
		last_position = "마지막 위치"
	},

	spying = {
		microphone_bug_not_activated = "이 버그는 활성화되지 않았습니다.",
		vehicle_tracker_not_activated = "이 추적기는 활성화되지 않았습니다.",
		microphone_bug_active_with_battery = "이 마이크 버그는 현재 활성 상태입니다. 해당 배터리는 ${batteryPercentage}%입니다. \"Use\"를 사용하여 선택할 수 있는 모든 대화를 들을 수 있습니다.<br><br>장치 ID: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "이 마이크 버그는 배터리가 다 되었습니다. 물리적 마이크 버그는 1주일 후에 부패합니다.<br><br>장치 ID: ${deviceId}.",
		vehicle_tracker_active_with_battery = "이 차량 추적기는 현재 활성화되어 있습니다. 해당 배터리는 ${batteryPercentage}%입니다. 이 추적기가 연결된 차량을 사용할 수 있으면 지도에 표시됩니다.<br><br>장치 ID: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "이 차량 추적기는 배터리가 다 닳았습니다. 물리적 차량 추적기는 1주일 후에 손상됩니다.<br><br>장치 ID: ${deviceId}",
		scanning_for_devices = "장치 스캔",
		searching_for_devices = "장치 검색",
		no_nearby_vehicle = "가까운 차량은 없습니다.",
		placing_vehicle_tracker = "배치 차량 추적기",
		error_using_vehicle_tracker = "차량 추적기를 배치하는 동안 오류가 발생했습니다.",
		vehicle_tracker_placed = "차량 추적기가 성공적으로 설치되었습니다.",
		error_using_microphone_bug = "마이크 버그를 배치하는 동안 오류가 발생했습니다.",
		microphone_bug_placed = "마이크 버그가 성공적으로 배치되었습니다.",
		placing_microphone_bug_on_vehicle = "버그를 차량에 배치",
		placing_microphone_bug_on_player = "플레이어에 버그 지정",
		placing_microphone_bug_on_ground = "지상에 버그 배치",
		error_using_device_scanner = "장치 스캐너를 사용하는 동안 오류가 발생했습니다.",
		error_searching_for_devices = "장치를 검색하는 동안 오류가 발생했습니다..",
		found_devices = "${totalDevices} 장치를 찾았습니다.",
		no_nearby_devices_found = "주변 장치를 찾을 수 없습니다.",
		microphone_bug = "마이크 버그",
		microphone_bug_destroy = "마이크 버그\n[${InteractionKey}] 제거",
		vehicle_tracker = "차량 추적기",
		vehicle_tracker_destroy = "차량 추적기\n[${InteractionKey}] 제거",
		destroying_device = "장치 제거",
		tracker_will_appear_on_map = "이 추적기는 이미 활성화되었습니다. 차량이 사용 가능하고 추적기에 배터리가 있는 한 지도에 나타납니다.",
		spy_ui_info = "마이크 버그(#${deviceId})에서 수신 대기 중",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "마이크 버그를 종료하려면 ESC 키를 누르세요.",
		spy_ui_connecting = "마이크 버그 연결(#${deviceId})",
		spy_ui_connection_failed = "마이크 버그에 연결하지 못했습니다(#${deviceId}).",
		spy_ui_awaiting_data = "데이터 대기 중...",
		spy_ui_data_failed = "데이터 실패"
	},

	starter_car = {
		your_vehicle_is_nearby = "Gaein charyangeun geuncheoe juchadoeeo itseumnida.",
		would_you_like_directions = "Ganeun gireul allyeodeurilkkayo?",
		press_to_respond = "Surakaryeo-myeon ~INPUT_FRONTEND_ACCEPT~Reul Nureugo Geobuharyeo-myeon ~INPUT_FRONTEND_CANCEL~Eul Nureumnida.",
		follow_the_checkpoints = "Chekeupointeureul Ttaragaseyo",

		received_logs_title = "Badeun sidong jadongcha",
		received_logs_details = "${consoleName} nimi sijakdoen jadongchareul badassseupnida(model: ${modelName})."
	},

	status = {
		status_reset = "${consoleName} 상태를 다시 설정했습니다.",
		status_reset_failed = "서버 ID가 `${serverId}'인 사용자를 찾을 수 없습니다.",
		reset_status_not_staff = "필요한 권한 없이 플레이어 상태를 다시 설정하려고 했습니다.",
		status_reset_for_all = "모든 사람의 상태를 다시 설정했습니다.",
		status_disabled = "장애 상태(스트레스, 배고픔 및 갈증)",
		status_enabled = "활성화된 상태(스트레스, 배고픔 및 갈증)",
		failed_to_set_body_armor_level = "`/set_body_armor` 명령을 올바르게 실행하지 못했습니다..",
		set_body_armor_level_player = "${consoleName}의 방탄복 레벨을 `${bodyArmorLevel}`(으)로 설정했습니다.",
		set_body_armor_level_everyone = "모든 사람의 방탄복 레벨을 `${bodyArmorLevel}`(으)로 설정했습니다.",
		set_body_armor_level_self_title = "Body Armor 레벨 설정",
		set_body_armor_level_self_details = "${consoleName} 님이 자체 방탄복 레벨을 `${bodyArmorLevel}`(으)로 설정했습니다..",
		set_body_armor_level_everyone_title = "모두를 위한 방탄복 레벨 설정",
		set_body_armor_level_everyone_details = "${consoleName} 님이 모든 사용자의 방탄복 레벨을 `${bodyArmorLevel}`(으)로 설정했습니다.",
		set_body_armor_level_player_title = "Set Body Armor Level For Player",
		set_body_armor_level_player_details = "${consoleName} 님이 ${targetConsoleName} 님을 업데이트하고 방어구 수준을 `${bodyArmorLevel}`(으)로 설정했습니다.",
		set_body_armor_level_player_not_staff = "플레이어는 다른 플레이어의 방탄복 레벨을 설정하려고 시도했지만 필요한 권한이 없었습니다.",
		set_body_armor_level_self_not_staff = "플레이어는 그들 자신의 방탄복 레벨을 설정하려고 시도했지만 그들은 그렇게 하는 데 필요한 권한이 없었다.",
		stress_level_warning = "스트레스 받아! 담배, 관절, 요가 같은 활동을 함으로써 스트레스를 낮춥니다."
	},

	streamer_mode = {
		enabled_streamer_mode = "스트리머 모드를 활성화했습니다.",
		disabled_streamer_mode = "스트리머 모드를 사용하지 않도록 설정했습니다."
	},

	sync = {
		missing_hour = "시간은 제공되지 않습니다.",
		invalid_hour = "시간 `${hour}'이(가) 잘못되었습니다. 값은 0에서 23 사이여야 합니다.",
		hour_changed = "시간이 `${hour}`(으)로 설정되었습니다.",
		set_hour_not_staff = "필요한 권한 없이 시간을 설정하려고 했습니다.",

		local_override_enabled = "현지 시간 재정의 사용(시간: ${hour}).",
		local_override_disabled = "로컬 시간 재정의를 사용하지 않도록 설정했습니다.",

		missing_minute = "시간(분)이 제공되지 않았습니다.",
		invalid_minute = "분 `${minute}'이(가) 잘못되었습니다. 값은 0에서 59 사이여야 합니다.",
		minute_changed = "시간이 `${minute}`(으)로 설정되었습니다.",
		set_minute_not_staff = "필요한 권한 없이 분을 설정하려고 했습니다.",

		missing_weather = "날씨도 없습니다",
		invalid_weather = "날씨 `${weatherName}'이(가) 잘못되었습니다. 날씨 이름은 맑음, 화창한 날씨, 구름, 흐린 날씨, 비, 맑은 날씨, 천둥, 스모그, 안개, 크리스마스, 눈빛 그리고 눈보라 입니다.",
		weather_changed = "날씨는 이제 `${weatherName}`(으)로 설정되었습니다.",
		weather_advanced = "날씨가 `${weatherName}`(으)로 진행되었습니다.",
		weather_advance_fail = "날씨를 자연스럽게 앞당기지 못했다.",
		set_weather_not_staff = "필요한 권한 없이 날씨를 설정하려고 했습니다.",
		advance_weather_not_staff = "필요한 권한 없이 날씨를 향상시키려고 했습니다.",

		time_frozen = "지금은 시간이 얼어붙었다.",
		time_unfrozen = "시간은 더 이상 얼지 않습니다.",
		freeze_time_not_staff = "필요한 권한 없이 시간을 고정하려고 했습니다.",

		weather_frozen = "날씨가 지금 얼어붙었어요",
		weather_unfrozen = "날씨가 더 이상 얼지 않다.",
		freeze_weather_not_staff = "필요한 권한 없이 날씨를 고정하려고 했습니다.",

		blackout_enabled = "그 도시에는 현재 정전이 되었다.",
		blackout_disabled = "그 도시는 더 이상 정전상태가 아니다.",
		blackout_not_staff = "필요한 권한 없이 일시 중단을 전환하려고 했습니다.",

		weather_changed_title = "날씨가 변했다",
		weather_changed_details = "${consoleName} 님이 날씨를 `${weatherName}'(으)로 변경했습니다..",

		weather_changed_success = "기상 상태를 `${weatherName}'(으)로 변경했습니다..",
		weather_change_failed = "날씨를 변경하지 못했습니다.",
		weather_parameter_invalid = "날씨 이름 매개 변수가 잘못되었습니다.",
		weather_parameter_missing = "weatherName 매개 변수가 없습니다.",

		time_parameters_invalid = "시간 또는 분 매개 변수가 잘못되었습니다.",
		time_currently_transitioning = "현재 전환 중입니다. 잠시 기다려 주십시오.",
		time_successfully_transitioned = "시간을 `${hour}:${minute}`(으)로 전환했습니다.",
		time_successfully_set = "시간을 `${hour}:${minute}`(으)로 설정했습니다."
	},

	tattoos = {
		tattoos_refreshed = "문신을 새로 고쳤습니다.",
		something_went_wrong = "문제가 발생했습니다.",
		user_does_not_have_sent_character_loaded = "사용자에게 보낸 문자가 로드되지 않았습니다.",
		user_has_no_character_loaded = "사용자에게 로드된 문자가 없습니다.",
		user_not_found = "보낸 사용자를 서버에서 찾을 수 없습니다.",
		invalid_character_id = "잘못된 문자 ID 매개 변수를 보냈습니다.",
		invalid_steam_identifier = "잘못된 스팀 식별자 매개 변수를 보냈습니다."
	},

	teleporters = {
		enter_mechanic_shop = "정비소에 들어가기",
		enter_mechanic_shop_interact = "[${InteractionKey}] 정비소 입력",

		exit_mechanic_shop = "기계 공장 출입구",
		exit_mechanic_shop_interact = "[${InteractionKey}] 정비소 나가기",

		enter_coroner = "검시관 입력",
		enter_coroner_interact = "[${InteractionKey}] 검사자 입력",

		exit_coroner = "검시관 종료",
		exit_coroner_interact = "[${InteractionKey}] 검사기 종료",

		enter_fib = "FIB 입력",
		enter_fib_interact = "[${InteractionKey}] FIB 입력",

		exit_fib = "[${InteractionKey}] FIB 입력",
		exit_fib_interact = "[${InteractionKey}] FIB 종료",

		enter_iaa_base = "IAA 기준 입력",
		enter_iaa_base_interact = "[${InteractionKey}] IAA 베이스 입력",

		exit_iaa_base = "IAA 베이스 끝내기",
		exit_iaa_base_interact = "[${InteractionKey}] IAA 베이스 끝내기",

		enter_server_room = "서버실 입장",
		enter_server_room_interact = "[${InteractionKey}] 서버룸 입장",

		exit_server_room = "서버 룸 종료",
		exit_server_room_interact = "[${InteractionKey}] 서버 룸 종료",

		enter_warehouse_shop = "웨어하우스 입력",
		enter_warehouse_shop_interact = "[${InteractionKey}] 웨어하우스 입력",

		exit_warehouse_shop = "웨어하우스 종료",
		exit_warehouse_shop_interact = "[${InteractionKey}] 웨어하우스 종료",

		enter_office_shop = "사무실 입력",
		enter_office_shop_interact = "[${InteractionKey}] 사무실 입력",

		exit_office_shop = "출구 사무실",
		exit_office_shop_interact = "[${InteractionKey}] 사무실 나가기",

		enter_cocaine_lab = "코카인 연구소에 들어가",
		enter_cocaine_lab_interact = "[${InteractionKey}] 코카인 랩 입력",

		exit_cocaine_lab = "코카인 실험실 종료",
		exit_cocaine_lab_interact = "[${InteractionKey}] 코카인 랩 종료",

		enter_mayor_office = "시장 사무실에 들어가기",
		enter_mayor_office_interact = "[${InteractionKey}] 시장 사무실에 들어가기",

		exit_mayor_office = "시장 사무실 종료",
		exit_mayor_office_interact = "[${InteractionKey}] 시 사무실 끝내기",

		enter_exclusive_dealership = "단독 판매 대리점을 입력하십시오.",
		enter_exclusive_dealership_interact = "[${InteractionKey}] 단독 대리점을 입력하십시오.",

		exit_exclusive_dealership = "단독 판매 대리점을 종료합니다.",
		exit_exclusive_dealership_interact = "[${InteractionKey}] 단독 대리점을 종료합니다.",

		enter_casino = "카지노 진입",
		enter_casino_interact = "[${InteractionKey}] 카지노에 들어가기",

		exit_casino = "카지노 끝내기",
		exit_casino_interact = "[${InteractionKey}] 카지노를 종료합니다.",

		enter_roof = "지붕 들어가기",
		enter_roof_interact = "[${InteractionKey}] 지붕 시작",

		exit_roof = "지붕 끝내기",
		exit_roof_interact = "[${InteractionKey}] 지붕 끝내기",

		enter_penthouse = "펜트하우스 입력",
		enter_penthouse_interact = "[${InteractionKey}] 펜트하우스 입력",

		exit_penthouse = "펜트하우스 끝내기",
		exit_penthouse_interact = "[${InteractionKey}] 펜트하우스 끝내기",

		enter_parking_garage = "주차 차고로 들어가기",
		enter_parking_garage_interact = "[${InteractionKey}] 주차장 시작",

		exit_parking_garage = "주차장 종료",
		exit_parking_garage_interact = "[${InteractionKey}] 주차장 종료",

		enter_surgery = "수술 입력",
		enter_surgery_interact = "[${InteractionKey}] 수술 입력",

		exit_surgery = "수술 끝내기",
		exit_surgery_interact = "[${InteractionKey}] 수술 끝내기",

		enter_icu = "ICU 입력",
		enter_icu_interact = "[${InteractionKey}] ICU 입력",

		exit_icu = "ICU 끝내기",
		exit_icu_interact = "[${InteractionKey}] ICU 끝내기",

		enter_second_floor = "2층 입력",
		enter_second_floor = "[${InteractionKey}] 2층 입력",

		exit_second_floor = "2층 끝내기",
		exit_second_floor_interact = "[${InteractionKey}] 2층 끝내기"
	},

	test_server = {
		fully_upgraded = "자동차를 업그레이드했습니다."
	},

	top_down = {
		not_in_valid_vehicle = "올바른 차량(자동차/자전거만)이 아닙니다.",
		top_down_on = "하향식 보기가 활성화되었습니다.",
		top_down_off = "하향식 보기가 비활성화되었습니다."
	},

	trackers = {
		error_finding_tracker = "추적기를 찾는 동안 오류가 발생했습니다.",
		tracker_visible = "이제 추적기가 표시됩니다.",
		tracker_hidden = "추적기가 숨겨져 있습니다.",
		tracker = "트래커",
		trackers = "트래커",
		stockade_robbery_tracker = "주식형 트럭(10-78)",
		tracked_vehicle = "추적된 차량(${trackerId})",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "추적기가 지도의 해당 범주 내에 저장됩니다.",
		trackers_split = "추적기는 이제 개별 입술로 분할됩니다.",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_doc = "DOC",
		department_park_rangers = "레인저",
		department_medical = "EMS",
		department_doctor = "의사",
		department_bcfd = "BCFD"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] 액세스 저장소",

		buy_pack = "${packName} 구입",
		store_title = "카드 스토어",

		successfully_bought_pack = "거래 카드 팩을 구입했습니다.",
		failed_buy_pack = "팩을 구입하지 못했습니다. 돈이 충분한가요?",

		just_showed_trading_cards = "방금 트레이딩 카드를 보여줬어요. 잠시 기다려 주십시오.",

		unpack_successfull = "이 팩을 열었습니다.",
		failed_unpack = "이 팩을 열지 못했습니다.",
		failed_unpack_no_cards = "이 팩을 열지 못했습니다. 사용 가능한 거래 카드가 없습니다.",

		edition = "버전",
		rarity = "희박",

		rarity_bronze = "청동",
		rarity_silver = "은색",
		rarity_gold = "골드",
		rarity_holo = "홀로",
		rarity_foil = "포일",
		rarity_relic = "유물",
		rarity_headache = "두통",
		rarity_missprint = "미스스프린트",
		rarity_ethereal = "이더리얼",
		rarity_promotional = "판촉",

		rarity_custom = "사용자 지정",

		press_to_access_buyback = "~INPUT_CONTEXT~ 키를 눌러 카드 구매에 액세스합니다.",
		buyback_title = "거래 카드 환매",
		close_menu = "메뉴 닫기",
		sell_cards = "모든 ${rarity} 카드 판매",

		failed_selling = "카드를 판매하지 못했습니다.",
		no_cards_of_type = "${rarity} 카드가 없습니다.",
		successfully_sold_cards = "${earned}에 ${amount} ${rarity} 카드를 판매했습니다.",

		studio_blip = "945 스튜디오"
	},

	training = {
		on_team_attackers = "공격자입니다!\n남은 시간: ${time}",
		on_team_defenders = "귀하는 방어자입니다!\n남은 시간: ${time}",
		attackers = "공격자:",
		defenders = "수비수:",
		waiting_for_players = "더 많은 플레이어를 기다리고 있습니다.\n각 팀에 플레이어가 한 명 이상 있어야 합니다.",
		none = "N/A",
		waiting_for_training_area_data = "교육 영역 데이터를 기다리는 중입니다.",
		match_starting_in = "${seconds}초 후에 일치가 시작됩니다.",
		loading_match = "플레이어가 로드되기를 기다리는 중입니다. ${seconds}초 후에 일치가 시작됩니다.",
		attackers_help_text = "승리를 위해 냉각이 끝나기 전에 모든 수비수를 죽입니다!",
		defenders_help_text = "모든 공격수들을 죽이거나 또는 승리를 얻기 위해 냉각이 끝날 때까지 기다리십시오!",
		attacker = "공격자",
		defender = "방어자",
		attackers_won = "공격자들이 이겼어요!",
		defenders_won = "수비수들이 이겼습니다!",
		training_blip = "교육"
	},

	traps = {
		rearming = "재배치",
		press_to_rearm = "[${InteractionKey}] 다시 걸기",
		rearm = "재조정",
		e = "E"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "바다 크기 조정 강도가 이미 `${intensity}`로 설정되어 있습니다.",
		no_ocean_scaler_intensity_set = "바다 크기 조정 강도가 이미 설정되어 있지 않습니다.",
		set_ocean_scaler_to = "바다 크기 조정 강도를 `${intensity}`로 설정합니다.",
		reset_ocean_scaler = "바다 크기 조정 강도를 다시 설정합니다.",
		set_ocean_scaler_no_permission = "플레이어에게 해양 스케일러를 설정하는 데 필요한 권한이 없습니다."
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] $${price}에 ${label} 구입",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} | $${price}",
		purchase_label_sale = "[${SeatEjectKey}] $${price}에 ${label} 구입(-${discount}%)",
		purchase_label_sale_far = "판매 | ${label} | $${price} (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | $${price} (-${discount}%)",

		failed_vehicle_spawn = "차량을 생성하지 못했습니다.",
		not_enough_funds = "구입을 완료할 자금이 부족합니다.",
		area_not_clear = "산란 부위가 선명하지 않다.",
		something_went_wrong = "Something went wrong while attempting to purchase the vehicle.",

		purchased_vehicle = "$${price}에 ${label} 구매",

		tuner_shop_blip = "미드나잇 튜너",

		log_title = "Tunershop 구매",
		log_description = "$${price}에 대한 `${label}`을(를) 구입했습니다.",
		log_description_discount = "$${price}에 대해 ${discount}% 할인된 `${label}`을(를) 구입했습니다."
	},

	vape = {
		press_to_use = "~INPUT_CONTEXT~ 키를 눌러 히트를 수행합니다. ~INPUT_FRONTEND_CANCEL~ 키를 눌러 베이프를 제거합니다."
	},

	vending_machines = {
		vending_coffee = "~INPUT_CONTEXT~ 키를 눌러 커피를 구입합니다. 비용은 $${cost}입니다.",
		vending_coffee_not_enough_cash = "커피 한 잔 사기에는 현금이 부족합니다. 비용은 $${cost}입니다.",
		vending_snack = "스낵을 구입하려면 ~INPUT_CONTEXT~ 을 누르십시오. 비용은 $${cost}입니다.",
		vending_snack_not_enough_cash = "스낵을 살 현금이 부족합니다 비용은 $${cost}입니다.",
		vending_soda = "Soda를 구입하려면 ~INPUT_CONTEXT~ 키를 누르십시오. 비용은 $${cost}입니다.",
		vending_soda_not_enough_cash = "당신은 소다를 살 돈이 부족합니다. 비용은 $${cost}입니다.",
		vending_water = "물병을 구매하려면 ~INPUT_CONTEXT~ 키를 누릅니다. 비용은 $${cost}입니다.",
		vending_water_not_enough_cash = "물병을 살 만큼 현금이 충분하지 않습니다. 비용은 $${cost}입니다.",
		vending_machine_damaged = "이 자동판매기는 파손되었습니다 나중에 다시 확인하십시오.",
		vending_water_cooler = "~INPUT_CONTEXT~ 키를 눌러 물을 한 잔 받으십시오."
	},

	voice = {
		illegal_radio_frequency = "잘못된 라디오 주파수에 액세스하려고 합니다.",
		voice_chat = "음성 채팅",
		voice_server_connected = "음성 서버에 연결되었습니다. 관련 플레이어로 음성 데이터를 보내는 중입니다.",
		voice_server_disconnected = "음성 서버에서 연결이 끊어졌습니다. 연결을 기다리는 중입니다.",
		voice_muted = "음성 채팅이 음소거되었습니다.",
		voice_unmuted = "음성 채팅의 음소거가 해제되었습니다.",
		broadcasting_voice_to_players = "플레이어에게 브로드캐스트:",
		listening_to_virtual_players = "가상 플레이어 듣기:",
		radio = "라디오",
		phone = "핸드폰",
		muted_players = "음소거된 플레이어:",
		connected = "연결됨: ${connected}",
		muted = "음소거됨: ${muted}",
		boolean_true = "진실",
		boolean_false = "거짓",
		target_channel = "대상 채널: ${targetChannel}",
		actual_channel = "실제 채널: ${actualChannel}",
		target_radius = "목표 반경: ${targetRadius}",
		actual_radius = "실제 반경: ${actualRadius}"
	},

	washrooms = {
		use_sink = "[${InteractionKey}] 싱크 사용",
		using_sink = "싱크 사용"
	},

	wizard = {
		action_missing_permissions = "플레이어가 적절한 권한 없이 마법사 작업을 수행하도록 시도했습니다.",
		action_radius_missing_permissions = "특정 반경의 플레이어가 적절한 권한 없이 마법사 작업을 수행하도록 시도했습니다.",
		run_as_missing_permissions = "적절한 권한 없이 다른 플레이어로 명령을 실행하려고 했습니다.",

		invalid_radius = "잘못된 반경",
		invalid_server_id = "잘못된 서버 ID입니다.",

		ragdoll_failed = "래그돌 플레이어를 만들지 못했습니다.",
		ragdoll_success = "${consoleName} ragdoll을 만들었습니다.",

		punch_success = "${consoleName} 펀치를 완료했습니다.",
		punch_failed = "플레이어 펀치를 만들지 못했습니다.",

		explode_success = "성공적으로 $${콘솔 이름}을 폭발시켰습니다.",
		explode_failed = "플레이어를 폭발시키지 못했습니다.",

		ignite_success = "불에 성공적으로 $의 콘솔 이름.",
		ignite_failed = "라이너를 불태울 수 없었다.",

		punch_radius_failed = "요트 펀치 플레이어를 만들지 못했습니다.",
		punch_radius_success = "반경에 있는 플레이어를 성공적으로 만들었습니다.",

		ragdoll_radius_success = "${radius} 반경 래그돌에 플레이어를 만들었습니다.",
		ragdoll_radius_failed = "반경 래그돌에서 선수를 만들지 못했습니다.",

		missing_command = "명령이 없습니다.",
		run_as_success = "${consoleName}(으)로 명령을 실행했습니다.",
		run_as_failed = "${consoleName}(으)로 명령을 실행하지 못했습니다."
	},

	yoga = {
		yoga_blip = "요가",
		yoga_mat_use = "[${InteractionKey}] 요가 매트",
		yoga_mat = "요가 매트",
		press_to_stop_yoga = "~INPUT_CONTEXT~ 키를 눌러 요가를 중지합니다."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] 좀비 약칭",
		press_to_loot_zombie = "[${InteractionKey}] 약식 좀비",
		looting_zombie = "좀비 약탈",
		zombie_looting_injection = "과도한 좀비 약탈! 서버 시간 초과를 무시합니다. 대부분 인젝터를 사용하여 이 작업을 수행합니다."
	},

	-- global/*
	explosions = {
		invalid_explosion_type = "전개 유형 `${explosionType}`이(가) 잘못되었습니다.",
		invalid_camera_shake = "카메라 흔들림 `${cameraShake}`이(가) 잘못되었습니다.",
		invalid_damage_scale = "손상 배율 `${damageScale}`이(가) 잘못되었습니다.",
		created_explosion = "손상 비율 `${damageScale}` 및 카메라 흔들림 `${cameraShake}`으로 `${explosionTypeName}` 유형의 폭발을 만들었습니다.",
		create_explosion_not_developer = "플레이어가 폭발을 일으키려고 했지만 개발자는 아니었다."
	},

	functions = {
		day = "일",
		days = "일",
		hour = "시간",
		hours = "시간",
		minute = "분",
		minutes = "분",
		second = "초",
		seconds = "초",
		unknown = "알 수 없음",
		flipped_vehicle_logs_title = "플립드 차량",
		flipped_vehicle_logs_details = "${consoleName} 님이 차량을 뒤집었습니다."
	},

	states = {
		invalid_network_id = "잘못된 네트워크 ID입니다.",
		debug_states_failed = "이 엔터티 상태를 디버깅하지 못했습니다.",
		no_states = "이 엔터티에 설정된 상태가 없습니다.",
		printed_states = "${networkId} 엔터티의 인쇄 상태입니다.",

		get_entity_states_missing_permissions = "플레이어가 적절한 권한 없이 특정 엔터티 상태를 가져오려고 했습니다."
	},

	-- illegal/*
	corner = {
		corner_ped = "코너 페드 - ${cornerPedDistance}m(${cornerPedTimer})",
		corner_ped_title = "코너 페드",
		corner_ped_already_active = "이미 코너 페드가 기다리고 있습니다.",
		no_node_found = "PEDS에 대한 가까운 노드를 찾을 수 없습니다.",
		no_sell_area = "당신은 페드가 약물에 관심이 있는 지역에 있지 않습니다.",
		inside_areas_none = "내부 영역: 없음",
		inside_areas = "내부 영역: ${insideAreas}",
		not_able_to_sell = "지금은 팔 수 없습니다. 잠시 둘러본 후 다시 판매하십시오."
	},

	stockade = {
		dispatch = "[디스패치]",
		status_1a = "10-78, A Stockade가 긴급 버튼을 눌렀으며 ${streetName}에서 백업을 요청하고 있습니다.",
		status_1b = "10-78, A Stockade가 긴급 버튼을 눌렀으며 ${crossingRoad} 근처의 ${streetName}에서 백업을 요청하고 있습니다.",
		status_2a = "10-78 Stockade가 현재 ${streetName}에서 도어가 꽉 막혀 백업을 요청하고 있음을 경보 시스템에서 감지했습니다.",
		status_2b = "10-78일 경보 시스템에서 스토카드가 현재 ${crossingRoad} 근처에 있는 ${streetName}에서 문을 닫고 백업을 요청하고 있음을 감지했습니다.",
		status_3a = "10-78 Stockade의 문이 잘못 열려 ${streetName}에서 백업을 요청하고 있음을 경보 시스템에서 감지했습니다.",
		status_3b = "10-78. 경보 시스템에서 스토카드의 문이 잘못 열렸으며 ${crossingRoad} 근처의 ${streetName}에서 백업을 요청하고 있음을 감지했습니다.",
		grab_valuables = "[${InteractionKey}] 중요한 정보 수집(${valuesRemaining} 남음)",
		grabbing_valuables = "귀중품 수집",
		use_advanced_lockpick = "[${InteractionKey}] 고급 Lockpick 사용",
		lockpicking_stockade = "잠금 피킹 스토카데",

		stockade_reward_logs_title = "스토카데 보상",
		cash_pickup_logs_details = "${consoleName}님이 $${cashAmount}을(를) 현금으로 선택했습니다.",
		item_pickup_logs_details = "${consoleName} 님이 1x ${itemName} 님을 선택했습니다.",

		reward_diamonds = "당신은 다이아몬드를 잡았어요.",
		reward_gold_bar = "당신은 금괴를 잡았어요",
		reward_cash = "현금을 좀 챙겼네요"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "배달을 시작합니다.",
		press_to_start_delivery = "~g~${InteractionKey} ~w~를 눌러 배달을 시작합니다.",
		already_in_delivery = "이미 활성 배달이 있습니다.",
		not_bean_machine_employee = "배달을 시작하려면 Bean 기계 직원이어야 합니다.",
		finish_delivery = "배달을 마칩니다.",
		press_to_finish_delivery = "~g~${InteractionKey} ~w~를 눌러 배달을 완료합니다.",
		started_delivery = "${deliveryName}(으)로 배달을 시작했습니다. 위치가 지도에 표시되었습니다.",
		finished_delivery = "${deliveryName}(으)로 배달이 완료되었습니다. 팁으로 $${deliveryPrice} 및 $${distanceBonus}을(를) 받았습니다. 총 $${totalPrice}.",
		error_finishing_delivery = "배달을 완료하는 동안 오류가 발생했습니다.",
		finished_delivery_title = "완제품 배송",
		finished_delivery_details = "${consoleName} 님이 Bean Machine 배달을 마쳤으며 팁으로 $${deliveryPrice} 및 $${distanceBonus} 을(를) 받았습니다. 총 $${totalPrice}",
		delivery_blip = "Bean 기계 납품"
	},

	burger_shot = {
		start_delivery = "배달을 시작합니다.",
		press_to_start_delivery = "~g~${InteractionKey} ~w~를 눌러 배달을 시작합니다.",
		already_in_delivery = "이미 활성 배달이 있습니다.",
		not_burger_shot_employee = "배달을 시작하려면 버거샷 직원이어야 합니다.",
		finish_delivery = "배달을 마칩니다.",
		press_to_finish_delivery = "~g~${InteractionKey} ~w~를 눌러 배달을 완료합니다.",
		started_delivery = "${deliveryName}(으)로 배달을 시작했습니다. 위치가 지도에 표시되었습니다.",
		finished_delivery = "${deliveryName}(으)로 배달이 완료되었습니다. 팁으로 $${deliveryPrice} 및 $${distanceBonus}을(를) 받았습니다. 총 $${totalPrice}.",
		error_finishing_delivery = "배달을 완료하는 동안 오류가 발생했습니다.",
		finished_delivery_title = "버거 샷 배달 완료",
		finished_delivery_details = "${consoleName} 님이 버거 샷 배달을 마쳤으며 $${deliveryPrice} 및 $${distanceBonus} 팁을 받았습니다. 총 $${totalPrice}",
		delivery_blip = "버거 샷 배달"
	},

	duty = {
		toggle_duty_status_no_permissions = "플레이어가 적절한 권한 없이 명령을 통해 작업 상태를 전환하려고 했습니다.",

		duty_status_on = "정상적으로 근무했습니다.",
		duty_status_off = "근무가 성공적으로 종료되었습니다.",
		duty_status_failed = "작업 상태를 전환하지 못했습니다.",

		emergency_call = "긴급 전화가 왔습니다. Enter 키를 눌러 수신합니다.",

		toggled_operator_status_on = "운영자 상태를 설정/해제합니다.",
		toggled_operator_status_off = "운영자 상태를 해제했습니다."
	},

	job_center = {
		life_invader = "라이프 인베이더",
		ui_close_menu = "메뉴 닫기",
		press_to_browse_jobs = "~INPUT_CONTEXT~ 키를 눌러 작업을 찾습니다.",
		change_job = "작업 변경: ${jobName}",
		job_unemployed = "실업",
		job_transportation = "화물차",
		job_taxi = "택시 기사",
		job_journalist = "언론인",
		job_government = "폐기물 수거원",
		job_mechanic = "토우 드라이버",
		job_delivery = "배달 작업",
		changed_job_already_set_to_job = "작업이 이미 ${jobName}(으)로 설정되어 있습니다.",
		changed_job_success = "작업을 ${jobName}(으)로 설정했습니다.",
		changed_job_failure = "작업을 ${jobName}(으)로 설정하는 동안 오류가 발생했습니다.",
		changed_job_title = "변경된 작업",
		changed_job_details = "${consoleName} 님이 작업을 `${jobName}`(으)로 변경했습니다."
	},

	jobs = {
		job_refreshed = "작업을 새로 고쳤습니다.",
		something_went_wrong = "문제가 발생했습니다.",
		user_does_not_have_sent_character_loaded = "사용자에게 보낸 문자가 로드되지 않았습니다.",
		user_has_no_character_loaded = "사용자에게 로드된 문자가 없습니다.",
		user_not_found = "보낸 사용자를 서버에서 찾을 수 없습니다.",
		invalid_character_id = "잘못된 문자 ID 매개 변수를 보냈습니다.",
		invalid_steam_identifier = "잘못된 스팀 식별자 매개 변수를 보냈습니다."
	},

	police = {
		aim_assist_enabled = "당신의 목표는 이제 큰 능력으로 수여될 것입니다.",
		aim_assist_disabled = "당신은 이제 다시 한번 범죄자들/스컴배들보다 더 나쁜 것을 목표로 할 것입니다. 조준 지원을 즉시 다시 활성화하는 것이 좋습니다.",
		you_are_not_police = "이 기능은 범죄자/스컴백이 아닌 경찰용으로 예약되어 있습니다.",

		undercover_enabled = "당신은 지금 비밀리에.",
		undercover_disabled = "당신은 더 이상 비밀에 잠입하지 않습니다.",

		cad_title = "[CAD]",

		checking_vin = "VIN 확인",
		not_driver = "현재 차량을 운전하고 있지 않습니다..",
		failed_vin_get = "VIN을 가져오지 못했습니다.",
		vin_checked = "이 차량의 VIN 번호는 ${vin}입니다.",

		looking_up_vin = "VIN 조회",
		invalid_vin = "VIN 번호가 잘못되었거나 없습니다.",
		failed_vin_lookup = "VIN 번호를 조회하지 못했습니다.",
		vin_lookup_details = "VIN ${vin}이(가) `${fullName}`이(가) 소유한 플레이트 `${plate}`을(를) 가지고 다시 차량으로 돌아왔습니다."
	},

	state = {
		license_heli = "헬리콥터",
		license_fw = "고정 날개",
		license_cfi = "공인 비행 강사",
		license_hw = "고중량",
		license_hwh = "중량 헬리콥터",
		license_perf = "성능",
		license_management = "관리",
		license_military = "군대",
		gave_character_license = "${characterName} 라이선스 `${licenseLabel}`을(를) 부여했습니다.",
		character_already_has_license = "${characterName}에 이미 `${licenseLabel}` 라이센스가 있습니다.",
		removed_character_license = "${characterName}에서 `${licenseLabel}` 라이센스를 제거했습니다.",
		character_does_not_have_license = "${characterName}에 `${licenseLabel}` 라이센스가 없습니다.",
		license_not_found = "`${licenseName}' 라이센스를 찾을 수 없습니다.",
		user_not_found_with_character_id = "캐릭터  ID `${characterId}` 사용자를 찾을 수 없습니다.",
		no_license_added = "추가된 라이선스가 없습니다.",
		invalid_character_id = "추가된 캐릭터  ID가 잘못되었습니다.",
		no_character_id_added = "추가된 캐릭터  ID가 없습니다.",
		your_licenses_are = "라이센스는 다음과 같습니다. ${licenses}",
		player_licenses_are = "${characterName}에 다음 라이선스가 있습니다. ${licenses}",
		you_have_no_licenses = "라이선스가 없습니다.",
		player_has_no_licenses = "${characterName}에 라이선스가 없습니다.",
		failed_to_get_licenses = "라이선스를 받지 못했습니다."
	},

	tow = {
		press_to_access_spawner = "~INPUT_CONTEXT~ 키를 눌러 차량 스피커에 액세스합니다.",
		tow_vehicles = "견인 차량",
		vehicle_list = "차량 리스트",
		park_vehicle = "주차 차량",
		parked_vehicle = "주차된 차량입니다.",
		no_vehicle_to_park = "주차할 차량이 없습니다",
		close_menu = "메뉴 닫기",
		purchased_vehicle = "구입한 차량.",
		shop_on_timeout = "차량 매장이 시간 초과입니다. 다시 시도하십시오.",
		spawn_area_not_clear = "산란 부위가 선명하지 않다.",
		purchase_funds = "자금이 부족합니다.",
		return_button = "반품"
	},

	weazel_news = {
		press_to_access_spawner = "~INPUT_CONTEXT~ 키를 눌러 차량 스피커에 액세스합니다.",
		weazel_news = "위젤 뉴스",
		vehicle_list = "차량 리스트",
		close_menu = "메뉴 닫기",
		return_button = "반환",
		park_vehicle = "주차 차량",
		parked_vehicle = "주차된 차량입니다.",
		no_vehicle_to_park = "주차할 차량이 없습니다",
		spawned_vehicle = "생성된 차량.",
		spawner_on_timeout = "차량 스피커가 시간 초과입니다. 다시 시도하십시오.",
		spawn_area_not_clear = "산란 부위가 선명하지 않다."
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number2} 중 ${number1}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "`${plateText}` 플레이트가 있는 차량에 대해 ${locationLabel}에서 차량 알림이 트리거되었습니다.",
		vehicle_alert_blip = "차량 경고"
	},

	car_wash = {
		use_car_wash = "~INPUT_CONTEXT~ 키를 눌러 세차를 합니다. 비용은 $${cost}입니다.",
		stop_car_to_wash = "세차장을 이용하시려면 차량을 세워주세요",
		vehicle_already_clean = "이 차량은 세척하기에는 너무 깨끗합니다.",
		car_wash = "세차",
		air_unit_damaged = "이 에어유닛은 파손되었습니다",
		air_unit_not_enough_cash = "항공기를 이용하기에는 현금이 부족합니다",
		air_unit_exit_vehicle = "Air Unit를 사용하려면 차량에서 나갑니다.",
		air_unit_press_to_use = "$${cost}에 대해 공기 장치를 사용하려면 ~g~${SeatEjectKey} ~w~를 누르십시오.",
		air_unit_purchase_cleaning_kit = "클리닝 키트를 구입하려면 ~g~${InventoryKey} ~w~를 누르십시오.",
		cleaning_vehicle = "청소 차량",
		not_enough_money = "당신은 공군 부대를 이용할 충분한 돈이 없습니다.",
		vehicle_not_in_range = "차량은 청소하기 위해 먼 곳으로 이동했습니다."
	},

	damage = {
		vehicle = "차량 ID: ${entity}",
		general = "일반: ${value}",
		body = "본문: ${value}",
		engine = "엔진: ${value}",
		petrol_tank = "탱크: ${value}",
		temperature = "온도: ${value}",
		tracked_vehicle = "추적 차량",

		debug_vehicle_on = "차량 디버그를 설정/해제합니다.",
		debug_vehicle_off = "차량 디버그를 끄십시오."
	},

	fuel = {
		exit_to_fuel = "주유하기 위해 차량에서 나오세요.",
		press_to_fuel = "~g~${InteractionKey} ~w~를 눌러 차량을 주유합니다.",
		fuel_pump_text = "연료 비용: $${fuelCost}~n~급유를 중지하려면 ~g~E~w~를 누르십시오.",
		vehicle_text = "연료 수준: ${fuelLevel}%",
		tank_full = "탱크가 가득 찼습니다",
		vehicle_busy = "근처에 있는 차가 붐비네요",
		purchase_jerry_can = "~g~${InventoryKey} ~w~를 눌러 Jerry Can을 구매합니다.",
		gas_station = "주유소",
		petrolcan_fuel_text = "남은 휘발유 양: ${petrolAmount}%~n~연료를 공급하지 않으려면 ~g~E ~w~를 누르십시오.",
		player_busy = "다른 일로 바쁘시네요.",
		fuel_level_set_to = "연료 레벨이 `${fuelLevel}'(으)로 설정되었습니다.",
		not_in_a_vehicle = "당신은 차에 타고 있지 않습니다.",
		vehicle_engine_on = "엔진이 아직 작동하고 있습니다.",

		vehicle_exploded_logs_title = "차량 폭발",
		vehicle_exploded_logs_details = "${consoleName}이(가) 차량을 주유했으며 실행 중인 엔진으로 인해 폭발을 트리거했습니다."
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "속도: ${speed}km/h\n모델: ${model}\n플레이트: ${plate}",
		helicopter_camera_vehicle_info_imperial = "속도: ${speed} mp/h\n모델: ${model}\n플레이트: ${plate}"
	},

	garages = {
		garage_empty = "네 차고가 비어 있어!",
		impound_lot = "집수장",
		engine = "Engine",
		body = "Body",
		vehicle_in = "위치",
		vehicle_out = "밖으로",
		vehicle_at_impound = "고객님의 차량은 주차장에 있습니다",
		waypoint_to_impound = "당신의 GPS에 압수장까지의 통행로가 표시되어 있다.",
		unable_to_withdraw = "현재 ${location}에서 차량을 찾을 수 있으므로 차량을 인출할 수 없습니다.",
		waypoint_to_vehicle = "당신의 차량에 대한 경유지가 GPS에 표시되어 있습니다.",
		vehicle_currently_at = "현재 ${location}에서 차량을 찾을 수 있습니다.",
		vehicle_in_garage = "차량이 ${garageName}에 있습니다.",
		vehicle_withdrawn = "당신의 차량은 이미 출고되었습니다.",
		error_withdrawing = "차량을 회수하는 동안 오류가 발생했습니다.",
		withdraw_success = "차량을 성공적으로 회수했습니다.",
		vehicle_in_the_way = "산란지점을 막고 있는 차량이 있습니다",
		vehicle_is_out = "당신의 차량은 이미 출고되었습니다.",
		vehicle_stored = "차량이 보관되었습니다.",
		error_storing = "차량을 저장하지 못했습니다. 그 차량 당신 건가요?",
		vehicle_not_owned = "당신은 이 차량을 소유하지 않습니다!",
		no_nearby_vehicle = "근처 차량들은 발견되지 않았습니다.",
		no_vehicles_to_retrieve = "회수할 차량이 없습니다!",
		vehicle_retrieved = "차량을 성공적으로 검색했습니다.",
		error_retrieving = "차량을 검색하는 동안 오류가 발생했습니다.",
		not_enough_balance_to_retrieve = "이 차량을 검색할 수 있는 계정 중 하나에 잔액이 부족합니다.",
		press_to_access = "chagoe accessharyeomyeon ~INPUT_CONTEXT~reul nureuseyo.",
		ui_return = "반환",
		ui_vehicle_list = "차량 목록",
		ui_store_vehicle = "상점 차량",
		ui_retrieve_vehicle = "차량 검색",
		ui_close_menu = "메뉴 닫기",
		garage_letter = "차고 ${letter}",
		no_vehicles_impounded = "네 차량은 압수되지 않았어!",
		you_must_retrieve_this_vehicle = "이 차량에 접근하려면 차량을 회수해야 합니다.",
		garage = "차고",
		retrieved_vehicle_logs_title = "회수된 차량",
		retrieved_vehicle_logs_details = "${consoleName}이(가) `${plate}' 플레이트를 사용하여 ${price}에 대한 차량을 검색했습니다.",

		vehicle_weight = "무게: ${weight}",
		last_garage_letter = "마지막 - 차고 ${letter}",
		last_garage_impound = "마지막 - 임치물 로트",
		no_last_garage_letter = "마지막 차고 없음",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "차고 디버그를 켜도록 전환했습니다.",
		toggle_garage_debug_toggled_off = "차고 디버그를 끄고"
	},

	handlings = {
		set_handling_override_not_super_admin = "플레이어가 처리 재정의를 설정하려고 했지만 수퍼 관리자가 아닙니다.",
		remove_handling_override_not_super_admin = "플레이어가 처리 재정의를 제거하려고 했지만 수퍼 관리자가 아닙니다."
	},

	keys = {
		no_nearby_player = "가까운 플레이어를 찾을 수 없습니다.",
		no_nearby_vehicle = "가까운 차량을 찾을 수 없습니다.",
		no_keys_for_vehicle = "당신은 이 차량의 키를 가지고 있지 않습니다.",
		vehicle_locked = "차량 잠금",
		vehicle_unlocked = "차량 잠금 해제",
		h_to_hotwire = "[H] 핫와이어",
		received_keys = "플레이트 ${plate}이(가) 있는 차량용 키를 받았습니다.",
		you_are_not_in_a_vehicle = "당신은 차에 타고 있지 않습니다.",
		hotwired_vehicle_with_plate_number = "차량 번호 '${plateNumber}'인 핫라인 차량입니다.",
		unable_to_hotwire_vehicle = "차량을 견인할 수 없습니다."
	},

	modifications = {
		wheels_reset = "바퀴가 재조정 중입니다.",
		wheels_already_reset = "바퀴가 이미 기본 위치에 있습니다.",
		wheels_modified = "바퀴가 수정되었습니다.",
		wheels_none_specified = "바퀴가 지정되지 않았습니다.",
		wheels_none_valid_specified = "올바른 휠이 지정되지 않았습니다.",
		not_in_a_car = "당신은 차 안에 있지 않습니다.",
		invalid_value = "잘못된 값입니다."
	},

	plates = {
		plate_number_is_available = "플레이트 번호 `${plateNumber}'을(를) 사용할 수 있습니다.",
		plate_number_is_not_available = "플레이트 번호 `${plateNumber}'을(를) 사용할 수 없습니다.",
		missing_valid_plate_number = "올바른 '플레이트 번호' 매개 변수가 없습니다.",
		missing_valid_vehicle_id = "올바른 '차량 ID' 매개 변수가 없습니다.",
		database_error = "백 엔드 데이터베이스 오류가 발생했습니다.",
		no_custom_plate_package = "사용자 지정 플레이트 패키지가 없습니다. 자세한 내용은 웹 스토어를 참조하십시오!",
		api_error = "백 엔드 API에서 오류를 반환했습니다.",
		api_not_available = "백엔드 API를 사용할 수 없습니다.",
		vehicle_does_not_belong_to_player = "차량 ID `${vehicleId}'이(가) 사용자의 소유가 아닙니다.",
		vehicle_id_does_not_exist = "차량 ID `${vehicleId}'이(가) 없습니다.",
		you_have_no_character_loaded = "문자가 로드되지 않았습니다.",
		vehicle_plate_changed = "ID가 `${vehicleId}'인 차량 번호를 `${plateNumber}'(으)로 변경했습니다."
	},

	spawner = {
		press_to_access_spawner = "~INPUT_CONTEXT~ 를 눌러 차량 스페이너에 액세스합니다.",

		parked_vehicle = "차량을 주차했습니다.",

		spawner_burger_shot = "버거샷 배달 차량",
		spawner_bean_machine = "빈 기계 배달 차량",
		close_menu = "메뉴 닫기",
		vehicle_list = "차량 목록",
		park_vehicle = "공원 차량",
		return_button = "반환",

		failed_spawn = "차량을 산란하지 못했습니다.",
		failed_area = "영역이 명확하지 않습니다.",
		failed_job = "당신은 정확한 직업을 가지고 있지 않습니다.",
		failed_generic = "문제가 발생했습니다."
	},

	vehicles = {
		flip_flipping = "뒤집는 차량",
		flip_unable = "안에 사람이 있는 동안에는 차량을 뒤집을 수 없습니다.",
		vehicle_busy = "잠시 만요차가 통화중입니다",
		hold_to_eject = "꺼내기 대기",
		taking_keys = "키 가져오기",
		belt_on = "벨트 켜기",
		belt_off = "벨트 해제",
		mileage = "마일리지",
		vehicle_mileage_amount = "이 차량은 ${miles} 마일을 가집니다.",
		not_in_driver_seat = "주행거리를 확인하려면 운전석에 계셔야 합니다",
		vehicle_locked = "차가 잠겨 있습니다.",
		manual_gears_enabled = "이제 수동 기어링이 활성화됩니다.",
		manual_gears_disabled = "수동 기어링이 비활성화되었습니다.",
		manual_gear_set_to = "기어를 ${gearId}(으)로 설정합니다.",
		cruise_control_set_to_metric = "크루즈 조종사는 이제 속도를 ${speed}km/h로 제한합니다.",
		cruise_control_set_to_imperial = "크루즈 컨트롤 속도가 ${speed} mp/h로 제한됩니다.",
		cruise_control_reset = "크루즈 조종사는 이제 차량이 토글할 때의 속력으로 속도를 제한할 것이다.",
		cruise_control_on_metric = "크루즈 컨트롤이 ${speed}km/h로 설정됨.",
		cruise_control_on_imperial = "크루즈 컨트롤이 ${speed} mp/h로 설정되었습니다.",
		cruise_control_on_plane_metric = "크루즈 컨트롤 (Cruise control) 은 ${speed} km/h 및 ${altitude} 미터로 설정됩니다.",
		cruise_control_on_plane_imperial = "크루즈 컨트롤이 ${speed} mp/h 및 ${altitude} ft로 설정되었습니다.",
		you_are_cuffed = "수갑이 채워져 있네요",
		belt_is_on_and_vehicle_is_locked = "벨트가 켜져 있고 차량은 잠겨 있습니다.",
		belt_is_on = "벨트가 켜져 있네요",
		vehicle_is_locked = "차가 잠겨 있습니다.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "그 선수는 누군가의 차고에 차량을 추가하려고 시도했지만 그들은 슈퍼 관리자가 아니었다.",
		add_vehicle_added_vehicle_for_everyone = "모든 사람에 대해 모델 이름 `${modelName}'을(를) 가진 차량을 추가했습니다.",
		add_vehicle_added_vehicle_for_player = "${consoleName}에 대한 모델 이름 `${modelName}'을(를) 가진 차량을 추가했습니다.",
		add_vehicle_added_vehicle = "모델 이름이 `${modelName}'인 차량을 추가했습니다.",
		add_vehicle_character_not_loaded = "대상 플레이어에 로드된 문자가 없습니다.",
		add_vehicle_target_user_not_found = "대상 사용자를 찾을 수 없습니다.",
		add_vehicle_invalid_input = "잘못된 입력입니다.",
		add_vehicle_no_permissions = "사용 권한이 없습니다.",
		add_vehicle_user_not_found = "사용자를 찾을 수 없습니다.",
		add_vehicle_invalid_player = "서버 ID가 `${serverId}'인 플레이어가 없습니다.",
		add_vehicle_invalid_model_name = "모델 이름 `${modelName}'이(가) 올바른 모델이 아닙니다.",
		add_vehicle_no_model_name = "추가된 모델 이름이 없습니다.",

		added_vehicle_for_everyone_logs_title = "모든 사용자를 위한 차량 추가",
		added_vehicle_for_everyone_logs_details = "${consoleName} 님이 모든 사용자의 차고에 모델 이름 `${modelName}'을(를) 가진 차량을 추가했습니다.",
		added_vehicle_for_player_logs_title = "플레이어용 차량 추가",
		added_vehicle_for_player_logs_details = "${consoleName} 님이 모델 이름 `${modelName}` 인 차량을 ${targetConsoleName} 님의 차고에 추가했습니다.",
		added_vehicle_logs_title = "추가된 차량",
		added_vehicle_logs_details = "${consoleName} 님이 모델 이름 `${modelName}` 인 차량을 차고에 추가했습니다.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "플레이어는 차량에 차량 무기를 토글하려고 시도했지만 슈퍼 관리자가 아닙니다.",
		toggled_vehicle_weapons_on = "차량 무기를 켜놓고.",
		toggled_vehicle_weapons_off = "차량 무기 끄고.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "당신이 타고 있는 차량은 네트워크에 연결되어 있지 않습니다.",
		toggled_vehicle_weapons_not_in_a_vehicle = "당신은 차에 타고 있지 않습니다.",
		toggled_vehicle_weapons_target_user_not_found = "대상 사용자를 찾을 수 없습니다.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "대상 플레이어가 차량에 없습니다.",
		toggled_vehicle_weapons_for_player_on = "${consoleName}에 대해 차량 무기를 켜고 토글했습니다.",
		toggled_vehicle_weapons_for_player_off = "${consoleName}에 대해 차량 무기를 끄지 않았습니다.",
		toggled_vehicle_weapons_for_everyone = "모든 사람을 위해 차량 무기를 토글했습니다.",

		toggled_vehicle_weapons_on_logs_title = "토글 차량 무기 켜기",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} 님이 켜진 차량의 무기를 토글했습니다.",
		toggled_vehicle_weapons_off_logs_title = "차량 무기 끄기",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} 님이 차량의 무기를 끄고 있습니다.",
		toggled_vehicle_weapons_on_for_player_logs_title = "플레이어용 토글 차량 무기 켜기",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} 님이 ${targetConsoleName} 님의 차량에 대한 무기를 토글했습니다.",
		toggled_vehicle_weapons_off_for_player_logs_title = "플레이어용 차량 무기 꺼짐",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName}이(가) ${targetConsoleName} 님의 차량에 대한 무기를 끄고 있습니다.",
		toggled_vehicle_weapons_for_everyone_logs_title = "모든 사람을 위해 차량 무기 설정",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} 님이 모든 차량의 무기를 토글했습니다."
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] 슬래시를 길게 누릅니다.",
		hold_to_slash = "슬래시",
		slashing_tire = "타이어 슬래시"
	},

	-- weapons/*
	weapons = {
		pick_up_fire_extinguisher = "~INPUT_CONTEXT~ 키를 눌러 소화기 를 들어올립니다.",
		press_to_drop_fire_extinguisher = "~INPUT_FRONTEND_RIGHT~를 눌러 소화기를 놓습니다.",
		illegal_fire_extinguisher_model = "소화기가 아닌 모델로 모든 클라이언트에서 소화기를 삭제하려고 했습니다.",

		no_weapon_equipped = "무기는 준비되지 않았습니다",
		no_ammo = "이 무기에는 탄약이 없다.",
		infinite_ammo = "이 무기는 무한한 탄약을 가지고 있어",
		ammo_count = "전체 클립이 ${clips}개 있습니다(총 ${total}개).",
		ammo_count_loose = "${clips}개의 전체 클립과 ${loose}개의 라운드가 있는 클립 1개가 있습니다(총 ${total}개 라운드)."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] 체크 인",
		check_in_escorted = "당신은 호위받고 있습니다",
		checking_in = "체크 인",
		doctor_notified = "의사 선생님께 연락을 드렸으니 잠시만 기다려주세요",
		leave_bed = "~INPUT_CONTEXT~ 키를 눌러 침대에서 나갑니다.",
		you_have_been_charged = "상해에 대해 $${cost}가 청구되었습니다.",
		beds_occupied = "모든 침대",
		patient_checked_in = "병상에서 환자 체크인 ${bed}",
		stop_bleeding = "[E] 지혈",
		stopping_bleeding = "지혈",
		bleeding_stopped = "출혈이 멎었다",
		overdose_effects = "약물 과다 복용 증상을 경험하고 있습니다.",
		you_have_parasite = "기생충이 있네요",
		you_have_multiple_parasite = "기생충이 여러 개 있어요",
		bandage = "[E] 붕대 상처",
		bandaging = "상처 붕대",
		wounds_bandaged = "상처 붕대",
		treat_injury = "[E] ${label} 손상",
		treating_injury = "${label} 부상 치료",
		injury = "${label} 부상",
		cpr_done = "CPR 성공",
		cpr_fail = "사용자를 찾을 수 없습니다.",
		went_on_duty = "근무 중",
		went_off_duty = "비번이었어요",
		on_duty = "근무 중",
		off_duty = "비번",
		press_to_sign = "~g~E~w~를 눌러 서명합니다. ",
		open_vehicle_spawner = "~g~E~w~를 눌러 차량 스패너를 엽니다",
		open_heli_spawner = "헬리콥터 메뉴를 열려면 ~g~E~w~를 누르십시오",
		open_boat_spawner = "보트 메뉴를 열려면 ~g~E~w~를 누르십시오.",
		on = "에",
		off = "꺼짐",
		sign_as_doctor = "의사로서 ${status}에 서명하려면 ~g~E~w~를 누르십시오.",
		close_menu = "메뉴 닫기",
		vehicle_list = "차량 목록",
		park_vehicle = "공원 차량",
		clear_area = "차량을 산란하기 전에 차고를 치워주세요",
		unable_to_extra = "이 차량에서 'extras'를 수정할 수 없습니다!",
		warning = "경고",
		invalid_input = "잘못된 입력입니다.",
		unable_to_extra_on_vehicle = "이 차량에서 'extras'를 수정할 수 없습니다!",
		heli_here_already = "이미 헬기장에 헬리콥터가 있어",
		ems_air_hq = "EMS 항공 본사",
		ems_boat_hq = "EMS 보트 HQ",
		ems_garage = "EMS 차고",
		e_to_get_treated = "[E] 치료 - $2500",
		get_treated = "치료 - $2500",
		you_are_being_treated = "당신은 치료를 받고 있습니다",
		being_treated = "치료 중",
		minute = "분",
		minutes = "분",
		second = "초",
		seconds = "초",
		kurwa_and = "및",
		wait_for_paramedic = "구급대원이 도착할 때까지 기다리거나 ${time}이(가) 다시 주차될 때까지 기다리십시오.",
		hold_to_respawn = "~b~Enter~w~를 눌러 다시 만들거나 구급대원이 도착할 때까지 기다립니다.",
		hold_to_respawn_secondslol = "~b~ENTER(${seconds})~w~를 길게 눌러 다시 만들거나 구급대원이 도착할 때까지 기다립니다.",
		light = "빛",
		moderate = "보통",
		heavy = "무겁",
		severe = "가혹하",
		arms_injured = "팔은 너무 다쳤고, 발사할 수 없다",
		injuryb = "부상",
		bleeding_multiple_injuries = "다발성 출혈로",
		feels_irritated = "짜증나",
		feels_painful = "고통스러워",
		feels_extremely_painful = "매우 고통스러워",
		multiple_injuries = "다쳤네요",
		bleeding = "출혈",
		bleeding_with_injury = "${label} 손상으로 출혈",
		bleeding_reduced = "출혈 감소",
		bleeding_self_stopped = "출혈이 저절로 멎었다",
		thanks_for_loot = "의식이 없는 상태에서 강도를 당하셨습니다 일부 항목이 누락되었을 수 있습니다.",
		e_to_do_yoga = "[E] Yoga",
		do_yoga = "Yoga",
		stop_doing_yoga = "~INPUT_CONTEXT~ 를 눌러 요가 작업을 중지합니다.",
		mat_occupied = "매트가 꽉 찼어!",
		yoga = "요가",
		clothing = "의류",
		clothing_cam_help = "A, S 및 D를 사용하여 의류 카메라를 이리저리 이동하고 W를 사용하여 확대합니다.",
		main = "메인",
		empty_slot = "빈 슬롯",
		barber = "Barber",
		pants = "Pants",
		face = "Face",
		skin_color = "Skin Color",
		mask = "Mask",
		hair = "Hair",
		arms = "Arms",
		shoes = "Shoes",
		necklaces_and_ties = "Necklace & Ties",
		undershirt = "Undershirt",
		decals = "Decals",
		shirts = "Shirts",
		parachute_and_bag = "Parachute / bag",
		armor = "Armor",
		components = "Components",
		textures = "Textures",
		colour_palette = "Color Palette",
		hair = "Hair",
		hair_color = "Hair Color",
		hair_highlight_color = "Highlight Color",
		remove_undershirt = "Remove Undershirt",
		no_idea = "No idea",
		head = "Head",
		hats_and_helmets = "Hats/Helmets",
		glasses = "Glasses",
		earrings = "Earrings",
		left_wrist = "Left Wrist",
		right_wrist = "Right Wrist",
		remove_helmets = "Remove helmets",
		remove_glasses = "Remove glasses",
		remove_earrings = "Remove earrings",
		remove_left_wrist = "Remove left wrist",
		remove_right_wrist = "Remove right wrist",
		blemishes = "Blemishes",
		facial_hair = "Facial Hair",
		eyebrows = "Eyebrows",
		ageing = "Ageing",
		makeup = "Makeup",
		blush = "Blush",
		complexion = "Complexion",
		sun_damage = "Sun Damage",
		lipstick = "Lipstick",
		moles_and_freckles = "Moles/Freckles",
		chest_hair = "Chest hair",
		body_blemishes = "Body blemishes",
		add_body_blemishes = "Add Body blemishes",
		opacity = "Opacity",
		colours = "Colors",
		press_to_access_clotheshop = "~INPUT_CONTEXT~ 를 눌러 의류 스폿에 액세스합니다.",
		changing_only_clotheshop = "옷을 바꾸려면 /outfit을 하세요.",
		clothing_store = "옷가게",
		finish_creation = "Hold ~g~G ~w~to complete the customization of your character. You can't undo this action.",
		finish_creation_timer = "[${timer}s] Hold ~g~G ~w~to complete the customization of your character. You can't undo this action.",
		press_to_access_barbershop = "~INPUT_CONTEXT~ 를 눌러 이발소에 액세스합니다.",
		barbershop = "이발소",
		not_a_clothing_spot = "이 명령을 사용하려면 옷장 근처에 있어야 합니다!",
		customization = "사용자 지정",
		accessories = "액세서리",
		freemode_models = "프리모드 모델",
		male_models = "남자 모델",
		female_models = "여자 모델",
		ems_models = "EMS 모델",
		animal_models = "동물 모델",
		multiplayer_models = "멀티플레이어 모델",
		serial_number = "일련 번호: ${serialNumber}<br>이 무기는 ${fullName}(${characterId})에 등록되었습니다.",
		serial_number_unknown = "일련 번호: 알 수 없음",
		badge_owner = "이 배지는 ${fullName}(${positionName})에 속해 있습니다.",
		badge_owner_unknown = "배지 소유자를 알 수 없습니다.",
		bought_by = "${buyerName}(${buyerCid})이(가) 구매했습니다.",
		bought_by_unknown = "이 물건의 구매자를 알 수 없습니다.",
		evidence_incomplete = "이 증거는 불완전하여 검토할 수 없다.",
		evidence_type = "증거 유형",
		evidence_casings = "케이싱이 사용 시 ${buyerName}(${buyerCid})이(가) 보유했던 일련 번호 ${serialNumber}(으)로 돌아왔습니다.",
		evidence_bullets = "글머리 기호 영향은 ${bulletLabel}에 의해 생성된 것으로 보입니다.",
		evidence_clothing = "의류(${clothingType})입니다.",
		evidence_car_dna = "플레이트 ${plateNumber}(으)로 차량에서 DNA를 가져와서 ${DNAOwnerName}(${DNAOwner})(으)로 돌아왔습니다.",
		evidence_dna = "${fullName} #${characterId}에서 수집된 DNA입니다.",
		evidence_fingerprint = "${fullName} #${characterId}의 지문입니다.",
		evidence_not_processed = "이 증거가방은 아직 처리가 되지 않았습니다.",
		additional_information = "추가 정보:",
		picked_up_at_location = "위치:",
		clothing_dna_trace = "DNA 추적이 ${fullName}(#${cid})로 돌아옵니다.",
		clothing_dna_trace_unprocessed = "옷의 가공되지 않은 DNA 흔적",
		timestamp_of_pickup = "픽업 타임스탬프:",
		weapon_name = "무기 이름:",
		casings_picked_up = "수거된 케이스 수:",
		bullet_label = "글머리 기호 레이블:",
		impacts_found = "영역에서 발견된 영향의 양:",
		right_foot = "오른발",
		left_foot = "왼발",
		right_hand = "오른손",
		left_hand = "왼손",
		right_knee = "우측 무릎",
		left_knee = "왼쪽 무릎",
		head = "머리",
		neck = "목",
		right_arm = "오른팔",
		left_arm = "왼팔",
		chest = "가슴",
		pelvis = "골반",
		right_shoulder = "우측 어깨",
		left_shoulder = "왼쪽 어깨",
		right_wrist = "오른쪽 손목",
		left_wrist = "왼쪽 손목",
		tounge = "퉁지",
		upper_lip = "윗입술",
		lower_lip = "아랫입술",
		right_thigh = "우측 허벅지",
		left_thigh = "왼쪽 허벅지",
		lower_spine = "척추 하부",
		center_spine = "중심 척추",
		upper_spine = "상척추",
		root_spine = "척주",
		right_clavicle = "오른쪽 쇄골",
		left_clavicle = "왼쪽 쇄골"
	}
}
