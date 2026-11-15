package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdImage;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdMedia;
import defpackage.y45;
import java.util.List;
import java.util.Map;

public final class av0 {
    private final fj0 a;

    public av0(fj0 fj0Var) {
        y45.j(fj0Var, "imageAssetConverter");
        this.a = fj0Var;
    }

    public final ex0 a(Map<String, Bitmap> map, MediatedNativeAdImage mediatedNativeAdImage, MediatedNativeAdMedia mediatedNativeAdMedia) {
        y45.j(map, "imageValues");
        wu0 wu0Var = mediatedNativeAdMedia != null ? new wu0(null, mediatedNativeAdMedia.getAspectRatio()) : null;
        xj0 xj0VarA = this.a.a(map, mediatedNativeAdImage);
        List listQ = xj0VarA != null ? defpackage.y71.q(xj0VarA) : null;
        if (wu0Var == null && listQ == null) {
            return null;
        }
        return new ex0(wu0Var, null, listQ);
    }
}
