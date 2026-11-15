package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdImage;
import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;

public final class ny0 {
    private final e40 a;
    private final vj0 b;
    private final Point c;

    public ny0(Context context) {
        this(context, new e40(), new vj0());
    }

    public final LinkedHashSet a(List list) {
        y45.j(list, "images");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediatedNativeAdImage mediatedNativeAdImage = (MediatedNativeAdImage) it.next();
            String url = mediatedNativeAdImage.getUrl();
            int width = mediatedNativeAdImage.getWidth();
            int height = mediatedNativeAdImage.getHeight();
            if (url.length() > 0) {
                this.b.getClass();
                if (width <= 0 || height <= 0) {
                    Point point = this.c;
                    linkedHashSet.add(new xj0(point.x, point.y, url, null, 120));
                }
            }
        }
        return linkedHashSet;
    }

    public final LinkedHashMap b(List list) {
        y45.j(list, "nativeAdImages");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediatedNativeAdImage mediatedNativeAdImage = (MediatedNativeAdImage) it.next();
            Drawable drawable = mediatedNativeAdImage.getDrawable();
            String url = mediatedNativeAdImage.getUrl();
            if (drawable != null && url.length() > 0) {
                this.a.getClass();
                Bitmap bitmapA = e40.a(drawable);
                if (bitmapA != null) {
                    linkedHashMap.put(url, bitmapA);
                }
            }
        }
        return linkedHashMap;
    }

    public ny0(Context context, e40 e40Var, vj0 vj0Var) {
        y45.j(context, "context");
        y45.j(e40Var, "drawableConverter");
        y45.j(vj0Var, "imageSizeValidator");
        this.a = e40Var;
        this.b = vj0Var;
        this.c = ih1.b(context);
    }
}
