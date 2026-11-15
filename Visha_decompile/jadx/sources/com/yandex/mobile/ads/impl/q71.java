package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import defpackage.af5;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;

public final class q71 {
    static final af5[] f = {ta.a(q71.class, "nativeAdView", "getNativeAdView()Landroid/view/View;", 0), ta.a(q71.class, "imageView", "getImageView()Landroid/widget/ImageView;", 0), ta.a(q71.class, "muteButtonView", "getMuteButtonView()Landroid/widget/CheckBox;", 0), ta.a(q71.class, "videoProgressView", "getVideoProgressView()Landroid/widget/ProgressBar;", 0)};
    private final go1 a;
    private final go1 b;
    private final go1 c;
    private final go1 d;
    private final LinkedHashMap e;

    public static final class a {
        private final View a;
        private CheckBox b;
        private ProgressBar c;
        private final Map<String, View> d;
        private ImageView e;

        public a(View view, Map<String, ? extends View> map) {
            y45.j(view, "nativeAdView");
            y45.j(map, "initialAssetViews");
            this.a = view;
            this.d = kotlin.collections.a.C(map);
        }

        public final Map<String, View> a() {
            return this.d;
        }

        public final ImageView b() {
            return this.e;
        }

        public final CheckBox c() {
            return this.b;
        }

        public final View d() {
            return this.a;
        }

        public final ProgressBar e() {
            return this.c;
        }

        public final a a(ImageView imageView) {
            this.e = imageView;
            return this;
        }

        public final a a(CheckBox checkBox) {
            this.b = checkBox;
            return this;
        }

        public final a a(ProgressBar progressBar) {
            this.c = progressBar;
            return this;
        }
    }

    private q71(a aVar) {
        this.a = ho1.a(aVar.d());
        this.b = ho1.a(aVar.b());
        this.c = ho1.a(aVar.c());
        this.d = ho1.a(aVar.e());
        this.e = bu0.a(aVar.a());
    }

    public final View a(String str) {
        y45.j(str, "assetName");
        WeakReference weakReference = (WeakReference) this.e.get(str);
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public final ImageView b() {
        return (ImageView) this.b.getValue(this, f[1]);
    }

    public final CheckBox c() {
        return (CheckBox) this.c.getValue(this, f[2]);
    }

    public final View d() {
        return (View) this.a.getValue(this, f[0]);
    }

    public final ProgressBar e() {
        return (ProgressBar) this.d.getValue(this, f[3]);
    }

    public final LinkedHashMap a() {
        return this.e;
    }

    public q71(a aVar, int i) {
        this(aVar);
    }
}
