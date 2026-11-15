package com.facebook.biddingkit.gen;

import com.vungle.ads.internal.b;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public enum AppLovinAdFormat {
    INTERSTITIAL(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 480, 1, "", "banner", "video"),
    BANNER(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 50, 0, "", "banner"),
    MREC(300, 250, 0, "", "banner"),
    REWARDED_VIDEO(480, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 0, b.PLACEMENT_TYPE_REWARDED, "banner", "video");

    private final String mFirstFormatLabel;
    private final int mHeight;
    private final int mInstl;
    private final String mRewarded;
    private final String mSecondFormatLabel;
    private final int mWidth;

    AppLovinAdFormat(int i10, int i11, int i12, String str, String str2, String str3) {
        this.mWidth = i10;
        this.mHeight = i11;
        this.mInstl = i12;
        this.mRewarded = str;
        this.mFirstFormatLabel = str2;
        this.mSecondFormatLabel = str3;
    }

    public String getFormatLabel() {
        return this.mFirstFormatLabel;
    }

    public int getHeight(boolean z10) {
        return z10 ? this.mWidth : this.mHeight;
    }

    public int getInstl() {
        return this.mInstl;
    }

    public String getRewarded() {
        return this.mRewarded;
    }

    public String getSecondFormatLabelLabel() {
        return this.mSecondFormatLabel;
    }

    public int getWidth(boolean z10) {
        return z10 ? this.mHeight : this.mWidth;
    }

    AppLovinAdFormat(int i10, int i11, int i12, String str, String str2) {
        this(i10, i11, i12, str, str2, "");
    }
}
