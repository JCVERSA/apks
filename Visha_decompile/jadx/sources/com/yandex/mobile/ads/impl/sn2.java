package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.common.VideoEventListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class sn2 implements lu {
    private final VideoEventListener a;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            sn2.this.a.onVideoComplete();
            return zfb.a;
        }
    }

    public sn2(VideoEventListener videoEventListener) {
        y45.j(videoEventListener, "videoEventListener");
        this.a = videoEventListener;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof sn2) && y45.e(((sn2) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final void onVideoComplete() {
        new CallbackStackTraceMarker(new a());
    }
}
