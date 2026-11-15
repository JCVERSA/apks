package com.facebook.biddingkit.gen;

import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import io.appmetrica.analytics.plugins.PluginErrorDetails;

public enum FacebookAdBidFormat {
    BANNER_320_50(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, 50, 0, 0, "banner", ""),
    BANNER_HEIGHT_50(-1, 50, 0, 0, "banner", ""),
    BANNER_HEIGHT_90(-1, 90, 0, 0, "banner", ""),
    BANNER_HEIGHT_250(-1, 250, 0, 0, "banner", ""),
    INTERSTITIAL(0, 0, 1, 0, "banner", ""),
    INSTREAM_VIDEO(0, 0, 0, 1, "video", ""),
    REWARDED_VIDEO(0, 0, 0, 2, "video", "rewarded"),
    NATIVE(-1, -1, 0, 0, PluginErrorDetails.Platform.NATIVE, ""),
    NATIVE_BANNER(-1, -1, 0, 0, PluginErrorDetails.Platform.NATIVE, "");

    private final String mFormatLabel;
    private final int mHeight;
    private final int mInstl;
    private final int mLinearity;
    private final String mVideoType;
    private final int mWidth;

    FacebookAdBidFormat(int i, int i2, int i3, int i4, String str, String str2) {
        this.mWidth = i;
        this.mHeight = i2;
        this.mInstl = i3;
        this.mLinearity = i4;
        this.mFormatLabel = str;
        this.mVideoType = str2;
    }

    public String getFormatLabel() {
        return this.mFormatLabel;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getInstl() {
        return this.mInstl;
    }

    public int getLinearity() {
        return this.mLinearity;
    }

    public String getVideoType() {
        return this.mVideoType;
    }

    public int getWidth() {
        return this.mWidth;
    }
}
