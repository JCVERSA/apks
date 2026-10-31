package com.snaptube.ads.base;

import android.text.TextUtils;
import com.snaptube.util.ProductionEnv;

public enum AdsPos {
    BANNER_VIDEO_INFO("banner_video_info", false),
    INTERSTITIAL_LAUNCH("interstitial_launch", true),
    PHONE_BOOST_INTERSTITIAL("phone_boost_interstitial", false),
    CLEAN_INTERSTITIAL("clean_interstitial", false),
    BATTERY_SAVER_INTERSTITIAL("battery_saver_interstitial", false),
    NATIVE_MYFILE_ALL_PLAY_LIST("play_list", true),
    NATIVE_BROWSER_BANNER("browser_banner", false),
    SEARCH_VIDEO_RESULT("search_video_result", true),
    NATIVE_YOUTUBE_FEEDSTREAM("youtube_feedstream", true),
    NATIVE_YOUTUBE_DETAILS_TOP_BANNER("youtube_details_top_banner", true),
    NATIVE_YOUTUBE_DETAILS_BANNER("youtube_details_banner", true),
    MY_FILE_TASK("my_file_task", true),
    DOWNLOAD_OUTSIDE_REWARD("download_outside_reward", false),
    AUDIO_PREVIEW("audio_preview", false),
    BATCH_DOWNLOAD_REWARD("batch_download_reward", false),
    START_DOWNLOAD_INTERSTITIAL("start_download_interstitial", false),
    HOT_SPLASH("hot_splash", false);

    private boolean isFeedstream;
    private String pos;

    AdsPos(String str, boolean z) {
        this.pos = str;
        this.isFeedstream = z;
    }

    public static String adPosToParent(String str) {
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, "banner_video_info2")) {
            try {
                return str.replaceAll("[0-9]+$", "");
            } catch (Throwable th) {
                ProductionEnv.throwExceptForDebugging("PatternSyntaxException", th);
            }
        }
        return str;
    }

    public boolean isFeedstream() {
        return this.isFeedstream;
    }

    public String pos() {
        return this.pos;
    }

    public String pos(String str) {
        if (TextUtils.isEmpty(str)) {
            return this.pos;
        }
        return this.pos + "_" + str;
    }

    public String subPos(String str) {
        return this.pos + str;
    }
}
