package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.List;
import na.s;
import q9.o;
import q9.p;
import x9.e;
import x9.f;
import x9.g;
import x9.h;
import x9.n;

public class a implements com.google.android.exoplayer2.source.smoothstreaming.b {

    private final a0 f25894a;

    private final int f25895b;

    private final g[] f25896c;

    private final k f25897d;

    private s f25898e;

    private com.google.android.exoplayer2.source.smoothstreaming.manifest.a f25899f;

    private int f25900g;

    private IOException f25901h;

    public static final class C0353a implements com.google.android.exoplayer2.source.smoothstreaming.b.a {

        private final k.a f25902a;

        public C0353a(k.a aVar) {
            this.f25902a = aVar;
        }

        @Override
        public com.google.android.exoplayer2.source.smoothstreaming.b a(a0 a0Var, com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, int i10, s sVar, k0 k0Var) {
            k kVarCreateDataSource = this.f25902a.createDataSource();
            if (k0Var != null) {
                kVarCreateDataSource.e(k0Var);
            }
            return new a(a0Var, aVar, i10, sVar, kVarCreateDataSource);
        }
    }

    private static final class b extends x9.b {

        private final com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b f25903e;

        private final int f25904f;

        public b(com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar, int i10, int i11) {
            super(i11, bVar.f25972k - 1);
            this.f25903e = bVar;
            this.f25904f = i10;
        }

        @Override
        public long a() {
            c();
            return this.f25903e.e((int) d());
        }

        @Override
        public long b() {
            return a() + this.f25903e.c((int) d());
        }
    }

    public a(a0 a0Var, com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, int i10, s sVar, k kVar) {
        this.f25894a = a0Var;
        this.f25899f = aVar;
        this.f25895b = i10;
        this.f25898e = sVar;
        this.f25897d = kVar;
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = aVar.f25956f[i10];
        this.f25896c = new g[sVar.length()];
        for (int i11 = 0; i11 < this.f25896c.length; i11++) {
            int indexInTrackGroup = sVar.getIndexInTrackGroup(i11);
            p1 p1Var = bVar.f25971j[indexInTrackGroup];
            p[] pVarArr = p1Var.f24904o != null ? ((com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0354a) com.google.android.exoplayer2.util.a.e(aVar.f25955e)).f25961c : null;
            int i12 = bVar.f25962a;
            this.f25896c[i11] = new e(new q9.g(3, null, new o(indexInTrackGroup, i12, bVar.f25964c, C.TIME_UNSET, aVar.f25957g, p1Var, 0, pVarArr, i12 == 2 ? 4 : 0, null, null)), bVar.f25962a, p1Var);
        }
    }

    private static n i(p1 p1Var, k kVar, Uri uri, int i10, long j10, long j11, long j12, int i11, Object obj, g gVar) {
        return new x9.k(kVar, new com.google.android.exoplayer2.upstream.n(uri), p1Var, i11, obj, j10, j11, j12, C.TIME_UNSET, i10, 1, j10, gVar);
    }

    private long j(long j10) {
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar = this.f25899f;
        if (!aVar.f25954d) {
            return C.TIME_UNSET;
        }
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = aVar.f25956f[this.f25895b];
        int i10 = bVar.f25972k - 1;
        return (bVar.e(i10) + bVar.c(i10)) - j10;
    }

    @Override
    public void a(s sVar) {
        this.f25898e = sVar;
    }

    @Override
    public long b(long j10, d3 d3Var) {
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = this.f25899f.f25956f[this.f25895b];
        int iD = bVar.d(j10);
        long jE = bVar.e(iD);
        return d3Var.a(j10, jE, (jE >= j10 || iD >= bVar.f25972k + (-1)) ? jE : bVar.e(iD + 1));
    }

    @Override
    public void c(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar) {
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b[] bVarArr = this.f25899f.f25956f;
        int i10 = this.f25895b;
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = bVarArr[i10];
        int i11 = bVar.f25972k;
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar2 = aVar.f25956f[i10];
        if (i11 == 0 || bVar2.f25972k == 0) {
            this.f25900g += i11;
        } else {
            int i12 = i11 - 1;
            long jE = bVar.e(i12) + bVar.c(i12);
            long jE2 = bVar2.e(0);
            if (jE <= jE2) {
                this.f25900g += i11;
            } else {
                this.f25900g += bVar.d(jE2);
            }
        }
        this.f25899f = aVar;
    }

    @Override
    public boolean d(long j10, f fVar, List list) {
        if (this.f25901h != null) {
            return false;
        }
        return this.f25898e.e(j10, fVar, list);
    }

    @Override
    public boolean f(f fVar, boolean z10, z.c cVar, z zVar) {
        z.b bVarD = zVar.d(na.a0.c(this.f25898e), cVar);
        if (z10 && bVarD != null && bVarD.f26768a == 2) {
            s sVar = this.f25898e;
            if (sVar.blacklist(sVar.g(fVar.f75187d), bVarD.f26769b)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void g(long j10, long j11, List list, h hVar) {
        int iE;
        long j12 = j11;
        if (this.f25901h != null) {
            return;
        }
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar = this.f25899f;
        com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = aVar.f25956f[this.f25895b];
        if (bVar.f25972k == 0) {
            hVar.f75194b = !aVar.f25954d;
            return;
        }
        if (list.isEmpty()) {
            iE = bVar.d(j12);
        } else {
            iE = (int) (((n) list.get(list.size() - 1)).e() - ((long) this.f25900g));
            if (iE < 0) {
                this.f25901h = new BehindLiveWindowException();
                return;
            }
        }
        if (iE >= bVar.f25972k) {
            hVar.f75194b = !this.f25899f.f25954d;
            return;
        }
        long j13 = j12 - j10;
        long j14 = j(j10);
        int length = this.f25898e.length();
        x9.o[] oVarArr = new x9.o[length];
        for (int i10 = 0; i10 < length; i10++) {
            oVarArr[i10] = new b(bVar, this.f25898e.getIndexInTrackGroup(i10), iE);
        }
        this.f25898e.f(j10, j13, j14, list, oVarArr);
        long jE = bVar.e(iE);
        long jC = jE + bVar.c(iE);
        if (!list.isEmpty()) {
            j12 = C.TIME_UNSET;
        }
        long j15 = j12;
        int i11 = iE + this.f25900g;
        int selectedIndex = this.f25898e.getSelectedIndex();
        hVar.f75193a = i(this.f25898e.getSelectedFormat(), this.f25897d, bVar.a(this.f25898e.getIndexInTrackGroup(selectedIndex), iE), i11, jE, jC, j15, this.f25898e.getSelectionReason(), this.f25898e.getSelectionData(), this.f25896c[selectedIndex]);
    }

    @Override
    public int getPreferredQueueSize(long j10, List list) {
        return (this.f25901h != null || this.f25898e.length() < 2) ? list.size() : this.f25898e.evaluateQueueSize(j10, list);
    }

    @Override
    public void maybeThrowError() throws IOException {
        IOException iOException = this.f25901h;
        if (iOException != null) {
            throw iOException;
        }
        this.f25894a.maybeThrowError();
    }

    @Override
    public void release() {
        for (g gVar : this.f25896c) {
            gVar.release();
        }
    }

    @Override
    public void h(f fVar) {
    }
}
