package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdImage;
import defpackage.y45;
import java.util.Map;

public final class fj0 {
    private final vj0 a;
    private final uj0 b;

    public fj0(Context context, vj0 vj0Var) {
        this(context, vj0Var, new uj0(context));
    }

    public final xj0 a(Map<String, Bitmap> map, MediatedNativeAdImage mediatedNativeAdImage) {
        y45.j(map, "imageValues");
        if (mediatedNativeAdImage == null) {
            return null;
        }
        String url = mediatedNativeAdImage.getUrl();
        int width = mediatedNativeAdImage.getWidth();
        int height = mediatedNativeAdImage.getHeight();
        this.a.getClass();
        if (width > 0 && height > 0) {
            return new xj0(width, height, url, this.b.a(width, height), 112);
        }
        Bitmap bitmap = map.get(url);
        if (bitmap == null) {
            return null;
        }
        int width2 = bitmap.getWidth();
        int height2 = bitmap.getHeight();
        return new xj0(width2, height2, url, this.b.a(width2, height2), 112);
    }

    public fj0(Context context, vj0 vj0Var, uj0 uj0Var) {
        y45.j(context, "context");
        y45.j(vj0Var, "imageSizeValidator");
        y45.j(uj0Var, "imageSizeTypeProvider");
        this.a = vj0Var;
        this.b = uj0Var;
    }
}
