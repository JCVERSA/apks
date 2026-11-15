package com.bytedance.sdk.openadsdk.api.banner;

import android.content.Context;
import com.bytedance.sdk.openadsdk.utils.TKC;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public final class PAGBannerSize {
    private int EjP;
    private int Sj;
    private int TKC = 1;
    private int sP;
    public static final PAGBannerSize BANNER_W_320_H_50 = new PAGBannerSize(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 50);
    public static final PAGBannerSize BANNER_W_300_H_250 = new PAGBannerSize(300, 250);
    public static final PAGBannerSize BANNER_W_728_H_90 = new PAGBannerSize(728, 90);

    public PAGBannerSize(int i10, int i11) {
        this.Sj = i10;
        this.sP = i11;
    }

    public static PAGBannerSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int i10) {
        int iSj = TKC.Sj(context, i10, 0);
        if (iSj == TKC.Sj) {
            return new PAGBannerSize(-1, -1);
        }
        PAGBannerSize pAGBannerSize = new PAGBannerSize(i10, iSj);
        pAGBannerSize.TKC = 2;
        return pAGBannerSize;
    }

    public static PAGBannerSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int i10) {
        int iSj = TKC.Sj(context, 0);
        if (iSj == TKC.Sj) {
            return new PAGBannerSize(-1, -1);
        }
        PAGBannerSize pAGBannerSize = new PAGBannerSize(i10, 0);
        pAGBannerSize.EjP = iSj;
        pAGBannerSize.TKC = 3;
        return pAGBannerSize;
    }

    public static PAGBannerSize getInlineAdaptiveBannerAdSize(int i10, int i11) {
        PAGBannerSize pAGBannerSize = new PAGBannerSize(i10, 0);
        pAGBannerSize.EjP = i11;
        pAGBannerSize.TKC = 3;
        return pAGBannerSize;
    }

    public int getHeight() {
        return this.sP;
    }

    public int getMaxHeight() {
        return this.EjP;
    }

    public int getType() {
        return this.TKC;
    }

    public int getWidth() {
        return this.Sj;
    }
}
