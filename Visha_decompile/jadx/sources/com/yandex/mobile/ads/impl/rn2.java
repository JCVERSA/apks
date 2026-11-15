package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.video.playback.VideoAdPlaybackListener;
import com.yandex.mobile.ads.video.playback.model.VideoAd;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class rn2 implements lo0 {
    private final VideoAdPlaybackListener a;
    private final lm2 b;

    public static final class a extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onAdClicked(this.c);
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onAdCompleted(this.c);
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onAdError(this.c);
            return zfb.a;
        }
    }

    public static final class d extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onAdPaused(this.c);
            return zfb.a;
        }
    }

    public static final class e extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onAdPrepared(this.c);
            return zfb.a;
        }
    }

    public static final class f extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onAdResumed(this.c);
            return zfb.a;
        }
    }

    public static final class g extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onAdSkipped(this.c);
            return zfb.a;
        }
    }

    public static final class h extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onAdStarted(this.c);
            return zfb.a;
        }
    }

    public static final class i extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onAdStopped(this.c);
            return zfb.a;
        }
    }

    public static final class j extends Lambda implements c74 {
        final VideoAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(VideoAd videoAd) {
            super(0);
            this.c = videoAd;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onImpression(this.c);
            return zfb.a;
        }
    }

    public static final class k extends Lambda implements c74 {
        final VideoAd c;
        final float d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(VideoAd videoAd, float f) {
            super(0);
            this.c = videoAd;
            this.d = f;
        }

        @Override
        public final Object invoke() {
            rn2.this.a.onVolumeChanged(this.c, this.d);
            return zfb.a;
        }
    }

    public rn2(VideoAdPlaybackListener videoAdPlaybackListener, lm2 lm2Var) {
        y45.j(videoAdPlaybackListener, "videoAdPlaybackListener");
        y45.j(lm2Var, "videoAdAdapterCache");
        this.a = videoAdPlaybackListener;
        this.b = lm2Var;
    }

    @Override
    public final void b(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new e(this.b.a(go0Var)));
    }

    @Override
    public final void c(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new d(this.b.a(go0Var)));
    }

    @Override
    public final void d(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new h(this.b.a(go0Var)));
    }

    @Override
    public final void e(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new f(this.b.a(go0Var)));
    }

    @Override
    public final void f(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new i(this.b.a(go0Var)));
    }

    @Override
    public final void g(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new b(this.b.a(go0Var)));
    }

    @Override
    public final void h(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new c(this.b.a(go0Var)));
    }

    @Override
    public final void i(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new a(this.b.a(go0Var)));
    }

    @Override
    public final void j(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new j(this.b.a(go0Var)));
    }

    @Override
    public final void a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new g(this.b.a(go0Var)));
    }

    @Override
    public final void a(go0 go0Var, float f2) {
        y45.j(go0Var, "videoAd");
        new CallbackStackTraceMarker(new k(this.b.a(go0Var), f2));
    }
}
