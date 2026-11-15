package com.facebook.biddingkit.gen;

import com.vungle.ads.internal.b;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public enum FacebookAdBidFormat {
    BANNER_320_50(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 50, 0, 0, "banner", ""),
    BANNER_HEIGHT_50(-1, 50, 0, 0, "banner", ""),
    BANNER_HEIGHT_90(-1, 90, 0, 0, "banner", ""),
    BANNER_HEIGHT_250(-1, 250, 0, 0, "banner", ""),
    INTERSTITIAL(0, 0, 1, 0, "banner", ""),
    INSTREAM_VIDEO(0, 0, 0, 1, "video", ""),
    REWARDED_VIDEO(0, 0, 0, 2, "video", b.PLACEMENT_TYPE_REWARDED),
    NATIVE(-1, -1, 0, 0, "native", ""),
    NATIVE_BANNER(-1, -1, 0, 0, "native", "");

    private final String mFormatLabel;
    private final int mHeight;
    private final int mInstl;
    private final int mLinearity;
    private final String mVideoType;
    private final int mWidth;

    FacebookAdBidFormat(int i10, int i11, int i12, int i13, String str, String str2) {
        this.mWidth = i10;
        this.mHeight = i11;
        this.mInstl = i12;
        this.mLinearity = i13;
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
