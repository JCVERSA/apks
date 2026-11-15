package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.nativeads.NativeAdImageLoadingListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class tm2 implements ut {
    private final NativeAdImageLoadingListener a;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            tm2.this.a.onFinishLoadingImages();
            return zfb.a;
        }
    }

    public tm2(NativeAdImageLoadingListener nativeAdImageLoadingListener) {
        y45.j(nativeAdImageLoadingListener, "imageLoadingListener");
        this.a = nativeAdImageLoadingListener;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tm2) && y45.e(this.a, ((tm2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final void onFinishLoadingImages() {
        new CallbackStackTraceMarker(new a());
    }

    public final String toString() {
        return "YandexNativeAdImageLoadingListenerAdapter(imageLoadingListener=" + this.a + ")";
    }
}
