package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public final class m61 {
    private final g41 a;
    private final sj0 b;
    private final dc1 c;
    private final kj0 d;
    private final ek0 e;
    private final n41 f;
    private final Set<ut> g;

    public static final class a implements gk0 {
        public a() {
        }

        @Override
        public final void a(String str, Bitmap bitmap) {
            y45.j(str, "url");
            y45.j(bitmap, "bitmap");
        }

        @Override
        public final void a(Map<String, Bitmap> map) {
            y45.j(map, "images");
            m61.this.b.a(map);
            m61.this.c.a();
            Iterator it = m61.this.g.iterator();
            while (it.hasNext()) {
                ((ut) it.next()).onFinishLoadingImages();
            }
        }
    }

    public m61(Context context, g41 g41Var, sj0 sj0Var, dc1 dc1Var) {
        this(context, g41Var, sj0Var, dc1Var, new kj0(context), new ek0(), new n41(sj0Var), new CopyOnWriteArraySet());
    }

    public final void d() {
        List<g41> listE = defpackage.x71.e(this.a);
        ek0 ek0Var = this.e;
        ek0Var.getClass();
        y45.j(listE, "nativeAds");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listE, 10));
        for (g41 g41Var : listE) {
            arrayList.add(ek0Var.a(g41Var.b(), g41Var.e()));
        }
        this.d.a(defpackage.i81.g1(defpackage.z71.x(arrayList)), new a());
    }

    public final void a(ut utVar) {
        y45.j(utVar, "listener");
        this.g.add(utVar);
    }

    public final gr1 b() {
        return this.a.g();
    }

    public final String c() {
        return this.a.d();
    }

    public final void b(ut utVar) {
        y45.j(utVar, "listener");
        this.g.remove(utVar);
    }

    public final rt a() {
        return this.f.a(this.a);
    }

    public m61(Context context, g41 g41Var, sj0 sj0Var, dc1 dc1Var, kj0 kj0Var, ek0 ek0Var, n41 n41Var, Set<ut> set) {
        y45.j(context, "context");
        y45.j(g41Var, "nativeAd");
        y45.j(sj0Var, "imageProvider");
        y45.j(dc1Var, "nativeAdViewRenderer");
        y45.j(kj0Var, "imageLoadManager");
        y45.j(ek0Var, "imageValuesProvider");
        y45.j(n41Var, "nativeAdAssetsCreator");
        y45.j(set, "imageLoadingListeners");
        this.a = g41Var;
        this.b = sj0Var;
        this.c = dc1Var;
        this.d = kj0Var;
        this.e = ek0Var;
        this.f = n41Var;
        this.g = set;
    }
}
