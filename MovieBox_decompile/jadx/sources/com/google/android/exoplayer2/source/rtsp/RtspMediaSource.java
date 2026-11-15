package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.n1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import javax.net.SocketFactory;

public final class RtspMediaSource extends com.google.android.exoplayer2.source.a {

    private final w1 f25629h;

    private final c.a f25630i;

    private final String f25631j;

    private final Uri f25632k;

    private final SocketFactory f25633l;

    private final boolean f25634m;

    private boolean f25636o;

    private boolean f25637p;

    private long f25635n = C.TIME_UNSET;

    private boolean f25638q = true;

    public static final class RtspPlaybackException extends IOException {
        public RtspPlaybackException(String str) {
            super(str);
        }

        public RtspPlaybackException(Throwable th2) {
            super(th2);
        }

        public RtspPlaybackException(String str, Throwable th2) {
            super(str, th2);
        }
    }

    class a implements p.c {
        a() {
        }

        @Override
        public void a() {
            RtspMediaSource.this.f25636o = false;
            RtspMediaSource.this.J();
        }

        @Override
        public void b(d0 d0Var) {
            RtspMediaSource.this.f25635n = p0.B0(d0Var.a());
            RtspMediaSource.this.f25636o = !d0Var.c();
            RtspMediaSource.this.f25637p = d0Var.c();
            RtspMediaSource.this.f25638q = false;
            RtspMediaSource.this.J();
        }
    }

    class b extends com.google.android.exoplayer2.source.j {
        b(RtspMediaSource rtspMediaSource, l3 l3Var) {
            super(l3Var);
        }

        @Override
        public l3.b k(int i10, l3.b bVar, boolean z10) {
            super.k(i10, bVar, z10);
            bVar.f24528f = true;
            return bVar;
        }

        @Override
        public l3.d s(int i10, l3.d dVar, long j10) {
            super.s(i10, dVar, j10);
            dVar.f24549l = true;
            return dVar;
        }
    }

    static {
        n1.a("goog.exo.rtsp");
    }

    RtspMediaSource(w1 w1Var, c.a aVar, String str, SocketFactory socketFactory, boolean z10) {
        this.f25629h = w1Var;
        this.f25630i = aVar;
        this.f25631j = str;
        this.f25632k = ((w1.h) com.google.android.exoplayer2.util.a.e(w1Var.f27149b)).f27212a;
        this.f25633l = socketFactory;
        this.f25634m = z10;
    }

    public void J() {
        l3 uVar = new v9.u(this.f25635n, this.f25636o, false, this.f25637p, null, this.f25629h);
        if (this.f25638q) {
            uVar = new b(this, uVar);
        }
        C(uVar);
    }

    @Override
    protected void B(com.google.android.exoplayer2.upstream.k0 k0Var) {
        J();
    }

    @Override
    public w1 a() {
        return this.f25629h;
    }

    @Override
    public com.google.android.exoplayer2.source.n d(com.google.android.exoplayer2.source.o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        return new p(bVar2, this.f25630i, this.f25632k, new a(), this.f25631j, this.f25633l, this.f25634m);
    }

    @Override
    public void i(com.google.android.exoplayer2.source.n nVar) {
        ((p) nVar).M();
    }

    @Override
    protected void D() {
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }

    public static final class Factory implements com.google.android.exoplayer2.source.o.a {

        private long f25639a = 8000;

        private String f25640b = "ExoPlayerLib/2.18.1";

        private SocketFactory f25641c = SocketFactory.getDefault();

        private boolean f25642d;

        private boolean f25643e;

        @Override
        public RtspMediaSource a(w1 w1Var) {
            com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
            return new RtspMediaSource(w1Var, this.f25642d ? new j0(this.f25639a) : new l0(this.f25639a), this.f25640b, this.f25641c, this.f25643e);
        }

        @Override
        public Factory b(com.google.android.exoplayer2.drm.x xVar) {
            return this;
        }

        @Override
        public Factory c(com.google.android.exoplayer2.upstream.z zVar) {
            return this;
        }
    }
}
