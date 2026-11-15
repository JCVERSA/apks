package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

final class e00 implements fv0 {
    private final l22 b;
    private final a c;

    @Nullable
    private yo1 d;

    @Nullable
    private fv0 e;
    private boolean f = true;
    private boolean g;

    public interface a {
    }

    public e00(a aVar, y32 y32Var) {
        this.c = aVar;
        this.b = new l22(y32Var);
    }

    public final void a(yo1 yo1Var) {
        if (yo1Var == this.d) {
            this.e = null;
            this.d = null;
            this.f = true;
        }
    }

    public final void b(yo1 yo1Var) throws m60 {
        fv0 fv0Var;
        fv0 fv0VarL = yo1Var.l();
        if (fv0VarL == null || fv0VarL == (fv0Var = this.e)) {
            return;
        }
        if (fv0Var != null) {
            throw m60.a(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.e = fv0VarL;
        this.d = yo1Var;
        ((hv0) fv0VarL).a(this.b.getPlaybackParameters());
    }

    @Override
    public final bi1 getPlaybackParameters() {
        fv0 fv0Var = this.e;
        return fv0Var != null ? fv0Var.getPlaybackParameters() : this.b.getPlaybackParameters();
    }

    @Override
    public final long o() {
        if (this.f) {
            return this.b.o();
        }
        fv0 fv0Var = this.e;
        fv0Var.getClass();
        return fv0Var.o();
    }

    public final void a(long j) {
        this.b.a(j);
    }

    @Override
    public final void a(bi1 bi1Var) {
        fv0 fv0Var = this.e;
        if (fv0Var != null) {
            fv0Var.a(bi1Var);
            bi1Var = this.e.getPlaybackParameters();
        }
        this.b.a(bi1Var);
    }

    public final void b() {
        this.g = false;
        this.b.b();
    }

    public final void a() {
        this.g = true;
        this.b.a();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    public final long a(boolean z) {
        bi1 playbackParameters;
        yo1 yo1Var = this.d;
        if (yo1Var != null && !yo1Var.a() && (this.d.d() || (!z && !this.d.e()))) {
            fv0 fv0Var = this.e;
            fv0Var.getClass();
            long jO = fv0Var.o();
            if (!this.f) {
                this.b.a(jO);
                playbackParameters = fv0Var.getPlaybackParameters();
                if (!playbackParameters.equals(this.b.getPlaybackParameters())) {
                    this.b.a(playbackParameters);
                    ((t60) this.c).a(playbackParameters);
                }
            } else if (jO < this.b.o()) {
                this.b.b();
            } else {
                this.f = false;
                if (this.g) {
                    this.b.a();
                }
                this.b.a(jO);
                playbackParameters = fv0Var.getPlaybackParameters();
                if (!playbackParameters.equals(this.b.getPlaybackParameters())) {
                    this.b.a(playbackParameters);
                    ((t60) this.c).a(playbackParameters);
                }
            }
        } else {
            this.f = true;
            if (this.g) {
                this.b.a();
            }
        }
        return o();
    }
}
