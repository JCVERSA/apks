package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.cookie.SerializableCookie;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;
import java.util.Map;

public final class k71 {
    private final CheckBox a;
    private final ProgressBar b;
    private final View c;
    private final Map<String, View> d;
    private final f81 e;
    private final ImageView f;

    public static final class a {
        private final View a;
        private final f81 b;
        private CheckBox c;
        private ProgressBar d;
        private final Map<String, View> e;
        private ImageView f;

        public a(View view, f81 f81Var, Map<String, ? extends View> map) {
            y45.j(view, "nativeAdView");
            y45.j(f81Var, "nativeBindType");
            y45.j(map, "initialAssetViews");
            this.a = view;
            this.b = f81Var;
            this.e = kotlin.collections.a.C(map);
        }

        public final Map<String, View> a() {
            return this.e;
        }

        public final ImageView b() {
            return this.f;
        }

        public final CheckBox c() {
            return this.c;
        }

        public final View d() {
            return this.a;
        }

        public final f81 e() {
            return this.b;
        }

        public final ProgressBar f() {
            return this.d;
        }

        public final a g(TextView textView) {
            this.e.put("sponsored", textView);
            return this;
        }

        public final a h(TextView textView) {
            this.e.put("title", textView);
            return this;
        }

        public final a i(TextView textView) {
            this.e.put("warning", textView);
            return this;
        }

        public final a a(TextView textView) {
            this.e.put("age", textView);
            return this;
        }

        public final a b(TextView textView) {
            this.e.put(TtmlNode.TAG_BODY, textView);
            return this;
        }

        public final a c(TextView textView) {
            this.e.put("call_to_action", textView);
            return this;
        }

        public final a d(TextView textView) {
            this.e.put(SerializableCookie.DOMAIN, textView);
            return this;
        }

        public final a e(TextView textView) {
            this.e.put("price", textView);
            return this;
        }

        public final a f(TextView textView) {
            this.e.put("review_count", textView);
            return this;
        }

        public final void a(View view, String str) {
            y45.j(str, "assetName");
            this.e.put(str, view);
        }

        public final a b(ImageView imageView) {
            this.e.put("feedback", imageView);
            return this;
        }

        public final a c(ImageView imageView) {
            this.e.put("icon", imageView);
            return this;
        }

        public final a d(ImageView imageView) {
            this.f = imageView;
            return this;
        }

        public final a a(ImageView imageView) {
            this.e.put("favicon", imageView);
            return this;
        }

        public final a a(CustomizableMediaView customizableMediaView) {
            this.e.put("media", customizableMediaView);
            return this;
        }

        public final a a(CheckBox checkBox) {
            this.c = checkBox;
            return this;
        }

        public final a a(View view) {
            this.e.put("rating", view);
            return this;
        }

        public final a a(ProgressBar progressBar) {
            this.d = progressBar;
            return this;
        }
    }

    private k71(a aVar) {
        this.a = aVar.c();
        this.b = aVar.f();
        this.c = aVar.d();
        this.d = aVar.a();
        this.e = aVar.e();
        this.f = aVar.b();
    }

    public final Map<String, View> a() {
        return this.d;
    }

    public final ImageView b() {
        return this.f;
    }

    public final CheckBox c() {
        return this.a;
    }

    public final View d() {
        return this.c;
    }

    public final f81 e() {
        return this.e;
    }

    public final ProgressBar f() {
        return this.b;
    }

    public k71(a aVar, int i) {
        this(aVar);
    }
}
