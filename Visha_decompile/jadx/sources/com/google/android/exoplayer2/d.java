package com.google.android.exoplayer2;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import defpackage.h19;
import defpackage.ks8;
import defpackage.ls8;
import defpackage.nd6;
import defpackage.o44;
import defpackage.ta8;
import defpackage.zi;

public abstract class d implements w, ks8 {
    public final int b;
    public ls8 d;
    public int e;
    public ta8 f;
    public int g;
    public h19 h;
    public k[] i;
    public long j;
    public long k;
    public boolean m;
    public boolean n;
    public final o44 c = new o44();
    public long l = Long.MIN_VALUE;

    public d(int i) {
        this.b = i;
    }

    @Override
    public final void c(k[] kVarArr, h19 h19Var, long j, long j2) {
        zi.g(!this.m);
        this.h = h19Var;
        if (this.l == Long.MIN_VALUE) {
            this.l = j;
        }
        this.i = kVarArr;
        this.j = j2;
        t(kVarArr, j, j2);
    }

    @Override
    public final void d(int i, ta8 ta8Var) {
        this.e = i;
        this.f = ta8Var;
    }

    @Override
    public final void disable() {
        zi.g(this.g == 1);
        this.c.a();
        this.g = 0;
        this.h = null;
        this.i = null;
        this.m = false;
        n();
    }

    @Override
    public final void e(ls8 ls8Var, k[] kVarArr, h19 h19Var, long j, boolean z, boolean z2, long j2, long j3) {
        zi.g(this.g == 0);
        this.d = ls8Var;
        this.g = 1;
        o(z, z2);
        c(kVarArr, h19Var, j2, j3);
        v(j, z);
    }

    public final ExoPlaybackException f(Throwable th, k kVar, int i) {
        return g(th, kVar, false, i);
    }

    public final ExoPlaybackException g(Throwable th, k kVar, boolean z, int i) {
        int formatSupport;
        if (kVar == null || this.n) {
            formatSupport = 4;
        } else {
            this.n = true;
            try {
                formatSupport = ks8.getFormatSupport(a(kVar));
                this.n = false;
            } catch (ExoPlaybackException unused) {
                this.n = false;
                formatSupport = 4;
            } catch (Throwable th2) {
                this.n = false;
                throw th2;
            }
        }
        return ExoPlaybackException.createForRenderer(th, getName(), j(), kVar, formatSupport, z, i);
    }

    @Override
    public final ks8 getCapabilities() {
        return this;
    }

    @Override
    public nd6 getMediaClock() {
        return null;
    }

    @Override
    public final long getReadingPositionUs() {
        return this.l;
    }

    @Override
    public final int getState() {
        return this.g;
    }

    @Override
    public final h19 getStream() {
        return this.h;
    }

    @Override
    public final int getTrackType() {
        return this.b;
    }

    public final ls8 h() {
        return (ls8) zi.e(this.d);
    }

    @Override
    public void handleMessage(int i, Object obj) {
    }

    @Override
    public final boolean hasReadStreamToEnd() {
        return this.l == Long.MIN_VALUE;
    }

    public final o44 i() {
        this.c.a();
        return this.c;
    }

    @Override
    public final boolean isCurrentStreamFinal() {
        return this.m;
    }

    public final int j() {
        return this.e;
    }

    public final ta8 k() {
        return (ta8) zi.e(this.f);
    }

    public final k[] l() {
        return (k[]) zi.e(this.i);
    }

    public final boolean m() {
        return hasReadStreamToEnd() ? this.m : ((h19) zi.e(this.h)).isReady();
    }

    @Override
    public final void maybeThrowStreamError() {
        ((h19) zi.e(this.h)).maybeThrowError();
    }

    public abstract void n();

    public void o(boolean z, boolean z2) {
    }

    public abstract void p(long j, boolean z);

    public void q() {
    }

    public void r() {
    }

    @Override
    public final void reset() {
        zi.g(this.g == 0);
        this.c.a();
        q();
    }

    @Override
    public final void resetPosition(long j) {
        v(j, false);
    }

    public void s() {
    }

    @Override
    public final void setCurrentStreamFinal() {
        this.m = true;
    }

    @Override
    public final void start() {
        zi.g(this.g == 1);
        this.g = 2;
        r();
    }

    @Override
    public final void stop() {
        zi.g(this.g == 2);
        this.g = 1;
        s();
    }

    @Override
    public int supportsMixedMimeTypeAdaptation() {
        return 0;
    }

    public abstract void t(k[] kVarArr, long j, long j2);

    public final int u(o44 o44Var, DecoderInputBuffer decoderInputBuffer, int i) {
        int iA = ((h19) zi.e(this.h)).a(o44Var, decoderInputBuffer, i);
        if (iA == -4) {
            if (decoderInputBuffer.h()) {
                this.l = Long.MIN_VALUE;
                return this.m ? -4 : -3;
            }
            long j = decoderInputBuffer.f + this.j;
            decoderInputBuffer.f = j;
            this.l = Math.max(this.l, j);
        } else if (iA == -5) {
            k kVar = (k) zi.e(o44Var.b);
            if (kVar.q != Long.MAX_VALUE) {
                o44Var.b = kVar.b().i0(kVar.q + this.j).E();
            }
        }
        return iA;
    }

    public final void v(long j, boolean z) {
        this.m = false;
        this.k = j;
        this.l = j;
        p(j, z);
    }

    public int w(long j) {
        return ((h19) zi.e(this.h)).skipData(j - this.j);
    }
}
