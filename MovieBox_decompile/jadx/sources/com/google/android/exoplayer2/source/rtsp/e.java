package com.google.android.exoplayer2.source.rtsp;

import android.os.Handler;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class e implements Loader.d {

    public final int f25685a;

    public final t f25686b;

    private final a f25687c;

    private final i9.n f25688d;

    private final c.a f25690f;

    private f f25691g;

    private volatile boolean f25692h;

    private volatile long f25694j;

    private final Handler f25689e = p0.w();

    private volatile long f25693i = C.TIME_UNSET;

    public interface a {
        void a(String str, c cVar);
    }

    public e(int i10, t tVar, a aVar, i9.n nVar, c.a aVar2) {
        this.f25685a = i10;
        this.f25686b = tVar;
        this.f25687c = aVar;
        this.f25688d = nVar;
        this.f25690f = aVar2;
    }

    public void b(String str, c cVar) {
        this.f25687c.a(str, cVar);
    }

    public void c() {
        ((f) com.google.android.exoplayer2.util.a.e(this.f25691g)).f();
    }

    @Override
    public void cancelLoad() {
        this.f25692h = true;
    }

    public void d(long j10, long j11) {
        this.f25693i = j10;
        this.f25694j = j11;
    }

    public void e(int i10) {
        if (((f) com.google.android.exoplayer2.util.a.e(this.f25691g)).e()) {
            return;
        }
        this.f25691g.g(i10);
    }

    public void f(long j10) {
        if (j10 == C.TIME_UNSET || ((f) com.google.android.exoplayer2.util.a.e(this.f25691g)).e()) {
            return;
        }
        this.f25691g.h(j10);
    }

    @Override
    public void load() {
        final c cVarA = null;
        try {
            cVarA = this.f25690f.a(this.f25685a);
            final String strC = cVarA.c();
            this.f25689e.post(new Runnable() {
                @Override
                public final void run() {
                    this.f25678a.b(strC, cVarA);
                }
            });
            i9.f fVar = new i9.f((com.google.android.exoplayer2.upstream.g) com.google.android.exoplayer2.util.a.e(cVarA), 0L, -1L);
            f fVar2 = new f(this.f25686b.f25828a, this.f25685a);
            this.f25691g = fVar2;
            fVar2.b(this.f25688d);
            while (!this.f25692h) {
                if (this.f25693i != C.TIME_UNSET) {
                    this.f25691g.seek(this.f25694j, this.f25693i);
                    this.f25693i = C.TIME_UNSET;
                }
                if (this.f25691g.d(fVar, new i9.a0()) == -1) {
                }
            }
        } finally {
            com.google.android.exoplayer2.upstream.m.a(cVarA);
        }
    }
}
