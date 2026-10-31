package com.snaptube.premium.ads;

import java.io.Serializable;

public class AdsConfigV2 implements Serializable {
    public String exit_interstitial;
    public String fb_appname;
    public FBPlacementIdConfig[] fb_config;
    public String fb_packagename;
    public String gx_interstitial;
    public String playback_paused_banner;
    public AdPosConfig[] pos_config;
    public RetryPolicy retry;
    public String start_interstitial;

    public static class AdPosConfig implements Serializable {
        public int min_show_interval;
        public String placement_id;
        public String pos_id;
        public String provider;
        public int try_count;
    }

    public static class FBPlacementIdConfig implements Serializable {
        public int auto_reload_interval;
        public boolean auto_reload_when_exhausted;
        public String placement_id;
        public String placement_id_for_new_user;
        public int preload_count;
        public int reuse_count;
        public int reuse_duration;
    }

    public static class RetryPolicy implements Serializable {
        public int backoff_multiplier;
        public int initial_timeout;
        public int max_retries;
    }
}
