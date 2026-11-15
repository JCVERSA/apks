package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.player.ad.InstreamAdPlayerListener;
import com.yandex.mobile.ads.instream.player.ad.error.InstreamAdPlayerError;
import com.yandex.mobile.ads.video.playback.model.VideoAd;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class jm2 implements InstreamAdPlayerListener {
    private final lt a;
    private final lm2 b;
    private final im2 c;

    public jm2(km0 km0Var, lm2 lm2Var, im2 im2Var) {
        y45.j(km0Var, "coreInstreamAdPlayerListener");
        y45.j(lm2Var, "videoAdCache");
        y45.j(im2Var, "adPlayerErrorAdapter");
        this.a = km0Var;
        this.b = lm2Var;
        this.c = im2Var;
    }

    @Override
    public final void onAdBufferingFinished(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.h(go0VarA);
        }
    }

    @Override
    public final void onAdBufferingStarted(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.i(go0VarA);
        }
    }

    @Override
    public final void onAdCompleted(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.g(go0VarA);
        }
    }

    @Override
    public final void onAdPaused(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.c(go0VarA);
        }
    }

    @Override
    public final void onAdPrepared(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.b(go0VarA);
        }
    }

    @Override
    public final void onAdResumed(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.e(go0VarA);
        }
    }

    @Override
    public final void onAdSkipped(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.a(go0VarA);
            this.b.b(videoAd);
        }
    }

    @Override
    public final void onAdStarted(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.d(go0VarA);
        }
    }

    @Override
    public final void onAdStopped(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.f(go0VarA);
            this.b.b(videoAd);
        }
    }

    @Override
    public final void onError(VideoAd videoAd, InstreamAdPlayerError instreamAdPlayerError) {
        xc2.a aVar;
        y45.j(videoAd, "videoAd");
        y45.j(instreamAdPlayerError, "error");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.c.getClass();
            y45.j(instreamAdPlayerError, "instreamAdPlayerError");
            switch (im2.a.a[instreamAdPlayerError.getReason().ordinal()]) {
                case 1:
                    aVar = xc2.a.b;
                    break;
                case 2:
                    aVar = xc2.a.c;
                    break;
                case 3:
                    aVar = xc2.a.d;
                    break;
                case 4:
                    aVar = xc2.a.e;
                    break;
                case 5:
                    aVar = xc2.a.f;
                    break;
                case 6:
                    aVar = xc2.a.g;
                    break;
                case 7:
                    aVar = xc2.a.h;
                    break;
                case 8:
                    aVar = xc2.a.i;
                    break;
                case 9:
                    aVar = xc2.a.j;
                    break;
                case 10:
                    aVar = xc2.a.k;
                    break;
                case 11:
                    aVar = xc2.a.l;
                    break;
                case 12:
                    aVar = xc2.a.m;
                    break;
                case 13:
                    aVar = xc2.a.n;
                    break;
                case 14:
                    aVar = xc2.a.o;
                    break;
                case 15:
                    aVar = xc2.a.p;
                    break;
                case 16:
                    aVar = xc2.a.q;
                    break;
                case 17:
                    aVar = xc2.a.r;
                    break;
                case 18:
                    aVar = xc2.a.s;
                    break;
                case 19:
                    aVar = xc2.a.t;
                    break;
                case 20:
                    aVar = xc2.a.u;
                    break;
                case 21:
                    aVar = xc2.a.v;
                    break;
                case 22:
                    aVar = xc2.a.w;
                    break;
                case 23:
                    aVar = xc2.a.x;
                    break;
                case 24:
                    aVar = xc2.a.y;
                    break;
                case 25:
                    aVar = xc2.a.z;
                    break;
                case 26:
                    aVar = xc2.a.A;
                    break;
                case 27:
                    aVar = xc2.a.B;
                    break;
                case 28:
                    aVar = xc2.a.C;
                    break;
                case 29:
                    aVar = xc2.a.D;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            this.a.a(go0VarA, new xc2(aVar, instreamAdPlayerError.getUnderlyingError()));
            this.b.b(videoAd);
        }
    }

    @Override
    public final void onVolumeChanged(VideoAd videoAd, float f) {
        y45.j(videoAd, "videoAd");
        go0 go0VarA = this.b.a(videoAd);
        if (go0VarA != null) {
            this.a.a(go0VarA, f);
        }
    }
}
