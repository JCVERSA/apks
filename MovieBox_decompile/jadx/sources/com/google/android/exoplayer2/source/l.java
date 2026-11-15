package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

public final class l implements n, n.a {

    public final o.b f25561a;

    private final long f25562b;

    private final com.google.android.exoplayer2.upstream.b f25563c;

    private o f25564d;

    private n f25565e;

    private n.a f25566f;

    private a f25567g;

    private boolean f25568h;

    private long f25569i = C.TIME_UNSET;

    public interface a {
        void a(o.b bVar);

        void b(o.b bVar, IOException iOException);
    }

    public l(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        this.f25561a = bVar;
        this.f25563c = bVar2;
        this.f25562b = j10;
    }

    private long j(long j10) {
        long j11 = this.f25569i;
        return j11 != C.TIME_UNSET ? j11 : j10;
    }

    public void a(o.b bVar) {
        long j10 = j(this.f25562b);
        n nVarD = ((o) com.google.android.exoplayer2.util.a.e(this.f25564d)).d(bVar, this.f25563c, j10);
        this.f25565e = nVarD;
        if (this.f25566f != null) {
            nVarD.f(this, j10);
        }
    }

    @Override
    public long b(long j10, d3 d3Var) {
        return ((n) p0.j(this.f25565e)).b(j10, d3Var);
    }

    public long c() {
        return this.f25569i;
    }

    @Override
    public boolean continueLoading(long j10) {
        n nVar = this.f25565e;
        return nVar != null && nVar.continueLoading(j10);
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        ((n) p0.j(this.f25565e)).discardBuffer(j10, z10);
    }

    @Override
    public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
        long j11;
        long j12 = this.f25569i;
        if (j12 == C.TIME_UNSET || j10 != this.f25562b) {
            j11 = j10;
        } else {
            this.f25569i = C.TIME_UNSET;
            j11 = j12;
        }
        return ((n) p0.j(this.f25565e)).e(sVarArr, zArr, sVarArr2, zArr2, j11);
    }

    @Override
    public void f(n.a aVar, long j10) {
        this.f25566f = aVar;
        n nVar = this.f25565e;
        if (nVar != null) {
            nVar.f(this, j(this.f25562b));
        }
    }

    @Override
    public long getBufferedPositionUs() {
        return ((n) p0.j(this.f25565e)).getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return ((n) p0.j(this.f25565e)).getNextLoadPositionUs();
    }

    @Override
    public v9.y getTrackGroups() {
        return ((n) p0.j(this.f25565e)).getTrackGroups();
    }

    @Override
    public void h(n nVar) {
        ((n.a) p0.j(this.f25566f)).h(this);
        a aVar = this.f25567g;
        if (aVar != null) {
            aVar.a(this.f25561a);
        }
    }

    public long i() {
        return this.f25562b;
    }

    @Override
    public boolean isLoading() {
        n nVar = this.f25565e;
        return nVar != null && nVar.isLoading();
    }

    @Override
    public void g(n nVar) {
        ((n.a) p0.j(this.f25566f)).g(this);
    }

    public void l(long j10) {
        this.f25569i = j10;
    }

    public void m() {
        if (this.f25565e != null) {
            ((o) com.google.android.exoplayer2.util.a.e(this.f25564d)).i(this.f25565e);
        }
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        try {
            n nVar = this.f25565e;
            if (nVar != null) {
                nVar.maybeThrowPrepareError();
            } else {
                o oVar = this.f25564d;
                if (oVar != null) {
                    oVar.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e10) {
            a aVar = this.f25567g;
            if (aVar == null) {
                throw e10;
            }
            if (this.f25568h) {
                return;
            }
            this.f25568h = true;
            aVar.b(this.f25561a, e10);
        }
    }

    public void n(o oVar) {
        com.google.android.exoplayer2.util.a.g(this.f25564d == null);
        this.f25564d = oVar;
    }

    @Override
    public long readDiscontinuity() {
        return ((n) p0.j(this.f25565e)).readDiscontinuity();
    }

    @Override
    public void reevaluateBuffer(long j10) {
        ((n) p0.j(this.f25565e)).reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        return ((n) p0.j(this.f25565e)).seekToUs(j10);
    }
}
