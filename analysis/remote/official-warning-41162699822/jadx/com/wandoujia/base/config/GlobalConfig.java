package com.wandoujia.base.config;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.source.ExtractorMediaSource;
import com.snaptube.dataadapter.plugin.YouTubeCookieJar;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import net.pubnative.mediation.config.model.RequestTimeModel;
import o.a04;
import o.ax3;
import o.bm5;
import o.or6;
import o.wa7;
import org.jetbrains.annotations.Nullable;

public class GlobalConfig {
    private static final int AUTO_QUALITY_ID = Integer.MAX_VALUE;
    private static final int DEFAULTFILE_COUNT_FOR_VAULT = 30;
    private static final String DEFAULT_ADSENSE_HOST_REGEX = ".*google.*|.*gstatic.*|.*doubleclick.*";
    private static final int DEFAULT_BATTERY_CLEAN_INTERVAL = 1800000;
    private static final int DEFAULT_BATTERY_LOW_NOTIFY_SHOW_INTERVAL = 43200000;
    private static final String DEFAULT_BATTERY_WHITE_LIST = "com.snaptube.premium|com.dywx.larkplayer|com.vstatus.premium";
    private static final int DEFAULT_BOOST_UP_MEMORY_DIFF_VALUE = 1;
    private static final int DEFAULT_BOOST_UP_SHOW_INTERVAL = 43200000;
    private static final int DEFAULT_BOOST_UP_SHOW_LIMIT = 60;
    private static final String DEFAULT_CACHEKEY_IGNORED_KEY = "extract_pos|Expires|Signature|Key-Pair-Id|Policy";
    private static final int DEFAULT_CLEAN_NOTIFY_INTERVAL = 43200000;
    private static final int DEFAULT_CLICK_CLEAN_TOOL_INTERVAL = 21600000;
    private static final int DEFAULT_DAY_UN_USED_APP_FOR_SCAN = 30;
    private static final int DEFAULT_DOWNLOAD_PIECE_SIZE = 11534336;
    private static final boolean DEFAULT_ENABLED_REWRITE_URL = true;
    private static final int DEFAULT_FILE_TOTAL_SIZE = 200;
    private static final int DEFAULT_FLUENCY_REPORT_TIMES = 3;
    private static final int DEFAULT_FOREGROUND_SCAN_TIME = 300;
    private static final int DEFAULT_FRAME_TIME_THRESHOLD = 100;
    private static final int DEFAULT_FULL_SCAN_INTERVAL_TIME = 86400000;
    public static final int DEFAULT_JUNK_INFO_SIZE_LIMIT_FOR_NOTIFY = 838860800;
    private static final int DEFAULT_LARGE_FILE_SIZE_LIMIT_FOR_CARD = 1024;
    private static final int DEFAULT_LARGE_FILE_SIZE_LIMIT_FOR_NOTIFY = 1024;
    private static final int DEFAULT_NOTIFY_BOOST_UP_SHOW_LIMIT = 80;
    private static final int DEFAULT_NOTIFY_ICON_CHANGE_INTERVAL = 604800000;
    private static final String DEFAULT_OFFICIAL_URL = "https://www.snaptube.com";
    private static final int DEFAULT_PHONE_STORAGE_SIZE_LIMIT_FOR_NOTIFY = 1024;
    private static final String DEFAULT_PRIVATE_VIDEO_HOST = "mobiuspace.com";
    private static final int DEFAULT_SAPP_LAST_USED_DAYS_INTERVAL = 30;
    private static final int DEFAULT_SHOW_LARGE_FILE_NOTIFY_INTERVAL = 432000;
    private static final int DEFAULT_SIZE_UN_USED_APP_FOR_SCAN = 200;
    private static final int DEFAULT_UPDATE_JUNK_RULE_INTERVAL = 259200000;
    private static final int DEFAULT_WHATSAPP_FILE_SIZE = 1024;
    private static final int DEFAULT_WHATSAPP_SCAN_INTERVAL = 3600000;
    private static final int DEFAULT_WHATSAPP_SHOW_INTERVAL = 432000000;
    private static final int DEFAULT_WHATSAPP_SIZE_PERCENT = 5;
    private static final int DEFAULT_WHATS_APP_TOTAL_SIZE = 500;
    private static final String DEFAULT_X_REQUESTED_WITH_NETWORK_OPERATOR_REGEX = "Jio.*";
    private static final String DEFAULT_X_REQUESTED_WITH_TARGET_HOST_REGEX = "https?://m\\.youtube\\.com.*";
    private static final String DEFAULT_X_REQUESTED_WITH_VALUE = "com.android.browser";
    public static final String ENABLE_INSTALL_CLEAN_NOTIFICATION = "key.enable_install_clean_notification";
    public static final String GENERAL_KEY_DISABLE_AD_USEIP = "key.disable_ad_use_ip";
    public static final String GENERAL_KEY_ENABLE_AD_PREVIEW_MODE = "key.disable_ad_preview_mode";
    private static final int HALF_RANDOM_ID = 50;
    private static final String IGNORE_POS_REGEX_DEFAULT = "search_all|search_status";
    private static final String INSTALLED_PLUGIN_SIZE = "installed_plugin_size";
    private static final String KEY_ADSENSE_HOST_REGEX = "key.adsense_host_regex";
    private static final String KEY_ADX_PLACEMENT_REGEX = "key.adx_placement_id_regex";
    private static final String KEY_AD_ACTIVITY_NAME_LIST = "key.ad_activity_name_list";
    private static final String KEY_AD_ENABLE_IMAGE_COMPRESS_FOR_BIG_CARD = "key.ad_enable_image_compress_for_card";
    private static final String KEY_AD_GIF_PRELOAD_ENABLE = "key.ad_gif_preload_enable";
    private static final String KEY_AD_HOME_BACK_IMPRESSION_INTERVAL = "key.ad_home_back_impr_interval";
    public static final String KEY_AD_HOME_BACK_IMPRESSION_TIMES = "key.ad_home_back_impression_times";
    public static final String KEY_AD_HOME_BACK_LAST_IMPRESSION_DAY = "key.ad_home_back_last_impression_day";
    private static final String KEY_AD_HOME_BACK_LAST_STAY_SECOND = "key.ad_home_back_last_stay_second";
    private static final String KEY_AD_HOME_BACK_LOAD_RETRY_COUNT = "key.ad_home_back_load_retry_count";
    private static final String KEY_AD_HOME_BACK_MAX_TIMES_PER_DAY = "key.ad_home_back_max_times_per_day";
    private static final String KEY_AD_HOME_BACK_PRELOAD_ON_RESUMED = "key.ad_home_back_preload_on_resumed";
    private static final String KEY_AD_HOME_BACK_SHOW_CACHE_ONLY = "key.ad_home_back_show_cache_only";
    public static final String KEY_AD_HOT_LAUNCH_LOAD_RETRY_COUNT = "key.ad_hot_launch_load_retry_count";
    private static final String KEY_AD_HOT_LAUNCH_PRELOAD_ON_RESUMED = "key.ad_hot_launch_preload_on_resumed";
    private static final String KEY_AD_INTERSTITIAL_IMPRESSION_INTERVAL = "key.ad_interstitial_impression_interval";
    private static final String KEY_AD_PANGLE_ADVERTISER_REPORT_ENABLED = "key.ad_pangle_advertiser_report_enable";
    private static final String KEY_AD_PRELOAD_IMAGE_PATH_ENABLE = "key.ad_preload_image_path_enable";
    private static final String KEY_AD_RESOURCE_CACHE_SP_LENGTH = "key.ad_resource_cache_sp_length";
    private static final String KEY_AD_VIDEO_CHECK_LOADED_MIN_LENGTH = "key.ad_video_check_loaded_min_length";
    private static final String KEY_AD_VIDEO_PRELOAD_ENABLE = "key.ad_video_preload_enable";
    private static final String KEY_AD_VIDEO_PRELOAD_LENGTH = "key.ad_video_preload_length";
    public static final String KEY_APP_LAST_USED_DAYS_INTERVAL = "key.app_last_used_days_interval";
    private static final String KEY_APP_MOVE_BACK_TIMESTAMP = "key_app_move_back_timestamp";
    private static final String KEY_AUDIO_DOWNLOAD_MAX_PIECE_SIZE = "key.audio_download_max_piece_size";
    private static final String KEY_AUDIO_SUPPORT_MAX_PIECE_SIZE_REGEX = "key.audio_support_max_piece_size_regex";
    private static final String KEY_BACKGROUND_WEB_EXTRACT_ENABLE = "key.background_web_extract_enable";
    public static final String KEY_BATTERY_CHARGING_NOTIFY_SHOW_INTERVAL = "key.battery_charging_notify_show_interval";
    public static final String KEY_BATTERY_CLEAN_INTERVAL = "key.battery_clean_interval";

    @Deprecated
    public static final String KEY_BATTERY_LOW_NOTIFY_SHOW_INTERVAL = "key.battery_low_notify_show_interval";
    private static final String KEY_BATTERY_WHITE_LIST = "key.battery_white_list";
    private static final String KEY_BOOST_NOTIFY_ENABLE = "key.boost_notify_enable";
    private static final String KEY_BOOST_UP_MEMORY_DIFF = "key.boost_up_memory_diff";

    @Deprecated
    private static final String KEY_BOOST_UP_SHOW_INTERVAL = "key.boost_up_show_interval";
    private static final String KEY_BOOST_UP_SHOW_LIMIT = "key.boost_up_show_limt";
    public static final String KEY_BT_TRACKERS_BLOCKER_ENABLE = "key.bt_trackers_blocker_enable";
    public static final String KEY_BT_TRACKERS_BLOCKER_URL = "key.bt_trackers_blocker_url";
    private static final String KEY_CACHEKEY_IGNORED_KEYS = "key.cachekey_ignored_params";
    private static final String KEY_CATEGORY_LABEL = "key.category_label";
    public static final String KEY_CHANGE_SMALL_CARD_TO_BIG = "key.sensor_change_small_card_to_big_card";
    private static final String KEY_CLEAN_ANDROID_11_APP_CACHE_ENABLE = "key.clean_android_11_app_cache_eanble";
    private static final String KEY_CLEAN_BATTERY_CHARGING_ENABLE = "key.clean_battery_charging_notify_enable";
    private static final String KEY_CLEAN_BATTERY_LOW_ENABLE = "key.clean_battery_low_notify_enable";
    private static final String KEY_CLEAN_BATTERY_SAVE_RESULT_JUMP_GP_SWITCH = "key.clean_battery_save_result_jump_gp_switch";
    private static final String KEY_CLEAN_HOME_ANIM_INTERVAL_IN_MS = "key.clean_home_anim_interval_in_ms";
    private static final String KEY_CLEAN_JUNK_FILES_RESULT_JUMP_GP_SWITCH = "key.clean_junk_files_result_jump_gp_switch";
    private static final String KEY_CLEAN_NOTIFY_ENABLE = "key.clean_notify_enable";
    private static final String KEY_CLEAN_PHONE_BOOST_RESULT_JUMP_GP_SWITCH = "key.clean_phone_boost_result_jump_gp_switch";
    public static final String KEY_CLEAN_TOOL_BAR_HAS_JUNK_ENABLE = "key.clean_tool_bar_has_junk_enable";
    private static final String KEY_CLICK_CLEAN_NOTIFY_INTERVAL = "key.click_clean_notify_interval";
    public static final String KEY_CLICK_CLEAN_TOOL_BAR_INTERVAL = "key.click_clean_tool_bar_interval";
    public static final String KEY_CLICK_TOOL_BAR_CLEAN_TIME = "key.click_tool_bar_clean_time";
    public static final String KEY_CONTINUE_LOADING_CHECK_INTERVAL_BYTES = "key.continue_loading_check_interval_bytes";
    public static final String KEY_DATA = "key.data";
    public static final String KEY_DAY_FOR_APP_SORT_LIST = "key.day_for_spp_sort_list";
    private static final String KEY_DISABLE_LIVECHAT_SAMPLE_DAYS = "key.disable_livechat_sample_days";
    private static final String KEY_DISCOVERY_YOUTUBE_ADAPTER_PLUGIN_ENABLED = "key.discovery_youtube_adapter_plugin_enabled";
    private static final String KEY_DISCOVER_REGION_CODES = "key.discover_region_codes";
    public static final String KEY_DOWNLOAD_ARTICLE_ID = "key.download_helper_article_id";
    private static final String KEY_DOWNLOAD_POPUP_COUNT = "key.download_popup_count";
    private static final String KEY_DOWNLOAD_POPUP_SHOW_TIME = "key.download_popup_show_time";
    public static final String KEY_DOWNLOAD_RETRY_DELAY_SECONDS = "key.download_retry_delay_seconds";
    private static final String KEY_DOWNLOAD_UES_EXTRACT_CACHE_ENABLED = "key.download_use_extract_cache_enabled";
    private static final String KEY_DRAGON_REDIRECT_META_PARAM = "key.hot_redirect_meta_data_for_video";
    private static final String KEY_DT_PLACEMENT_REGEX = "key.dt_placement_id_regex";
    public static final String KEY_DUPLICATED_GUIDE_ENABLE = "key.duplicated_guide_enable";
    private static final String KEY_ENABLED_REWRITE_URL = "key.enable_rewrite_url";
    private static final String KEY_ENABLE_APP_UPGRADE_DOWNLOAD_ID_MOBILE = "key.enable_app_upgrade_download_in_mobile";
    private static final String KEY_ENABLE_DIRECT_JUMP_TO_GP_IN_LOCAL_PLAY = "key.enable_direct_jump_to_gp_in_local_play";
    private static final String KEY_ENABLE_FEED_ITEM_EXPOSURE_TRACK = "key.enable_feed_item_exposure_track";
    public static final String KEY_ENABLE_IMMERSIVE_DOWNLOAD_LOGIN = "key.enable_immersive_download_login";
    private static final String KEY_ENABLE_JUMP_TO_WEBVIEW_WHEN_PLAY_FAIL = "key.enable_jump_to_webview_when_play_fail";
    private static final String KEY_ENABLE_MUSIC_BAR = "key.enable_music_bar";
    private static final String KEY_ENABLE_NEWRELIC = "key.enable_newrelic";
    public static final String KEY_ENABLE_NEW_IMMERSIVE_DOWNLOAD_ACTION = "key.enable_new_immersive_download_action";
    private static final String KEY_ENABLE_NEW_USER_PROTECTION = "key.enable_new_user_protection";
    private static final String KEY_ENABLE_PLAY_BEFORE_GUIDE = "key.enable_play_before_guide";
    private static final String KEY_ENABLE_PLUGIN_DOWNLOAD_IN_MOBILE = "key.enable_plugin_download_in_mobile";
    public static final String KEY_ENABLE_REPORT_LOGCAT = "key.enable_report_logcat";
    private static final String KEY_ENABLE_TEST_IDS_REQUEST = "key.enable_test_ids_request";
    private static final String KEY_ENABLE_TRACK_YOUTUBE_PLAY_WEBVIEW = "key.enable_track_youtube_play_webview";
    public static final String KEY_EXTENSION_API_SAMPLE = "key.extension_api_sample";
    public static final String KEY_FACEBOOK_APP_EVENTS_ENABLED = "key.facebook_app_events_enabled";
    private static final String KEY_FCM_TOKEN = "key.fcm_token";
    private static final String KEY_FCM_TOOLBAR_ENABLE = "key.fcm_toolbar_enable";
    private static final String KEY_FCM_TOOLBAR_SHOW_INTERVAL = "key.fcm_toolbar_show_interval";
    private static final String KEY_FCM_TOOL_NOTIFICATION_ENABLE = "key.fcm_tool_notification_enable";
    public static final String KEY_FEEDBACK_ALL_ARTICLES_ID = "key.feedback_all_articles_id";
    public static final String KEY_FEEDBACK_ARTICLE_URL_REGEX = "key.feedback_article_url_regex";
    public static final String KEY_FEEDBACK_AUTHOR_ID = "key_feedback_author_id";
    public static final String KEY_FEEDBACK_CONTACT_LINK_IN_FORM = "key.feedback_contact_link_in_form";
    public static final String KEY_FEEDBACK_CONTACT_LINK_IN_VAULT = "key.feedback_contact_link_in_vault";
    public static final String KEY_FEEDBACK_DEFAULT_EMAIL = "key.feedback_default_email";
    public static final String KEY_FEEDBACK_LOCALE = "key.feedback_locale";
    public static final String KEY_FEEDBACK_TIME = "key_feedback_time";
    public static final String KEY_FEEDBACK_TOP_ARTICLES_ID = "key.feedback_top_articles_id";
    public static final String KEY_FEEDBACK_URL = "key.feedback_url";
    private static final String KEY_FEED_STREAM_AD_LOG_ENABLED = "key.feed_stream_ad_log_enable";
    private static final String KEY_FEED_STREAM_AD_PRELOAD_DELAY_MILLIS = "key.feed_stream_ad_preload_delay_millis";
    private static final String KEY_FEED_STREAM_AD_PRELOAD_ENABLED = "key.feed_stream_ad_preload_enable";
    private static final String KEY_FILE_TOTAL_SIZE = "key.unused_file_total_size";
    public static final String KEY_FILE_TYPE = "key.file_type";
    public static final String KEY_FILTER_BEAN = "key.filter_bean_info";
    public static final String KEY_FILTER_INSTALL_GUIDE_BEAN = "key.filter_guide_install_bean_info";
    private static final String KEY_FIRST_LAUNCH_APP_TIME = "first_launch_app_time";
    public static final String KEY_FIRST_SHOW_NOTIFY_TOOL_BAR_TIME = "key.first_show_tool_bar_notify_time";
    public static final String KEY_FIXED_STAGGER_COVER_ENABLED = "key.fixed_stagger_cover_enabled";
    private static final String KEY_FLUENCY_MONITOR_REPORT_TIMES = "key.fluency_monitor_report_times";
    private static final String KEY_FLUENCY_MONITOR_SWITCH = "key.fluency_monitor_switch";
    public static final String KEY_FORBIDDENT_PLUGIN_IDS = "key.forbidden_plugin_ids";
    public static final String KEY_FORCE_SET_ST_PLAYER = "key.force_set_st_player";
    private static final String KEY_FOREGROUND_SCAN_TIME = "key.online_foreground_scan_time";
    private static final String KEY_FRAME_MONITOR_TIME_THRESHOLD = "key.frame_monitor_time_threshold";
    private static final String KEY_FULL_SCAN_INTERVAL_TIME = "key.full_scan_interval_time";
    private static final String KEY_GOOGLE_ADVERTISING_ID = "key.google_advertising_id";
    public static final String KEY_HMS_CONFIG = "key.hms_config";
    private static final String KEY_HOME_LOGIN_ENABLE = "key.home_login_enable";
    public static final String KEY_IGNORE_AD_POS = "key.ignore_ad_regex";
    public static final String KEY_IGNORE_GUIDE_POS = "key.ignore_guide_regex";
    private static final String KEY_IMAGE_APP_URL = "key.image_app_url";
    private static final String KEY_INSERTABLE_NEXT_PATHS = "key.insertable_next_paths";
    private static final String KEY_INSERT_TASK_OPTIMIZE_SWITCH = "key.insert_task_optimize_switch";
    private static final String KEY_INSTAGRAM_TO_CHOOSE_FORMAT_DIRECTLY = "key.instagram_to_choose_format_directly";
    public static final String KEY_INSTALL_APK_SPACE_SIZE_EXTRA_MULTIPLE = "key.install_apk_space_size_extra_multiple";
    public static final String KEY_IS_AUTO_INFLATE_ENABLE = "key.is_auto_inflate_enable";
    private static final String KEY_IS_CLEAN_HOME_OLD_UI = "key.is_clean_home_old_ui";
    public static final String KEY_IS_CONTENT_DISCOVERY_REGION = "KEY_IS_CONTENT_DISCOVERY_REGION";
    private static final String KEY_IS_DIALOG_PERMISSION_FORCE = "key.is_dialog_permission_force";
    public static final String KEY_IS_ENABLE_HOT_SEARCH_ICON = "key.is_enable_hot_search_icon";
    public static final String KEY_IS_ENABLE_HOT_SEARCH_PRESET_WORD = "key.is_enable_hot_search_preset_word";
    public static final String KEY_IS_EXTRACT_CACHE_IGNORE_FROM = "key.is_extract_cache_ignore_from";
    public static final String KEY_IS_EXTRACT_REPORT_SAMPLE_DISABLED = "key.is_extract_report_sample_disabled";
    public static final String KEY_IS_FEEDBACK_ENABLED_IN_CLEAN = "key.is_feedback_enabled_in_clean";
    public static final String KEY_IS_FEEDBACK_ENABLED_IN_ME = "key.is_feedback_enabled_in_me";
    public static final String KEY_IS_FEEDBACK_ENABLED_IN_SETTINGS = "key.is_feedback_enabled_in_settings";
    public static final String KEY_IS_FEEDBACK_ENABLED_IN_UPGRADE = "key.is_feedback_enabled_in_upgrade";
    public static final String KEY_IS_FEEDBACK_ENABLED_IN_VAULT = "key.is_feedback_enabled_in_vault";
    public static final String KEY_IS_FEEDBACK_ENABLED_IN_VIDEO_DETAIL = "key.is_feedback_enabled_in_video_detail";
    private static final String KEY_IS_FILTER_M4A_FORMAT_LARGE_AUDIO = "key.is_filter_m4a_format_audio";
    public static final String KEY_IS_FIREBASE_PERF_ENABLE = "key.is_firebase_perf_enable";
    public static final String KEY_IS_FIRST_SHOW_NOTIFY = "key.is_first_show_notify";
    public static final String KEY_IS_IGNORE_MUX_ONLINE_PLAY = "key.is_ignore_mux_online_play";
    private static final String KEY_IS_LARGE_WINDOW_PLAYER_ENABLED = "key.is_large_window_player_enabled";
    private static final String KEY_IS_LIST_VIDEO_PRELOAD_ENABLE = "key.is_list_video_preload_enabled";
    public static final String KEY_IS_LOADING_BYTES_ONLY_MUX = "key.is_loading_bytes_only_mux";
    public static final String KEY_IS_NEW_UNINSTALL_NOTIFY_STRATEGY = "key.is_new_uninstall_notify_strategy";
    public static final String KEY_IS_OPEN_AD_TOAST_DEBUG = "is_open_ad_toast_debug";
    private static final String KEY_IS_OTHER_FULL_SCAN_ENABLE = "key.is_other_full_scan_enable";
    private static final String KEY_IS_PERMISSION_GUIDE_A = "key.is_permission_guide_a";
    private static final String KEY_IS_PLUGIN_CLASSLOADER_GC_ENABLED = "key.is_plugin_classloader_gc_enabled";
    public static final String KEY_IS_REMOVE_UNPLAYABLE_FORMATS = "key.is_remove_unplayable_formats";
    public static final String KEY_IS_SHOW_CONTACT_POPUP_AFTER_SUBMIT = "key.is_show_contact_popup_after_submit";
    public static final String KEY_IS_ST_STORY_API_EXTRACT_ENABLED = "key.is_st_story_api_extract_enabled";
    public static final String KEY_IS_SUPPORT_FEEDBACK_CONTACT = "key.is_support_feedback_contact";
    public static final String KEY_IS_SUPPORT_UPGRADE_FEEDBACK = "key.is_support_upgrade_feedback_contact";
    private static final String KEY_IS_TOOLBAR_NOTIFICATION_CANCEL = "key.is_toolbar_notification_cancel";
    private static final String KEY_IS_TOOLBAR_NOTIFICATION_DEFAULT_SHOW = "key.is_toolbar_notification_default_show";
    private static final String KEY_IS_TOOLBAR_NOTIFICATION_ENABLED = "key.is_toolbar_notification_enabled";
    private static final String KEY_IS_VIDEO_AUDIO_MUX_ENABLED = "key.is_video_audio_mux_enabled";
    private static final String KEY_IS_WINDOW_PLAYER_OPTIMIZE_ENABLED = "key.is_window_player_optimize_enabled";
    private static final String KEY_IS_X_REQUESTED_WITH_REWRITE_ENABLED = "key.is_x_requested_with_rewrite_enabled";
    private static final String KEY_IS_X_REQUESTED_WITH_REWRITE_RANDOM_VALUE_ENABLED = "key.is_x_requested_with_rewrite_random_value_enabled";
    private static final String KEY_IS_X_REQUESTED_WITH_REWRITE_RESOURCES_ENABLED = "key.is_x_requested_with_rewrite_resources_enabled";
    public static final String KEY_IS_YT_LIVE_ENABLED = "key.is_yt_live_enabled";
    private static final String KEY_JUNK_SIZE_LIMIT_FOR_NOTIFY = "key.junk_size_limit_for_notify";
    private static final String KEY_KEEP_BG_SERVICE_OPT_ENABLE = "key.bg_service_opt_enable";
    private static final String KEY_KEEP_BG_SERVICE_OPT_INTERVAL = "key.bg_service_opt_interval";
    public static final String KEY_LANGUAGE_CODE = "KEY_LANGUAGE_CODE";
    public static final String KEY_LANGUAGE_CODE_YOUTUBE = "KEY_LANGUAGE_CODE_YOUTUBE";
    private static final String KEY_LARGE_FILE_SIZE_LIMIT_FOR_CARD = "key.large_file_size_limit_for_card";
    private static final String KEY_LARGE_FILE_SIZE_LIMIT_FOR_NOTIFY = "key.large_file_size_limit_for_notify";
    public static final String KEY_LAST_BATTERY_LOW_NOTIFY_SHOW_TIME = "key.last_battery_low_show_time";
    private static final String KEY_LAST_BOOST_UP_TIME = "key.last_boost_up_time";
    private static final String KEY_LAST_CHOOSEN_CAPTION_LANGUAGE_CODE = "last_choosen_caption_language_code";
    private static final String KEY_LAST_SCAN_SPECIAL_CLEAN = "key.last_special_clean_sacn";
    private static final String KEY_LAST_SHOW_BOOST_UP_NOTIFY = "key.last_show_boost_up_notify";
    public static final String KEY_LAST_UPDATE_JUNK_RULE_TIME = "key.last_update_junk_rule_time";
    private static final String KEY_LAST_VIDEO_QUALITY_ALIAS = "last_video_quality_alias";
    private static final String KEY_LAST_VIDEO_QUALITY_ID = "last_video_quality_id";
    private static final String KEY_LIMIT_VIDEO_COUNT = "key.limit_video_count";
    public static final String KEY_LYRIC_META_ENABLE = "key.lyric_meta_enable";
    public static final String KEY_MAX_ACTIVATE_COUNT = "key.max_activate_count";
    private static final String KEY_MAX_PUSH_PRELOAD_TIME = "key.max_push_preload_time";
    private static final String KEY_MINTEGRAL_BIDDING_TOKEN = "key.mintegral_bidding_token";
    public static final String KEY_MOVIE_VIDEO_JUDGMENT = "key.movie_video_judgment";
    public static final String KEY_MULTI_THREAD_TASK_MAX_DOWNLOAD_RETRY_TIMES = "key.multi_thread_task_max_download_retry_times";
    private static final String KEY_NEED_SHOW_EDIT_USER_INFO_COUNT = "key.need_show_edit_user_info_count";
    public static final String KEY_NEW_IMMERSIVE_DOWNLOAD_EXCLUDE_PACKAGE_NAMES = "key.new_immersive_download_exclude_package_names";
    public static final String KEY_NEW_PACKAGE_NAME = "key.new_package_name";
    private static final String KEY_NOTIFICATION_PERMISSION_ASKED = "key.notification_permission_asked";
    private static final String KEY_NOTIFY_BOOST_UP_SHOW_INTERVAL = "key.notify_boost_up_show_interval";
    private static final String KEY_NOTIFY_BOOST_UP_SHOW_LIMIT = "key.notify_boost_up_show_limt";
    private static final String KEY_NOTIFY_ICON_CHANGE_INTERVAL = "key.notify_icon_change_interval";
    private static final String KEY_NOT_FULL_CARD_LEFT_RIGNT_PADDING = "key.not_full_screen_left_right_padding";
    private static final String KEY_NUMBER_OF_DAYS_IN_NEW_USER = "key.number_of_days_in_new_user";
    public static final String KEY_OFFICIAL_SITE_URL = "key.official_site_url";
    public static final String KEY_OLD_PACKAGE_NAME = "key.old_package_name";
    private static final String KEY_PHONE_STORAGE_SIZE_LIMIT_FOR_LARGE_FILE_NOTIFY = "key.phone_storage_size_limit_for_large_file_notify";
    private static final String KEY_PIP_ENABLED = "key.picture_in_picture_enabled";
    public static final String KEY_PLATFORM_PLUGIN_CONFIG_REFRESH_INTERVAL_IN_HOURS = "key.platform_plugin_config_refresh_interval_in_hours";
    private static final String KEY_PLAYEND_SHOW_COUNT = "key.playend_show_count";
    private static final String KEY_PLAYEND_SHOW_TIME = "key.playend_show_time";
    private static final String KEY_PLAY_COUNT_BEFORE_GUIDE = "key.play_count_before_guide";
    public static final String KEY_PLAY_GUIDE_SUCCESS_MAX_TIMES_PER_DAY = "key.play_guide_success_max_times_per_day";
    private static final String KEY_PLAY_LIST_FILE_AUDIO_FULL_PATH = "key.play_list_file_audio_full_path";
    private static final String KEY_PLAY_LIST_FILE_VIDEO_FULL_PATH = "key.play_list_file_video_full_path";
    public static final String KEY_PLUGIN_AUTO_INSTALL_INFO = "key.plugin_auto_install_info";
    private static final String KEY_PLUGIN_CHECK_MAX_AGE = "key.plugin_check_max_age";
    private static final String KEY_PLUGIN_MOBILE_DOWNLOAD_SIZE_LIMIT = "key.plugin_mobile_download_size_limit";
    public static final String KEY_PLUGIN_TOTAL_LIMIT = "key.plugin_total_limit";
    private static final String KEY_POPUP_EXIT_AD_PRELOAD_ENABLED = "key.popup_exit_ad_preload_enable";

    @Deprecated
    private static final String KEY_POPUP_UES_EXTRACT_CACHE_HOST = "key.popup_use_extract_cache_host";
    public static final String KEY_PREFIX_POST_DAYS = "key.post_days_";
    private static final String KEY_PRELOAD_IGNORE_DIVERSION_LIMIT = "key.preload_ignore_diversion_limit";
    private static final String KEY_PRELOAD_INTERSTITIAL_BOOST = "key.preload_interstitial_boost";
    private static final String KEY_PRELOAD_INTERSTITIAL_CLEAN = "key.preload_interstitial_clean";
    private static final String KEY_PRELOAD_INTERSTITIAL_ON_APP_BACKGROUND = "key.preload_interstitial_on_app_background";
    private static final String KEY_PRIVATE_VIDEO_HOST = "key.private_video_host";
    private static final String KEY_PUSH_BLACKLIST = "key.push_blacklist";
    private static final String KEY_PUSH_EXPIRE_TIME = "key.push_expire_time";
    public static final String KEY_PUSH_POS_REGEX = "key.push_pos_regex";
    public static final String KEY_REPORT_FEEDBACK_DATA_ENABLE = "key.report_feedback_user_data_enable";
    public static final String KEY_SECONDARY_EXTRACT_DETAILS_ENABLED = "key.secondary_extract_details_enabled";
    public static final String KEY_SELDOM_APP_NOTIFY_CONFIG = "key.seldom_app_notify_config";
    public static final String KEY_SELFBUILD_AD_REQUEST_SCHEME_HOST = "key.selfbuild_ad_request_scheme_host";
    public static final String KEY_SELFBUILD_AD_UPDATE_WHEN_INIT = "key.selfbuild_ad_update_when_init";
    private static final String KEY_SET_GROUP_FOR_TOOLBAR_NOTIFICATION_ENABLE = "key.set_group_for_toolbar_notification";
    private static final String KEY_SHARE_ANIM_LAST_SHOW_TIME = "key.share_anim_last_show_time";
    private static final String KEY_SHARK_BOOST_ENABLE = "key.shark_boost_enable";
    private static final String KEY_SHOULD_CHECK_PLUGIN_UPDATE_WHEN_ERROR = "key.should_check_plugin_update_when_error";
    public static final String KEY_SHOULD_CLICK_FEED_CARD_TO_DETAIL = "key.should_click_feed_card_to_detail";
    private static final String KEY_SHOULD_CREATE_MUSIC_SHORTCUT = "key.should_create_music_shortcut";
    private static final String KEY_SHOULD_EVOKE_WINDOW_PLAYER_WHEN_USER_LEAVE_APP = "key.should_evoke_window_player_when_user_leave_app";
    private static final String KEY_SHOULD_PREVENT_DOWNLOAD_RECOMMENDS_FOR_CALLER = "key.should_prevent_download_recommends_for_caller";
    private static final String KEY_SHOULD_RELOAD_OVERDUE_PUSH_VIDEO = "key.should_reload_overdue_push_video";
    public static final String KEY_SHOULD_SHOW_LOGO = "key.should_show_logo";
    public static final String KEY_SHOULD_SHOW_NEW_CONTENT_GUIDE = "key.should_show_new_content_guide";
    private static final String KEY_SHOULD_SHOW_PUSH_AFTER_VIDEO_PRELOADED = "key.should_show_push_after_video_preloaded";
    private static final String KEY_SHOWED_EDIT_USER_INFO_COUNT = "key.showed_edit_user_info_count";
    private static final String KEY_SHOW_BOOST_UP_ENTRANCE_ENABLE = "key.show_boost_up_entrance_enable";
    private static final String KEY_SHOW_HAS_JUNK_ENTRANCE_ENABLE = "key.show_has_junk_entrance_enable";
    private static final String KEY_SHOW_INTERSTITIAL_BOOST = "key.show_interstitial_boost";
    private static final String KEY_SHOW_INTERSTITIAL_CLEAN = "key.show_interstitial_clean";
    private static final String KEY_SHOW_LARGE_FILE_NOTIFY_INTERVAL = "key.show_large_file_notify_interval";
    private static final String KEY_SHOW_MENU_AS_CLOSE_BUTTON = "key.show_menu_as_close_button";
    private static final String KEY_SNAPTUBEAPP_NATIVE_PATH_SET = "key.snaptubeapp_native_path_set";
    private static final String KEY_SNAPTUBE_HOME_PAGE_URL = "key.snaptube_home_page_url";
    public static final String KEY_SNAP_CLEANER_PACKAGE_NAME = "key.snap_cleaner_package_name";
    private static final String KEY_SPECIAL_CLEAN_CACHE_INTERVAL = "key.special_clean_cache_interval";
    public static final String KEY_SPLASH_AD_CONFIG = "key.splash_ad_config";
    public static final String KEY_SPLASH_AD_HOT_LAUNCH_AD_POS = "key.splash_ad_hot_launch_ad_pos";
    public static final String KEY_SPLASH_AD_HOT_LAUNCH_BG_COUNT = "key.splash_ad_hot_launch_bg_count";
    public static final String KEY_SPLASH_AD_HOT_LAUNCH_IMPRESSION_TIMES = "key.splash_ad_hot_launch_impression_times";
    public static final String KEY_SPLASH_AD_HOT_LAUNCH_IMPR_MIN_MILLIS = "key.splash_ad_hot_launch_impr_min_millis";
    public static final String KEY_SPLASH_AD_HOT_LAUNCH_LAST_IMPRESSION_DAY = "key.splash_ad_hot_launch_last_impression_day";
    public static final String KEY_SPLASH_AD_HOT_LAUNCH_POST_PONE_DAYS = "key.splash_ad_hot_launch_post_pone_days";
    public static final String KEY_SPLASH_AD_HOT_LAUNCH_PRELOAD_ON_START = "key.splash_ad_hot_launch_preload_on_start";
    public static final String KEY_SPLASH_AD_HOT_LAUNCH_TIMES_PER_DAY = "key.splash_ad_hot_launch_times_per_day";
    public static final String KEY_SPLASH_AD_HOT_LAUNCH_TIME_MILLIS = "key.splash_ad_hot_launch_time_millis";
    public static final String KEY_SPLASH_AD_LAST_USE_TIME_MILLIS = "key.splash_ad_last_use_time_millis";
    private static final String KEY_SPLASH_AD_LOG_ENABLED = "key.splash_ad_log_enable";
    public static final String KEY_SPLASH_AD_USED_DAYS = "key.splash_ad_used_days";
    public static final String KEY_STAGGER_COMPAT_BLUR_RATIO = "key.stagger_compat_blur_ratio";
    private static final String KEY_STAGGER_FIXED_ICON_ENABLED = "key.stagger_fixed_icon_enabled";
    private static final String KEY_STORAGE_PERMISSION_DENIED_WITH_NO_ASK = "storage_permission_denied_with_no_ask";
    public static final String KEY_ST_STORY_API_OP = "key.st_story_api_op";
    public static final String KEY_SUBTITLE_SELECT_COUNT = "key.subtitle_select_count";
    public static final String KEY_TOOLBAR_CARD_SHOW_INTERVAL = "key.toolbar_card_show_interval";
    public static final String KEY_TOOLBAR_CARD_SHOW_TOTAL_COUNT = "key.toolbar_card_show_total_count";
    public static final String KEY_TOOLBAR_SHOW_COUNT_PERDAY = "key.toolbar_card_show_count_perday";
    public static final String KEY_TOOLS_AD_NEW_USER_POSTPONE = "key.tools_ad_new_user_postpone";
    public static final String KEY_TOOLS_BAR_SHOW_TYPE = "key.tools_bar_show_type";
    public static final String KEY_TOOLS_RESULT_AD_POSITION_PREFIX = "key.tools_result_ad_position_";
    private static final String KEY_TOOL_BAR_ENABLE = "key.notification_toolbar_enable";
    public static final String KEY_TRACKING_CONFIG_RESPONSE = "key.tracking_config";
    public static final String KEY_TRACKING_COUNT = "key.tracking_count";
    public static final String KEY_TRACKING_DAY = "key.tracking_day";
    public static final String KEY_TRACKING_PACKAGENAME_RESPONSE = "key.tracking_packagename";
    private static final String KEY_TRIGGER_LOAD_MORE_BEFORE_LAST_ITEM_POS = "key.trigger_load_more_before_last_item_pos";
    private static final String KEY_UES_GLIDE_ENABLED = "key.use_glide_enabled";
    public static final String KEY_UNINSTALL_NOTIFY_JUNK_SIZE = "key.uninstall_notify_junk_size";
    private static final String KEY_UN_USED_APP_DAY_FOR_SCAN = "key.unused_app_total_day_for_scan";
    private static final String KEY_UN_USED_APP_SIZE_FOR_SCAN = "key.unused_app_total_size_for_scan";
    public static final String KEY_UN_USED_APP_SIZE_LIMITED_MB = "key.unused_app_size_limited_mb";
    public static final String KEY_UN_USED_TOTAL_APP_SIZE_LIMITED_MB = "key.unused_total_app_size_limited_mb";
    public static final String KEY_UPDATE_JUNK_RULES_INTERVAL = "key.update_junk_rules_interval";
    public static final String KEY_UPGRADE_FEEDBACK_CONTACT_LINK = "key.upgrade_feedback_contact_link";
    private static final String KEY_USE_EXTRACT_RESULT_EFFECTIVE_TIME = "key.use_extract_result_effective_time";
    private static final String KEY_USE_NEW_VIDEO_CARD = "key.use_video_card_v2";
    private static final String KEY_USE_VIDEO_CARD_NOT_FULL_SCREEN_STYLE = "key.use_video_card_not_full_screen_style";
    private static final String KEY_VAULT_FILE_COUNT_FOR_HOME_SCREEN = "key.vault_file_count_for_home_screen";
    private static final String KEY_VIDEO_DOWNLOAD_MAX_PIECE_SIZE = "key.video_download_max_piece_size";
    private static final String KEY_VIDEO_SOURCE_FILTER_FOR_PLAY_COUNT = "key.video_source_filter_for_play_count";
    private static final String KEY_VIDEO_SUPPORT_MAX_PIECE_SIZE_REGEX = "key.video_support_max_piece_size_regex";
    private static final String KEY_VUNGLE_BIDDING_TOKEN = "key.vungle_bidding_token";
    private static final String KEY_WHATSAPP_CLEANER_SHOW_INTERVAL = "key.whatsapp_cleaner_show_interval";
    private static final String KEY_WHATSAPP_FILE_PERCENT_FOR_NOTIFY = "key.whatsapp_file_percent_for_notify";
    private static final String KEY_WHATSAPP_FILE_SIZE_FOR_NOTIFY = "key.whatsapp_file_size_for_notify";
    public static final String KEY_WHATSAPP_NOTIFICATION_SHOW_TIME = "key.whatsapp_notification_show_time";
    private static final String KEY_WHATS_APP_TOTAL_SIZE = "key.whats_app_total_size";
    private static final String KEY_X_REQUESTED_WITH_NETWORK_OPERATOR_REGEX = "key.x_requested_with_network_operator_regex";
    private static final String KEY_X_REQUESTED_WITH_TARGET_HOST_REGEX = "key.x_requested_with_target_host_regex";
    private static final String KEY_X_REQUESTED_WITH_VALUE = "key.x_requested_with_value";
    public static final String KEY_YOUTUBE_EX_LANGUAGE = "KEY_YOUTUBE_EX_LANGUAGE";
    private static final String KEY_YOUTUBE_NOT_SHOW_PUSH_WHEN_EXTRACT_FAIL = "key.youtube_not_show_push_when_extract_fail";
    public static final String KEY_YOUTUBE_PLAYER_VERSION = "key.youtube_player_version";
    public static final String KEY_ZENDESK_AUTH = "key.zendesk_auth";
    public static final String KEY_ZENDESK_PUSH_SHOW_COUNT = "zendesk_push_show_count";
    public static final String KEY_ZENDESK_PUSH_SHOW_TIME = "zendesk_push_show_time";
    public static final int MULTI_THREAD_DOWNLOAD_MAX_RETRY_TIMES = 3;
    public static final String PREF_CONTENT_CONFIG = "pref.content_config";
    public static final String PREF_KEY_FLUENCY_HAS_REPORT_TIMES = "fluency_has_report_times";
    public static final String PREF_KEY_FLUENCY_LAST_REPORT_TIME = "last_fluency_report_time";
    public static final String PREF_SWITCHES = "pref.switches";
    public static final String PREF_TRACKING_CONFIG = "pref.tracking_config";
    private static final String PUSH_POS_REGEX_DEFAULT = ".*push.*";
    private static final String YT_HOST_REGEX = "https?://[^/]*(youtube.com|youtu.be).*";
    public static final String ZENDESK = "zendesk";
    private static Context appContext;
    public static final String[] CONTENT_DIRS = {NativeAdPresenter.DOWNLOAD, "SnapTube Video", "SnapTube Audio", "SnapTube Image", MBridgeConstans.DYNAMIC_VIEW_WX_APP, "web", "diagnosis", "export", ".config", ".md5", "data", ".client", "capture", "misc", "SnapTube Movie", "apmlog", "secret", ".secret", "uninstall", "mark", "ugc", "image", "lyric"};
    private static a sLazy = null;

    public enum ContentDir {
        DOWNLOAD,
        VIDEO,
        AUDIO,
        IMAGE,
        APP,
        WEB,
        DIAGNOSIS,
        EXPORT,
        CONFIG,
        MD5,
        DATA,
        CLIENT,
        CAPTURE,
        MISC,
        MOVIE,
        APMLOG,
        OLD_SECRET,
        NEW_SECRET,
        UNINSTALL,
        MARK,
        UGC,
        SONG_IMAGE,
        LYRIC
    }

    public interface a {
        Object get();
    }

    public static class b implements SharedPreferences {
        public SharedPreferences a;

        public b(SharedPreferences sharedPreferences) {
            this.a = sharedPreferences;
        }

        @Override
        public boolean contains(String str) {
            return this.a.contains(str);
        }

        @Override
        public SharedPreferences.Editor edit() {
            return this.a.edit();
        }

        @Override
        public Map getAll() {
            return this.a.getAll();
        }

        @Override
        public boolean getBoolean(String str, boolean z) {
            return this.a.getBoolean(str, z);
        }

        @Override
        public float getFloat(String str, float f) {
            return this.a.getFloat(str, f);
        }

        @Override
        public int getInt(String str, int i) {
            try {
                try {
                    return this.a.getInt(str, i);
                } catch (Exception unused) {
                    return i;
                }
            } catch (Exception unused2) {
                return (int) this.a.getLong(str, i);
            }
        }

        @Override
        public long getLong(String str, long j) {
            try {
                try {
                    return this.a.getLong(str, j);
                } catch (Exception unused) {
                    return j;
                }
            } catch (Exception unused2) {
                return this.a.getInt(str, (int) j);
            }
        }

        @Override
        public String getString(String str, String str2) {
            return this.a.getString(str, str2);
        }

        @Override
        public Set getStringSet(String str, Set set) {
            return this.a.getStringSet(str, set);
        }

        @Override
        public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
            this.a.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        }

        @Override
        public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
            this.a.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        }
    }

    public static class c {
        public static int a() {
            return b().getInt("last_notification_channel_version", -1);
        }

        public static SharedPreferences b() {
            return GlobalConfig.a().getSharedPreferences("app_quick_start_pref", 0);
        }

        public static void c(int i) {
            b().edit().putInt("last_notification_channel_version", i).apply();
        }
    }

    public static Context a() {
        return appContext;
    }

    public static boolean downloadYtAdapterPluginInDiscoveryRegion() {
        return getPrefSwitch().getBoolean(KEY_DISCOVERY_YOUTUBE_ADAPTER_PLUGIN_ENABLED, false);
    }

    public static boolean enableAdNewUserProtection() {
        return getPrefContent().getBoolean(KEY_ENABLE_NEW_USER_PROTECTION, false);
    }

    public static boolean enableChangeSmallCardToBigCard() {
        return getPrefSwitch().getBoolean(KEY_CHANGE_SMALL_CARD_TO_BIG, true);
    }

    public static boolean enableDirectJumpToGpInLocalPlay() {
        return getPrefContent().getBoolean(KEY_ENABLE_DIRECT_JUMP_TO_GP_IN_LOCAL_PLAY, true);
    }

    public static boolean enableFeedItemExposureTrack() {
        return getPrefContent().getBoolean(KEY_ENABLE_FEED_ITEM_EXPOSURE_TRACK, false);
    }

    public static boolean enableJumpToWebViewWhenPlayFail() {
        return getPrefSwitch().getBoolean(KEY_ENABLE_JUMP_TO_WEBVIEW_WHEN_PLAY_FAIL, true);
    }

    public static boolean enablePlayBeforeGuide() {
        return getPrefSwitch().getBoolean(KEY_ENABLE_PLAY_BEFORE_GUIDE, true);
    }

    public static boolean enableSplashAdHotLaunchPreloadOnAppStart() {
        return getPrefContent().getBoolean(KEY_SPLASH_AD_HOT_LAUNCH_PRELOAD_ON_START, false);
    }

    public static boolean enableTrackYoutubePlayWebview() {
        return getPrefSwitch().getBoolean(KEY_ENABLE_TRACK_YOUTUBE_PLAY_WEBVIEW, true);
    }

    public static boolean enabledSecondaryExtractDetail() {
        return getPrefSwitch().getBoolean(KEY_SECONDARY_EXTRACT_DETAILS_ENABLED, true);
    }

    public static boolean exists(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File(str).exists();
    }

    @Nullable
    public static List<String> getAdActivityNameList() {
        String string = getPrefContent().getString(KEY_AD_ACTIVITY_NAME_LIST, "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return Arrays.asList(string.split(RequestTimeModel.DELIMITER));
        } catch (Exception unused) {
            return null;
        }
    }

    public static int getAdHomeBackImpressionInterval() {
        return getPrefContent().getInt(KEY_AD_HOME_BACK_IMPRESSION_INTERVAL, 300000);
    }

    public static int getAdHomeBackLastStaySecond() {
        return getPrefContent().getInt(KEY_AD_HOME_BACK_LAST_STAY_SECOND, 20);
    }

    public static int getAdHomeBackLoadRetryCount() {
        return getPrefContent().getInt(KEY_AD_HOME_BACK_LOAD_RETRY_COUNT, 3);
    }

    public static int getAdHomeBackMaxTimesPerDay() {
        return getPrefContent().getInt(KEY_AD_HOME_BACK_MAX_TIMES_PER_DAY, 1);
    }

    public static int getAdHotLaunchLoadRetryCount() {
        return getPrefContent().getInt(KEY_AD_HOT_LAUNCH_LOAD_RETRY_COUNT, 3);
    }

    public static int getAdInterstitialImpressionInterval() {
        return getPrefContent().getInt(KEY_AD_INTERSTITIAL_IMPRESSION_INTERVAL, 300000);
    }

    public static int getAdResourceCacheSpLength(int i) {
        return getPrefContent().getInt(KEY_AD_RESOURCE_CACHE_SP_LENGTH, i);
    }

    public static long getAdVideoCheckLoadedMinLength(long j) {
        return getPrefContent().getLong(KEY_AD_VIDEO_CHECK_LOADED_MIN_LENGTH, j);
    }

    public static long getAdVideoPreloadLength(long j) {
        return getPrefContent().getLong(KEY_AD_VIDEO_PRELOAD_LENGTH, j);
    }

    public static String getAdsenseHostRegex() {
        return getPrefContent().getString(KEY_ADSENSE_HOST_REGEX, DEFAULT_ADSENSE_HOST_REGEX);
    }

    public static String getAdxPlacementIdRegex(String str) {
        return getPrefContent().getString(KEY_ADX_PLACEMENT_REGEX, str);
    }

    public static Context getAppContext() {
        return appContext;
    }

    public static long getAppMoveBackTimestamp() {
        return getGenericSharedPrefs().getLong(KEY_APP_MOVE_BACK_TIMESTAMP, 0L);
    }

    public static int getAppUsedDaysInterval() {
        return getPrefContent().getInt(KEY_APP_LAST_USED_DAYS_INTERVAL, 30);
    }

    public static int getAudioDownloadMaxPieceSize() {
        return getPrefContent().getInt(KEY_AUDIO_DOWNLOAD_MAX_PIECE_SIZE, DEFAULT_DOWNLOAD_PIECE_SIZE);
    }

    public static String getAudioSupportMaxPieceSizeRegex() {
        return getPrefContent().getString(KEY_AUDIO_SUPPORT_MAX_PIECE_SIZE_REGEX, YT_HOST_REGEX);
    }

    public static Set<String> getAutoInstallPluginInfo() {
        return getPrefContent().getStringSet(KEY_PLUGIN_AUTO_INSTALL_INFO, null);
    }

    public static int getBatteryChargingNotifyShowInterval() {
        return getPrefContent().getInt(KEY_BATTERY_CHARGING_NOTIFY_SHOW_INTERVAL, 43200000);
    }

    public static int getBatteryCleanInterval() {
        return getPrefContent().getInt(KEY_BATTERY_CLEAN_INTERVAL, DEFAULT_BATTERY_CLEAN_INTERVAL);
    }

    public static int getBatteryLowNotifyShowInterval() {
        return getPrefContent().getInt(KEY_BATTERY_LOW_NOTIFY_SHOW_INTERVAL, 43200000);
    }

    public static List<String> getBatteryWhiteList() {
        String string = getPrefSwitch().getString(KEY_BATTERY_WHITE_LIST, DEFAULT_BATTERY_WHITE_LIST);
        if (string.isEmpty()) {
            return null;
        }
        return Arrays.asList(string.split("\\|"));
    }

    public static boolean getBgServiceOptEnable() {
        return getPrefSwitch().getBoolean(KEY_KEEP_BG_SERVICE_OPT_ENABLE, false);
    }

    public static long getBgServiceOptInterval() {
        return getPrefSwitch().getLong(KEY_KEEP_BG_SERVICE_OPT_INTERVAL, 1800000L);
    }

    public static int getBoosUpMemoryPercentDiff() {
        return getPrefContent().getInt(KEY_BOOST_UP_MEMORY_DIFF, 1);
    }

    public static int getBoosUpShowInterval() {
        return getPrefContent().getInt(KEY_BOOST_UP_SHOW_INTERVAL, 43200000);
    }

    public static int getBoosUpShowLimit() {
        return getPrefContent().getInt(KEY_BOOST_UP_SHOW_LIMIT, 60);
    }

    public static String getCacheKeyIgnoredKeys() {
        return getAppContext().getSharedPreferences(PREF_CONTENT_CONFIG, 0).getString(KEY_CACHEKEY_IGNORED_KEYS, DEFAULT_CACHEKEY_IGNORED_KEY);
    }

    public static Set<String> getCategoryLabelConfig() {
        return getPrefContent().getStringSet(KEY_CATEGORY_LABEL, null);
    }

    public static boolean getCleanAppCacheEnable() {
        return getPrefSwitch().getBoolean(KEY_CLEAN_ANDROID_11_APP_CACHE_ENABLE, true);
    }

    public static int getCleanHomeAnimInterval() {
        return getPrefContent().getInt(KEY_CLEAN_HOME_ANIM_INTERVAL_IN_MS, AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
    }

    public static int getCleanNotifyInterval() {
        return getPrefContent().getInt(KEY_CLICK_CLEAN_NOTIFY_INTERVAL, 43200000);
    }

    public static int getCleanNotifyJunkSizeLimit() {
        return getPrefContent().getInt(KEY_JUNK_SIZE_LIMIT_FOR_NOTIFY, DEFAULT_JUNK_INFO_SIZE_LIMIT_FOR_NOTIFY);
    }

    public static int getCleanNotifyLargeFilePhoneStorageSizeLimit() {
        return getPrefContent().getInt(KEY_PHONE_STORAGE_SIZE_LIMIT_FOR_LARGE_FILE_NOTIFY, 1024);
    }

    public static int getCleanNotifyLargeFileSizeLimit() {
        return getPrefContent().getInt(KEY_LARGE_FILE_SIZE_LIMIT_FOR_NOTIFY, 1024);
    }

    public static int getClickCleanToolBarInterval() {
        return getPrefContent().getInt(KEY_CLICK_CLEAN_TOOL_BAR_INTERVAL, DEFAULT_CLICK_CLEAN_TOOL_INTERVAL);
    }

    public static long getClickCleanToolBarTime() {
        return getGenericSharedPrefs().getLong(KEY_CLICK_TOOL_BAR_CLEAN_TIME, 0L);
    }

    public static String getContentDirName(ContentDir contentDir) {
        return CONTENT_DIRS[contentDir.ordinal()];
    }

    public static String getContentDirectory(ContentDir contentDir) {
        String externalContentDirectory = getExternalContentDirectory(contentDir);
        return (TextUtils.isEmpty(externalContentDirectory) || !exists(externalContentDirectory)) ? getInternalContentDirectory(contentDir) : externalContentDirectory;
    }

    public static int getContinueLoadingCheckIntervalBytes(int i) {
        return getPrefContent().getInt(KEY_CONTINUE_LOADING_CHECK_INTERVAL_BYTES, i);
    }

    public static int getDayForAppSortList() {
        return getPrefContent().getInt(KEY_DAY_FOR_APP_SORT_LIST, 60);
    }

    public static int getDayForAppSortListForScan() {
        return getPrefContent().getInt(KEY_UN_USED_APP_DAY_FOR_SCAN, 30);
    }

    public static String getDirectPlacementIdRegex(String str) {
        return getPrefContent().getString(KEY_DT_PLACEMENT_REGEX, str);
    }

    public static int getDisableLiveChatSampleDays() {
        return getPrefContent().getInt(KEY_DISABLE_LIVECHAT_SAMPLE_DAYS, 0);
    }

    public static List<String> getDiscoverRegionCodes() {
        ArrayList arrayList = new ArrayList();
        try {
            Collections.addAll(arrayList, getPrefContent().getString(KEY_DISCOVER_REGION_CODES, "BR,AR,BO,CL,CO,CR,DO,EC,GT,HN,MX,NI,PA,PE,PR,PY,SV,UY,VE").split(RequestTimeModel.DELIMITER));
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public static long getDownloadHelperArticledId(long j) {
        try {
            return Long.parseLong(getPrefContent().getString(KEY_DOWNLOAD_ARTICLE_ID, String.valueOf(j)));
        } catch (Exception unused) {
            return j;
        }
    }

    public static long getDownloadPopUpShowTime() {
        return getPrefContent().getLong(KEY_DOWNLOAD_POPUP_SHOW_TIME, 0L);
    }

    public static int getDownloadPopupShowCount() {
        return getPrefContent().getInt(KEY_DOWNLOAD_POPUP_COUNT, 0);
    }

    public static int getDownloadRetryDelaySeconds() {
        return getPrefContent().getInt(KEY_DOWNLOAD_RETRY_DELAY_SECONDS, 0);
    }

    public static String getDragonRedirectMetaParam() {
        return getPrefContent().getString(KEY_DRAGON_REDIRECT_META_PARAM, "");
    }

    public static int getExtensionApiSample() {
        return getPrefContent().getInt(KEY_EXTENSION_API_SAMPLE, 100);
    }

    public static String getExternalContentDirectory(ContentDir contentDir) {
        String rootDirectory = getRootDirectory();
        if (TextUtils.isEmpty(rootDirectory)) {
            return null;
        }
        String str = rootDirectory + CONTENT_DIRS[contentDir.ordinal()] + File.separator;
        makeSureDirExist(str);
        if (isDirectoryExist(str)) {
            return str;
        }
        return null;
    }

    public static String getExternalContentDirectoryV30(ContentDir contentDir) {
        String rootDirectoryV30 = getRootDirectoryV30();
        if (TextUtils.isEmpty(rootDirectoryV30)) {
            return null;
        }
        String str = rootDirectoryV30 + CONTENT_DIRS[contentDir.ordinal()] + File.separator;
        makeSureDirExist(str);
        if (isDirectoryExist(str)) {
            return str;
        }
        return null;
    }

    public static boolean getFacebookAppEventsEnabled() {
        return getPrefSwitch().getBoolean(KEY_FACEBOOK_APP_EVENTS_ENABLED, true);
    }

    public static String getFcmToken() {
        return getGenericSharedPrefs().getString(KEY_FCM_TOKEN, null);
    }

    public static long getFcmToolbarShowInterval() {
        return getPrefContent().getLong(KEY_FCM_TOOLBAR_SHOW_INTERVAL, 0L);
    }

    public static Long getFeedbackAuthorId() {
        return Long.valueOf(getGenericSharedPrefs().getLong(KEY_FEEDBACK_AUTHOR_ID, 0L));
    }

    public static String getFeedbackContactLinkInForm() {
        return getPrefContent().getString(KEY_FEEDBACK_CONTACT_LINK_IN_FORM, "https://chat.whatsapp.com/LtR11c2mskK0MiW7qeOpqZ");
    }

    public static String getFeedbackContactLinkInVault() {
        return getPrefContent().getString(KEY_FEEDBACK_CONTACT_LINK_IN_VAULT, "https://chat.whatsapp.com/BaC7Hu6BdTvBYzbi2d465I");
    }

    public static long getFeedbackTime() {
        return getGenericSharedPrefs().getLong(KEY_FEEDBACK_TIME, -1L);
    }

    public static String getFeedbackUrl() {
        return getPrefContent().getString(KEY_FEEDBACK_URL, ZENDESK);
    }

    public static Set<String> getFileTypeConfig() {
        return getPrefContent().getStringSet(KEY_FILE_TYPE, null);
    }

    public static Set<String> getFilterBeanInfo(String str) {
        return getPrefContent().getStringSet(str, null);
    }

    public static long getFirstLaunchAppDay() {
        long firstLaunchAppTime = getFirstLaunchAppTime();
        if (firstLaunchAppTime == 0) {
            return 0L;
        }
        return (long) Math.ceil((System.currentTimeMillis() - firstLaunchAppTime) / (TimeUnit.DAYS.toMillis(1L) * 1.0d));
    }

    public static long getFirstLaunchAppSecond() {
        long firstLaunchAppTime = getFirstLaunchAppTime();
        if (firstLaunchAppTime == 0) {
            return 0L;
        }
        return TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - firstLaunchAppTime);
    }

    private static long getFirstLaunchAppTime() {
        return getGenericSharedPrefs().getLong(KEY_FIRST_LAUNCH_APP_TIME, 0L);
    }

    public static long getFirstShowToolsBarTime() {
        return getGenericSharedPrefs().getLong(KEY_FIRST_SHOW_NOTIFY_TOOL_BAR_TIME, 0L);
    }

    public static int getFluencyReportTimes() {
        return getPrefContent().getInt(KEY_FLUENCY_MONITOR_REPORT_TIMES, 3);
    }

    public static Set<String> getForbiddenPluginIds() {
        return getPrefContent().getStringSet(KEY_FORBIDDENT_PLUGIN_IDS, null);
    }

    public static int getForegroundScanTime() {
        return getPrefContent().getInt(KEY_FOREGROUND_SCAN_TIME, 300);
    }

    public static int getFrameMonitorTimeThreshold() {
        return getPrefContent().getInt(KEY_FRAME_MONITOR_TIME_THRESHOLD, 100);
    }

    public static long getFullScanIntervalTime() {
        return getPrefContent().getInt(KEY_FULL_SCAN_INTERVAL_TIME, DEFAULT_FULL_SCAN_INTERVAL_TIME);
    }

    public static String getGAID() {
        return getGenericSharedPrefs().getString(KEY_GOOGLE_ADVERTISING_ID, null);
    }

    public static synchronized SharedPreferences getGenericSharedPrefs() {
        return appContext.getSharedPreferences(bm5.a, 0);
    }

    public static String getIgnoreADPosRegex() {
        return getPrefContent().getString(KEY_IGNORE_AD_POS, IGNORE_POS_REGEX_DEFAULT);
    }

    public static String getIgnoreGuidePosRegex() {
        return getPrefContent().getString(KEY_IGNORE_GUIDE_POS, IGNORE_POS_REGEX_DEFAULT);
    }

    public static String getImageAppUrl() {
        return getPrefContent().getString(KEY_IMAGE_APP_URL, "https://img-app.thejeu.com");
    }

    public static List<String> getInsertableNextPaths() {
        ArrayList arrayList = new ArrayList();
        String string = getPrefContent().getString(KEY_INSERTABLE_NEXT_PATHS, "list/feedStream|list/similar/immersive|/list/immersive/foryou");
        if (TextUtils.isEmpty(string)) {
            return arrayList;
        }
        Collections.addAll(arrayList, string.split("\\|"));
        return arrayList;
    }

    public static Boolean getInstagramToChooseFormatDirectly() {
        return Boolean.valueOf(getPrefSwitch().getBoolean(KEY_INSTAGRAM_TO_CHOOSE_FORMAT_DIRECTLY, true));
    }

    public static int getInstallSpaceSizeExtraMultiple() {
        return getPrefContent().getInt(KEY_INSTALL_APK_SPACE_SIZE_EXTRA_MULTIPLE, 3);
    }

    public static long getInstalledPluginSize() {
        return getGenericSharedPrefs().getLong(INSTALLED_PLUGIN_SIZE, 0L);
    }

    public static String getInternalContentDirectory(ContentDir contentDir) {
        String absolutePath = getAppContext().getFilesDir().getAbsolutePath();
        if (TextUtils.isEmpty(absolutePath)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(absolutePath);
        String str = File.separator;
        sb.append(str);
        sb.append(CONTENT_DIRS[contentDir.ordinal()]);
        sb.append(str);
        String string = sb.toString();
        makeSureDirExist(string);
        if (isDirectoryExist(string)) {
            return string;
        }
        return null;
    }

    public static boolean getIsFistShowToolsBar() {
        return getGenericSharedPrefs().getBoolean(KEY_IS_FIRST_SHOW_NOTIFY, true);
    }

    public static String getLanguageCode() {
        return getGenericSharedPrefs().getString(KEY_LANGUAGE_CODE, a04.d().getLanguage());
    }

    public static int getLargeFileCardSizeLimit() {
        return getPrefContent().getInt(KEY_LARGE_FILE_SIZE_LIMIT_FOR_CARD, 1024);
    }

    public static long getLastBatteryLowNotifyShowTime() {
        return getGenericSharedPrefs().getLong(KEY_LAST_BATTERY_LOW_NOTIFY_SHOW_TIME, 0L);
    }

    public static long getLastBoostUpTime() {
        return getGenericSharedPrefs().getLong(KEY_LAST_BOOST_UP_TIME, 0L);
    }

    public static String getLastChoosenCaptionLanguageCode() {
        return getGenericSharedPrefs().getString(KEY_LAST_CHOOSEN_CAPTION_LANGUAGE_CODE, "");
    }

    public static long getLastShowBoostUpNotify() {
        return getGenericSharedPrefs().getLong(KEY_LAST_SHOW_BOOST_UP_NOTIFY, 0L);
    }

    public static long getLastSpecialCleanScanTime() {
        return getGenericSharedPrefs().getLong(KEY_LAST_SCAN_SPECIAL_CLEAN, 0L);
    }

    public static long getLastUpdateJunkRuleTime() {
        return getGenericSharedPrefs().getLong(KEY_LAST_UPDATE_JUNK_RULE_TIME, 0L);
    }

    public static long getLastUpdateUserTime() {
        return getGenericSharedPrefs().getLong("key.last_user_update_time", 0L);
    }

    public static String getLastVideoQualityAlias() {
        return getGenericSharedPrefs().getString(KEY_LAST_VIDEO_QUALITY_ALIAS, "");
    }

    public static int getLastVideoQualityId() {
        return getGenericSharedPrefs().getInt(KEY_LAST_VIDEO_QUALITY_ID, Integer.MAX_VALUE);
    }

    public static Map<String, Integer> getMaxActivateCount() {
        return ax3.b(getPrefContent().getString(KEY_MAX_ACTIVATE_COUNT, ""));
    }

    public static int getMaxPushPreloadTime() {
        return getPrefContent().getInt(KEY_MAX_PUSH_PRELOAD_TIME, 10);
    }

    public static String getMintegralBiddingToken() {
        return getGenericSharedPrefs().getString(KEY_MINTEGRAL_BIDDING_TOKEN, "");
    }

    public static String getMovieVideoJudgment() {
        return getPrefContent().getString(KEY_MOVIE_VIDEO_JUDGMENT, "");
    }

    public static int getMultiThreadTaskMaxDownloadRetryTimes() {
        return getPrefContent().getInt(KEY_MULTI_THREAD_TASK_MAX_DOWNLOAD_RETRY_TIMES, 3);
    }

    public static String getNewImmersiveDownloadExcludePackageNames() {
        return getPrefContent().getString(KEY_NEW_IMMERSIVE_DOWNLOAD_EXCLUDE_PACKAGE_NAMES, "com.vstatus.premium");
    }

    public static int getNextLimitVideoCount() {
        return getPrefContent().getInt(KEY_LIMIT_VIDEO_COUNT, 2);
    }

    public static int getNotFullScreenCardPadding() {
        return getPrefContent().getInt(KEY_NOT_FULL_CARD_LEFT_RIGNT_PADDING, 8);
    }

    public static int getNotificationIconChangeInterval() {
        return getPrefContent().getInt(KEY_NOTIFY_ICON_CHANGE_INTERVAL, DEFAULT_NOTIFY_ICON_CHANGE_INTERVAL);
    }

    public static int getNotifyBoosUpShowLimit() {
        return getPrefContent().getInt(KEY_NOTIFY_BOOST_UP_SHOW_LIMIT, 80);
    }

    public static int getNotifyBoostUpShowInterval() {
        return getPrefContent().getInt(KEY_NOTIFY_BOOST_UP_SHOW_INTERVAL, 43200000);
    }

    public static float getNotifyWhatsAppFilePercent() {
        return getPrefContent().getInt(KEY_WHATSAPP_FILE_PERCENT_FOR_NOTIFY, 5) / 100.0f;
    }

    public static long getNotifyWhatsAppFileSize() {
        return getPrefContent().getInt(KEY_WHATSAPP_FILE_SIZE_FOR_NOTIFY, 1024) * ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
    }

    public static int getNumberOfDaysInNewUser() {
        return getPrefContent().getInt(KEY_NUMBER_OF_DAYS_IN_NEW_USER, 1);
    }

    public static String getOfficialSiteUrl() {
        return getPrefContent().getString(KEY_OFFICIAL_SITE_URL, DEFAULT_OFFICIAL_URL);
    }

    public static boolean getPIPEnable() {
        return getGenericSharedPrefs().getBoolean(KEY_PIP_ENABLED, true);
    }

    public static int getPlayEndShowCount() {
        return getPrefContent().getInt(KEY_PLAYEND_SHOW_COUNT, 0);
    }

    public static long getPlayEndShowTime() {
        return getPrefContent().getLong(KEY_PLAYEND_SHOW_TIME, 0L);
    }

    public static int getPlayGuideSuccessMaxTimesPerDay() {
        return getPrefContent().getInt(KEY_PLAY_GUIDE_SUCCESS_MAX_TIMES_PER_DAY, 1);
    }

    public static String getPlaylistFileFullPath(boolean z) {
        return getGenericSharedPrefs().getString(z ? KEY_PLAY_LIST_FILE_VIDEO_FULL_PATH : KEY_PLAY_LIST_FILE_AUDIO_FULL_PATH, "");
    }

    public static long getPluginCheckMaxAge() {
        return getPrefContent().getLong(KEY_PLUGIN_CHECK_MAX_AGE, 7200000L);
    }

    public static long getPluginInstallLimitSize() {
        return ((long) getPrefContent().getInt(KEY_PLUGIN_TOTAL_LIMIT, 50)) * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    public static long getPluginMobileDownloadSizeLimit() {
        return getPrefContent().getLong(KEY_PLUGIN_MOBILE_DOWNLOAD_SIZE_LIMIT, PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
    }

    public static int getPreLoadFeedStreamAdDealyMillis() {
        return getPrefContent().getInt(KEY_FEED_STREAM_AD_PRELOAD_DELAY_MILLIS, -1);
    }

    public static SharedPreferences getPrefContent() {
        return new b(appContext.getSharedPreferences(PREF_CONTENT_CONFIG, 0));
    }

    public static String getPrefContentConfigString(String str) {
        return getPrefContent().getString(str, "");
    }

    private static SharedPreferences getPrefSwitch() {
        return new b(appContext.getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0));
    }

    public static List<String> getPrivateVideoHosts() {
        ArrayList arrayList = new ArrayList();
        String string = getAppContext().getSharedPreferences(PREF_CONTENT_CONFIG, 0).getString(KEY_PRIVATE_VIDEO_HOST, DEFAULT_PRIVATE_VIDEO_HOST);
        if (TextUtils.isEmpty(string)) {
            return arrayList;
        }
        Collections.addAll(arrayList, string.split("\\|"));
        return arrayList;
    }

    public static String getPushBlacklist() {
        return getPrefContent().getString(KEY_PUSH_BLACKLIST, null);
    }

    public static long getPushExpireTimeInMillis() {
        return getPrefContent().getLong(KEY_PUSH_EXPIRE_TIME, 86400L) * 1000;
    }

    public static String getPushPosRegex() {
        return getPrefContent().getString(KEY_PUSH_POS_REGEX, PUSH_POS_REGEX_DEFAULT);
    }

    public static int getRandomId() {
        a aVar = sLazy;
        if (aVar != null) {
            return ((Integer) aVar.get()).intValue();
        }
        throw new RuntimeException("Random id not set! Set it when app launches.");
    }

    private static String getRootDirectory() {
        try {
            if (!Environment.getExternalStorageState().equals("mounted")) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
            String str = File.separator;
            sb.append(str);
            sb.append(bm5.e);
            sb.append(str);
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String getRootDirectoryV30() {
        try {
            if (!Environment.getExternalStorageState().equals("mounted")) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(getAppContext().getExternalFilesDir(null));
            String str = File.separator;
            sb.append(str);
            sb.append(bm5.e);
            sb.append(str);
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getSTStoryApiOp() {
        return getPrefContent().getString(KEY_ST_STORY_API_OP, "1pd7xg57e71ts3k9522ocgmidh38r1yc");
    }

    public static String getSeldomAppNotifyConfig() {
        return getPrefContent().getString(KEY_SELDOM_APP_NOTIFY_CONFIG, null);
    }

    public static String getSelfbuildAdRequestSchemeHost() {
        return getPrefContent().getString(KEY_SELFBUILD_AD_REQUEST_SCHEME_HOST, "https://api.falconnet.app");
    }

    public static boolean getSelfbuildAdUpdateWhenInit() {
        return getPrefContent().getBoolean(KEY_SELFBUILD_AD_UPDATE_WHEN_INIT, false);
    }

    public static String getSelfbuildAdUrl(String str) {
        return getSelfbuildAdRequestSchemeHost() + str;
    }

    public static long getShareAnimLastShowTime() {
        return getGenericSharedPrefs().getLong(KEY_SHARE_ANIM_LAST_SHOW_TIME, 0L);
    }

    public static long getShowLargeFileNotifyInterval() {
        return getPrefContent().getInt(KEY_SHOW_LARGE_FILE_NOTIFY_INTERVAL, DEFAULT_SHOW_LARGE_FILE_NOTIFY_INTERVAL);
    }

    public static long getShowWaIntervalTime() {
        return getPrefContent().getInt(KEY_WHATSAPP_CLEANER_SHOW_INTERVAL, DEFAULT_WHATSAPP_SHOW_INTERVAL);
    }

    public static int getShowedEditUserInfoCount(String str) {
        return getGenericSharedPrefs().getInt(KEY_SHOWED_EDIT_USER_INFO_COUNT + str, 0);
    }

    public static String getSnapCleanerPackageName(String str) {
        return getPrefContent().getString(KEY_SNAP_CLEANER_PACKAGE_NAME, str);
    }

    public static Set<String> getSnaptubeAppNativePathSet() {
        return getPrefContent().getStringSet(KEY_SNAPTUBEAPP_NATIVE_PATH_SET, Collections.EMPTY_SET);
    }

    public static String getSnaptubeHomePageUrl() {
        return getPrefContent().getString(KEY_SNAPTUBE_HOME_PAGE_URL, DEFAULT_OFFICIAL_URL);
    }

    public static long getSpecialCleanCacheInterval() {
        return getPrefContent().getInt(KEY_SPECIAL_CLEAN_CACHE_INTERVAL, DEFAULT_WHATSAPP_SCAN_INTERVAL);
    }

    public static int getSplashAdConfig() {
        return getPrefContent().getInt(KEY_SPLASH_AD_CONFIG, 0);
    }

    public static String getSplashAdHotLaunchAdPos() {
        return getPrefContent().getString(KEY_SPLASH_AD_HOT_LAUNCH_AD_POS, "");
    }

    public static String getSplashAdHotLaunchBgCount() {
        return getPrefContent().getString(KEY_SPLASH_AD_HOT_LAUNCH_BG_COUNT, "");
    }

    public static int getSplashAdHotLaunchImprMinMillis() {
        return getPrefContent().getInt(KEY_SPLASH_AD_HOT_LAUNCH_IMPR_MIN_MILLIS, (int) TimeUnit.MINUTES.toMillis(5L));
    }

    public static int getSplashAdHotLaunchPostPoneDays() {
        return getPrefContent().getInt(KEY_SPLASH_AD_HOT_LAUNCH_POST_PONE_DAYS, 1);
    }

    public static String getSplashAdHotLaunchTimeMillis() {
        return getPrefContent().getString(KEY_SPLASH_AD_HOT_LAUNCH_TIME_MILLIS, "");
    }

    public static int getSplashAdHotLaunchTimesPerDay() {
        return getPrefContent().getInt(KEY_SPLASH_AD_HOT_LAUNCH_TIMES_PER_DAY, 1);
    }

    public static float getStaggerCompatBlurRatio() {
        return getPrefContent().getInt(KEY_STAGGER_COMPAT_BLUR_RATIO, 75) / 100.0f;
    }

    public static Set<String> getStringSet(String str) {
        return getPrefContent().getStringSet(str, null);
    }

    public static int getSubtitleSelectLimitCount() {
        return getPrefContent().getInt(KEY_SUBTITLE_SELECT_COUNT, 3);
    }

    public static int getToolbarCardShowCountPerday() {
        return getPrefContent().getInt(KEY_TOOLBAR_SHOW_COUNT_PERDAY, 2);
    }

    public static int getToolbarCardShowInterval() {
        return getPrefContent().getInt(KEY_TOOLBAR_CARD_SHOW_INTERVAL, 8);
    }

    public static int getToolbarCardShowTotalCount() {
        return getPrefContent().getInt(KEY_TOOLBAR_CARD_SHOW_TOTAL_COUNT, 6);
    }

    public static String getTrackingConfigResponse() {
        return getTrackingContent().getString(KEY_TRACKING_CONFIG_RESPONSE, null);
    }

    public static SharedPreferences getTrackingContent() {
        return new b(appContext.getSharedPreferences(PREF_TRACKING_CONFIG, 0));
    }

    public static int getTrackingCount() {
        return getTrackingContent().getInt(KEY_TRACKING_COUNT, 0);
    }

    public static Long getTrackingDay() {
        return Long.valueOf(getTrackingContent().getLong(KEY_TRACKING_DAY, 0L));
    }

    public static String getTrackingPackNameListResponse() {
        return getTrackingContent().getString(KEY_TRACKING_PACKAGENAME_RESPONSE, null);
    }

    public static int getTriggerLoadMoreBeforeLastItemPos() {
        return getPrefContent().getInt(KEY_TRIGGER_LOAD_MORE_BEFORE_LAST_ITEM_POS, 0);
    }

    public static int getUnUsedAppSizeLimited() {
        return getPrefContent().getInt(KEY_UN_USED_APP_SIZE_LIMITED_MB, 60);
    }

    public static int getUnUsedTotalAppSizeLimited() {
        return getPrefContent().getInt(KEY_UN_USED_TOTAL_APP_SIZE_LIMITED_MB, 500);
    }

    public static int getUnUsedTotalAppSizeLimitedForScan() {
        return getPrefContent().getInt(KEY_UN_USED_APP_SIZE_FOR_SCAN, 200);
    }

    public static int getUnUsedTotalFileSizeLimitedForScan() {
        return getPrefContent().getInt(KEY_FILE_TOTAL_SIZE, 200);
    }

    public static long getUninstallJunkSize() {
        return getGenericSharedPrefs().getLong(KEY_UNINSTALL_NOTIFY_JUNK_SIZE, 0L);
    }

    public static int getUpdateJunkRuleInterval() {
        return getPrefContent().getInt(KEY_UPDATE_JUNK_RULES_INTERVAL, 259200000);
    }

    public static String getUpgradeFeedbackContactLink() {
        return getPrefContent().getString(KEY_UPGRADE_FEEDBACK_CONTACT_LINK, "https://chat.whatsapp.com/LXrhGSAoJ4dL4aVrn7kxPq");
    }

    public static int getVaultFileCountForHomeScreen() {
        return getPrefContent().getInt(KEY_VAULT_FILE_COUNT_FOR_HOME_SCREEN, 30);
    }

    public static int getVideoDownloadMaxPieceSize() {
        return getPrefContent().getInt(KEY_VIDEO_DOWNLOAD_MAX_PIECE_SIZE, DEFAULT_DOWNLOAD_PIECE_SIZE);
    }

    public static String getVideoSupportMaxPieceSizeRegex() {
        return getPrefContent().getString(KEY_VIDEO_SUPPORT_MAX_PIECE_SIZE_REGEX, YT_HOST_REGEX);
    }

    public static String getVungleBiddingToken() {
        return getGenericSharedPrefs().getString(KEY_VUNGLE_BIDDING_TOKEN, "");
    }

    public static long getWhatsAppNotificationShowTime() {
        return getGenericSharedPrefs().getLong(KEY_WHATSAPP_NOTIFICATION_SHOW_TIME, 0L);
    }

    public static int getWhatsAppTotalSize() {
        return getPrefContent().getInt(KEY_WHATS_APP_TOTAL_SIZE, 500);
    }

    public static String getXRequestedWithValue() {
        return getPrefContent().getString(KEY_X_REQUESTED_WITH_VALUE, DEFAULT_X_REQUESTED_WITH_VALUE);
    }

    public static String getYouTubeExLanguageCode() {
        return getGenericSharedPrefs().getString(KEY_YOUTUBE_EX_LANGUAGE, "");
    }

    public static String getYouTubeLanguageCode() {
        return getGenericSharedPrefs().getString(KEY_LANGUAGE_CODE_YOUTUBE, a04.d().getLanguage());
    }

    public static String getZendeskPushShowCountStr() {
        return getGenericSharedPrefs().getString(KEY_ZENDESK_PUSH_SHOW_COUNT, "");
    }

    public static long getZendeskPushShowTime() {
        return getGenericSharedPrefs().getLong(KEY_ZENDESK_PUSH_SHOW_TIME, -1L);
    }

    public static boolean isAdGifPreloadEnabled() {
        return getPrefSwitch().getBoolean(KEY_AD_GIF_PRELOAD_ENABLE, true);
    }

    public static boolean isAdHomeBackPreloadOnResumed() {
        return getPrefContent().getBoolean(KEY_AD_HOME_BACK_PRELOAD_ON_RESUMED, false);
    }

    public static boolean isAdHomeBackShowCacheOnly() {
        return getPrefContent().getBoolean(KEY_AD_HOME_BACK_SHOW_CACHE_ONLY, true);
    }

    public static boolean isAdHotLaunchPreloadOnResumed() {
        return getPrefContent().getBoolean(KEY_AD_HOT_LAUNCH_PRELOAD_ON_RESUMED, false);
    }

    public static boolean isAdPangleAdvertiserReportEnabled() {
        return getPrefSwitch().getBoolean(KEY_AD_PANGLE_ADVERTISER_REPORT_ENABLED, true);
    }

    public static boolean isAdPreloadImagePathEnabled() {
        return getPrefSwitch().getBoolean(KEY_AD_PRELOAD_IMAGE_PATH_ENABLE, true);
    }

    public static boolean isAdVideoPreloadEnabled() {
        return getPrefSwitch().getBoolean(KEY_AD_VIDEO_PRELOAD_ENABLE, true);
    }

    public static boolean isAutoInflateEnable() {
        return getPrefSwitch().getBoolean(KEY_IS_AUTO_INFLATE_ENABLE, false);
    }

    public static boolean isBackgroundWebExtractEnabled() {
        return getPrefSwitch().getBoolean(KEY_BACKGROUND_WEB_EXTRACT_ENABLE, true);
    }

    public static boolean isBatteryChargingNotifyEnable() {
        return getPrefSwitch().getBoolean(KEY_CLEAN_BATTERY_CHARGING_ENABLE, true);
    }

    public static boolean isBatteryLowNotifyEnable() {
        return getPrefSwitch().getBoolean(KEY_CLEAN_BATTERY_LOW_ENABLE, true);
    }

    public static boolean isBoostNotifyEnable() {
        return getPrefSwitch().getBoolean(KEY_BOOST_NOTIFY_ENABLE, true);
    }

    public static boolean isBoostUpEntranceShowEnable() {
        return getPrefSwitch().getBoolean(KEY_SHOW_BOOST_UP_ENTRANCE_ENABLE, true);
    }

    public static boolean isCleanBatterySaveResultJumpGpOpen() {
        return getPrefSwitch().getBoolean(KEY_CLEAN_BATTERY_SAVE_RESULT_JUMP_GP_SWITCH, false);
    }

    public static boolean isCleanHomeOldUi() {
        return getPrefSwitch().getBoolean(KEY_IS_CLEAN_HOME_OLD_UI, false);
    }

    public static boolean isCleanJunkFilesResultJumpGpOpen() {
        return getPrefSwitch().getBoolean(KEY_CLEAN_JUNK_FILES_RESULT_JUMP_GP_SWITCH, false);
    }

    public static boolean isCleanNotifyEnable() {
        return getPrefSwitch().getBoolean(KEY_CLEAN_NOTIFY_ENABLE, true);
    }

    public static boolean isCleanPhoneBoostResultJumpGpOpen() {
        return getPrefSwitch().getBoolean(KEY_CLEAN_PHONE_BOOST_RESULT_JUMP_GP_SWITCH, false);
    }

    public static boolean isCleanToolBarEnable() {
        return getPrefSwitch().getBoolean(KEY_TOOL_BAR_ENABLE, true);
    }

    public static boolean isCleanToolBarHasJunkEnabled() {
        return getPrefSwitch().getBoolean(KEY_CLEAN_TOOL_BAR_HAS_JUNK_ENABLE, true);
    }

    public static boolean isDirectoryExist(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        if (file.exists() || file.mkdirs()) {
            return true;
        }
        return file.exists();
    }

    public static boolean isDownloadPluginInMobileNetworkEnabled() {
        return getPrefContent().getBoolean(KEY_ENABLE_PLUGIN_DOWNLOAD_IN_MOBILE, true);
    }

    public static boolean isEnableAppUpgradeDownloadWithMobile() {
        return getPrefSwitch().getBoolean(KEY_ENABLE_APP_UPGRADE_DOWNLOAD_ID_MOBILE, false);
    }

    public static boolean isEnableImageCompressForBigCard() {
        return getPrefSwitch().getBoolean(KEY_AD_ENABLE_IMAGE_COMPRESS_FOR_BIG_CARD, true);
    }

    public static boolean isExtractCacheIgnoreFrom() {
        return getPrefSwitch().getBoolean(KEY_IS_EXTRACT_CACHE_IGNORE_FROM, true);
    }

    public static boolean isExtractReportSampleDisabled() {
        return getPrefSwitch().getBoolean(KEY_IS_EXTRACT_REPORT_SAMPLE_DISABLED, false);
    }

    public static boolean isFcmToolNotificationEnable() {
        return getPrefSwitch().getBoolean(KEY_FCM_TOOL_NOTIFICATION_ENABLE, false);
    }

    public static boolean isFeedbackEnabledInClean() {
        return getPrefSwitch().getBoolean(KEY_IS_FEEDBACK_ENABLED_IN_CLEAN, true);
    }

    public static boolean isFeedbackEnabledInMe() {
        return getPrefSwitch().getBoolean(KEY_IS_FEEDBACK_ENABLED_IN_ME, true);
    }

    public static boolean isFeedbackEnabledInSettings() {
        return getPrefSwitch().getBoolean(KEY_IS_FEEDBACK_ENABLED_IN_SETTINGS, false);
    }

    public static boolean isFeedbackEnabledInUpgrade() {
        return getPrefSwitch().getBoolean(KEY_IS_FEEDBACK_ENABLED_IN_UPGRADE, true);
    }

    public static boolean isFeedbackEnabledInVault() {
        return getPrefSwitch().getBoolean(KEY_IS_FEEDBACK_ENABLED_IN_VAULT, true);
    }

    public static boolean isFeedbackEnabledInVideoDetail() {
        return getPrefSwitch().getBoolean(KEY_IS_FEEDBACK_ENABLED_IN_VIDEO_DETAIL, true);
    }

    public static boolean isFirebasePerfEnable() {
        return getPrefSwitch().getBoolean(KEY_IS_FIREBASE_PERF_ENABLE, false);
    }

    public static boolean isFixedStaggerCoverEnabled() {
        return getPrefSwitch().getBoolean(KEY_FIXED_STAGGER_COVER_ENABLED, true);
    }

    public static boolean isFluencyMonitorEnable() {
        return getAppContext().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean(KEY_FLUENCY_MONITOR_SWITCH, false);
    }

    public static boolean isForcePermissionDialog() {
        return getPrefSwitch().getBoolean(KEY_IS_DIALOG_PERMISSION_FORCE, false);
    }

    public static boolean isForceSetDefaultPlayerToStPlayer() {
        return getPrefSwitch().getBoolean(KEY_FORCE_SET_ST_PLAYER, true);
    }

    public static boolean isFromTransferInvited() {
        return getGenericSharedPrefs().getBoolean("key.transfer_invited", false);
    }

    public static boolean isGlideEnabled() {
        return getPrefSwitch().getBoolean(KEY_UES_GLIDE_ENABLED, true);
    }

    public static boolean isHasJunkEntranceShowEnable() {
        return getPrefSwitch().getBoolean(KEY_SHOW_HAS_JUNK_ENTRANCE_ENABLE, true);
    }

    public static boolean isHomeLoginGuideEnable() {
        return getGenericSharedPrefs().getBoolean(KEY_HOME_LOGIN_ENABLE, true);
    }

    public static boolean isHotSearchIconEnable() {
        return getPrefSwitch().getBoolean(KEY_IS_ENABLE_HOT_SEARCH_ICON, false);
    }

    public static boolean isHotSearchPresetWordEnable() {
        return getPrefSwitch().getBoolean(KEY_IS_ENABLE_HOT_SEARCH_PRESET_WORD, false);
    }

    public static boolean isIgnoreMuxOnlinePlay() {
        return getPrefSwitch().getBoolean(KEY_IS_IGNORE_MUX_ONLINE_PLAY, true);
    }

    public static boolean isImmersiveDownloadLoginEnabled() {
        return getPrefSwitch().getBoolean(KEY_ENABLE_IMMERSIVE_DOWNLOAD_LOGIN, true);
    }

    public static boolean isInToolsAdNewUserPostpone() {
        return getFirstLaunchAppDay() <= ((long) getPrefContent().getInt(KEY_TOOLS_AD_NEW_USER_POSTPONE, -1));
    }

    public static boolean isInstallCleanNotificationEnabled() {
        return getPrefSwitch().getBoolean(ENABLE_INSTALL_CLEAN_NOTIFICATION, true);
    }

    public static boolean isLargeWindowPlayerEnabled() {
        return getPrefSwitch().getBoolean(KEY_IS_LARGE_WINDOW_PLAYER_ENABLED, false);
    }

    public static boolean isListVideoPreloadEnabled() {
        return getPrefSwitch().getBoolean(KEY_IS_LIST_VIDEO_PRELOAD_ENABLE, false);
    }

    public static boolean isLoadingBytesOnlyMux() {
        return getPrefSwitch().getBoolean(KEY_IS_LOADING_BYTES_ONLY_MUX, false);
    }

    public static boolean isLogcatReportEnable() {
        return getPrefSwitch().getBoolean(KEY_ENABLE_REPORT_LOGCAT, false);
    }

    public static boolean isLyricMetaEnable() {
        return getPrefSwitch().getBoolean(KEY_LYRIC_META_ENABLE, false);
    }

    public static boolean isNeedFilterM4AInLargeAudio() {
        return getPrefSwitch().getBoolean(KEY_IS_FILTER_M4A_FORMAT_LARGE_AUDIO, false);
    }

    public static boolean isNeedSpecialCleanScan() {
        return System.currentTimeMillis() - getLastSpecialCleanScanTime() >= getSpecialCleanCacheInterval();
    }

    public static boolean isNeedUpdateJunkRule() {
        return System.currentTimeMillis() - getLastUpdateJunkRuleTime() >= ((long) getUpdateJunkRuleInterval());
    }

    public static boolean isNewImmersiveDownloadActionEnabled() {
        return getPrefSwitch().getBoolean(KEY_ENABLE_NEW_IMMERSIVE_DOWNLOAD_ACTION, !isSmallHalfRandomId());
    }

    public static boolean isNewRelicEnable() {
        return getPrefSwitch().getBoolean(KEY_ENABLE_NEWRELIC, false);
    }

    public static boolean isNewUninstallNotifyStrategy() {
        return getPrefSwitch().getBoolean(KEY_IS_NEW_UNINSTALL_NOTIFY_STRATEGY, false);
    }

    public static boolean isNotificationPermissionAsked() {
        return getGenericSharedPrefs().getBoolean(KEY_NOTIFICATION_PERMISSION_ASKED, false);
    }

    public static boolean isOnlineSharkScanEnable() {
        return getPrefSwitch().getBoolean(KEY_SHARK_BOOST_ENABLE, false);
    }

    public static boolean isOpenADToastDebug() {
        return getGenericSharedPrefs().getBoolean(KEY_IS_OPEN_AD_TOAST_DEBUG, false);
    }

    public static boolean isOtherFullScanEnable() {
        return getPrefContent().getBoolean(KEY_IS_OTHER_FULL_SCAN_ENABLE, false);
    }

    public static boolean isPermissionGuideA() {
        return getPrefSwitch().getBoolean(KEY_IS_PERMISSION_GUIDE_A, isSmallHalfRandomId());
    }

    public static boolean isPlayingOnlineAudio() {
        return getGenericSharedPrefs().getBoolean("is_playing_online_audio", false);
    }

    public static boolean isPlayingOnlineVideo() {
        return getGenericSharedPrefs().getBoolean("is_playing_online_video", false);
    }

    public static boolean isPluginClassLoaderGcEnabled() {
        return getPrefSwitch().getBoolean(KEY_IS_PLUGIN_CLASSLOADER_GC_ENABLED, Build.VERSION.SDK_INT > 27);
    }

    public static boolean isPreloadInterstitialBoostEnable() {
        return getPrefSwitch().getBoolean(KEY_PRELOAD_INTERSTITIAL_BOOST, false);
    }

    public static boolean isPreloadInterstitialCleanEnable() {
        return getPrefSwitch().getBoolean(KEY_PRELOAD_INTERSTITIAL_CLEAN, false);
    }

    public static boolean isPreloadInterstitialOnAppBackgroundEnable() {
        return getPrefSwitch().getBoolean(KEY_PRELOAD_INTERSTITIAL_ON_APP_BACKGROUND, false);
    }

    public static boolean isRemoveUnplayableFormats() {
        return getPrefSwitch().getBoolean(KEY_IS_REMOVE_UNPLAYABLE_FORMATS, false);
    }

    public static boolean isRewriteVideoUrlEnabled() {
        return getAppContext().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean(KEY_ENABLED_REWRITE_URL, true);
    }

    public static boolean isSTStoryApiExtractEnabled() {
        return getPrefSwitch().getBoolean(KEY_IS_ST_STORY_API_EXTRACT_ENABLED, false);
    }

    public static boolean isSetGroupForToolbarEnable() {
        return getPrefSwitch().getBoolean(KEY_SET_GROUP_FOR_TOOLBAR_NOTIFICATION_ENABLE, true);
    }

    public static boolean isShowContactPopupAfterSubmit() {
        return getPrefSwitch().getBoolean(KEY_IS_SHOW_CONTACT_POPUP_AFTER_SUBMIT, true);
    }

    public static boolean isShowInterstitialBoostEnable() {
        return getPrefSwitch().getBoolean(KEY_SHOW_INTERSTITIAL_BOOST, false);
    }

    public static boolean isShowInterstitialCleanEnable() {
        return getPrefSwitch().getBoolean(KEY_SHOW_INTERSTITIAL_CLEAN, false);
    }

    public static boolean isSmallHalfRandomId() {
        return getRandomId() < 50;
    }

    public static boolean isStaggerFixedIconEnabled() {
        return getPrefSwitch().getBoolean(KEY_STAGGER_FIXED_ICON_ENABLED, true);
    }

    public static boolean isStoragePermissionDeniedWithNoAsk() {
        return getGenericSharedPrefs().getBoolean(KEY_STORAGE_PERMISSION_DENIED_WITH_NO_ASK, false);
    }

    public static boolean isSupportFeedbackContact() {
        return getPrefSwitch().getBoolean(KEY_IS_SUPPORT_FEEDBACK_CONTACT, false);
    }

    public static boolean isSupportUpgradeFeedbackContact() {
        return getPrefSwitch().getBoolean(KEY_IS_SUPPORT_UPGRADE_FEEDBACK, false);
    }

    public static boolean isTestIdsRequestEnabled() {
        return getPrefSwitch().getBoolean(KEY_ENABLE_TEST_IDS_REQUEST, true);
    }

    public static boolean isToolbarNotificationCancel(Boolean bool) {
        return getPrefSwitch().getBoolean(KEY_IS_TOOLBAR_NOTIFICATION_CANCEL, bool.booleanValue());
    }

    public static boolean isToolbarNotificationDefaultShow() {
        return getPrefSwitch().getBoolean(KEY_IS_TOOLBAR_NOTIFICATION_DEFAULT_SHOW, true);
    }

    public static boolean isToolbarNotificationEnabled() {
        return getPrefSwitch().getBoolean(KEY_IS_TOOLBAR_NOTIFICATION_ENABLED, true);
    }

    public static boolean isVideoAudioMuxEnabled() {
        return getPrefSwitch().getBoolean(KEY_IS_VIDEO_AUDIO_MUX_ENABLED, true);
    }

    public static boolean isWindowPlayerOptimizeEnabled() {
        return getPrefSwitch().getBoolean(KEY_IS_WINDOW_PLAYER_OPTIMIZE_ENABLED, false);
    }

    public static boolean isYoutubeNotShowPushWhenExtractFail() {
        return getPrefSwitch().getBoolean(KEY_YOUTUBE_NOT_SHOW_PUSH_WHEN_EXTRACT_FAIL, true);
    }

    public static boolean isYtLiveEnabled() {
        return getPrefSwitch().getBoolean(KEY_IS_YT_LIVE_ENABLED, false);
    }

    private static void makeSureDirExist(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            new File(str).mkdirs();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static int needShowEditUserInfoCount() {
        return getPrefContent().getInt(KEY_NEED_SHOW_EDIT_USER_INFO_COUNT, 0);
    }

    public static int playCountBeforeGuide() {
        return getPrefContent().getInt(KEY_PLAY_COUNT_BEFORE_GUIDE, 5);
    }

    public static boolean reportFeedbackDataEnable() {
        return getPrefSwitch().getBoolean(KEY_REPORT_FEEDBACK_DATA_ENABLE, true);
    }

    public static void saveFeedbackAuthorId(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_FEEDBACK_AUTHOR_ID, j).apply();
    }

    public static void setAppContext(Context context) {
        if (context instanceof Application) {
            appContext = context;
        } else {
            appContext = context.getApplicationContext();
        }
    }

    public static void setAppMoveBackTimestamp(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_APP_MOVE_BACK_TIMESTAMP, j).apply();
    }

    public static void setBoostUpTime(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_LAST_BOOST_UP_TIME, j).apply();
    }

    public static void setClickCleanToolBarTime(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_CLICK_TOOL_BAR_CLEAN_TIME, j).apply();
    }

    public static void setDownloadLoadPopupShowCount(int i) {
        SharedPreferences.Editor editorEdit = getPrefContent().edit();
        editorEdit.putInt(KEY_DOWNLOAD_POPUP_COUNT, i);
        wa7.a(editorEdit);
    }

    public static void setDownloadPopupShowTime(long j) {
        SharedPreferences.Editor editorEdit = getPrefContent().edit();
        editorEdit.putLong(KEY_DOWNLOAD_POPUP_SHOW_TIME, j);
        wa7.a(editorEdit);
    }

    public static void setDragonRedirectMetaParam(String str) {
        getPrefContent().edit().putString(KEY_DRAGON_REDIRECT_META_PARAM, str).apply();
    }

    public static void setFcmToken(String str) {
        SharedPreferences.Editor editorEdit = getGenericSharedPrefs().edit();
        editorEdit.putString(KEY_FCM_TOKEN, str);
        or6.a(editorEdit);
    }

    public static void setFirstShowToolsBarTime(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_FIRST_SHOW_NOTIFY_TOOL_BAR_TIME, j).apply();
    }

    public static void setFluencyHasReportTimes(long j) {
        getGenericSharedPrefs().edit().putLong(PREF_KEY_FLUENCY_HAS_REPORT_TIMES, j).apply();
    }

    public static void setFluencyLastReportTime(long j) {
        getGenericSharedPrefs().edit().putLong(PREF_KEY_FLUENCY_LAST_REPORT_TIME, j).apply();
    }

    public static void setGAID(String str) {
        getGenericSharedPrefs().edit().putString(KEY_GOOGLE_ADVERTISING_ID, str).apply();
    }

    public static void setHomeLoginGuideEnable(boolean z) {
        getGenericSharedPrefs().edit().putBoolean(KEY_HOME_LOGIN_ENABLE, z).apply();
    }

    public static void setInstalledPluginSize(long j) {
        getGenericSharedPrefs().edit().putLong(INSTALLED_PLUGIN_SIZE, j).apply();
    }

    public static void setIsFistShowToolsBar(boolean z) {
        getGenericSharedPrefs().edit().putBoolean(KEY_IS_FIRST_SHOW_NOTIFY, z).apply();
    }

    public static void setKeyLastShowBoostUpNotify(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_LAST_SHOW_BOOST_UP_NOTIFY, j).apply();
    }

    public static void setLanguageCode(String str) {
        SharedPreferences.Editor editorEdit = getGenericSharedPrefs().edit();
        editorEdit.putString(KEY_LANGUAGE_CODE, str);
        wa7.a(editorEdit);
    }

    public static void setLastBatteryLowHNotifyShowTime(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_LAST_BATTERY_LOW_NOTIFY_SHOW_TIME, j).apply();
    }

    public static void setLastChoosenCaptionLanguageCode(String str) {
        getGenericSharedPrefs().edit().putString(KEY_LAST_CHOOSEN_CAPTION_LANGUAGE_CODE, str).apply();
    }

    public static void setLastSpecialCleanScanTime(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_LAST_SCAN_SPECIAL_CLEAN, j).apply();
    }

    public static void setLastUpdateJunkRuleTime(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_LAST_UPDATE_JUNK_RULE_TIME, j).apply();
    }

    public static void setLastUpdateUserTime() {
        getGenericSharedPrefs().edit().putLong("key.last_user_update_time", System.currentTimeMillis()).apply();
    }

    public static void setLastVideoQualityAlias(String str) {
        getGenericSharedPrefs().edit().putString(KEY_LAST_VIDEO_QUALITY_ALIAS, str).apply();
    }

    public static void setLastVideoQualityId(int i) {
        getGenericSharedPrefs().edit().putInt(KEY_LAST_VIDEO_QUALITY_ID, i).apply();
    }

    public static void setMintegralBiddingToken(String str) {
        getGenericSharedPrefs().edit().putString(KEY_MINTEGRAL_BIDDING_TOKEN, str).apply();
    }

    public static void setNeedShowEditUserInfoCount(int i) {
        SharedPreferences.Editor editorEdit = getPrefContent().edit();
        editorEdit.putInt(KEY_NEED_SHOW_EDIT_USER_INFO_COUNT, i);
        wa7.a(editorEdit);
    }

    public static void setNotificationPermissionAsked() {
        getGenericSharedPrefs().edit().putBoolean(KEY_NOTIFICATION_PERMISSION_ASKED, true).apply();
    }

    public static void setPIPEnabled(boolean z) {
        getGenericSharedPrefs().edit().putBoolean(KEY_PIP_ENABLED, z).apply();
    }

    public static void setPlayEndShowCount(int i) {
        SharedPreferences.Editor editorEdit = getPrefContent().edit();
        editorEdit.putInt(KEY_PLAYEND_SHOW_COUNT, i);
        wa7.a(editorEdit);
    }

    public static void setPlayEndShowTime(long j) {
        SharedPreferences.Editor editorEdit = getPrefContent().edit();
        editorEdit.putLong(KEY_PLAYEND_SHOW_TIME, j);
        wa7.a(editorEdit);
    }

    public static void setPlayingOnlineAudio(boolean z) {
        getGenericSharedPrefs().edit().putBoolean("is_playing_online_audio", z).apply();
    }

    public static void setPlayingOnlineVideo(boolean z) {
        getGenericSharedPrefs().edit().putBoolean("is_playing_online_video", z).apply();
    }

    public static void setPlaylistFileFullPath(String str, boolean z) {
        getGenericSharedPrefs().edit().putString(z ? KEY_PLAY_LIST_FILE_VIDEO_FULL_PATH : KEY_PLAY_LIST_FILE_AUDIO_FULL_PATH, str).apply();
    }

    public static void setRandomId(a aVar) {
        sLazy = aVar;
    }

    public static void setShareAnimLastShowTime(long j) {
        SharedPreferences.Editor editorEdit = getGenericSharedPrefs().edit();
        editorEdit.putLong(KEY_SHARE_ANIM_LAST_SHOW_TIME, j);
        wa7.a(editorEdit);
    }

    public static void setShowedEditUserInfoCount(String str, int i) {
        SharedPreferences.Editor editorEdit = getGenericSharedPrefs().edit();
        editorEdit.putInt(KEY_SHOWED_EDIT_USER_INFO_COUNT + str, i);
        wa7.a(editorEdit);
    }

    public static void setStoragePermissionDeniedWithNoAsk() {
        getGenericSharedPrefs().edit().putBoolean(KEY_STORAGE_PERMISSION_DENIED_WITH_NO_ASK, true).apply();
    }

    public static void setTrackingConfigResponse(String str) {
        getTrackingContent().edit().putString(KEY_TRACKING_CONFIG_RESPONSE, str).apply();
    }

    public static void setTrackingCount(int i) {
        getTrackingContent().edit().putInt(KEY_TRACKING_CONFIG_RESPONSE, i).apply();
    }

    public static void setTrackingDay(Long l) {
        getTrackingContent().edit().putLong(KEY_TRACKING_DAY, l.longValue()).apply();
    }

    public static void setTrackingPackNameListResponse(String str) {
        getTrackingContent().edit().putString(KEY_TRACKING_PACKAGENAME_RESPONSE, str).apply();
    }

    public static void setTransferInvited(boolean z) {
        getGenericSharedPrefs().edit().putBoolean("key.transfer_invited", z).apply();
    }

    public static void setUninstallJunkSize(long j) {
        SharedPreferences.Editor editorEdit = getGenericSharedPrefs().edit();
        editorEdit.putLong(KEY_UNINSTALL_NOTIFY_JUNK_SIZE, j);
        wa7.a(editorEdit);
    }

    public static void setVungleBiddingToken(String str) {
        getGenericSharedPrefs().edit().putString(KEY_VUNGLE_BIDDING_TOKEN, str).apply();
    }

    public static void setWhatsAppNotificationShowTime(long j) {
        getGenericSharedPrefs().edit().putLong(KEY_WHATSAPP_NOTIFICATION_SHOW_TIME, j).apply();
    }

    public static void setYouTubeExLanguageCode(String str) {
        SharedPreferences.Editor editorEdit = getGenericSharedPrefs().edit();
        editorEdit.putString(KEY_YOUTUBE_EX_LANGUAGE, str);
        wa7.a(editorEdit);
    }

    public static boolean shouldCheckPluginUpdateWhenError() {
        return getPrefSwitch().getBoolean(KEY_SHOULD_CHECK_PLUGIN_UPDATE_WHEN_ERROR, true);
    }

    public static boolean shouldCreateMusicShortcut() {
        return getPrefSwitch().getBoolean(KEY_SHOULD_CREATE_MUSIC_SHORTCUT, true);
    }

    public static boolean shouldEvokeWindowPlayerWhenUserLeaveApp() {
        return getPrefSwitch().getBoolean(KEY_SHOULD_EVOKE_WINDOW_PLAYER_WHEN_USER_LEAVE_APP, false);
    }

    public static boolean shouldIgnoreDiversionLimitOnPreload() {
        return getPrefSwitch().getBoolean(KEY_PRELOAD_IGNORE_DIVERSION_LIMIT, true);
    }

    public static boolean shouldPreloadFeedStreamAd() {
        return getPrefSwitch().getBoolean(KEY_FEED_STREAM_AD_PRELOAD_ENABLED, true);
    }

    public static boolean shouldPreloadPopupExitAd() {
        return getPrefSwitch().getBoolean(KEY_POPUP_EXIT_AD_PRELOAD_ENABLED, true);
    }

    public static boolean shouldPreventDownloadRecommendsForCaller() {
        return getPrefSwitch().getBoolean(KEY_SHOULD_PREVENT_DOWNLOAD_RECOMMENDS_FOR_CALLER, false);
    }

    public static boolean shouldReloadOverduePushVideo() {
        return getPrefSwitch().getBoolean(KEY_SHOULD_RELOAD_OVERDUE_PUSH_VIDEO, false);
    }

    public static boolean shouldShowLogo() {
        return getPrefSwitch().getBoolean(KEY_SHOULD_SHOW_LOGO, true);
    }

    public static boolean shouldShowPushAfterVideoPreloaded() {
        return getPrefSwitch().getBoolean(KEY_SHOULD_SHOW_PUSH_AFTER_VIDEO_PRELOADED, true);
    }

    public static boolean showMenuAsCloseButton() {
        return getPrefSwitch().getBoolean(KEY_SHOW_MENU_AS_CLOSE_BUTTON, false);
    }

    public static void updateFeedbackTime() {
        getGenericSharedPrefs().edit().putLong(KEY_FEEDBACK_TIME, System.currentTimeMillis()).apply();
    }

    public static void updateZendeskPushShowCountStr(String str) {
        getGenericSharedPrefs().edit().putString(KEY_ZENDESK_PUSH_SHOW_COUNT, str).apply();
    }

    public static void updateZendeskPushShowTime() {
        getGenericSharedPrefs().edit().putLong(KEY_ZENDESK_PUSH_SHOW_TIME, System.currentTimeMillis()).apply();
    }

    public static boolean useNotFullScreenVideoCard() {
        return getPrefSwitch().getBoolean(KEY_USE_VIDEO_CARD_NOT_FULL_SCREEN_STYLE, false);
    }

    public static boolean useVideoCardV2() {
        return getPrefSwitch().getBoolean(KEY_USE_NEW_VIDEO_CARD, false);
    }

    public static String videoSourceFilterForPlayCount() {
        return getPrefContent().getString(KEY_VIDEO_SOURCE_FILTER_FOR_PLAY_COUNT, "snaptube|whiteGloves");
    }
}
