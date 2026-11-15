package com.google.android.exoplayer2.source;

import androidx.media3.common.C;
import defpackage.blb;
import defpackage.cb;
import defpackage.eva;
import defpackage.h19;
import defpackage.ka9;
import defpackage.qi3;
import defpackage.zi;
import java.io.IOException;

public final class f implements h, h.a {
    public final i.b b;
    public final long c;
    public final cb d;
    public i e;
    public h f;
    public h.a g;
    public a h;
    public boolean i;
    public long j = C.TIME_UNSET;

    public interface a {
        void a(i.b bVar, IOException iOException);

        void b(i.b bVar);
    }

    public f(i.b bVar, cb cbVar, long j) {
        this.b = bVar;
        this.d = cbVar;
        this.c = j;
    }

    @Override
    public long a(qi3[] qi3VarArr, boolean[] zArr, h19[] h19VarArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.j;
        if (j3 == C.TIME_UNSET || j != this.c) {
            j2 = j;
        } else {
            this.j = C.TIME_UNSET;
            j2 = j3;
        }
        return ((h) blb.j(this.f)).a(qi3VarArr, zArr, h19VarArr, zArr2, j2);
    }

    @Override
    public long c(long j, ka9 ka9Var) {
        return ((h) blb.j(this.f)).c(j, ka9Var);
    }

    @Override
    public boolean continueLoading(long j) {
        h hVar = this.f;
        return hVar != null && hVar.continueLoading(j);
    }

    @Override
    public void d(h hVar) {
        ((h.a) blb.j(this.g)).d(this);
        a aVar = this.h;
        if (aVar != null) {
            aVar.b(this.b);
        }
    }

    @Override
    public void discardBuffer(long j, boolean z) {
        ((h) blb.j(this.f)).discardBuffer(j, z);
    }

    public void e(i.b bVar) {
        long jI = i(this.c);
        h hVarC = ((i) zi.e(this.e)).c(bVar, this.d, jI);
        this.f = hVarC;
        if (this.g != null) {
            hVarC.g(this, jI);
        }
    }

    public long f() {
        return this.j;
    }

    @Override
    public void g(h.a aVar, long j) {
        this.g = aVar;
        h hVar = this.f;
        if (hVar != null) {
            hVar.g(this, i(this.c));
        }
    }

    @Override
    public long getBufferedPositionUs() {
        return ((h) blb.j(this.f)).getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return ((h) blb.j(this.f)).getNextLoadPositionUs();
    }

    @Override
    public eva getTrackGroups() {
        return ((h) blb.j(this.f)).getTrackGroups();
    }

    public long h() {
        return this.c;
    }

    public final long i(long j) {
        long j2 = this.j;
        return j2 != C.TIME_UNSET ? j2 : j;
    }

    @Override
    public boolean isLoading() {
        h hVar = this.f;
        return hVar != null && hVar.isLoading();
    }

    @Override
    public void b(h hVar) {
        ((h.a) blb.j(this.g)).b(this);
    }

    public void k(long j) {
        this.j = j;
    }

    public void l() {
        if (this.f != null) {
            ((i) zi.e(this.e)).e(this.f);
        }
    }

    public void m(i iVar) {
        zi.g(this.e == null);
        this.e = iVar;
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        try {
            h hVar = this.f;
            if (hVar != null) {
                hVar.maybeThrowPrepareError();
            } else {
                i iVar = this.e;
                if (iVar != null) {
                    iVar.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e) {
            a aVar = this.h;
            if (aVar == null) {
                throw e;
            }
            if (this.i) {
                return;
            }
            this.i = true;
            aVar.a(this.b, e);
        }
    }

    @Override
    public long readDiscontinuity() {
        return ((h) blb.j(this.f)).readDiscontinuity();
    }

    @Override
    public void reevaluateBuffer(long j) {
        ((h) blb.j(this.f)).reevaluateBuffer(j);
    }

    @Override
    public long seekToUs(long j) {
        return ((h) blb.j(this.f)).seekToUs(j);
    }
}
