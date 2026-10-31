.class public Lcom/wandoujia/base/config/GlobalConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/base/config/GlobalConfig$a;,
        Lcom/wandoujia/base/config/GlobalConfig$ContentDir;,
        Lcom/wandoujia/base/config/GlobalConfig$b;,
        Lcom/wandoujia/base/config/GlobalConfig$c;
    }
.end annotation


# static fields
.field private static final AUTO_QUALITY_ID:I = 0x7fffffff

.field public static final CONTENT_DIRS:[Ljava/lang/String;

.field private static final DEFAULTFILE_COUNT_FOR_VAULT:I = 0x1e

.field private static final DEFAULT_ADSENSE_HOST_REGEX:Ljava/lang/String; = ".*google.*|.*gstatic.*|.*doubleclick.*"

.field private static final DEFAULT_BATTERY_CLEAN_INTERVAL:I = 0x1b7740

.field private static final DEFAULT_BATTERY_LOW_NOTIFY_SHOW_INTERVAL:I = 0x2932e00

.field private static final DEFAULT_BATTERY_WHITE_LIST:Ljava/lang/String; = "com.snaptube.premium|com.dywx.larkplayer|com.vstatus.premium"

.field private static final DEFAULT_BOOST_UP_MEMORY_DIFF_VALUE:I = 0x1

.field private static final DEFAULT_BOOST_UP_SHOW_INTERVAL:I = 0x2932e00

.field private static final DEFAULT_BOOST_UP_SHOW_LIMIT:I = 0x3c

.field private static final DEFAULT_CACHEKEY_IGNORED_KEY:Ljava/lang/String; = "extract_pos|Expires|Signature|Key-Pair-Id|Policy"

.field private static final DEFAULT_CLEAN_NOTIFY_INTERVAL:I = 0x2932e00

.field private static final DEFAULT_CLICK_CLEAN_TOOL_INTERVAL:I = 0x1499700

.field private static final DEFAULT_DAY_UN_USED_APP_FOR_SCAN:I = 0x1e

.field private static final DEFAULT_DOWNLOAD_PIECE_SIZE:I = 0xb00000

.field private static final DEFAULT_ENABLED_REWRITE_URL:Z = true

.field private static final DEFAULT_FILE_TOTAL_SIZE:I = 0xc8

.field private static final DEFAULT_FLUENCY_REPORT_TIMES:I = 0x3

.field private static final DEFAULT_FOREGROUND_SCAN_TIME:I = 0x12c

.field private static final DEFAULT_FRAME_TIME_THRESHOLD:I = 0x64

.field private static final DEFAULT_FULL_SCAN_INTERVAL_TIME:I = 0x5265c00

.field public static final DEFAULT_JUNK_INFO_SIZE_LIMIT_FOR_NOTIFY:I = 0x32000000

.field private static final DEFAULT_LARGE_FILE_SIZE_LIMIT_FOR_CARD:I = 0x400

.field private static final DEFAULT_LARGE_FILE_SIZE_LIMIT_FOR_NOTIFY:I = 0x400

.field private static final DEFAULT_NOTIFY_BOOST_UP_SHOW_LIMIT:I = 0x50

.field private static final DEFAULT_NOTIFY_ICON_CHANGE_INTERVAL:I = 0x240c8400

.field private static final DEFAULT_OFFICIAL_URL:Ljava/lang/String; = "https://www.snaptube.com"

.field private static final DEFAULT_PHONE_STORAGE_SIZE_LIMIT_FOR_NOTIFY:I = 0x400

.field private static final DEFAULT_PRIVATE_VIDEO_HOST:Ljava/lang/String; = "mobiuspace.com"

.field private static final DEFAULT_SAPP_LAST_USED_DAYS_INTERVAL:I = 0x1e

.field private static final DEFAULT_SHOW_LARGE_FILE_NOTIFY_INTERVAL:I = 0x69780

.field private static final DEFAULT_SIZE_UN_USED_APP_FOR_SCAN:I = 0xc8

.field private static final DEFAULT_UPDATE_JUNK_RULE_INTERVAL:I = 0xf731400

.field private static final DEFAULT_WHATSAPP_FILE_SIZE:I = 0x400

.field private static final DEFAULT_WHATSAPP_SCAN_INTERVAL:I = 0x36ee80

.field private static final DEFAULT_WHATSAPP_SHOW_INTERVAL:I = 0x19bfcc00

.field private static final DEFAULT_WHATSAPP_SIZE_PERCENT:I = 0x5

.field private static final DEFAULT_WHATS_APP_TOTAL_SIZE:I = 0x1f4

.field private static final DEFAULT_X_REQUESTED_WITH_NETWORK_OPERATOR_REGEX:Ljava/lang/String; = "Jio.*"

.field private static final DEFAULT_X_REQUESTED_WITH_TARGET_HOST_REGEX:Ljava/lang/String; = "https?://m\\.youtube\\.com.*"

.field private static final DEFAULT_X_REQUESTED_WITH_VALUE:Ljava/lang/String; = "com.android.browser"

.field public static final ENABLE_INSTALL_CLEAN_NOTIFICATION:Ljava/lang/String; = "key.enable_install_clean_notification"

.field public static final GENERAL_KEY_DISABLE_AD_USEIP:Ljava/lang/String; = "key.disable_ad_use_ip"

.field public static final GENERAL_KEY_ENABLE_AD_PREVIEW_MODE:Ljava/lang/String; = "key.disable_ad_preview_mode"

.field private static final HALF_RANDOM_ID:I = 0x32

.field private static final IGNORE_POS_REGEX_DEFAULT:Ljava/lang/String; = "search_all|search_status"

.field private static final INSTALLED_PLUGIN_SIZE:Ljava/lang/String; = "installed_plugin_size"

.field private static final KEY_ADSENSE_HOST_REGEX:Ljava/lang/String; = "key.adsense_host_regex"

.field private static final KEY_ADX_PLACEMENT_REGEX:Ljava/lang/String; = "key.adx_placement_id_regex"

.field private static final KEY_AD_ACTIVITY_NAME_LIST:Ljava/lang/String; = "key.ad_activity_name_list"

.field private static final KEY_AD_ENABLE_IMAGE_COMPRESS_FOR_BIG_CARD:Ljava/lang/String; = "key.ad_enable_image_compress_for_card"

.field private static final KEY_AD_GIF_PRELOAD_ENABLE:Ljava/lang/String; = "key.ad_gif_preload_enable"

.field private static final KEY_AD_HOME_BACK_IMPRESSION_INTERVAL:Ljava/lang/String; = "key.ad_home_back_impr_interval"

.field public static final KEY_AD_HOME_BACK_IMPRESSION_TIMES:Ljava/lang/String; = "key.ad_home_back_impression_times"

.field public static final KEY_AD_HOME_BACK_LAST_IMPRESSION_DAY:Ljava/lang/String; = "key.ad_home_back_last_impression_day"

.field private static final KEY_AD_HOME_BACK_LAST_STAY_SECOND:Ljava/lang/String; = "key.ad_home_back_last_stay_second"

.field private static final KEY_AD_HOME_BACK_LOAD_RETRY_COUNT:Ljava/lang/String; = "key.ad_home_back_load_retry_count"

.field private static final KEY_AD_HOME_BACK_MAX_TIMES_PER_DAY:Ljava/lang/String; = "key.ad_home_back_max_times_per_day"

.field private static final KEY_AD_HOME_BACK_PRELOAD_ON_RESUMED:Ljava/lang/String; = "key.ad_home_back_preload_on_resumed"

.field private static final KEY_AD_HOME_BACK_SHOW_CACHE_ONLY:Ljava/lang/String; = "key.ad_home_back_show_cache_only"

.field public static final KEY_AD_HOT_LAUNCH_LOAD_RETRY_COUNT:Ljava/lang/String; = "key.ad_hot_launch_load_retry_count"

.field private static final KEY_AD_HOT_LAUNCH_PRELOAD_ON_RESUMED:Ljava/lang/String; = "key.ad_hot_launch_preload_on_resumed"

.field private static final KEY_AD_INTERSTITIAL_IMPRESSION_INTERVAL:Ljava/lang/String; = "key.ad_interstitial_impression_interval"

.field private static final KEY_AD_PANGLE_ADVERTISER_REPORT_ENABLED:Ljava/lang/String; = "key.ad_pangle_advertiser_report_enable"

.field private static final KEY_AD_PRELOAD_IMAGE_PATH_ENABLE:Ljava/lang/String; = "key.ad_preload_image_path_enable"

.field private static final KEY_AD_RESOURCE_CACHE_SP_LENGTH:Ljava/lang/String; = "key.ad_resource_cache_sp_length"

.field private static final KEY_AD_VIDEO_CHECK_LOADED_MIN_LENGTH:Ljava/lang/String; = "key.ad_video_check_loaded_min_length"

.field private static final KEY_AD_VIDEO_PRELOAD_ENABLE:Ljava/lang/String; = "key.ad_video_preload_enable"

.field private static final KEY_AD_VIDEO_PRELOAD_LENGTH:Ljava/lang/String; = "key.ad_video_preload_length"

.field public static final KEY_APP_LAST_USED_DAYS_INTERVAL:Ljava/lang/String; = "key.app_last_used_days_interval"

.field private static final KEY_APP_MOVE_BACK_TIMESTAMP:Ljava/lang/String; = "key_app_move_back_timestamp"

.field private static final KEY_AUDIO_DOWNLOAD_MAX_PIECE_SIZE:Ljava/lang/String; = "key.audio_download_max_piece_size"

.field private static final KEY_AUDIO_SUPPORT_MAX_PIECE_SIZE_REGEX:Ljava/lang/String; = "key.audio_support_max_piece_size_regex"

.field private static final KEY_BACKGROUND_WEB_EXTRACT_ENABLE:Ljava/lang/String; = "key.background_web_extract_enable"

.field public static final KEY_BATTERY_CHARGING_NOTIFY_SHOW_INTERVAL:Ljava/lang/String; = "key.battery_charging_notify_show_interval"

.field public static final KEY_BATTERY_CLEAN_INTERVAL:Ljava/lang/String; = "key.battery_clean_interval"

.field public static final KEY_BATTERY_LOW_NOTIFY_SHOW_INTERVAL:Ljava/lang/String; = "key.battery_low_notify_show_interval"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_BATTERY_WHITE_LIST:Ljava/lang/String; = "key.battery_white_list"

.field private static final KEY_BOOST_NOTIFY_ENABLE:Ljava/lang/String; = "key.boost_notify_enable"

.field private static final KEY_BOOST_UP_MEMORY_DIFF:Ljava/lang/String; = "key.boost_up_memory_diff"

.field private static final KEY_BOOST_UP_SHOW_INTERVAL:Ljava/lang/String; = "key.boost_up_show_interval"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_BOOST_UP_SHOW_LIMIT:Ljava/lang/String; = "key.boost_up_show_limt"

.field public static final KEY_BT_TRACKERS_BLOCKER_ENABLE:Ljava/lang/String; = "key.bt_trackers_blocker_enable"

.field public static final KEY_BT_TRACKERS_BLOCKER_URL:Ljava/lang/String; = "key.bt_trackers_blocker_url"

.field private static final KEY_CACHEKEY_IGNORED_KEYS:Ljava/lang/String; = "key.cachekey_ignored_params"

.field private static final KEY_CATEGORY_LABEL:Ljava/lang/String; = "key.category_label"

.field public static final KEY_CHANGE_SMALL_CARD_TO_BIG:Ljava/lang/String; = "key.sensor_change_small_card_to_big_card"

.field private static final KEY_CLEAN_ANDROID_11_APP_CACHE_ENABLE:Ljava/lang/String; = "key.clean_android_11_app_cache_eanble"

.field private static final KEY_CLEAN_BATTERY_CHARGING_ENABLE:Ljava/lang/String; = "key.clean_battery_charging_notify_enable"

.field private static final KEY_CLEAN_BATTERY_LOW_ENABLE:Ljava/lang/String; = "key.clean_battery_low_notify_enable"

.field private static final KEY_CLEAN_BATTERY_SAVE_RESULT_JUMP_GP_SWITCH:Ljava/lang/String; = "key.clean_battery_save_result_jump_gp_switch"

.field private static final KEY_CLEAN_HOME_ANIM_INTERVAL_IN_MS:Ljava/lang/String; = "key.clean_home_anim_interval_in_ms"

.field private static final KEY_CLEAN_JUNK_FILES_RESULT_JUMP_GP_SWITCH:Ljava/lang/String; = "key.clean_junk_files_result_jump_gp_switch"

.field private static final KEY_CLEAN_NOTIFY_ENABLE:Ljava/lang/String; = "key.clean_notify_enable"

.field private static final KEY_CLEAN_PHONE_BOOST_RESULT_JUMP_GP_SWITCH:Ljava/lang/String; = "key.clean_phone_boost_result_jump_gp_switch"

.field public static final KEY_CLEAN_TOOL_BAR_HAS_JUNK_ENABLE:Ljava/lang/String; = "key.clean_tool_bar_has_junk_enable"

.field private static final KEY_CLICK_CLEAN_NOTIFY_INTERVAL:Ljava/lang/String; = "key.click_clean_notify_interval"

.field public static final KEY_CLICK_CLEAN_TOOL_BAR_INTERVAL:Ljava/lang/String; = "key.click_clean_tool_bar_interval"

.field public static final KEY_CLICK_TOOL_BAR_CLEAN_TIME:Ljava/lang/String; = "key.click_tool_bar_clean_time"

.field public static final KEY_CONTINUE_LOADING_CHECK_INTERVAL_BYTES:Ljava/lang/String; = "key.continue_loading_check_interval_bytes"

.field public static final KEY_DATA:Ljava/lang/String; = "key.data"

.field public static final KEY_DAY_FOR_APP_SORT_LIST:Ljava/lang/String; = "key.day_for_spp_sort_list"

.field private static final KEY_DISABLE_LIVECHAT_SAMPLE_DAYS:Ljava/lang/String; = "key.disable_livechat_sample_days"

.field private static final KEY_DISCOVERY_YOUTUBE_ADAPTER_PLUGIN_ENABLED:Ljava/lang/String; = "key.discovery_youtube_adapter_plugin_enabled"

.field private static final KEY_DISCOVER_REGION_CODES:Ljava/lang/String; = "key.discover_region_codes"

.field public static final KEY_DOWNLOAD_ARTICLE_ID:Ljava/lang/String; = "key.download_helper_article_id"

.field private static final KEY_DOWNLOAD_POPUP_COUNT:Ljava/lang/String; = "key.download_popup_count"

.field private static final KEY_DOWNLOAD_POPUP_SHOW_TIME:Ljava/lang/String; = "key.download_popup_show_time"

.field public static final KEY_DOWNLOAD_RETRY_DELAY_SECONDS:Ljava/lang/String; = "key.download_retry_delay_seconds"

.field private static final KEY_DOWNLOAD_UES_EXTRACT_CACHE_ENABLED:Ljava/lang/String; = "key.download_use_extract_cache_enabled"

.field private static final KEY_DRAGON_REDIRECT_META_PARAM:Ljava/lang/String; = "key.hot_redirect_meta_data_for_video"

.field private static final KEY_DT_PLACEMENT_REGEX:Ljava/lang/String; = "key.dt_placement_id_regex"

.field public static final KEY_DUPLICATED_GUIDE_ENABLE:Ljava/lang/String; = "key.duplicated_guide_enable"

.field private static final KEY_ENABLED_REWRITE_URL:Ljava/lang/String; = "key.enable_rewrite_url"

.field private static final KEY_ENABLE_APP_UPGRADE_DOWNLOAD_ID_MOBILE:Ljava/lang/String; = "key.enable_app_upgrade_download_in_mobile"

.field private static final KEY_ENABLE_DIRECT_JUMP_TO_GP_IN_LOCAL_PLAY:Ljava/lang/String; = "key.enable_direct_jump_to_gp_in_local_play"

.field private static final KEY_ENABLE_FEED_ITEM_EXPOSURE_TRACK:Ljava/lang/String; = "key.enable_feed_item_exposure_track"

.field public static final KEY_ENABLE_IMMERSIVE_DOWNLOAD_LOGIN:Ljava/lang/String; = "key.enable_immersive_download_login"

.field private static final KEY_ENABLE_JUMP_TO_WEBVIEW_WHEN_PLAY_FAIL:Ljava/lang/String; = "key.enable_jump_to_webview_when_play_fail"

.field private static final KEY_ENABLE_MUSIC_BAR:Ljava/lang/String; = "key.enable_music_bar"

.field private static final KEY_ENABLE_NEWRELIC:Ljava/lang/String; = "key.enable_newrelic"

.field public static final KEY_ENABLE_NEW_IMMERSIVE_DOWNLOAD_ACTION:Ljava/lang/String; = "key.enable_new_immersive_download_action"

.field private static final KEY_ENABLE_NEW_USER_PROTECTION:Ljava/lang/String; = "key.enable_new_user_protection"

.field private static final KEY_ENABLE_PLAY_BEFORE_GUIDE:Ljava/lang/String; = "key.enable_play_before_guide"

.field private static final KEY_ENABLE_PLUGIN_DOWNLOAD_IN_MOBILE:Ljava/lang/String; = "key.enable_plugin_download_in_mobile"

.field public static final KEY_ENABLE_REPORT_LOGCAT:Ljava/lang/String; = "key.enable_report_logcat"

.field private static final KEY_ENABLE_TEST_IDS_REQUEST:Ljava/lang/String; = "key.enable_test_ids_request"

.field private static final KEY_ENABLE_TRACK_YOUTUBE_PLAY_WEBVIEW:Ljava/lang/String; = "key.enable_track_youtube_play_webview"

.field public static final KEY_EXTENSION_API_SAMPLE:Ljava/lang/String; = "key.extension_api_sample"

.field public static final KEY_FACEBOOK_APP_EVENTS_ENABLED:Ljava/lang/String; = "key.facebook_app_events_enabled"

.field private static final KEY_FCM_TOKEN:Ljava/lang/String; = "key.fcm_token"

.field private static final KEY_FCM_TOOLBAR_ENABLE:Ljava/lang/String; = "key.fcm_toolbar_enable"

.field private static final KEY_FCM_TOOLBAR_SHOW_INTERVAL:Ljava/lang/String; = "key.fcm_toolbar_show_interval"

.field private static final KEY_FCM_TOOL_NOTIFICATION_ENABLE:Ljava/lang/String; = "key.fcm_tool_notification_enable"

.field public static final KEY_FEEDBACK_ALL_ARTICLES_ID:Ljava/lang/String; = "key.feedback_all_articles_id"

.field public static final KEY_FEEDBACK_ARTICLE_URL_REGEX:Ljava/lang/String; = "key.feedback_article_url_regex"

.field public static final KEY_FEEDBACK_AUTHOR_ID:Ljava/lang/String; = "key_feedback_author_id"

.field public static final KEY_FEEDBACK_CONTACT_LINK_IN_FORM:Ljava/lang/String; = "key.feedback_contact_link_in_form"

.field public static final KEY_FEEDBACK_CONTACT_LINK_IN_VAULT:Ljava/lang/String; = "key.feedback_contact_link_in_vault"

.field public static final KEY_FEEDBACK_DEFAULT_EMAIL:Ljava/lang/String; = "key.feedback_default_email"

.field public static final KEY_FEEDBACK_LOCALE:Ljava/lang/String; = "key.feedback_locale"

.field public static final KEY_FEEDBACK_TIME:Ljava/lang/String; = "key_feedback_time"

.field public static final KEY_FEEDBACK_TOP_ARTICLES_ID:Ljava/lang/String; = "key.feedback_top_articles_id"

.field public static final KEY_FEEDBACK_URL:Ljava/lang/String; = "key.feedback_url"

.field private static final KEY_FEED_STREAM_AD_LOG_ENABLED:Ljava/lang/String; = "key.feed_stream_ad_log_enable"

.field private static final KEY_FEED_STREAM_AD_PRELOAD_DELAY_MILLIS:Ljava/lang/String; = "key.feed_stream_ad_preload_delay_millis"

.field private static final KEY_FEED_STREAM_AD_PRELOAD_ENABLED:Ljava/lang/String; = "key.feed_stream_ad_preload_enable"

.field private static final KEY_FILE_TOTAL_SIZE:Ljava/lang/String; = "key.unused_file_total_size"

.field public static final KEY_FILE_TYPE:Ljava/lang/String; = "key.file_type"

.field public static final KEY_FILTER_BEAN:Ljava/lang/String; = "key.filter_bean_info"

.field public static final KEY_FILTER_INSTALL_GUIDE_BEAN:Ljava/lang/String; = "key.filter_guide_install_bean_info"

.field private static final KEY_FIRST_LAUNCH_APP_TIME:Ljava/lang/String; = "first_launch_app_time"

.field public static final KEY_FIRST_SHOW_NOTIFY_TOOL_BAR_TIME:Ljava/lang/String; = "key.first_show_tool_bar_notify_time"

.field public static final KEY_FIXED_STAGGER_COVER_ENABLED:Ljava/lang/String; = "key.fixed_stagger_cover_enabled"

.field private static final KEY_FLUENCY_MONITOR_REPORT_TIMES:Ljava/lang/String; = "key.fluency_monitor_report_times"

.field private static final KEY_FLUENCY_MONITOR_SWITCH:Ljava/lang/String; = "key.fluency_monitor_switch"

.field public static final KEY_FORBIDDENT_PLUGIN_IDS:Ljava/lang/String; = "key.forbidden_plugin_ids"

.field public static final KEY_FORCE_SET_ST_PLAYER:Ljava/lang/String; = "key.force_set_st_player"

.field private static final KEY_FOREGROUND_SCAN_TIME:Ljava/lang/String; = "key.online_foreground_scan_time"

.field private static final KEY_FRAME_MONITOR_TIME_THRESHOLD:Ljava/lang/String; = "key.frame_monitor_time_threshold"

.field private static final KEY_FULL_SCAN_INTERVAL_TIME:Ljava/lang/String; = "key.full_scan_interval_time"

.field private static final KEY_GOOGLE_ADVERTISING_ID:Ljava/lang/String; = "key.google_advertising_id"

.field public static final KEY_HMS_CONFIG:Ljava/lang/String; = "key.hms_config"

.field private static final KEY_HOME_LOGIN_ENABLE:Ljava/lang/String; = "key.home_login_enable"

.field public static final KEY_IGNORE_AD_POS:Ljava/lang/String; = "key.ignore_ad_regex"

.field public static final KEY_IGNORE_GUIDE_POS:Ljava/lang/String; = "key.ignore_guide_regex"

.field private static final KEY_IMAGE_APP_URL:Ljava/lang/String; = "key.image_app_url"

.field private static final KEY_INSERTABLE_NEXT_PATHS:Ljava/lang/String; = "key.insertable_next_paths"

.field private static final KEY_INSERT_TASK_OPTIMIZE_SWITCH:Ljava/lang/String; = "key.insert_task_optimize_switch"

.field private static final KEY_INSTAGRAM_TO_CHOOSE_FORMAT_DIRECTLY:Ljava/lang/String; = "key.instagram_to_choose_format_directly"

.field public static final KEY_INSTALL_APK_SPACE_SIZE_EXTRA_MULTIPLE:Ljava/lang/String; = "key.install_apk_space_size_extra_multiple"

.field public static final KEY_IS_AUTO_INFLATE_ENABLE:Ljava/lang/String; = "key.is_auto_inflate_enable"

.field private static final KEY_IS_CLEAN_HOME_OLD_UI:Ljava/lang/String; = "key.is_clean_home_old_ui"

.field public static final KEY_IS_CONTENT_DISCOVERY_REGION:Ljava/lang/String; = "KEY_IS_CONTENT_DISCOVERY_REGION"

.field private static final KEY_IS_DIALOG_PERMISSION_FORCE:Ljava/lang/String; = "key.is_dialog_permission_force"

.field public static final KEY_IS_ENABLE_HOT_SEARCH_ICON:Ljava/lang/String; = "key.is_enable_hot_search_icon"

.field public static final KEY_IS_ENABLE_HOT_SEARCH_PRESET_WORD:Ljava/lang/String; = "key.is_enable_hot_search_preset_word"

.field public static final KEY_IS_EXTRACT_CACHE_IGNORE_FROM:Ljava/lang/String; = "key.is_extract_cache_ignore_from"

.field public static final KEY_IS_EXTRACT_REPORT_SAMPLE_DISABLED:Ljava/lang/String; = "key.is_extract_report_sample_disabled"

.field public static final KEY_IS_FEEDBACK_ENABLED_IN_CLEAN:Ljava/lang/String; = "key.is_feedback_enabled_in_clean"

.field public static final KEY_IS_FEEDBACK_ENABLED_IN_ME:Ljava/lang/String; = "key.is_feedback_enabled_in_me"

.field public static final KEY_IS_FEEDBACK_ENABLED_IN_SETTINGS:Ljava/lang/String; = "key.is_feedback_enabled_in_settings"

.field public static final KEY_IS_FEEDBACK_ENABLED_IN_UPGRADE:Ljava/lang/String; = "key.is_feedback_enabled_in_upgrade"

.field public static final KEY_IS_FEEDBACK_ENABLED_IN_VAULT:Ljava/lang/String; = "key.is_feedback_enabled_in_vault"

.field public static final KEY_IS_FEEDBACK_ENABLED_IN_VIDEO_DETAIL:Ljava/lang/String; = "key.is_feedback_enabled_in_video_detail"

.field private static final KEY_IS_FILTER_M4A_FORMAT_LARGE_AUDIO:Ljava/lang/String; = "key.is_filter_m4a_format_audio"

.field public static final KEY_IS_FIREBASE_PERF_ENABLE:Ljava/lang/String; = "key.is_firebase_perf_enable"

.field public static final KEY_IS_FIRST_SHOW_NOTIFY:Ljava/lang/String; = "key.is_first_show_notify"

.field public static final KEY_IS_IGNORE_MUX_ONLINE_PLAY:Ljava/lang/String; = "key.is_ignore_mux_online_play"

.field private static final KEY_IS_LARGE_WINDOW_PLAYER_ENABLED:Ljava/lang/String; = "key.is_large_window_player_enabled"

.field private static final KEY_IS_LIST_VIDEO_PRELOAD_ENABLE:Ljava/lang/String; = "key.is_list_video_preload_enabled"

.field public static final KEY_IS_LOADING_BYTES_ONLY_MUX:Ljava/lang/String; = "key.is_loading_bytes_only_mux"

.field public static final KEY_IS_NEW_UNINSTALL_NOTIFY_STRATEGY:Ljava/lang/String; = "key.is_new_uninstall_notify_strategy"

.field public static final KEY_IS_OPEN_AD_TOAST_DEBUG:Ljava/lang/String; = "is_open_ad_toast_debug"

.field private static final KEY_IS_OTHER_FULL_SCAN_ENABLE:Ljava/lang/String; = "key.is_other_full_scan_enable"

.field private static final KEY_IS_PERMISSION_GUIDE_A:Ljava/lang/String; = "key.is_permission_guide_a"

.field private static final KEY_IS_PLUGIN_CLASSLOADER_GC_ENABLED:Ljava/lang/String; = "key.is_plugin_classloader_gc_enabled"

.field public static final KEY_IS_REMOVE_UNPLAYABLE_FORMATS:Ljava/lang/String; = "key.is_remove_unplayable_formats"

.field public static final KEY_IS_SHOW_CONTACT_POPUP_AFTER_SUBMIT:Ljava/lang/String; = "key.is_show_contact_popup_after_submit"

.field public static final KEY_IS_ST_STORY_API_EXTRACT_ENABLED:Ljava/lang/String; = "key.is_st_story_api_extract_enabled"

.field public static final KEY_IS_SUPPORT_FEEDBACK_CONTACT:Ljava/lang/String; = "key.is_support_feedback_contact"

.field public static final KEY_IS_SUPPORT_UPGRADE_FEEDBACK:Ljava/lang/String; = "key.is_support_upgrade_feedback_contact"

.field private static final KEY_IS_TOOLBAR_NOTIFICATION_CANCEL:Ljava/lang/String; = "key.is_toolbar_notification_cancel"

.field private static final KEY_IS_TOOLBAR_NOTIFICATION_DEFAULT_SHOW:Ljava/lang/String; = "key.is_toolbar_notification_default_show"

.field private static final KEY_IS_TOOLBAR_NOTIFICATION_ENABLED:Ljava/lang/String; = "key.is_toolbar_notification_enabled"

.field private static final KEY_IS_VIDEO_AUDIO_MUX_ENABLED:Ljava/lang/String; = "key.is_video_audio_mux_enabled"

.field private static final KEY_IS_WINDOW_PLAYER_OPTIMIZE_ENABLED:Ljava/lang/String; = "key.is_window_player_optimize_enabled"

.field private static final KEY_IS_X_REQUESTED_WITH_REWRITE_ENABLED:Ljava/lang/String; = "key.is_x_requested_with_rewrite_enabled"

.field private static final KEY_IS_X_REQUESTED_WITH_REWRITE_RANDOM_VALUE_ENABLED:Ljava/lang/String; = "key.is_x_requested_with_rewrite_random_value_enabled"

.field private static final KEY_IS_X_REQUESTED_WITH_REWRITE_RESOURCES_ENABLED:Ljava/lang/String; = "key.is_x_requested_with_rewrite_resources_enabled"

.field public static final KEY_IS_YT_LIVE_ENABLED:Ljava/lang/String; = "key.is_yt_live_enabled"

.field private static final KEY_JUNK_SIZE_LIMIT_FOR_NOTIFY:Ljava/lang/String; = "key.junk_size_limit_for_notify"

.field private static final KEY_KEEP_BG_SERVICE_OPT_ENABLE:Ljava/lang/String; = "key.bg_service_opt_enable"

.field private static final KEY_KEEP_BG_SERVICE_OPT_INTERVAL:Ljava/lang/String; = "key.bg_service_opt_interval"

.field public static final KEY_LANGUAGE_CODE:Ljava/lang/String; = "KEY_LANGUAGE_CODE"

.field public static final KEY_LANGUAGE_CODE_YOUTUBE:Ljava/lang/String; = "KEY_LANGUAGE_CODE_YOUTUBE"

.field private static final KEY_LARGE_FILE_SIZE_LIMIT_FOR_CARD:Ljava/lang/String; = "key.large_file_size_limit_for_card"

.field private static final KEY_LARGE_FILE_SIZE_LIMIT_FOR_NOTIFY:Ljava/lang/String; = "key.large_file_size_limit_for_notify"

.field public static final KEY_LAST_BATTERY_LOW_NOTIFY_SHOW_TIME:Ljava/lang/String; = "key.last_battery_low_show_time"

.field private static final KEY_LAST_BOOST_UP_TIME:Ljava/lang/String; = "key.last_boost_up_time"

.field private static final KEY_LAST_CHOOSEN_CAPTION_LANGUAGE_CODE:Ljava/lang/String; = "last_choosen_caption_language_code"

.field private static final KEY_LAST_SCAN_SPECIAL_CLEAN:Ljava/lang/String; = "key.last_special_clean_sacn"

.field private static final KEY_LAST_SHOW_BOOST_UP_NOTIFY:Ljava/lang/String; = "key.last_show_boost_up_notify"

.field public static final KEY_LAST_UPDATE_JUNK_RULE_TIME:Ljava/lang/String; = "key.last_update_junk_rule_time"

.field private static final KEY_LAST_VIDEO_QUALITY_ALIAS:Ljava/lang/String; = "last_video_quality_alias"

.field private static final KEY_LAST_VIDEO_QUALITY_ID:Ljava/lang/String; = "last_video_quality_id"

.field private static final KEY_LIMIT_VIDEO_COUNT:Ljava/lang/String; = "key.limit_video_count"

.field public static final KEY_LYRIC_META_ENABLE:Ljava/lang/String; = "key.lyric_meta_enable"

.field public static final KEY_MAX_ACTIVATE_COUNT:Ljava/lang/String; = "key.max_activate_count"

.field private static final KEY_MAX_PUSH_PRELOAD_TIME:Ljava/lang/String; = "key.max_push_preload_time"

.field private static final KEY_MINTEGRAL_BIDDING_TOKEN:Ljava/lang/String; = "key.mintegral_bidding_token"

.field public static final KEY_MOVIE_VIDEO_JUDGMENT:Ljava/lang/String; = "key.movie_video_judgment"

.field public static final KEY_MULTI_THREAD_TASK_MAX_DOWNLOAD_RETRY_TIMES:Ljava/lang/String; = "key.multi_thread_task_max_download_retry_times"

.field private static final KEY_NEED_SHOW_EDIT_USER_INFO_COUNT:Ljava/lang/String; = "key.need_show_edit_user_info_count"

.field public static final KEY_NEW_IMMERSIVE_DOWNLOAD_EXCLUDE_PACKAGE_NAMES:Ljava/lang/String; = "key.new_immersive_download_exclude_package_names"

.field public static final KEY_NEW_PACKAGE_NAME:Ljava/lang/String; = "key.new_package_name"

.field private static final KEY_NOTIFICATION_PERMISSION_ASKED:Ljava/lang/String; = "key.notification_permission_asked"

.field private static final KEY_NOTIFY_BOOST_UP_SHOW_INTERVAL:Ljava/lang/String; = "key.notify_boost_up_show_interval"

.field private static final KEY_NOTIFY_BOOST_UP_SHOW_LIMIT:Ljava/lang/String; = "key.notify_boost_up_show_limt"

.field private static final KEY_NOTIFY_ICON_CHANGE_INTERVAL:Ljava/lang/String; = "key.notify_icon_change_interval"

.field private static final KEY_NOT_FULL_CARD_LEFT_RIGNT_PADDING:Ljava/lang/String; = "key.not_full_screen_left_right_padding"

.field private static final KEY_NUMBER_OF_DAYS_IN_NEW_USER:Ljava/lang/String; = "key.number_of_days_in_new_user"

.field public static final KEY_OFFICIAL_SITE_URL:Ljava/lang/String; = "key.official_site_url"

.field public static final KEY_OLD_PACKAGE_NAME:Ljava/lang/String; = "key.old_package_name"

.field private static final KEY_PHONE_STORAGE_SIZE_LIMIT_FOR_LARGE_FILE_NOTIFY:Ljava/lang/String; = "key.phone_storage_size_limit_for_large_file_notify"

.field private static final KEY_PIP_ENABLED:Ljava/lang/String; = "key.picture_in_picture_enabled"

.field public static final KEY_PLATFORM_PLUGIN_CONFIG_REFRESH_INTERVAL_IN_HOURS:Ljava/lang/String; = "key.platform_plugin_config_refresh_interval_in_hours"

.field private static final KEY_PLAYEND_SHOW_COUNT:Ljava/lang/String; = "key.playend_show_count"

.field private static final KEY_PLAYEND_SHOW_TIME:Ljava/lang/String; = "key.playend_show_time"

.field private static final KEY_PLAY_COUNT_BEFORE_GUIDE:Ljava/lang/String; = "key.play_count_before_guide"

.field public static final KEY_PLAY_GUIDE_SUCCESS_MAX_TIMES_PER_DAY:Ljava/lang/String; = "key.play_guide_success_max_times_per_day"

.field private static final KEY_PLAY_LIST_FILE_AUDIO_FULL_PATH:Ljava/lang/String; = "key.play_list_file_audio_full_path"

.field private static final KEY_PLAY_LIST_FILE_VIDEO_FULL_PATH:Ljava/lang/String; = "key.play_list_file_video_full_path"

.field public static final KEY_PLUGIN_AUTO_INSTALL_INFO:Ljava/lang/String; = "key.plugin_auto_install_info"

.field private static final KEY_PLUGIN_CHECK_MAX_AGE:Ljava/lang/String; = "key.plugin_check_max_age"

.field private static final KEY_PLUGIN_MOBILE_DOWNLOAD_SIZE_LIMIT:Ljava/lang/String; = "key.plugin_mobile_download_size_limit"

.field public static final KEY_PLUGIN_TOTAL_LIMIT:Ljava/lang/String; = "key.plugin_total_limit"

.field private static final KEY_POPUP_EXIT_AD_PRELOAD_ENABLED:Ljava/lang/String; = "key.popup_exit_ad_preload_enable"

.field private static final KEY_POPUP_UES_EXTRACT_CACHE_HOST:Ljava/lang/String; = "key.popup_use_extract_cache_host"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_PREFIX_POST_DAYS:Ljava/lang/String; = "key.post_days_"

.field private static final KEY_PRELOAD_IGNORE_DIVERSION_LIMIT:Ljava/lang/String; = "key.preload_ignore_diversion_limit"

.field private static final KEY_PRELOAD_INTERSTITIAL_BOOST:Ljava/lang/String; = "key.preload_interstitial_boost"

.field private static final KEY_PRELOAD_INTERSTITIAL_CLEAN:Ljava/lang/String; = "key.preload_interstitial_clean"

.field private static final KEY_PRELOAD_INTERSTITIAL_ON_APP_BACKGROUND:Ljava/lang/String; = "key.preload_interstitial_on_app_background"

.field private static final KEY_PRIVATE_VIDEO_HOST:Ljava/lang/String; = "key.private_video_host"

.field private static final KEY_PUSH_BLACKLIST:Ljava/lang/String; = "key.push_blacklist"

.field private static final KEY_PUSH_EXPIRE_TIME:Ljava/lang/String; = "key.push_expire_time"

.field public static final KEY_PUSH_POS_REGEX:Ljava/lang/String; = "key.push_pos_regex"

.field public static final KEY_REPORT_FEEDBACK_DATA_ENABLE:Ljava/lang/String; = "key.report_feedback_user_data_enable"

.field public static final KEY_SECONDARY_EXTRACT_DETAILS_ENABLED:Ljava/lang/String; = "key.secondary_extract_details_enabled"

.field public static final KEY_SELDOM_APP_NOTIFY_CONFIG:Ljava/lang/String; = "key.seldom_app_notify_config"

.field public static final KEY_SELFBUILD_AD_REQUEST_SCHEME_HOST:Ljava/lang/String; = "key.selfbuild_ad_request_scheme_host"

.field public static final KEY_SELFBUILD_AD_UPDATE_WHEN_INIT:Ljava/lang/String; = "key.selfbuild_ad_update_when_init"

.field private static final KEY_SET_GROUP_FOR_TOOLBAR_NOTIFICATION_ENABLE:Ljava/lang/String; = "key.set_group_for_toolbar_notification"

.field private static final KEY_SHARE_ANIM_LAST_SHOW_TIME:Ljava/lang/String; = "key.share_anim_last_show_time"

.field private static final KEY_SHARK_BOOST_ENABLE:Ljava/lang/String; = "key.shark_boost_enable"

.field private static final KEY_SHOULD_CHECK_PLUGIN_UPDATE_WHEN_ERROR:Ljava/lang/String; = "key.should_check_plugin_update_when_error"

.field public static final KEY_SHOULD_CLICK_FEED_CARD_TO_DETAIL:Ljava/lang/String; = "key.should_click_feed_card_to_detail"

.field private static final KEY_SHOULD_CREATE_MUSIC_SHORTCUT:Ljava/lang/String; = "key.should_create_music_shortcut"

.field private static final KEY_SHOULD_EVOKE_WINDOW_PLAYER_WHEN_USER_LEAVE_APP:Ljava/lang/String; = "key.should_evoke_window_player_when_user_leave_app"

.field private static final KEY_SHOULD_PREVENT_DOWNLOAD_RECOMMENDS_FOR_CALLER:Ljava/lang/String; = "key.should_prevent_download_recommends_for_caller"

.field private static final KEY_SHOULD_RELOAD_OVERDUE_PUSH_VIDEO:Ljava/lang/String; = "key.should_reload_overdue_push_video"

.field public static final KEY_SHOULD_SHOW_LOGO:Ljava/lang/String; = "key.should_show_logo"

.field public static final KEY_SHOULD_SHOW_NEW_CONTENT_GUIDE:Ljava/lang/String; = "key.should_show_new_content_guide"

.field private static final KEY_SHOULD_SHOW_PUSH_AFTER_VIDEO_PRELOADED:Ljava/lang/String; = "key.should_show_push_after_video_preloaded"

.field private static final KEY_SHOWED_EDIT_USER_INFO_COUNT:Ljava/lang/String; = "key.showed_edit_user_info_count"

.field private static final KEY_SHOW_BOOST_UP_ENTRANCE_ENABLE:Ljava/lang/String; = "key.show_boost_up_entrance_enable"

.field private static final KEY_SHOW_HAS_JUNK_ENTRANCE_ENABLE:Ljava/lang/String; = "key.show_has_junk_entrance_enable"

.field private static final KEY_SHOW_INTERSTITIAL_BOOST:Ljava/lang/String; = "key.show_interstitial_boost"

.field private static final KEY_SHOW_INTERSTITIAL_CLEAN:Ljava/lang/String; = "key.show_interstitial_clean"

.field private static final KEY_SHOW_LARGE_FILE_NOTIFY_INTERVAL:Ljava/lang/String; = "key.show_large_file_notify_interval"

.field private static final KEY_SHOW_MENU_AS_CLOSE_BUTTON:Ljava/lang/String; = "key.show_menu_as_close_button"

.field private static final KEY_SNAPTUBEAPP_NATIVE_PATH_SET:Ljava/lang/String; = "key.snaptubeapp_native_path_set"

.field private static final KEY_SNAPTUBE_HOME_PAGE_URL:Ljava/lang/String; = "key.snaptube_home_page_url"

.field public static final KEY_SNAP_CLEANER_PACKAGE_NAME:Ljava/lang/String; = "key.snap_cleaner_package_name"

.field private static final KEY_SPECIAL_CLEAN_CACHE_INTERVAL:Ljava/lang/String; = "key.special_clean_cache_interval"

.field public static final KEY_SPLASH_AD_CONFIG:Ljava/lang/String; = "key.splash_ad_config"

.field public static final KEY_SPLASH_AD_HOT_LAUNCH_AD_POS:Ljava/lang/String; = "key.splash_ad_hot_launch_ad_pos"

.field public static final KEY_SPLASH_AD_HOT_LAUNCH_BG_COUNT:Ljava/lang/String; = "key.splash_ad_hot_launch_bg_count"

.field public static final KEY_SPLASH_AD_HOT_LAUNCH_IMPRESSION_TIMES:Ljava/lang/String; = "key.splash_ad_hot_launch_impression_times"

.field public static final KEY_SPLASH_AD_HOT_LAUNCH_IMPR_MIN_MILLIS:Ljava/lang/String; = "key.splash_ad_hot_launch_impr_min_millis"

.field public static final KEY_SPLASH_AD_HOT_LAUNCH_LAST_IMPRESSION_DAY:Ljava/lang/String; = "key.splash_ad_hot_launch_last_impression_day"

.field public static final KEY_SPLASH_AD_HOT_LAUNCH_POST_PONE_DAYS:Ljava/lang/String; = "key.splash_ad_hot_launch_post_pone_days"

.field public static final KEY_SPLASH_AD_HOT_LAUNCH_PRELOAD_ON_START:Ljava/lang/String; = "key.splash_ad_hot_launch_preload_on_start"

.field public static final KEY_SPLASH_AD_HOT_LAUNCH_TIMES_PER_DAY:Ljava/lang/String; = "key.splash_ad_hot_launch_times_per_day"

.field public static final KEY_SPLASH_AD_HOT_LAUNCH_TIME_MILLIS:Ljava/lang/String; = "key.splash_ad_hot_launch_time_millis"

.field public static final KEY_SPLASH_AD_LAST_USE_TIME_MILLIS:Ljava/lang/String; = "key.splash_ad_last_use_time_millis"

.field private static final KEY_SPLASH_AD_LOG_ENABLED:Ljava/lang/String; = "key.splash_ad_log_enable"

.field public static final KEY_SPLASH_AD_USED_DAYS:Ljava/lang/String; = "key.splash_ad_used_days"

.field public static final KEY_STAGGER_COMPAT_BLUR_RATIO:Ljava/lang/String; = "key.stagger_compat_blur_ratio"

.field private static final KEY_STAGGER_FIXED_ICON_ENABLED:Ljava/lang/String; = "key.stagger_fixed_icon_enabled"

.field private static final KEY_STORAGE_PERMISSION_DENIED_WITH_NO_ASK:Ljava/lang/String; = "storage_permission_denied_with_no_ask"

.field public static final KEY_ST_STORY_API_OP:Ljava/lang/String; = "key.st_story_api_op"

.field public static final KEY_SUBTITLE_SELECT_COUNT:Ljava/lang/String; = "key.subtitle_select_count"

.field public static final KEY_TOOLBAR_CARD_SHOW_INTERVAL:Ljava/lang/String; = "key.toolbar_card_show_interval"

.field public static final KEY_TOOLBAR_CARD_SHOW_TOTAL_COUNT:Ljava/lang/String; = "key.toolbar_card_show_total_count"

.field public static final KEY_TOOLBAR_SHOW_COUNT_PERDAY:Ljava/lang/String; = "key.toolbar_card_show_count_perday"

.field public static final KEY_TOOLS_AD_NEW_USER_POSTPONE:Ljava/lang/String; = "key.tools_ad_new_user_postpone"

.field public static final KEY_TOOLS_BAR_SHOW_TYPE:Ljava/lang/String; = "key.tools_bar_show_type"

.field public static final KEY_TOOLS_RESULT_AD_POSITION_PREFIX:Ljava/lang/String; = "key.tools_result_ad_position_"

.field private static final KEY_TOOL_BAR_ENABLE:Ljava/lang/String; = "key.notification_toolbar_enable"

.field public static final KEY_TRACKING_CONFIG_RESPONSE:Ljava/lang/String; = "key.tracking_config"

.field public static final KEY_TRACKING_COUNT:Ljava/lang/String; = "key.tracking_count"

.field public static final KEY_TRACKING_DAY:Ljava/lang/String; = "key.tracking_day"

.field public static final KEY_TRACKING_PACKAGENAME_RESPONSE:Ljava/lang/String; = "key.tracking_packagename"

.field private static final KEY_TRIGGER_LOAD_MORE_BEFORE_LAST_ITEM_POS:Ljava/lang/String; = "key.trigger_load_more_before_last_item_pos"

.field private static final KEY_UES_GLIDE_ENABLED:Ljava/lang/String; = "key.use_glide_enabled"

.field public static final KEY_UNINSTALL_NOTIFY_JUNK_SIZE:Ljava/lang/String; = "key.uninstall_notify_junk_size"

.field private static final KEY_UN_USED_APP_DAY_FOR_SCAN:Ljava/lang/String; = "key.unused_app_total_day_for_scan"

.field private static final KEY_UN_USED_APP_SIZE_FOR_SCAN:Ljava/lang/String; = "key.unused_app_total_size_for_scan"

.field public static final KEY_UN_USED_APP_SIZE_LIMITED_MB:Ljava/lang/String; = "key.unused_app_size_limited_mb"

.field public static final KEY_UN_USED_TOTAL_APP_SIZE_LIMITED_MB:Ljava/lang/String; = "key.unused_total_app_size_limited_mb"

.field public static final KEY_UPDATE_JUNK_RULES_INTERVAL:Ljava/lang/String; = "key.update_junk_rules_interval"

.field public static final KEY_UPGRADE_FEEDBACK_CONTACT_LINK:Ljava/lang/String; = "key.upgrade_feedback_contact_link"

.field private static final KEY_USE_EXTRACT_RESULT_EFFECTIVE_TIME:Ljava/lang/String; = "key.use_extract_result_effective_time"

.field private static final KEY_USE_NEW_VIDEO_CARD:Ljava/lang/String; = "key.use_video_card_v2"

.field private static final KEY_USE_VIDEO_CARD_NOT_FULL_SCREEN_STYLE:Ljava/lang/String; = "key.use_video_card_not_full_screen_style"

.field private static final KEY_VAULT_FILE_COUNT_FOR_HOME_SCREEN:Ljava/lang/String; = "key.vault_file_count_for_home_screen"

.field private static final KEY_VIDEO_DOWNLOAD_MAX_PIECE_SIZE:Ljava/lang/String; = "key.video_download_max_piece_size"

.field private static final KEY_VIDEO_SOURCE_FILTER_FOR_PLAY_COUNT:Ljava/lang/String; = "key.video_source_filter_for_play_count"

.field private static final KEY_VIDEO_SUPPORT_MAX_PIECE_SIZE_REGEX:Ljava/lang/String; = "key.video_support_max_piece_size_regex"

.field private static final KEY_VUNGLE_BIDDING_TOKEN:Ljava/lang/String; = "key.vungle_bidding_token"

.field private static final KEY_WHATSAPP_CLEANER_SHOW_INTERVAL:Ljava/lang/String; = "key.whatsapp_cleaner_show_interval"

.field private static final KEY_WHATSAPP_FILE_PERCENT_FOR_NOTIFY:Ljava/lang/String; = "key.whatsapp_file_percent_for_notify"

.field private static final KEY_WHATSAPP_FILE_SIZE_FOR_NOTIFY:Ljava/lang/String; = "key.whatsapp_file_size_for_notify"

.field public static final KEY_WHATSAPP_NOTIFICATION_SHOW_TIME:Ljava/lang/String; = "key.whatsapp_notification_show_time"

.field private static final KEY_WHATS_APP_TOTAL_SIZE:Ljava/lang/String; = "key.whats_app_total_size"

.field private static final KEY_X_REQUESTED_WITH_NETWORK_OPERATOR_REGEX:Ljava/lang/String; = "key.x_requested_with_network_operator_regex"

.field private static final KEY_X_REQUESTED_WITH_TARGET_HOST_REGEX:Ljava/lang/String; = "key.x_requested_with_target_host_regex"

.field private static final KEY_X_REQUESTED_WITH_VALUE:Ljava/lang/String; = "key.x_requested_with_value"

.field public static final KEY_YOUTUBE_EX_LANGUAGE:Ljava/lang/String; = "KEY_YOUTUBE_EX_LANGUAGE"

.field private static final KEY_YOUTUBE_NOT_SHOW_PUSH_WHEN_EXTRACT_FAIL:Ljava/lang/String; = "key.youtube_not_show_push_when_extract_fail"

.field public static final KEY_YOUTUBE_PLAYER_VERSION:Ljava/lang/String; = "key.youtube_player_version"

.field public static final KEY_ZENDESK_AUTH:Ljava/lang/String; = "key.zendesk_auth"

.field public static final KEY_ZENDESK_PUSH_SHOW_COUNT:Ljava/lang/String; = "zendesk_push_show_count"

.field public static final KEY_ZENDESK_PUSH_SHOW_TIME:Ljava/lang/String; = "zendesk_push_show_time"

.field public static final MULTI_THREAD_DOWNLOAD_MAX_RETRY_TIMES:I = 0x3

.field public static final PREF_CONTENT_CONFIG:Ljava/lang/String; = "pref.content_config"

.field public static final PREF_KEY_FLUENCY_HAS_REPORT_TIMES:Ljava/lang/String; = "fluency_has_report_times"

.field public static final PREF_KEY_FLUENCY_LAST_REPORT_TIME:Ljava/lang/String; = "last_fluency_report_time"

.field public static final PREF_SWITCHES:Ljava/lang/String; = "pref.switches"

.field public static final PREF_TRACKING_CONFIG:Ljava/lang/String; = "pref.tracking_config"

.field private static final PUSH_POS_REGEX_DEFAULT:Ljava/lang/String; = ".*push.*"

.field private static final YT_HOST_REGEX:Ljava/lang/String; = "https?://[^/]*(youtube.com|youtu.be).*"

.field public static final ZENDESK:Ljava/lang/String; = "zendesk"

.field private static appContext:Landroid/content/Context;

.field private static sLazy:Lcom/wandoujia/base/config/GlobalConfig$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/base/config/GlobalConfig$a;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v21, "image"

    const-string v22, "lyric"

    const-string v0, "download"

    const-string v1, "SnapTube Video"

    const-string v2, "SnapTube Audio"

    const-string v3, "SnapTube Image"

    const-string v4, "app"

    const-string v5, "web"

    const-string v6, "diagnosis"

    const-string v7, "export"

    const-string v8, ".config"

    const-string v9, ".md5"

    const-string v10, "data"

    const-string v11, ".client"

    const-string v12, "capture"

    const-string v13, "misc"

    const-string v14, "SnapTube Movie"

    const-string v15, "apmlog"

    const-string v16, "secret"

    const-string v17, ".secret"

    const-string v18, "uninstall"

    const-string v19, "mark"

    const-string v20, "ugc"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/base/config/GlobalConfig;->CONTENT_DIRS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/base/config/GlobalConfig;->sLazy:Lcom/wandoujia/base/config/GlobalConfig$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static downloadYtAdapterPluginInDiscoveryRegion()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.discovery_youtube_adapter_plugin_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableAdNewUserProtection()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_new_user_protection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableChangeSmallCardToBigCard()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.sensor_change_small_card_to_big_card"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableDirectJumpToGpInLocalPlay()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_direct_jump_to_gp_in_local_play"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableFeedItemExposureTrack()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_feed_item_exposure_track"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableJumpToWebViewWhenPlayFail()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_jump_to_webview_when_play_fail"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enablePlayBeforeGuide()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_play_before_guide"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableSplashAdHotLaunchPreloadOnAppStart()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.splash_ad_hot_launch_preload_on_start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableTrackYoutubePlayWebview()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_track_youtube_play_webview"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enabledSecondaryExtractDetail()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.secondary_extract_details_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static getAdActivityNameList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_activity_name_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2
.end method

.method public static getAdHomeBackImpressionInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_home_back_impr_interval"

    const v2, 0x493e0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAdHomeBackLastStaySecond()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_home_back_last_stay_second"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAdHomeBackLoadRetryCount()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_home_back_load_retry_count"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAdHomeBackMaxTimesPerDay()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_home_back_max_times_per_day"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAdHotLaunchLoadRetryCount()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_hot_launch_load_retry_count"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAdInterstitialImpressionInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_interstitial_impression_interval"

    const v2, 0x493e0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAdResourceCacheSpLength(I)I
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_resource_cache_sp_length"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getAdVideoCheckLoadedMinLength(J)J
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_video_check_loaded_min_length"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getAdVideoPreloadLength(J)J
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_video_preload_length"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getAdsenseHostRegex()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.adsense_host_regex"

    const-string v2, ".*google.*|.*gstatic.*|.*doubleclick.*"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdxPlacementIdRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.adx_placement_id_regex"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppMoveBackTimestamp()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_app_move_back_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAppUsedDaysInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.app_last_used_days_interval"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAudioDownloadMaxPieceSize()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.audio_download_max_piece_size"

    const/high16 v2, 0xb00000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAudioSupportMaxPieceSizeRegex()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.audio_support_max_piece_size_regex"

    const-string v2, "https?://[^/]*(youtube.com|youtu.be).*"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoInstallPluginInfo()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.plugin_auto_install_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryChargingNotifyShowInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.battery_charging_notify_show_interval"

    const v2, 0x2932e00

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBatteryCleanInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.battery_clean_interval"

    const v2, 0x1b7740

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBatteryLowNotifyShowInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.battery_low_notify_show_interval"

    const v2, 0x2932e00

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBatteryWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.battery_white_list"

    const-string v2, "com.snaptube.premium|com.dywx.larkplayer|com.vstatus.premium"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBgServiceOptEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.bg_service_opt_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBgServiceOptInterval()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.bg_service_opt_interval"

    const-wide/32 v2, 0x1b7740

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBoosUpMemoryPercentDiff()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.boost_up_memory_diff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBoosUpShowInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.boost_up_show_interval"

    const v2, 0x2932e00

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBoosUpShowLimit()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.boost_up_show_limt"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCacheKeyIgnoredKeys()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref.content_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.cachekey_ignored_params"

    const-string v2, "extract_pos|Expires|Signature|Key-Pair-Id|Policy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryLabelConfig()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.category_label"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getCleanAppCacheEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.clean_android_11_app_cache_eanble"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCleanHomeAnimInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.clean_home_anim_interval_in_ms"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCleanNotifyInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.click_clean_notify_interval"

    const v2, 0x2932e00

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCleanNotifyJunkSizeLimit()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.junk_size_limit_for_notify"

    const/high16 v2, 0x32000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCleanNotifyLargeFilePhoneStorageSizeLimit()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.phone_storage_size_limit_for_large_file_notify"

    const/16 v2, 0x400

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCleanNotifyLargeFileSizeLimit()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.large_file_size_limit_for_notify"

    const/16 v2, 0x400

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getClickCleanToolBarInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.click_clean_tool_bar_interval"

    const v2, 0x1499700

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getClickCleanToolBarTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.click_tool_bar_clean_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getContentDirName(Lcom/wandoujia/base/config/GlobalConfig$ContentDir;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->CONTENT_DIRS:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getContentDirectory(Lcom/wandoujia/base/config/GlobalConfig$ContentDir;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/wandoujia/base/config/GlobalConfig;->getExternalContentDirectory(Lcom/wandoujia/base/config/GlobalConfig$ContentDir;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/wandoujia/base/config/GlobalConfig;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/wandoujia/base/config/GlobalConfig;->getInternalContentDirectory(Lcom/wandoujia/base/config/GlobalConfig$ContentDir;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContinueLoadingCheckIntervalBytes(I)I
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.continue_loading_check_interval_bytes"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDayForAppSortList()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.day_for_spp_sort_list"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDayForAppSortListForScan()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.unused_app_total_day_for_scan"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDirectPlacementIdRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.dt_placement_id_regex"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisableLiveChatSampleDays()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.disable_livechat_sample_days"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDiscoverRegionCodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key.discover_region_codes"

    const-string v3, "BR,AR,BO,CL,CO,CR,DO,EC,GT,HN,MX,NI,PA,PE,PR,PY,SV,UY,VE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static getDownloadHelperArticledId(J)J
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.download_helper_article_id"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide p0
.end method

.method public static getDownloadPopUpShowTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.download_popup_show_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDownloadPopupShowCount()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.download_popup_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDownloadRetryDelaySeconds()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.download_retry_delay_seconds"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDragonRedirectMetaParam()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.hot_redirect_meta_data_for_video"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtensionApiSample()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.extension_api_sample"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getExternalContentDirectory(Lcom/wandoujia/base/config/GlobalConfig$ContentDir;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getRootDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->CONTENT_DIRS:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wandoujia/base/config/GlobalConfig;->makeSureDirExist(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wandoujia/base/config/GlobalConfig;->isDirectoryExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p0

    :cond_1
    return-object v2
.end method

.method public static getExternalContentDirectoryV30(Lcom/wandoujia/base/config/GlobalConfig$ContentDir;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getRootDirectoryV30()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->CONTENT_DIRS:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wandoujia/base/config/GlobalConfig;->makeSureDirExist(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wandoujia/base/config/GlobalConfig;->isDirectoryExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p0

    :cond_1
    return-object v2
.end method

.method public static getFacebookAppEventsEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.facebook_app_events_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFcmToken()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.fcm_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFcmToolbarShowInterval()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.fcm_toolbar_show_interval"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFeedbackAuthorId()Ljava/lang/Long;
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_feedback_author_id"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getFeedbackContactLinkInForm()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.feedback_contact_link_in_form"

    const-string v2, "https://chat.whatsapp.com/LtR11c2mskK0MiW7qeOpqZ"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFeedbackContactLinkInVault()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.feedback_contact_link_in_vault"

    const-string v2, "https://chat.whatsapp.com/BaC7Hu6BdTvBYzbi2d465I"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFeedbackTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_feedback_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFeedbackUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.feedback_url"

    const-string v2, "zendesk"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileTypeConfig()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.file_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getFilterBeanInfo(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstLaunchAppDay()J
    .locals 6

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getFirstLaunchAppTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static getFirstLaunchAppSecond()J
    .locals 5

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getFirstLaunchAppTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFirstLaunchAppTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_launch_app_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFirstShowToolsBarTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.first_show_tool_bar_notify_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFluencyReportTimes()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.fluency_monitor_report_times"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getForbiddenPluginIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.forbidden_plugin_ids"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getForegroundScanTime()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.online_foreground_scan_time"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFrameMonitorTimeThreshold()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.frame_monitor_time_threshold"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFullScanIntervalTime()J
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.full_scan_interval_time"

    const v2, 0x5265c00

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getGAID()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.google_advertising_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getGenericSharedPrefs()Landroid/content/SharedPreferences;
    .locals 4

    const-class v0, Lcom/wandoujia/base/config/GlobalConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    sget-object v2, Lo/bm5;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getIgnoreADPosRegex()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ignore_ad_regex"

    const-string v2, "search_all|search_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIgnoreGuidePosRegex()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ignore_guide_regex"

    const-string v2, "search_all|search_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageAppUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.image_app_url"

    const-string v2, "https://img-app.thejeu.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInsertableNextPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key.insertable_next_paths"

    const-string v3, "list/feedStream|list/similar/immersive|/list/immersive/foryou"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getInstagramToChooseFormatDirectly()Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.instagram_to_choose_format_directly"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getInstallSpaceSizeExtraMultiple()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.install_apk_space_size_extra_multiple"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstalledPluginSize()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "installed_plugin_size"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInternalContentDirectory(Lcom/wandoujia/base/config/GlobalConfig$ContentDir;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/wandoujia/base/config/GlobalConfig;->CONTENT_DIRS:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v3, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wandoujia/base/config/GlobalConfig;->makeSureDirExist(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wandoujia/base/config/GlobalConfig;->isDirectoryExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p0

    :cond_1
    return-object v2
.end method

.method public static getIsFistShowToolsBar()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_first_show_notify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLanguageCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lo/a04;->d()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_LANGUAGE_CODE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLargeFileCardSizeLimit()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.large_file_size_limit_for_card"

    const/16 v2, 0x400

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastBatteryLowNotifyShowTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.last_battery_low_show_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastBoostUpTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.last_boost_up_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastChoosenCaptionLanguageCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_choosen_caption_language_code"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastShowBoostUpNotify()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.last_show_boost_up_notify"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastSpecialCleanScanTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.last_special_clean_sacn"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastUpdateJunkRuleTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.last_update_junk_rule_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastUpdateUserTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.last_user_update_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastVideoQualityAlias()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_video_quality_alias"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVideoQualityId()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_video_quality_id"

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxActivateCount()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.max_activate_count"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ax3;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxPushPreloadTime()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.max_push_preload_time"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMintegralBiddingToken()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.mintegral_bidding_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMovieVideoJudgment()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.movie_video_judgment"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMultiThreadTaskMaxDownloadRetryTimes()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.multi_thread_task_max_download_retry_times"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNewImmersiveDownloadExcludePackageNames()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.new_immersive_download_exclude_package_names"

    const-string v2, "com.vstatus.premium"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNextLimitVideoCount()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.limit_video_count"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotFullScreenCardPadding()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.not_full_screen_left_right_padding"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotificationIconChangeInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.notify_icon_change_interval"

    const v2, 0x240c8400

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotifyBoosUpShowLimit()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.notify_boost_up_show_limt"

    const/16 v2, 0x50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotifyBoostUpShowInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.notify_boost_up_show_interval"

    const v2, 0x2932e00

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotifyWhatsAppFilePercent()F
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.whatsapp_file_percent_for_notify"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getNotifyWhatsAppFileSize()J
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.whatsapp_file_size_for_notify"

    const/16 v2, 0x400

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x100000

    mul-int v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getNumberOfDaysInNewUser()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.number_of_days_in_new_user"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOfficialSiteUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.official_site_url"

    const-string v2, "https://www.snaptube.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPIPEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.picture_in_picture_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPlayEndShowCount()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.playend_show_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPlayEndShowTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.playend_show_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPlayGuideSuccessMaxTimesPerDay()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.play_guide_success_max_times_per_day"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPlaylistFileFullPath(Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string p0, "key.play_list_file_video_full_path"

    goto :goto_0

    :cond_0
    const-string p0, "key.play_list_file_audio_full_path"

    :goto_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPluginCheckMaxAge()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.plugin_check_max_age"

    const-wide/32 v2, 0x6ddd00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPluginInstallLimitSize()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.plugin_total_limit"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static getPluginMobileDownloadSizeLimit()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.plugin_mobile_download_size_limit"

    const-wide/32 v2, 0x100000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPreLoadFeedStreamAdDealyMillis()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.feed_stream_ad_preload_delay_millis"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPrefContent()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    const-string v1, "pref.content_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/base/config/GlobalConfig$b;

    invoke-direct {v1, v0}, Lcom/wandoujia/base/config/GlobalConfig$b;-><init>(Landroid/content/SharedPreferences;)V

    return-object v1
.end method

.method public static getPrefContentConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPrefSwitch()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    const-string v1, "pref.switches"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/base/config/GlobalConfig$b;

    invoke-direct {v1, v0}, Lcom/wandoujia/base/config/GlobalConfig$b;-><init>(Landroid/content/SharedPreferences;)V

    return-object v1
.end method

.method public static getPrivateVideoHosts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref.content_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key.private_video_host"

    const-string v3, "mobiuspace.com"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getPushBlacklist()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.push_blacklist"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPushExpireTimeInMillis()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.push_expire_time"

    const-wide/32 v2, 0x15180

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static getPushPosRegex()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.push_pos_regex"

    const-string v2, ".*push.*"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomId()I
    .locals 2

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->sLazy:Lcom/wandoujia/base/config/GlobalConfig$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/base/config/GlobalConfig$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Random id not set! Set it when app launches."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getRootDirectory()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lo/bm5;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static getRootDirectoryV30()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lo/bm5;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getSTStoryApiOp()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.st_story_api_op"

    const-string v2, "1pd7xg57e71ts3k9522ocgmidh38r1yc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSeldomAppNotifyConfig()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.seldom_app_notify_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelfbuildAdRequestSchemeHost()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.selfbuild_ad_request_scheme_host"

    const-string v2, "https://api.falconnet.app"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelfbuildAdUpdateWhenInit()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.selfbuild_ad_update_when_init"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSelfbuildAdUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getSelfbuildAdRequestSchemeHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShareAnimLastShowTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.share_anim_last_show_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getShowLargeFileNotifyInterval()J
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.show_large_file_notify_interval"

    const v2, 0x69780

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getShowWaIntervalTime()J
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.whatsapp_cleaner_show_interval"

    const v2, 0x19bfcc00

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getShowedEditUserInfoCount(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key.showed_edit_user_info_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSnapCleanerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.snap_cleaner_package_name"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSnaptubeAppNativePathSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.snaptubeapp_native_path_set"

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getSnaptubeHomePageUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.snaptube_home_page_url"

    const-string v2, "https://www.snaptube.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpecialCleanCacheInterval()J
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.special_clean_cache_interval"

    const v2, 0x36ee80

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getSplashAdConfig()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.splash_ad_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSplashAdHotLaunchAdPos()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.splash_ad_hot_launch_ad_pos"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSplashAdHotLaunchBgCount()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.splash_ad_hot_launch_bg_count"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSplashAdHotLaunchImprMinMillis()I
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "key.splash_ad_hot_launch_impr_min_millis"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSplashAdHotLaunchPostPoneDays()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.splash_ad_hot_launch_post_pone_days"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSplashAdHotLaunchTimeMillis()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.splash_ad_hot_launch_time_millis"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSplashAdHotLaunchTimesPerDay()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.splash_ad_hot_launch_times_per_day"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStaggerCompatBlurRatio()F
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.stagger_compat_blur_ratio"

    const/16 v2, 0x4b

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getStringSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getSubtitleSelectLimitCount()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.subtitle_select_count"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getToolbarCardShowCountPerday()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.toolbar_card_show_count_perday"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getToolbarCardShowInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.toolbar_card_show_interval"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getToolbarCardShowTotalCount()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.toolbar_card_show_total_count"

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTrackingConfigResponse()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getTrackingContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.tracking_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTrackingContent()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    const-string v1, "pref.tracking_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/base/config/GlobalConfig$b;

    invoke-direct {v1, v0}, Lcom/wandoujia/base/config/GlobalConfig$b;-><init>(Landroid/content/SharedPreferences;)V

    return-object v1
.end method

.method public static getTrackingCount()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getTrackingContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.tracking_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTrackingDay()Ljava/lang/Long;
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getTrackingContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.tracking_day"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getTrackingPackNameListResponse()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getTrackingContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.tracking_packagename"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTriggerLoadMoreBeforeLastItemPos()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.trigger_load_more_before_last_item_pos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUnUsedAppSizeLimited()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.unused_app_size_limited_mb"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUnUsedTotalAppSizeLimited()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.unused_total_app_size_limited_mb"

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUnUsedTotalAppSizeLimitedForScan()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.unused_app_total_size_for_scan"

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUnUsedTotalFileSizeLimitedForScan()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.unused_file_total_size"

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUninstallJunkSize()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.uninstall_notify_junk_size"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUpdateJunkRuleInterval()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.update_junk_rules_interval"

    const v2, 0xf731400

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUpgradeFeedbackContactLink()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.upgrade_feedback_contact_link"

    const-string v2, "https://chat.whatsapp.com/LXrhGSAoJ4dL4aVrn7kxPq"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVaultFileCountForHomeScreen()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.vault_file_count_for_home_screen"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVideoDownloadMaxPieceSize()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.video_download_max_piece_size"

    const/high16 v2, 0xb00000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVideoSupportMaxPieceSizeRegex()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.video_support_max_piece_size_regex"

    const-string v2, "https?://[^/]*(youtube.com|youtu.be).*"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVungleBiddingToken()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.vungle_bidding_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWhatsAppNotificationShowTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.whatsapp_notification_show_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getWhatsAppTotalSize()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.whats_app_total_size"

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getXRequestedWithValue()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.x_requested_with_value"

    const-string v2, "com.android.browser"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getYouTubeExLanguageCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_YOUTUBE_EX_LANGUAGE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getYouTubeLanguageCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lo/a04;->d()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_LANGUAGE_CODE_YOUTUBE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZendeskPushShowCountStr()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zendesk_push_show_count"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZendeskPushShowTime()J
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zendesk_push_show_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isAdGifPreloadEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_gif_preload_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAdHomeBackPreloadOnResumed()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_home_back_preload_on_resumed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAdHomeBackShowCacheOnly()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_home_back_show_cache_only"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAdHotLaunchPreloadOnResumed()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_hot_launch_preload_on_resumed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAdPangleAdvertiserReportEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_pangle_advertiser_report_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAdPreloadImagePathEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_preload_image_path_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAdVideoPreloadEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_video_preload_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoInflateEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_auto_inflate_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBackgroundWebExtractEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.background_web_extract_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBatteryChargingNotifyEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.clean_battery_charging_notify_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBatteryLowNotifyEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.clean_battery_low_notify_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBoostNotifyEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.boost_notify_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBoostUpEntranceShowEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.show_boost_up_entrance_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCleanBatterySaveResultJumpGpOpen()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.clean_battery_save_result_jump_gp_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCleanHomeOldUi()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_clean_home_old_ui"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCleanJunkFilesResultJumpGpOpen()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.clean_junk_files_result_jump_gp_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCleanNotifyEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.clean_notify_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCleanPhoneBoostResultJumpGpOpen()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.clean_phone_boost_result_jump_gp_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCleanToolBarEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.notification_toolbar_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCleanToolBarHasJunkEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.clean_tool_bar_has_junk_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDirectoryExist(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isDownloadPluginInMobileNetworkEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_plugin_download_in_mobile"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnableAppUpgradeDownloadWithMobile()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_app_upgrade_download_in_mobile"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnableImageCompressForBigCard()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.ad_enable_image_compress_for_card"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExtractCacheIgnoreFrom()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_extract_cache_ignore_from"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExtractReportSampleDisabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_extract_report_sample_disabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFcmToolNotificationEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.fcm_tool_notification_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFeedbackEnabledInClean()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_feedback_enabled_in_clean"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFeedbackEnabledInMe()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_feedback_enabled_in_me"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFeedbackEnabledInSettings()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_feedback_enabled_in_settings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFeedbackEnabledInUpgrade()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_feedback_enabled_in_upgrade"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFeedbackEnabledInVault()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_feedback_enabled_in_vault"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFeedbackEnabledInVideoDetail()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_feedback_enabled_in_video_detail"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFirebasePerfEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_firebase_perf_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFixedStaggerCoverEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.fixed_stagger_cover_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFluencyMonitorEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref.switches"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.fluency_monitor_switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isForcePermissionDialog()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_dialog_permission_force"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isForceSetDefaultPlayerToStPlayer()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.force_set_st_player"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFromTransferInvited()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.transfer_invited"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlideEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.use_glide_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHasJunkEntranceShowEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.show_has_junk_entrance_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHomeLoginGuideEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.home_login_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHotSearchIconEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_enable_hot_search_icon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHotSearchPresetWordEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_enable_hot_search_preset_word"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isIgnoreMuxOnlinePlay()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_ignore_mux_online_play"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isImmersiveDownloadLoginEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_immersive_download_login"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isInToolsAdNewUserPostpone()Z
    .locals 5

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getFirstLaunchAppDay()J

    move-result-wide v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key.tools_ad_new_user_postpone"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInstallCleanNotificationEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_install_clean_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLargeWindowPlayerEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_large_window_player_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isListVideoPreloadEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_list_video_preload_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLoadingBytesOnlyMux()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_loading_bytes_only_mux"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLogcatReportEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_report_logcat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLyricMetaEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.lyric_meta_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNeedFilterM4AInLargeAudio()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_filter_m4a_format_audio"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNeedSpecialCleanScan()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getLastSpecialCleanScanTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getSpecialCleanCacheInterval()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNeedUpdateJunkRule()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getLastUpdateJunkRuleTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getUpdateJunkRuleInterval()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNewImmersiveDownloadActionEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isSmallHalfRandomId()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "key.enable_new_immersive_download_action"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNewRelicEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_newrelic"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNewUninstallNotifyStrategy()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_new_uninstall_notify_strategy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNotificationPermissionAsked()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.notification_permission_asked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isOnlineSharkScanEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.shark_boost_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isOpenADToastDebug()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_open_ad_toast_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isOtherFullScanEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_other_full_scan_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPermissionGuideA()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_permission_guide_a"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isSmallHalfRandomId()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPlayingOnlineAudio()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_playing_online_audio"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPlayingOnlineVideo()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_playing_online_video"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPluginClassLoaderGcEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "key.is_plugin_classloader_gc_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPreloadInterstitialBoostEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.preload_interstitial_boost"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPreloadInterstitialCleanEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.preload_interstitial_clean"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPreloadInterstitialOnAppBackgroundEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.preload_interstitial_on_app_background"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRemoveUnplayableFormats()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_remove_unplayable_formats"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRewriteVideoUrlEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref.switches"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_rewrite_url"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSTStoryApiExtractEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_st_story_api_extract_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSetGroupForToolbarEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.set_group_for_toolbar_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowContactPopupAfterSubmit()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_show_contact_popup_after_submit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowInterstitialBoostEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.show_interstitial_boost"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowInterstitialCleanEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.show_interstitial_clean"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSmallHalfRandomId()Z
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getRandomId()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStaggerFixedIconEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.stagger_fixed_icon_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isStoragePermissionDeniedWithNoAsk()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "storage_permission_denied_with_no_ask"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportFeedbackContact()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_support_feedback_contact"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportUpgradeFeedbackContact()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_support_upgrade_feedback_contact"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTestIdsRequestEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_test_ids_request"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isToolbarNotificationCancel(Ljava/lang/Boolean;)Z
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_toolbar_notification_cancel"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isToolbarNotificationDefaultShow()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_toolbar_notification_default_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isToolbarNotificationEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_toolbar_notification_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVideoAudioMuxEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_video_audio_mux_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWindowPlayerOptimizeEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_window_player_optimize_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isYoutubeNotShowPushWhenExtractFail()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.youtube_not_show_push_when_extract_fail"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isYtLiveEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.is_yt_live_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static makeSureDirExist(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static needShowEditUserInfoCount()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.need_show_edit_user_info_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static playCountBeforeGuide()I
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.play_count_before_guide"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static reportFeedbackDataEnable()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.report_feedback_user_data_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveFeedbackAuthorId(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_feedback_author_id"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    sput-object p0, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method public static setAppMoveBackTimestamp(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_app_move_back_timestamp"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setBoostUpTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.last_boost_up_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setClickCleanToolBarTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.click_tool_bar_clean_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDownloadLoadPopupShowCount(I)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.download_popup_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setDownloadPopupShowTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.download_popup_show_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setDragonRedirectMetaParam(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.hot_redirect_meta_data_for_video"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFcmToken(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.fcm_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/or6;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setFirstShowToolsBarTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.first_show_tool_bar_notify_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFluencyHasReportTimes(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fluency_has_report_times"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFluencyLastReportTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_fluency_report_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setGAID(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.google_advertising_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setHomeLoginGuideEnable(Z)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.home_login_enable"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setInstalledPluginSize(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "installed_plugin_size"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIsFistShowToolsBar(Z)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.is_first_show_notify"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setKeyLastShowBoostUpNotify(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.last_show_boost_up_notify"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLanguageCode(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_LANGUAGE_CODE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setLastBatteryLowHNotifyShowTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.last_battery_low_show_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastChoosenCaptionLanguageCode(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_choosen_caption_language_code"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastSpecialCleanScanTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.last_special_clean_sacn"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastUpdateJunkRuleTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.last_update_junk_rule_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastUpdateUserTime()V
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.last_user_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastVideoQualityAlias(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_video_quality_alias"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastVideoQualityId(I)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_video_quality_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMintegralBiddingToken(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.mintegral_bidding_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNeedShowEditUserInfoCount(I)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.need_show_edit_user_info_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setNotificationPermissionAsked()V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.notification_permission_asked"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPIPEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.picture_in_picture_enabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPlayEndShowCount(I)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.playend_show_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setPlayEndShowTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.playend_show_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setPlayingOnlineAudio(Z)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_playing_online_audio"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPlayingOnlineVideo(Z)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_playing_online_video"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPlaylistFileFullPath(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "key.play_list_file_video_full_path"

    goto :goto_0

    :cond_0
    const-string p1, "key.play_list_file_audio_full_path"

    :goto_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRandomId(Lcom/wandoujia/base/config/GlobalConfig$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/base/config/GlobalConfig$a;",
            ")V"
        }
    .end annotation

    sput-object p0, Lcom/wandoujia/base/config/GlobalConfig;->sLazy:Lcom/wandoujia/base/config/GlobalConfig$a;

    return-void
.end method

.method public static setShareAnimLastShowTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.share_anim_last_show_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setShowedEditUserInfoCount(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key.showed_edit_user_info_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setStoragePermissionDeniedWithNoAsk()V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "storage_permission_denied_with_no_ask"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrackingConfigResponse(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getTrackingContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.tracking_config"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrackingCount(I)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getTrackingContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.tracking_config"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrackingDay(Ljava/lang/Long;)V
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getTrackingContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.tracking_day"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTrackingPackNameListResponse(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getTrackingContent()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.tracking_packagename"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTransferInvited(Z)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.transfer_invited"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUninstallJunkSize(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.uninstall_notify_junk_size"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static setVungleBiddingToken(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.vungle_bidding_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWhatsAppNotificationShowTime(J)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key.whatsapp_notification_show_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setYouTubeExLanguageCode(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_YOUTUBE_EX_LANGUAGE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lo/wa7;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static shouldCheckPluginUpdateWhenError()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.should_check_plugin_update_when_error"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldCreateMusicShortcut()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.should_create_music_shortcut"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldEvokeWindowPlayerWhenUserLeaveApp()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.should_evoke_window_player_when_user_leave_app"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldIgnoreDiversionLimitOnPreload()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.preload_ignore_diversion_limit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldPreloadFeedStreamAd()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.feed_stream_ad_preload_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldPreloadPopupExitAd()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.popup_exit_ad_preload_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldPreventDownloadRecommendsForCaller()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.should_prevent_download_recommends_for_caller"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldReloadOverduePushVideo()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.should_reload_overdue_push_video"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldShowLogo()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.should_show_logo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldShowPushAfterVideoPreloaded()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.should_show_push_after_video_preloaded"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showMenuAsCloseButton()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.show_menu_as_close_button"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateFeedbackTime()V
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_feedback_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateZendeskPushShowCountStr(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zendesk_push_show_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateZendeskPushShowTime()V
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zendesk_push_show_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static useNotFullScreenVideoCard()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.use_video_card_not_full_screen_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useVideoCardV2()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefSwitch()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.use_video_card_v2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static videoSourceFilterForPlayCount()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.video_source_filter_for_play_count"

    const-string v2, "snaptube|whiteGloves"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
