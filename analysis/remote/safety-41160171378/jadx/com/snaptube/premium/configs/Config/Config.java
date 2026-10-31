package com.snaptube.premium.configs;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Environment;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationManagerCompat;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.common.util.GmsVersion;
import com.google.gson.reflect.TypeToken;
import com.phoenix.slog.SnapTubeLogger;
import com.snaptube.ad.guardian.GuardianManager;
import com.snaptube.dataadapter.plugin.YouTubeCookieJar;
import com.snaptube.extractor.pluginlib.utils.PluginContextUtil;
import com.snaptube.extractor.pluginlib.youtube.YoutubeCodec;
import com.snaptube.musicPlayer.PlayMode;
import com.snaptube.premium.activity.ExploreActivity;
import com.snaptube.premium.activity.VideoWebViewActivity;
import com.snaptube.premium.activity.YoutubeVideoWebViewActivity;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.download.StorageStatus$CleanEntranceType;
import com.snaptube.premium.fragment.moweb.moutils.WebOuterJumpData;
import com.snaptube.premium.playback.window.PIPConfig;
import com.snaptube.premium.settings.LanguageListFragment;
import com.snaptube.premium.utils.BatchDownloadUtil;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.download.rpc.d;
import com.wandoujia.download.storage.DownloadRootDirStore;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.text.Regex;
import net.pubnative.mediation.adapter.model.GuideNativeAdModel;
import o.az7;
import o.b04;
import o.bm5;
import o.bt6;
import o.cm;
import o.hr5;
import o.hs7;
import o.i36;
import o.j23;
import o.ke6;
import o.ld2;
import o.m31;
import o.rk7;
import o.td5;
import o.uh;
import o.vg4;
import o.xe3;
import o.yj2;

public class Config {
    public static SharedPreferences b;
    public static SharedPreferences c;
    public static Boolean s;
    public static final String a = m31.a.a("back#door.add_debug#_param_in##_request");
    public static String d = null;
    public static String e = null;
    public static String f = null;
    public static String g = null;
    public static boolean h = false;
    public static String i = "USER_TICKETS";
    public static String j = "first_use_video_subscribe";
    public static Class k = ExploreActivity.class;
    public static boolean l = true;
    public static boolean m = true;
    public static String n = "https://www.snaptube.in/_sites-page/index.html";

    public static boolean f415o = true;
    public static boolean p = true;
    public static Boolean q = null;
    public static final int r = (int) TimeUnit.HOURS.toMinutes(12);
    public static long t = 0;
    public static boolean u = false;
    public static boolean v = true;
    public static boolean w = true;
    public static int x = -1;
    public static boolean y = false;

    public class AnonymousClass1 extends TypeToken<Map<String, Integer>> {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface APP_GUIDE_KEYS {
    }

    public static int A() {
        return e1().getInt("key.collection_ads_video_page_size", 6);
    }

    public static String A0() {
        return b0().getString("last_online_audia_media_id", "");
    }

    public static long A1(String str) {
        return b0().getLong(d2(str), 0L);
    }

    public static String A2() {
        return h1("key.ytb_video_details_web_url", null);
    }

    public static boolean A3() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.is_immersive_playback_enabled", true);
    }

    public static boolean A4() {
        return i1().getBoolean("key.enable_use_build_in_search_plugin", false);
    }

    public static void A5() {
        b0().edit().putBoolean("has_insert_default_sites", true).apply();
    }

    public static void A6(int i2) {
        PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).edit().putInt("key_webm_crash_count", i2).apply();
    }

    public static String B() {
        return h1("key.web_configured_user_agent", null);
    }

    public static String B0() {
        return b0().getString("key_last_playing_music_id", "");
    }

    public static int B1() {
        return e1().getInt("key.scan_service_interval_time", 43200000);
    }

    public static int B2() {
        return e1().getInt("key.ytb_batch_download_size", 5000);
    }

    public static boolean B3() {
        return i1().getBoolean("key.is_ins_extract_by_local", true);
    }

    public static boolean B4() {
        return b0().getBoolean("KEY_USER_MOBILE_NET_DOWN_FFMPEG_PLUGIN_ENABLE", false);
    }

    public static void B5(String str) {
        b0().edit().putString(GlobalConfig.KEY_LANGUAGE_CODE, str).apply();
    }

    public static void B6(boolean z) {
        y = z;
    }

    public static String C() {
        return b0().getString("KEY_LOCATION_CODE", "");
    }

    public static long C0() {
        return b0().getLong("key.click_push_notification_time_millis", 0L);
    }

    public static String C1() {
        if (f415o) {
            return V0("KEY_SEARCH_HINT");
        }
        return null;
    }

    public static boolean C2() {
        return b0().getInt("key_has_fetched_plugin_info_successfully_vc", 0) == 75250210;
    }

    public static boolean C3() {
        return i1().getBoolean("key.is_instagram_native_search_enabled", true);
    }

    public static boolean C4() {
        return i1().getBoolean("key.video_cover_write_enabled", true);
    }

    public static void C5(long j2) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putLong("key_last_apk_install_time", j2);
        Q6(editorEdit);
    }

    public static void C6(boolean z) {
        b0().edit().putBoolean("key.key_should_show_wa_permission_dialog", z).apply();
    }

    public static int D() {
        return b0().getInt("CRASH_COUNT", 0);
    }

    public static String D0() {
        return b0().getString("last_report_copylink_url", "");
    }

    public static int D1() {
        return e1().getInt("key.search_tab_response_cache_expired_minutes", 1440);
    }

    public static boolean D2(boolean z) {
        return b0().getBoolean(z ? "KEY_VIDEO_PLAYER_USED" : "KEY_MUSIC_PLAYER_USED", false);
    }

    public static boolean D3() {
        return i1().getBoolean("key.instagram_webview_reload_enable", true);
    }

    public static boolean D4() {
        return i1().getBoolean("key.video_nav_2_webview_enabled", false);
    }

    public static void D5(int i2) {
        b0().edit().putInt("key_last_apk_install_version", i2).apply();
    }

    public static void D6(boolean z) {
        b0().edit().putBoolean("key.key_should_show_wa_refresh_tip", z).apply();
    }

    public static String E() {
        return VideoWebViewActivity.class.getSimpleName() + "|" + YoutubeVideoWebViewActivity.class.getSimpleName();
    }

    public static long E0() {
        return b0().getLong("key_last_scan_media_store_time", -1L);
    }

    public static String E1() {
        return h1("key.search_video_web_url", null);
    }

    public static boolean E2() {
        return b0().getBoolean("has_insert_default_sites", false);
    }

    public static boolean E3() {
        return i1().getBoolean("key.is_intercept_web_search_result", true);
    }

    public static boolean E4() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.ytb_webview_search_enable", false);
    }

    public static void E5(long j2) {
        b0().edit().putLong("last_app_start_time", j2).apply();
    }

    public static void E6(boolean z) {
        b0().edit().putBoolean("key.should_show_wa_status_anim", z).apply();
    }

    public static int F() {
        return e1().getInt("key.default_converting_count", 3);
    }

    public static long F0() {
        return b0().getLong("key.click_send_time_millis", 0L);
    }

    public static String F1() {
        return b(v1(), GlobalConfig.CONTENT_DIRS[GlobalConfig.ContentDir.NEW_SECRET.ordinal()]);
    }

    public static boolean F2() {
        return b0().getBoolean("key.has_play_feed_video_on_first_launch", false);
    }

    public static boolean F3() {
        return i1().getBoolean("key.intercept_youtube_web_playlist", true);
    }

    public static boolean F4() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.intercept_youtube_webview_video", false);
    }

    public static void F5(long j2, boolean z) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putLong("key_last_check_plugin_info_time", j2);
        editorEdit.putBoolean("key_last_check_plugin_info_result", z);
        if (z) {
            editorEdit.putInt("key_has_fetched_plugin_info_successfully_vc", 75250210);
        }
        Q6(editorEdit);
    }

    public static void F6(int i2) {
        b0().edit().putInt("wifi_download_thread", i2).apply();
    }

    public static int G() {
        return e1().getInt("key.default_downloading_count", 2);
    }

    public static long G0() {
        return b0().getLong("key.latest_song_silent_download_mills", 0L);
    }

    public static String G1() {
        return b(w1(), GlobalConfig.CONTENT_DIRS[GlobalConfig.ContentDir.NEW_SECRET.ordinal()]);
    }

    public static boolean G2() {
        return a0("key.has_scan_download_media", false);
    }

    public static boolean G3() {
        return i1().getBoolean("key.intercept_youtube_web_search", true);
    }

    public static boolean G4() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("youtube_webview_playlist_batch_download_enabled", false);
    }

    public static void G5(String str) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putString("key_copy_last_apk_from", str);
        Q6(editorEdit);
    }

    public static void G6(boolean z) {
        b0().edit().putBoolean("KEY_HAS_WINDOW_PERMISSION", z).apply();
    }

    public static boolean H() {
        return b0().getBoolean("KEY_DETAIL_AUTO_PLAY", true);
    }

    public static String H0() {
        return b0().getString("latest_download_url", "");
    }

    public static String H1() {
        return h1("key.sensor_sample", null);
    }

    public static boolean H2() {
        return a0("key.has_show_download_all_guide", false);
    }

    public static boolean H3() {
        return i1().getBoolean("key.intercept_youtube_web_video_detail", true);
    }

    public static boolean H4() {
        return i1().getBoolean("key.youtube_50k_mp3_enable", false);
    }

    public static void H5(String str) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putString("key_copy_last_apk_position_source", str);
        Q6(editorEdit);
    }

    public static void H6(String str) {
        b0().edit().putString(GlobalConfig.KEY_YOUTUBE_EX_LANGUAGE, str).apply();
    }

    public static int I() {
        return e1().getInt("key.download_extract_timeout_in_seconds", 120);
    }

    public static int I0() {
        return b0().getInt("KEY_LAUNCH_COUNT", 0);
    }

    public static String I1(String str) {
        return h1("sensor_analytic_configure_server", str);
    }

    public static boolean I2() {
        return b0().getBoolean("has_show_launch_guide_743", false);
    }

    public static boolean I3() {
        return b0().getBoolean("key_last_check_plugin_info_result", false);
    }

    public static boolean I4() {
        Context appContext = PluginContextUtil.getAppContext();
        if (appContext == null) {
            return true;
        }
        return appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.youtube_format_webm_audio_enable", true);
    }

    public static void I5(String str) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putString("key_copy_file_name", str);
        Q6(editorEdit);
    }

    public static void I6(String str) {
        b0().edit().putString(GlobalConfig.KEY_LANGUAGE_CODE_YOUTUBE, str).apply();
    }

    public static long J() {
        return e1().getLong("key.download_outside_reward_request_time_out", 3L);
    }

    public static String J0() {
        return b0().getString("KEY_LOGGED_FIRST_LAUNCH_VERSION", null);
    }

    public static String J1(String str) {
        return h1("sensor_analytic_server", str);
    }

    public static boolean J2() {
        return b0().getBoolean("key.spf_scanned", false);
    }

    public static boolean J3() {
        return i1().getBoolean("key.is_livechat_enabled_in_clean", true);
    }

    public static boolean J4() {
        return !TextUtils.isEmpty(y2());
    }

    public static void J5(long j2) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putLong("key_copy_size ", j2);
        Q6(editorEdit);
    }

    public static boolean J6() {
        return b0().getBoolean(a, false);
    }

    public static String K() {
        return DownloadRootDirStore.a.e();
    }

    public static String K0() {
        return b0().getString("KEY_LOGGED_SECOND_LAUNCH_VERSION", null);
    }

    public static String K1() {
        return b0().getString("KEY_SERVER_LOCATION_CODE", "");
    }

    public static boolean K2() {
        return b0().getBoolean("KEY_HAS_WINDOW_PERMISSION", true);
    }

    public static boolean K3() {
        return i1().getBoolean("key.is_livechat_enabled_in_me", true);
    }

    public static boolean K4() {
        return i1().getBoolean("key.youtube_mock_256k_mp3_enable", false);
    }

    public static void K5(long j2) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putLong("key_copy_time ", j2);
        Q6(editorEdit);
    }

    public static boolean K6() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.download_infomobi_plugin", false);
    }

    public static long L() {
        return b0().getLong("key_download_speed_limit", -1L);
    }

    public static int L0() {
        return e1().getInt("key.max_clean_scan_active_time", GmsVersion.VERSION_PARMESAN);
    }

    public static String L1(String str) {
        return h1("key.share_audio_link_subtitle", str);
    }

    public static long L2() {
        return ((long) (PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getInt("key.hot_start_refresh_interval", 0) * 60)) * 1000;
    }

    public static boolean L3() {
        return i1().getBoolean("key.is_livechat_enabled_in_vault", true);
    }

    public static boolean L4() {
        return i1().getBoolean("key.youtube_mock_320k_mp3_enable", false);
    }

    public static void L5(int i2) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putInt("key_copy_version_code ", i2);
        Q6(editorEdit);
    }

    public static boolean L6() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.ignore_gms_crash", true);
    }

    public static int M() {
        return e1().getInt("key.enable_tls_max_version", 22);
    }

    public static int M0() {
        return e1().getInt("key.max_scan_foreground_time", 300000);
    }

    public static String M1(String str) {
        return h1("key.share_video_link_subtitle", str);
    }

    public static long M2() {
        long jR;
        synchronized (Config.class) {
            jR = R() + 1;
            SharedPreferences.Editor editorEdit = b0().edit();
            editorEdit.putLong("finished_task_count", jR);
            Q6(editorEdit);
        }
        return jR;
    }

    public static boolean M3() {
        return b0().getBoolean("KEY_LOCKER_MUSIC_PLAYER_ENABLED", true);
    }

    public static boolean M4() {
        Context appContext = PluginContextUtil.getAppContext();
        if (appContext == null) {
            return true;
        }
        return appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.ytb_region_search_keyboard_enable", true);
    }

    public static void M5(String str) {
        String strA0 = A0();
        if (TextUtils.isEmpty(str) || !TextUtils.equals(str, strA0)) {
            b5(0L, 0L);
        }
        b0().edit().putString("last_online_audia_media_id", str).apply();
    }

    public static boolean M6() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.ignore_miui_bitmap_crash", true);
    }

    public static String N() {
        String string = b0().getString("root_dir", null);
        return TextUtils.isEmpty(string) ? N2() : string;
    }

    public static String[] N0() {
        String string = PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getString("key.miui_bitmap_crash_class", null);
        return TextUtils.isEmpty(string) ? hr5.e : string.split("\\|");
    }

    public static SharedPreferences N1(String str) {
        return PhoenixApplication.z().getSharedPreferences(str, 0);
    }

    public static String N2() {
        String strB = b(v1(), GlobalConfig.CONTENT_DIRS[GlobalConfig.ContentDir.DOWNLOAD.ordinal()]);
        if (!TextUtils.isEmpty(strB)) {
            DownloadRootDirStore.a.w(strB);
        }
        return strB;
    }

    public static boolean N3() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.mars_daemon_enable", false);
    }

    public static boolean N4() {
        return !TextUtils.isEmpty(A2());
    }

    public static void N5(String str) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putString("key_last_playing_music_id", str);
        Q6(editorEdit);
    }

    public static boolean N6() {
        return i1().getBoolean("key.should_load_search_plugin_in_main_activity", true);
    }

    public static String O() {
        return e1().getString("key.faq_article_id_new_feature", "");
    }

    public static PlayMode O0() {
        return PlayMode.fromInt(b0().getInt("key_music_play_mode", PlayMode.DEFAULT_PLAY_MODE.getCode()));
    }

    public static String O1() {
        return e1().getString("key.social_config", null);
    }

    public static void O2() {
        SharedPreferences sharedPreferencesB0 = b0();
        if (!sharedPreferencesB0.getBoolean("DOWNLOAD_DIR_RESET", false)) {
            N2();
            sharedPreferencesB0.edit().putBoolean("DOWNLOAD_DIR_RESET", true).apply();
        }
        k();
    }

    public static boolean O3() {
        return b0().getBoolean("is_mini_bar_hide_by_local_play", false);
    }

    public static String O4(Context context) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(context.getAssets().open("channel.mf")));
                try {
                    String line = bufferedReader2.readLine();
                    if (TextUtils.isEmpty(line)) {
                        xe3.b(bufferedReader2);
                        return "debug-for-local";
                    }
                    xe3.b(bufferedReader2);
                    return line;
                } catch (Exception e2) {
                    e = e2;
                    bufferedReader = bufferedReader2;
                    ProductionEnv.debugLog("Config", e.getMessage());
                    xe3.b(bufferedReader);
                    return "debug-for-local";
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    xe3.b(bufferedReader);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void O5(long j2) {
        b0().edit().putLong("key.click_push_notification_time_millis", j2).apply();
    }

    public static boolean O6() {
        return i1().getBoolean("key.should_remove_outdated_upgrade_apk_file", true);
    }

    public static String P() {
        return b0().getString("key.feedback_extract_failed_url", "");
    }

    public static long P0() {
        return ((long) e1().getInt("key.next_check_plugin_duration", 2)) * 3600000;
    }

    public static String P1() {
        return e1().getString("key.social_guide_config", null);
    }

    public static boolean P2() {
        return b0().getBoolean("key.enable_ad", true);
    }

    public static Boolean P3() {
        return Boolean.valueOf(b0().getBoolean("is_mini_bar_show", false));
    }

    public static boolean P4() {
        return b0().getBoolean("key.key_should_show_wa_permission_dialog", true);
    }

    public static void P5(String str) {
        b0().edit().putString("last_report_copylink_url", str).apply();
    }

    public static boolean P6() {
        if (f3()) {
            ProductionEnv.debugLog("Config", "can`t show push permission as disable the feature");
            return false;
        }
        if (!e4()) {
            ProductionEnv.debugLog("Config", "request push permission as have no permission");
            return true;
        }
        GlobalConfig.getAppContext();
        if (td5.n()) {
            return false;
        }
        ProductionEnv.debugLog("Config", "request push permission as download channel disable");
        return true;
    }

    public static int Q() {
        return e1().getInt("key.files_tip_max_junk", 500);
    }

    public static int Q0() {
        return b0().getInt("KEY_NO_WINDOW_PERMISSION_PLAY_COUNT", Integer.MAX_VALUE);
    }

    public static String Q1(String str) {
        return e1().getString(str, rk7.g.a(str));
    }

    public static boolean Q2() {
        return i1().getBoolean("key.is_animeflv_extract_by_local", false);
    }

    public static boolean Q3() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.enable_minify_btn", false);
    }

    public static boolean Q4() {
        return b0().getBoolean("key.should_show_wa_status_anim", false);
    }

    public static void Q5(long j2) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putLong("key_last_scan_media_store_time", j2);
        Q6(editorEdit);
    }

    public static void Q6(SharedPreferences.Editor editor) {
        editor.apply();
    }

    public static long R() {
        return b0().getLong("finished_task_count", 0L);
    }

    public static String R0() {
        return h1("key.no_fatal_sample", null);
    }

    public static String R1() {
        return b0().getString("key_speeddial_version", "");
    }

    public static boolean R2() {
        return i1().getBoolean("key.app_deep_link_enabled", true);
    }

    public static boolean R3() {
        Context appContext = PluginContextUtil.getAppContext();
        return (appContext != null ? appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.mobile_net_down_ffmpeg_plugin_enable", true) : true) || B4();
    }

    public static boolean R4() {
        return i1().getBoolean("key.should_song_silent_download", false);
    }

    public static void R5(long j2) {
        b0().edit().putLong("key.click_send_time_millis", j2).apply();
    }

    public static boolean R6(String str) {
        String str2;
        if (str.startsWith("upgrade")) {
            str2 = "key.upgrade_switch_new_install_enable";
        } else {
            str2 = str.startsWith(GuideNativeAdModel.NETWORK_NAME) ? "key.guide_switch_new_install_enable" : "key.ad_switch_new_install_enable";
        }
        return i1().getBoolean(str2, false);
    }

    public static synchronized String S() {
        try {
            if (TextUtils.isEmpty(d)) {
                SharedPreferences sharedPreferencesB0 = b0();
                String string = sharedPreferencesB0.getString("first_channel", "");
                d = string;
                if (TextUtils.isEmpty(string)) {
                    String strO4 = cm.M(PhoenixApplication.z()) ? "tube_apk_share" : O4(PhoenixApplication.z());
                    d = strO4;
                    e = strO4;
                    Q6(sharedPreferencesB0.edit().putString("first_channel", d));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return d;
    }

    public static int S0() {
        return e1().getInt("key.notification_timeout_in_minutes", 480);
    }

    public static int S1(String str) {
        return b0().getInt("key_successful_install_count_" + str, 0);
    }

    public static boolean S2(String str) {
        return b0().getBoolean("key.app_guide_tnb_share_close" + str, false);
    }

    public static boolean S3() {
        Context appContext = PluginContextUtil.getAppContext();
        if (appContext == null) {
            return true;
        }
        return appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.judge_space_before_convert_enable", true);
    }

    public static boolean S4() {
        return az7.P(GlobalConfig.getAppContext()) != b0().getInt("key.current_version_code", -1);
    }

    public static void S5(long j2) {
        b0().edit().putLong("key.latest_song_silent_download_mills", j2).apply();
    }

    public static void S6() {
        int i2 = b0().getInt("key.current_version_code", -1);
        if (!u3() && i2 == -1) {
            i2 = 0;
        }
        int iP = az7.P(GlobalConfig.getAppContext());
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putInt("key.last_version_code", i2);
        editorEdit.putInt("key.current_version_code", iP);
        editorEdit.apply();
    }

    public static long T() {
        long jU = U();
        if (jU == 0) {
            return 0L;
        }
        return (long) Math.ceil((System.currentTimeMillis() - jU) / (TimeUnit.DAYS.toMillis(1L) * 1.0d));
    }

    public static long T0() {
        return b0().getLong("online_music_last_position", 0L);
    }

    public static String T1() {
        String str = null;
        long j2 = 0;
        for (String str2 : hs7.n().l()) {
            long jY = yj2.y(str2);
            if (j2 < jY) {
                str = str2;
                j2 = jY;
            }
        }
        return !TextUtils.isEmpty(str) ? b(str, GlobalConfig.CONTENT_DIRS[GlobalConfig.ContentDir.DOWNLOAD.ordinal()]) : str;
    }

    public static boolean T2() {
        return i1().getBoolean("key.is_app_installed_receiver_dynamic_enabled", true);
    }

    public static boolean T3(Context context) {
        return false;
    }

    public static void T4() {
        b0();
        W0();
    }

    public static void T5(String str) {
        b0().edit().putString("latest_download_url", str).apply();
    }

    public static boolean T6() {
        return i1().getBoolean("key.use_lazy_load_mode_on_bottom_tab", true);
    }

    public static long U() {
        return b0().getLong("first_launch_app_time", 0L);
    }

    public static int U0() {
        return b0().getInt("online_music_waitting_for_exposure", 0);
    }

    public static int U1() {
        return e1().getInt("key.super_strong_upgrade_md5_error_num", 2);
    }

    public static boolean U2() {
        return i1().getBoolean("key.enable_append_install_version_on_utm", true);
    }

    public static boolean U3() {
        return i1().getBoolean("key.use_new_upgrade_popup_window", true);
    }

    public static void U4(long j2) {
        b0().edit().putLong("auto_follow_snaptube", j2).apply();
    }

    public static void U5(int i2) {
        b0().edit().putInt("KEY_LAUNCH_COUNT", i2).apply();
    }

    public static boolean U6() {
        return i1().getBoolean("key.use_range_in_query_param", false);
    }

    public static long V() {
        return b0().getLong("auto_follow_snaptube", 0L);
    }

    public static String V0(String str) {
        return W0().getString(str, "");
    }

    public static int V1() {
        return b0().getInt("key.switch_storage_junk_size_threshold_in_mb", 1024);
    }

    public static boolean V2() {
        return i1().getBoolean("key.enable_append_udid_on_utm", true);
    }

    public static boolean V3() {
        return i1().getBoolean("key.notification_direct_play_enabled", true);
    }

    public static boolean V4() {
        return N1(YouTubeCookieJar.PREF_SWITCHES).getBoolean("key.refresh_on_back_pressed", false);
    }

    public static void V5(boolean z) {
        b0().edit().putBoolean("is_local_play_hide_mini_bar", z).apply();
    }

    public static int W() {
        return e1().getInt("key.gp_link_extras_fetch_interval", 900000);
    }

    public static synchronized SharedPreferences W0() {
        try {
            if (c == null) {
                c = N1(bm5.b);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public static String W1() {
        return Uri.parse(bt6.f()).buildUpon().appendQueryParameter(GuardianManager.LANG, b04.b(b04.a()).getLanguage()).toString();
    }

    public static boolean W2() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.disable_audio_256k_batch_download", false);
    }

    public static boolean W3() {
        return b0().getBoolean(GlobalConfig.KEY_IS_OPEN_AD_TOAST_DEBUG, false);
    }

    public static void W4(String str) {
        b0().edit().remove(d2(str)).apply();
    }

    public static void W5(boolean z) {
        b0().edit().putBoolean("KEY_LOCKER_MUSIC_PLAYER_ENABLED", z).apply();
    }

    public static String X() {
        return e1().getString("key.gp_link_extras_url", "");
    }

    public static String X0() {
        return Uri.parse(bt6.d()).buildUpon().appendQueryParameter(GuardianManager.LANG, b04.b(b04.a()).getLanguage()).toString();
    }

    public static synchronized String X1() {
        try {
            if (f == null) {
                SharedPreferences sharedPreferencesB0 = b0();
                String string = sharedPreferencesB0.getString("utm_campaign", "");
                f = string;
                if (TextUtils.isEmpty(string)) {
                    String strC = cm.C(PhoenixApplication.z());
                    if (!TextUtils.isEmpty(strC)) {
                        f = strC;
                        Q6(sharedPreferencesB0.edit().putString("utm_campaign", f));
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f;
    }

    public static boolean X2() {
        return i1().getBoolean("key.auto_switch_dir_when_no_enough_space_enabled", false);
    }

    public static boolean X3() {
        return i1().getBoolean("key.enable_open_website_in_search_result", false);
    }

    public static void X4(StorageStatus$CleanEntranceType storageStatus$CleanEntranceType) {
        b0().edit().putLong("clean_entrance_last_shown_time_" + storageStatus$CleanEntranceType.name().toLowerCase(), System.currentTimeMillis()).apply();
    }

    public static void X5() {
        if (TextUtils.isEmpty("7.52.0.75250210")) {
            return;
        }
        b0().edit().putString("KEY_LOGGED_FIRST_LAUNCH_VERSION", "7.52.0.75250210").apply();
    }

    public static String Y() {
        return h1("key.game_backup_online_url", null);
    }

    public static String Y0() {
        return e1().getString("key.outside_update_apk_url", "");
    }

    public static int Y1() {
        return b0().getInt("key.unread_task_finish_count", 0);
    }

    public static boolean Y2() {
        return i1().getBoolean("key.is_batch_download_subtile_enable", true);
    }

    public static boolean Y3() {
        return System.currentTimeMillis() - G0() > TimeUnit.HOURS.toMillis((long) e1().getInt("key.song_silence_download_interval", 168));
    }

    public static void Y4(String str, boolean z) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putBoolean(str, z);
        Q6(editorEdit);
    }

    public static void Y5() {
        if (TextUtils.isEmpty("7.52.0.75250210")) {
            return;
        }
        b0().edit().putString("KEY_LOGGED_SECOND_LAUNCH_VERSION", "7.52.0.75250210").apply();
    }

    public static String Z() {
        return h1("key.game_launch_package_name", null);
    }

    public static PIPConfig Z0() {
        PIPConfig pIPConfig = null;
        try {
            pIPConfig = (PIPConfig) j23.b(h1("key.pip_play_config", null), PIPConfig.class);
        } catch (Exception e2) {
            ProductionEnv.throwExceptForDebugging(e2);
        }
        return pIPConfig == null ? new PIPConfig() : pIPConfig;
    }

    public static int Z1() {
        return e1().getInt("key.apk_not_download_upgrade_check_day", 7);
    }

    public static boolean Z2() {
        return b0().getBoolean("key.is_campaign_extra_tracked", false);
    }

    public static boolean Z3() {
        return i1().getBoolean("key.is_pre_extract_reuse_enabled", true);
    }

    public static void Z4(int i2) {
        b0().edit().putInt("install_version_code", i2).apply();
    }

    public static void Z5(boolean z) {
        b0().edit().putBoolean("is_mini_bar_hide_by_local_play", z).apply();
    }

    public static void a() {
        U5(I0() + 1);
    }

    public static boolean a0(String str, boolean z) {
        return b0().getBoolean(str, z);
    }

    public static int a1() {
        return e1().getInt("key.phone_boost_interval_time", 300000);
    }

    public static int a2(Context context) {
        return e1().getInt("key.upgrade_check_interval", (int) TimeUnit.HOURS.toMillis(8L));
    }

    public static boolean a3() {
        return i1().getBoolean("key.check_allocatable_bytes_before_install", true);
    }

    public static boolean a4() {
        return i1().getBoolean("key.enable_app_upgrade_download_in_wifi_prefer", false);
    }

    public static void a5(long j2) {
        b0().edit().putLong("key.last_app_uninstallsurvey_show_time", j2).apply();
    }

    public static void a6(boolean z) {
        b0().edit().putBoolean("is_mini_bar_show", z).apply();
    }

    public static String b(String str, String str2) {
        File file = new File(new File(str, "/snaptube"), str2);
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Throwable th) {
            ProductionEnv.logException("CreateRootDieException", new Throwable("path:" + str + str2, th));
        }
        return file.getAbsolutePath();
    }

    public static SharedPreferences b0() {
        if (b == null) {
            b = N1(bm5.a);
        }
        return b;
    }

    public static int b1() {
        return e1().getInt("key.play_next_queue_max_count", 9999);
    }

    public static String b2() {
        return e1().getString("key.upgrade_popup_window_install_text", "");
    }

    public static boolean b3() {
        return i1().getBoolean("key.is_check_clip_service_enabled", true);
    }

    public static boolean b4() {
        if (q == null) {
            q = Boolean.valueOf(c4());
        }
        return q.booleanValue();
    }

    public static void b5(long j2, long j3) {
        if (j2 == 0 || i36.a(j2, j3)) {
            b0().edit().remove("online_music_last_position").apply();
        } else {
            b0().edit().putLong("online_music_last_position", j2).apply();
        }
    }

    public static void b6() {
        b0().edit().putBoolean("key.my_files_sub_action_or_multi_select_clicked", true).apply();
    }

    public static boolean c() {
        return b0().getBoolean("KEY_CAN_SHOW_PERMISSION_DIALOG", true);
    }

    public static String[] c0() {
        String string = PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getString("key.gms_crash_class", null);
        return TextUtils.isEmpty(string) ? hr5.d : string.split("\\|");
    }

    public static int c1() {
        return e1().getInt("key.poor_network_overlay_time_out", AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
    }

    public static String c2() {
        return e1().getString("key.upgrade_popup_window_title", "");
    }

    public static boolean c3() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.clean_app_cache", true);
    }

    public static boolean c4() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.preload_before_splash_ad_close", false);
    }

    public static void c5(int i2) {
        b0().edit().putInt("online_music_waitting_for_exposure", i2).apply();
    }

    public static void c6(int i2) {
        b0().edit().putInt("KEY_NO_WINDOW_PERMISSION_PLAY_COUNT", i2).apply();
    }

    public static boolean d() {
        return Y3() && R4();
    }

    public static int d0(int i2) {
        return g1("key.guide_apk_dir_max_size", i2);
    }

    public static String d1() {
        return b0().getString("key.copy_link_str", "");
    }

    public static String d2(String str) {
        try {
            str = vg4.e(str);
        } catch (NoSuchAlgorithmException e2) {
            SnapTubeLogger.e(e2);
        }
        return "KEY_URL_BACK_OFF_PREFIX_" + str;
    }

    public static boolean d3() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.clean_app_data", true);
    }

    public static boolean d4() {
        return i1().getBoolean("key.is_preload_task_stoppable", false);
    }

    public static void d5() {
        b0().edit().putBoolean("key.spf_scanned", true).apply();
    }

    public static void d6(boolean z) {
        b0().edit().putBoolean(GlobalConfig.KEY_IS_OPEN_AD_TOAST_DEBUG, z).apply();
    }

    public static boolean e() {
        File[] fileArrK;
        File file = new File(K());
        if (!az7.a0(file)) {
            return true;
        }
        String str = null;
        try {
            fileArrK = hs7.k();
        } catch (NullPointerException | SecurityException e2) {
            e2.printStackTrace();
            fileArrK = null;
        }
        if (fileArrK != null && fileArrK.length != 0) {
            String absolutePath = file.getAbsolutePath();
            long j2 = 0;
            for (File file2 : fileArrK) {
                if (file2 != null && az7.a0(file2)) {
                    String absolutePath2 = file2.getAbsolutePath();
                    if (TextUtils.equals(absolutePath, absolutePath2)) {
                        return true;
                    }
                    long jY = yj2.y(absolutePath2);
                    if (j2 < jY && yj2.d(file2)) {
                        str = absolutePath2;
                        j2 = jY;
                    }
                }
            }
            if (!TextUtils.isEmpty(str)) {
                q5(str);
                return true;
            }
        }
        return false;
    }

    public static int e0() {
        return e1().getInt("key.guide_max_apk_install_times", 99);
    }

    public static SharedPreferences e1() {
        return GlobalConfig.getAppContext().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0);
    }

    public static boolean e2() {
        return b0().getBoolean("KEY_USE_DEFAULT_LANGUAGE", true);
    }

    public static boolean e3() {
        return "debug-for-local".equalsIgnoreCase(S());
    }

    public static boolean e4() {
        return NotificationManagerCompat.from(GlobalConfig.getAppContext()).areNotificationsEnabled();
    }

    public static void e5(String str) {
        b0().edit().putBoolean("key.app_guide_tnb_share_close" + str, true).apply();
    }

    public static void e6(boolean z) {
        b0().edit().putBoolean("key.has_play_feed_video_on_first_launch", z).apply();
    }

    public static boolean f() {
        return i1().getBoolean("key.check_is_family_safe_before_push", false);
    }

    public static int f0() {
        return b0().getInt("install_version_code", -1);
    }

    public static boolean f1(String str, boolean z) {
        Context appContext = PluginContextUtil.getAppContext();
        return appContext == null ? z : appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean(str, z);
    }

    public static boolean f2() {
        return b0().getBoolean("USER_EXTERNAL_STORAGE_FOR_CACHE", false);
    }

    public static boolean f3() {
        return b.getBoolean("key.not_show_push_permission_dialog_again", false);
    }

    public static boolean f4() {
        return i1().getBoolean("key.is_resume_task_by_last_request_url_enabled", true);
    }

    public static void f5(String str) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putString("key_bookmark_version ", str);
        Q6(editorEdit);
    }

    public static void f6(String str) {
        b0().edit().putString("key.search_preset_word", str).apply();
    }

    public static void g() {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putBoolean("key.feed_login_disable", true);
        Q6(editorEdit);
    }

    public static boolean g0() {
        return e1().getBoolean("key.intercept_ad_url_guide", true);
    }

    public static int g1(String str, int i2) {
        Context appContext = PluginContextUtil.getAppContext();
        return appContext == null ? i2 : appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getInt(str, i2);
    }

    public static boolean g2() {
        return f1("key.task_db_provider_enable", true);
    }

    public static boolean g3() {
        return b0().getBoolean("user_changed_download_dir", false);
    }

    public static boolean g4() {
        return !TextUtils.isEmpty(E1());
    }

    public static void g5() {
        b0().edit().putBoolean("key.is_campaign_extra_tracked", true).apply();
    }

    public static void g6(String str) {
        b0().edit().putString("key.search_preset_word_action", str).apply();
    }

    public static boolean h() {
        return b0().contains("USER_EXTERNAL_STORAGE_FOR_CACHE");
    }

    public static long h0() {
        return i1().getLong("key.interval_of_report_fcm_to_server_config", 168L);
    }

    public static String h1(String str, String str2) {
        Context appContext = PluginContextUtil.getAppContext();
        return appContext == null ? str2 : appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getString(str, str2);
    }

    public static boolean h2() {
        return f1("key.whatsapp_gallery_enable", true);
    }

    public static boolean h3() {
        return i1().getBoolean("key.is_download_disk_extract_cache_enabled", true);
    }

    public static boolean h4() {
        return i1().getBoolean("key.is_sensor_dns_enable", true);
    }

    public static void h5(boolean z) {
        b0().edit().putBoolean("KEY_CAN_SHOW_PERMISSION_DIALOG", z).apply();
    }

    public static void h6(long j2) {
        b0().edit().putLong("key_previous_apk_install_time", j2).apply();
    }

    public static boolean i() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.enable_report_night_mode_log", true);
    }

    public static boolean i0() {
        return b0().getBoolean(ld2.c, false);
    }

    public static SharedPreferences i1() {
        return GlobalConfig.getAppContext().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0);
    }

    public static boolean i2() {
        return b0().getBoolean("KEY_USER_WINDOW_PERMISSION_SWITCH", true);
    }

    public static boolean i3() {
        return i1().getBoolean("key.download_succ_share_enabled", false);
    }

    public static boolean i4() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.is_server_region_enabled", true);
    }

    public static void i5(int i2) {
        b0().edit().putInt("data_download_thread", i2).apply();
    }

    public static void i6(int i2) {
        b0().edit().putInt("key_previous_apk_install_version", i2).apply();
    }

    public static boolean j() {
        return i1().getBoolean("key.enable_video_play_in_background", false);
    }

    public static String j0() {
        int i2 = b0().getInt(ld2.e, 0);
        if (i2 > 0) {
            return "ENABLE";
        }
        return i2 < 0 ? "DISABLE" : "UNKNOWN";
    }

    public static Set j1() {
        HashSet hashSet = new HashSet();
        hashSet.add(YoutubeCodec.MP3_70K.getTag());
        return e1().getStringSet("key.prefer_exact_format_tags", hashSet);
    }

    public static int j2() {
        return e1().getInt("key.video_buffering_time_out", 7000);
    }

    public static boolean j3() {
        return i1().getBoolean("key.enable_back_action_for_upgrade", false);
    }

    public static boolean j4() {
        return f1("key.share_use_config_image", false);
    }

    public static void j5(long j2) {
        b0().edit().putLong("last_check_apk_file_time", j2).apply();
    }

    public static void j6(String str) {
        b0().edit().putString("key_previous_apk_task_identity", str).apply();
    }

    public static void k() {
        if (uh.j()) {
            SharedPreferences sharedPreferencesB0 = b0();
            if (!sharedPreferencesB0.getBoolean("DOWNLOAD_DIR_SET_TO_MEDIA", false) && e()) {
                sharedPreferencesB0.edit().putBoolean("DOWNLOAD_DIR_SET_TO_MEDIA", true).apply();
            }
        }
    }

    public static String k0() {
        return e1().getString("key.lp_official_url", "https://www.larkplayer.com");
    }

    public static Map k1() {
        HashMap map = new HashMap();
        String string = e1().getString("key.preload_ad_after_launch_millis", "");
        if (TextUtils.isEmpty(string)) {
            return map;
        }
        try {
            map.putAll((Map) j23.c(string, new AnonymousClass1().getType()));
        } catch (Exception e2) {
            ProductionEnv.throwExceptForDebugging("ParseJsonException", e2);
        }
        return map;
    }

    public static String k2() {
        return h1("key.video_support_multi_download_regex", "");
    }

    public static boolean k3() {
        return i1().getBoolean("key.enable_correct_ytb_thumbnail_cover", true);
    }

    public static boolean k4() {
        return b0().getBoolean("KEY_SHOW_EXTRACT_AUDIO_DOT", true);
    }

    public static void k5(String str) {
        b0().edit().putString("key_check_config_trigger_tag", str).apply();
    }

    public static void k6(int i2) {
        ke6.d(i2);
    }

    public static boolean l() {
        return i1().getBoolean("key.force_youtube_push_preload_enable", true);
    }

    public static String l0() {
        return b0().getString(GlobalConfig.KEY_LANGUAGE_CODE, LanguageListFragment.c3().getLanguage());
    }

    public static String l1() {
        return b0().getString("key.search_preset_word", null);
    }

    public static long l2() {
        return b0().getLong("key.vip_no_ad_success_time_millis", 0L);
    }

    public static boolean l3() {
        return i1().getBoolean("key.edit_music_meta_enable", false);
    }

    public static boolean l4() {
        return i1().getBoolean("key.should_show_upgrade_second_dialog", false);
    }

    public static void l5(String str) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putString("KEY_LOCATION_CODE", str);
        Q6(editorEdit);
    }

    public static void l6(int i2) {
        GlobalConfig.getGenericSharedPrefs().edit().putInt("key.record_version_code", i2).apply();
    }

    public static Regex m() {
        try {
            return new Regex(h1("key.adult_website", ""));
        } catch (Exception unused) {
            return new Regex("https?://.*\\.(pornhub|xvideos|xnxx)\\..*");
        }
    }

    public static int m0() {
        return e1().getInt("key.is_large_file_size_limit", 10485760);
    }

    public static String m1() {
        return b0().getString("key.search_preset_word_action", null);
    }

    public static int m2() {
        return g1("key.vip_switch_max_no_ad_buffer_seconds", (int) TimeUnit.DAYS.toSeconds(1L));
    }

    public static boolean m3() {
        Context appContext = PluginContextUtil.getAppContext();
        if (appContext == null) {
            return true;
        }
        return appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.ffmpeg_cmd_log_enable", true);
    }

    public static boolean m4() {
        return ke6.b();
    }

    public static void m5(int i2) {
        b0().edit().putInt("CRASH_COUNT", i2).apply();
    }

    public static void m6(String str, long j2) {
        b0().edit().putLong("KEY_HOST_BACK_OFF_PREFIX_" + str, j2).apply();
    }

    public static String n(String str) {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getString(str, "");
    }

    public static String n0() {
        return b0().getString("key_copy_last_apk_from", null);
    }

    public static boolean n1() {
        return f1("key.preview_whatsapp_share_enable", true);
    }

    public static int n2() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getInt("key_webm_crash_count", 0);
    }

    public static boolean n3() {
        Context appContext = PluginContextUtil.getAppContext();
        if (appContext == null) {
            return true;
        }
        return appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.ffmpeg_combin_enable", true);
    }

    public static boolean n4() {
        return i1().getBoolean("key.is_social_guide_home_page_enabled", false);
    }

    public static void n5(String str) {
        b0().edit().putString("key.copy_link_str", str).apply();
    }

    public static void n6(String str, long j2) {
        b0().edit().putLong(d2(str), j2).apply();
    }

    public static String o() {
        return h1("key.audio_support_multi_download_regex", "https?://[^/]*(youtube.com|youtu.be).*");
    }

    public static long o0() {
        return b0().getLong("key_last_apk_install_time", -1L);
    }

    public static long o1() {
        return b0().getLong("key_previous_apk_install_time", 0L);
    }

    public static int o2() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getInt("key.webm_crash_max_log_count", 8);
    }

    public static boolean o3() {
        Context appContext = PluginContextUtil.getAppContext();
        if (appContext == null) {
            return true;
        }
        return appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.ffmpeg_m4a_mp3_enable", true);
    }

    public static boolean o4() {
        return i1().getBoolean("key.enable_spf", false);
    }

    public static void o5(boolean z) {
        b0().edit().putBoolean("KEY_DETAIL_AUTO_PLAY", z).apply();
    }

    public static void o6(String str, boolean z) {
        b0().edit().putBoolean("key_semi_mandatory_enable_" + str, z).apply();
    }

    public static Set p() {
        return e1().getStringSet("key.batch_download_audio_formats", BatchDownloadUtil.a);
    }

    public static int p0() {
        return b0().getInt("key_last_apk_install_version", -1);
    }

    public static int p1() {
        return b0().getInt("key_previous_apk_install_version", 0);
    }

    public static int p2() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getInt("key.webm_crash_max_close_count", 20);
    }

    public static boolean p3() {
        Context appContext = PluginContextUtil.getAppContext();
        if (appContext == null) {
            return true;
        }
        return appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getBoolean("key.ffmpeg_mp3_shine_enable", true);
    }

    public static boolean p4() {
        return i1().getBoolean("key.switch_download_dir_when_retry_manual_enabled", false);
    }

    public static void p5(boolean z) {
        b0().edit().putBoolean("user_changed_download_dir", z).apply();
    }

    public static void p6(String str) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putString("KEY_SERVER_LOCATION_CODE", str);
        Q6(editorEdit);
    }

    public static int q() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getInt("batch_download_size", 200);
    }

    public static long q0() {
        return b0().getLong("last_app_start_time", 0L);
    }

    public static String q1() {
        return b0().getString("key_previous_apk_task_identity", "");
    }

    public static WebOuterJumpData q2() {
        try {
            return (WebOuterJumpData) j23.b(h1("key.web_outer_jump_data", null), WebOuterJumpData.class);
        } catch (Exception e2) {
            ProductionEnv.throwExceptForDebugging(e2);
            return null;
        }
    }

    public static boolean q3() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.ffmpeg_task_block", false);
    }

    public static boolean q4() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.is_sys_window_permission_log_enable", true);
    }

    public static void q5(String str) {
        DownloadRootDirStore.a.r(str);
    }

    public static void q6(boolean z) {
        Y4("key.has_show_download_all_guide", z);
    }

    public static String r() {
        return b0().getString("key_bookmark_version ", "");
    }

    public static long r0() {
        return b0().getLong("key.last_app_uninstallsurvey_show_time", 0L);
    }

    public static String r1() {
        return Uri.parse(bt6.e()).buildUpon().appendQueryParameter(GuardianManager.LANG, b04.b(b04.a()).getLanguage()).toString();
    }

    public static String r2() {
        return h1("key.web_search_result_url", "https://m.youtube.com/results?");
    }

    public static boolean r3() {
        return i1().getBoolean("key.is_facebook_native_search_enabled", true);
    }

    public static boolean r4() {
        return i1().getBoolean("key.is_tiktok_native_search_enabled", true);
    }

    public static void r5(long j2) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putLong("key_download_speed_limit", j2);
        Q6(editorEdit);
    }

    public static void r6(boolean z) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putBoolean("KEY_SHOW_EXTRACT_AUDIO_DOT", z);
        Q6(editorEdit);
    }

    public static int s() {
        int i2 = x;
        if (i2 >= 0) {
            return i2;
        }
        synchronized (Config.class) {
            try {
                int i3 = x;
                if (i3 >= 0) {
                    return i3;
                }
                SharedPreferences sharedPreferencesB0 = b0();
                int iNextInt = sharedPreferencesB0.getInt("key_bucket_id", -1);
                if (iNextInt == -1) {
                    iNextInt = new Random(SystemClock.uptimeMillis()).nextInt(32);
                    sharedPreferencesB0.edit().putInt("key_bucket_id", iNextInt).apply();
                }
                x = iNextInt;
                return iNextInt;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized String s0() {
        try {
            if (TextUtils.isEmpty(e)) {
                e = cm.M(PhoenixApplication.z()) ? "tube_apk_share" : O4(PhoenixApplication.z());
            }
        } catch (Throwable th) {
            throw th;
        }
        return e;
    }

    public static int s1() {
        return e1().getInt("key.push_show_limit", 5);
    }

    public static String s2() {
        Context appContext = PluginContextUtil.getAppContext();
        return appContext == null ? "com.whatsapp.w4b" : appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getString("key.whatsapp_business_package_name", "com.whatsapp.w4b");
    }

    public static boolean s3() {
        return i1().getBoolean("key.is_fb_extract_by_local", true);
    }

    public static boolean s4() {
        return i1().getBoolean("key.enable_transfer_plugin", false);
    }

    public static void s5(boolean z) {
        b0().edit().putBoolean("key.has_shown_feed_video_guide", z).apply();
    }

    public static void s6(boolean z) {
        i1().edit().putBoolean("key.show_me_red_point_on_tool", z).apply();
    }

    public static String t() {
        return h1("key.not_support_finish_activity_regex", E());
    }

    public static long t0() {
        return b0().getLong("last_check_apk_file_time", 0L);
    }

    public static int t1() {
        return e1().getInt("key.push_show_limit_internal", 60);
    }

    public static String t2() {
        Context appContext = PluginContextUtil.getAppContext();
        return appContext == null ? "com.whatsapp" : appContext.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getString("key.whatsapp_package_name", "com.whatsapp");
    }

    public static boolean t3() {
        return b0().getBoolean("key.first_add_audio_to_minibar", true);
    }

    public static boolean t4() {
        return i1().getBoolean("key.is_twitter_extract_by_native", true);
    }

    public static void t5(String str) {
        b0().edit().putString("key.feedback_extract_failed_url", str).apply();
    }

    public static void t6(String str, int i2) {
        b0().edit().putInt("key_successful_install_count_" + str, i2).apply();
    }

    public static int u() {
        return b0().getInt("data_download_thread", 2);
    }

    public static long u0() {
        return b0().getLong("key_last_check_plugin_info_time", -1L);
    }

    public static int u1() {
        return ke6.a();
    }

    public static int u2() {
        return b0().getInt("wifi_download_thread", d.n);
    }

    public static boolean u3() {
        Boolean bool = s;
        if (bool != null) {
            return bool.booleanValue();
        }
        Boolean boolValueOf = Boolean.valueOf(b0().getBoolean("KEY_FIRST_LAUNCH", true));
        s = boolValueOf;
        if (boolValueOf.booleanValue()) {
            v5(false);
        }
        return s.booleanValue();
    }

    public static boolean u4() {
        return f1("key.enable_uninstall_clean_dialog", true);
    }

    public static void u5(boolean z) {
        b0().edit().putBoolean("key.first_add_audio_to_minibar", z).apply();
    }

    public static void u6(int i2) {
        b0().edit().putInt("key.unread_task_finish_count", i2).apply();
    }

    public static String v() {
        return b0().getString("key_check_config_trigger_tag", "");
    }

    public static String v0() {
        return b0().getString("key_copy_last_apk_position_source", null);
    }

    public static String v1() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static String v2() {
        return PhoenixApplication.z().getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).getString("key.ytb_webview_search_enable", "https://www.youtube.com/results?search_query=");
    }

    public static boolean v3() {
        return i1().getBoolean("key.focus_ad_in_choose_format", true);
    }

    public static boolean v4() {
        return i1().getBoolean("key.is_upgrade_enabled", true);
    }

    public static void v5(boolean z) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putBoolean("KEY_FIRST_LAUNCH", z);
        Q6(editorEdit);
    }

    public static void v6(boolean z) {
        b0().edit().putBoolean("KEY_USE_DEFAULT_LANGUAGE", z).apply();
    }

    public static long w(StorageStatus$CleanEntranceType storageStatus$CleanEntranceType) {
        return b0().getLong("clean_entrance_last_shown_time_" + storageStatus$CleanEntranceType.name().toLowerCase(), -1L);
    }

    public static long w0() {
        return b0().getLong("key_copy_size ", -1L);
    }

    public static String w1() {
        return uh.d() ? Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() : Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static String w2() {
        return b0().getString(GlobalConfig.KEY_YOUTUBE_EX_LANGUAGE, "");
    }

    public static boolean w3(boolean z) {
        return i1().getBoolean("key.is_hot_splash_ads_enabled", z);
    }

    public static boolean w4() {
        return i1().getBoolean("key.enable_upgrade_feedback_faq", false);
    }

    public static void w5(long j2) {
        b0().edit().putLong("first_launch_app_time", j2).apply();
    }

    public static void w6(boolean z) {
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putBoolean("USER_EXTERNAL_STORAGE_FOR_CACHE", z);
        Q6(editorEdit);
    }

    public static long x(StorageStatus$CleanEntranceType storageStatus$CleanEntranceType) {
        return TimeUnit.MINUTES.toMillis(e1().getInt("key.clean_entrance_interval_" + storageStatus$CleanEntranceType.name().toLowerCase(), r));
    }

    public static long x0() {
        return b0().getLong("key_copy_time ", -1L);
    }

    public static int x1() {
        return GlobalConfig.getGenericSharedPrefs().getInt("key.record_version_code", 0);
    }

    public static String x2() {
        return b0().getString(GlobalConfig.KEY_LANGUAGE_CODE_YOUTUBE, LanguageListFragment.c3().getLanguage());
    }

    public static boolean x3() {
        return i1().getBoolean("key.is_ignore_profile_date_limit_enabled", true);
    }

    public static boolean x4() {
        return i1().getBoolean("key.pop_upgrade_dialog_directly", true);
    }

    public static void x5() {
        Y4("key.has_scan_download_media", true);
    }

    public static void x6(boolean z) {
        b0().edit().putBoolean("KEY_USER_MOBILE_NET_DOWN_FFMPEG_PLUGIN_ENABLE", z).apply();
    }

    public static int y() {
        return e1().getInt("key.new_clean_insufficient_dialog_total_count", 1);
    }

    public static int y0() {
        return b0().getInt("key_copy_version_code ", -1);
    }

    public static long y1() {
        return ((long) e1().getInt("key.retry_check_plugin_duration", 1)) * 3600000;
    }

    public static String y2() {
        return h1("key.youtube_home_web_url", null);
    }

    public static boolean y3() {
        return i1().getBoolean("key.is_webview_ignore_ssl_error", true);
    }

    public static boolean y4() {
        return i1().getBoolean("key.enable_download_quick_mode", true);
    }

    public static void y5() {
        b0().edit().putBoolean("has_show_launch_guide_743", true).apply();
    }

    public static void y6(boolean z) {
        b0().edit().putBoolean("KEY_USER_WINDOW_PERMISSION_SWITCH", z).apply();
    }

    public static int z() {
        return e1().getInt("key.new_clean_interval_time", 300000);
    }

    public static String z0() {
        return b0().getString("key_copy_file_name", null);
    }

    public static long z1(String str) {
        return b0().getLong("KEY_HOST_BACK_OFF_PREFIX_" + str, 0L);
    }

    public static String z2() {
        return e1().getString("key.youtube_music_channel_url", "https://www.youtube.com/channel/UC-9-kyTW8ZkZNDHQJ6FgpwQ/featured");
    }

    public static boolean z3() {
        return PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getBoolean("key.is_immersive_hash_tag_list_enabled", true);
    }

    public static boolean z4() {
        return i1().getBoolean("key.use_legacy_insufficient_storage_solution", false);
    }

    public static void z5(boolean z, boolean z2) {
        String str = z ? "KEY_VIDEO_PLAYER_USED" : "KEY_MUSIC_PLAYER_USED";
        SharedPreferences.Editor editorEdit = b0().edit();
        editorEdit.putBoolean(str, z2);
        Q6(editorEdit);
    }

    public static void z6(long j2) {
        b0().edit().putLong("key.vip_no_ad_success_time_millis", j2).apply();
    }
}
