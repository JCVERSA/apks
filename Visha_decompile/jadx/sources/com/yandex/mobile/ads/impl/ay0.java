package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import com.monetization.ads.mediation.nativeads.MediatedNativeAd;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdImage;
import defpackage.y45;
import java.util.List;
import java.util.Map;

public final class ay0 {
    private final kj0 a;
    private final ny0 b;
    private final f51 c;

    public interface a {
        void a(o8<y61> o8Var);
    }

    public static final class b implements gk0 {
        final MediatedNativeAd b;
        final gr1 c;
        final a d;

        public b(MediatedNativeAd mediatedNativeAd, gr1 gr1Var, a aVar) {
            this.b = mediatedNativeAd;
            this.c = gr1Var;
            this.d = aVar;
        }

        @Override
        public final void a(String str, Bitmap bitmap) {
            y45.j(str, "url");
            y45.j(bitmap, "bitmap");
        }

        @Override
        public final void a(Map<String, Bitmap> map) {
            y45.j(map, "images");
            ay0.a(ay0.this, this.b, map, this.c, this.d);
        }
    }

    public ay0(Context context, kj0 kj0Var, ny0 ny0Var) {
        this(context, kj0Var, ny0Var, new f51(context));
    }

    public static final void a(ay0 ay0Var, MediatedNativeAd mediatedNativeAd, Map map, gr1 gr1Var, a aVar) {
        aVar.a(ay0Var.c.a(mediatedNativeAd, map, gr1Var));
    }

    public ay0(Context context, kj0 kj0Var, ny0 ny0Var, f51 f51Var) {
        y45.j(context, "context");
        y45.j(kj0Var, "imageLoadManager");
        y45.j(ny0Var, "mediatedImagesDataExtractor");
        y45.j(f51Var, "nativeAdConverter");
        this.a = kj0Var;
        this.b = ny0Var;
        this.c = f51Var;
    }

    public final void a(MediatedNativeAd mediatedNativeAd, gr1 gr1Var, List<MediatedNativeAdImage> list, a aVar) {
        y45.j(mediatedNativeAd, "mediatedNativeAd");
        y45.j(gr1Var, "responseNativeType");
        y45.j(list, "mediatedImages");
        y45.j(aVar, "listener");
        this.a.a(this.b.a(list), new b(mediatedNativeAd, gr1Var, aVar));
    }
}
