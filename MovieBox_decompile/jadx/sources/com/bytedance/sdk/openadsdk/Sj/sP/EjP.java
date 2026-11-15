package com.bytedance.sdk.openadsdk.Sj.sP;

import android.view.View;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.bytedance.sdk.openadsdk.core.model.sU;

public class EjP implements PAGNativeAdData {
    private final Sj Sj;

    public EjP(Sj sj2) {
        this.Sj = sj2;
    }

    @Override
    public View getAdChoicesView() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.Ym();
        }
        return null;
    }

    @Override
    public View getAdLogoView() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.TEQ();
        }
        return null;
    }

    @Override
    public String getButtonText() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.vS();
        }
        return null;
    }

    @Override
    public String getDescription() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.HiB();
        }
        return null;
    }

    @Override
    public PAGImageItem getIcon() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.TKC();
        }
        return null;
    }

    @Override
    public PAGNativeAdData.PAGNativeMediaType getMediaType() {
        return sU.HiB(this.Sj.Sj) ? PAGNativeAdData.PAGNativeMediaType.PAGNativeMediaTypeVideo : PAGNativeAdData.PAGNativeMediaType.PAGNativeMediaTypeImage;
    }

    @Override
    public PAGMediaView getMediaView() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.Jcg();
        }
        return null;
    }

    @Override
    public String getTitle() {
        Sj sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.EjP();
        }
        return null;
    }
}
