package com.yandex.mobile.ads.impl;

import android.view.TextureView;
import defpackage.y45;

public final class i70 implements sa1 {
    private final n60 a;
    private final ax0 b;
    private final mf2 c;
    private final ra1 d;
    private final wf2 e;
    private final a f;
    private final z60 g;
    private kb1 h;
    private yc2 i;
    private boolean j;
    private boolean k;

    public final class a implements hi1.b {
        private boolean a;
        private boolean b;
        private boolean c;

        public a() {
        }

        @Override
        public final void b(m60 m60Var) {
            y45.j(m60Var, "error");
            this.a = false;
            i70.this.g.b();
            i70.this.a.stop();
            i70.this.c.a(m60Var.getMessage());
            yc2 yc2Var = i70.this.i;
            rc2 rc2Var = i70.this.h;
            if (yc2Var == null || rc2Var == null) {
                return;
            }
            i70.this.d.getClass();
            yc2Var.a(rc2Var, ra1.a(m60Var));
        }

        @Override
        public final void onIsPlayingChanged(boolean z) {
            if (!z) {
                if (this.b) {
                    return;
                }
                this.c = true;
                yc2 yc2Var = i70.this.i;
                rc2 rc2Var = i70.this.h;
                if (yc2Var == null || rc2Var == null) {
                    return;
                }
                yc2Var.b(rc2Var);
                return;
            }
            if (!this.a) {
                yc2 yc2Var2 = i70.this.i;
                rc2 rc2Var2 = i70.this.h;
                if (yc2Var2 == null || rc2Var2 == null) {
                    return;
                }
                this.a = true;
                yc2Var2.h(rc2Var2);
                return;
            }
            if (this.c) {
                this.c = false;
                yc2 yc2Var3 = i70.this.i;
                rc2 rc2Var3 = i70.this.h;
                if (yc2Var3 == null || rc2Var3 == null) {
                    return;
                }
                yc2Var3.g(rc2Var3);
            }
        }

        @Override
        public final void onPlaybackStateChanged(int i) {
            if (i == 2) {
                this.b = true;
                yc2 yc2Var = i70.this.i;
                rc2 rc2Var = i70.this.h;
                if (yc2Var == null || rc2Var == null) {
                    return;
                }
                yc2Var.f(rc2Var);
                return;
            }
            if (i != 3) {
                if (i != 4) {
                    return;
                }
                this.a = false;
                yc2 yc2Var2 = i70.this.i;
                rc2 rc2Var2 = i70.this.h;
                if (yc2Var2 == null || rc2Var2 == null) {
                    return;
                }
                yc2Var2.a(rc2Var2);
                return;
            }
            i70.this.g.b();
            yc2 yc2Var3 = i70.this.i;
            rc2 rc2Var3 = i70.this.h;
            if (yc2Var3 != null && rc2Var3 != null) {
                yc2Var3.d(rc2Var3);
            }
            if (this.b) {
                this.b = false;
                yc2 yc2Var4 = i70.this.i;
                rc2 rc2Var4 = i70.this.h;
                if (yc2Var4 == null || rc2Var4 == null) {
                    return;
                }
                yc2Var4.c(rc2Var4);
            }
        }
    }

    public i70(n60 n60Var, ax0 ax0Var, mf2 mf2Var, ra1 ra1Var, wf2 wf2Var) {
        y45.j(n60Var, "exoPlayer");
        y45.j(ax0Var, "mediaSourceProvider");
        y45.j(mf2Var, "playerEventsReporter");
        y45.j(ra1Var, "videoAdPlayerErrorConverter");
        y45.j(wf2Var, "videoScaleController");
        this.a = n60Var;
        this.b = ax0Var;
        this.c = mf2Var;
        this.d = ra1Var;
        this.e = wf2Var;
        a aVar = new a();
        this.f = aVar;
        this.g = new z60(aVar);
        n60Var.b(aVar);
        n60Var.b(wf2Var);
        e6.a(this);
    }

    @Override
    public final long getAdPosition() {
        return this.a.getCurrentPosition();
    }

    @Override
    public final float getVolume() {
        return this.a.getVolume();
    }

    @Override
    public final boolean isPlayingAd() {
        return ((rk) this.a).b();
    }

    @Override
    public final void pauseAd() {
        if (this.j) {
            return;
        }
        this.a.setPlayWhenReady(false);
    }

    @Override
    public final void resumeAd() {
        if (this.j || this.k) {
            return;
        }
        this.a.setPlayWhenReady(true);
    }

    @Override
    public final void setVolume(float f) {
        if (this.j) {
            return;
        }
        this.a.setVolume(f);
        yc2 yc2Var = this.i;
        kb1 kb1Var = this.h;
        if (yc2Var == null || kb1Var == null) {
            return;
        }
        yc2Var.a(kb1Var, f);
    }

    @Override
    public final void a(xc2 xc2Var) {
        y45.j(xc2Var, "error");
        if (this.j) {
            return;
        }
        this.j = true;
        this.k = false;
        this.g.b();
        this.a.setVideoTextureView(null);
        this.e.a((TextureView) null);
        this.a.a(this.f);
        this.a.a(this.e);
        this.a.release();
    }

    @Override
    public final long b() {
        return this.a.getDuration();
    }

    @Override
    public final void c() {
        if (!this.j) {
            this.a.setPlayWhenReady(true);
        }
        if (this.k) {
            pauseAd();
        }
    }

    @Override
    public final void d() {
        this.k = false;
    }

    @Override
    public final boolean e() {
        return this.j;
    }

    @Override
    public final void f() {
        this.k = true;
        pauseAd();
    }

    @Override
    public final void a(kb1 kb1Var) {
        y45.j(kb1Var, "playbackInfo");
        this.h = kb1Var;
        if (this.j) {
            return;
        }
        gm1 gm1VarA = this.b.a(kb1Var);
        this.a.setPlayWhenReady(false);
        this.a.a(gm1VarA);
        this.a.prepare();
        this.g.a();
    }

    @Override
    public final void a(yc2 yc2Var) {
        this.i = yc2Var;
    }

    @Override
    public final void a(TextureView textureView) {
        if (this.j) {
            return;
        }
        this.e.a(textureView);
        this.a.setVideoTextureView(textureView);
    }

    @Override
    public final void a(yf2 yf2Var) {
        if (this.j) {
            return;
        }
        this.e.a(yf2Var);
    }

    @Override
    public final void a() {
        if (this.j) {
            return;
        }
        yc2 yc2Var = this.i;
        kb1 kb1Var = this.h;
        if (yc2Var != null && kb1Var != null) {
            yc2Var.e(kb1Var);
        }
        this.j = true;
        this.k = false;
        this.g.b();
        this.a.setVideoTextureView(null);
        this.e.a((TextureView) null);
        this.a.a(this.f);
        this.a.a(this.e);
        this.a.release();
    }
}
