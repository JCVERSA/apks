package com.google.android.exoplayer2.source.smoothstreaming;

import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.b0;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.z;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import v9.d;
import v9.w;
import v9.y;
import x9.i;

final class c implements n, b0.a {

    private final b.a f25905a;

    private final k0 f25906b;

    private final a0 f25907c;

    private final u f25908d;

    private final s.a f25909e;

    private final z f25910f;

    private final p.a f25911g;

    private final com.google.android.exoplayer2.upstream.b f25912h;

    private final y f25913i;

    private final d f25914j;

    private n.a f25915k;

    private com.google.android.exoplayer2.source.smoothstreaming.manifest.a f25916l;

    private i[] f25917m;

    private b0 f25918n;

    public c(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, b.a aVar2, k0 k0Var, d dVar, u uVar, s.a aVar3, z zVar, p.a aVar4, a0 a0Var, com.google.android.exoplayer2.upstream.b bVar) {
        this.f25916l = aVar;
        this.f25905a = aVar2;
        this.f25906b = k0Var;
        this.f25907c = a0Var;
        this.f25908d = uVar;
        this.f25909e = aVar3;
        this.f25910f = zVar;
        this.f25911g = aVar4;
        this.f25912h = bVar;
        this.f25914j = dVar;
        this.f25913i = c(aVar, uVar);
        i[] iVarArrI = i(0);
        this.f25917m = iVarArrI;
        this.f25918n = dVar.a(iVarArrI);
    }

    private i a(na.s sVar, long j10) {
        int iC = this.f25913i.c(sVar.getTrackGroup());
        return new i(this.f25916l.f25956f[iC].f25962a, null, null, this.f25905a.a(this.f25907c, this.f25916l, iC, sVar, this.f25906b), this, this.f25912h, j10, this.f25908d, this.f25909e, this.f25910f, this.f25911g);
    }

    private static y c(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, u uVar) {
        w[] wVarArr = new w[aVar.f25956f.length];
        int i10 = 0;
        while (true) {
            com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b[] bVarArr = aVar.f25956f;
            if (i10 >= bVarArr.length) {
                return new y(wVarArr);
            }
            p1[] p1VarArr = bVarArr[i10].f25971j;
            p1[] p1VarArr2 = new p1[p1VarArr.length];
            for (int i11 = 0; i11 < p1VarArr.length; i11++) {
                p1 p1Var = p1VarArr[i11];
                p1VarArr2[i11] = p1Var.c(uVar.a(p1Var));
            }
            wVarArr[i10] = new w(Integer.toString(i10), p1VarArr2);
            i10++;
        }
    }

    private static i[] i(int i10) {
        return new i[i10];
    }

    @Override
    public long b(long j10, d3 d3Var) {
        for (i iVar : this.f25917m) {
            if (iVar.f75195a == 2) {
                return iVar.b(j10, d3Var);
            }
        }
        return j10;
    }

    @Override
    public boolean continueLoading(long j10) {
        return this.f25918n.continueLoading(j10);
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        for (i iVar : this.f25917m) {
            iVar.discardBuffer(j10, z10);
        }
    }

    @Override
    public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
        na.s sVar;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < sVarArr.length; i10++) {
            v9.s sVar2 = sVarArr2[i10];
            if (sVar2 != null) {
                i iVar = (i) sVar2;
                if (sVarArr[i10] == null || !zArr[i10]) {
                    iVar.B();
                    sVarArr2[i10] = null;
                } else {
                    ((b) iVar.q()).a(sVarArr[i10]);
                    arrayList.add(iVar);
                }
            }
            if (sVarArr2[i10] == null && (sVar = sVarArr[i10]) != null) {
                i iVarA = a(sVar, j10);
                arrayList.add(iVarA);
                sVarArr2[i10] = iVarA;
                zArr2[i10] = true;
            }
        }
        i[] iVarArrI = i(arrayList.size());
        this.f25917m = iVarArrI;
        arrayList.toArray(iVarArrI);
        this.f25918n = this.f25914j.a(this.f25917m);
        return j10;
    }

    @Override
    public void f(n.a aVar, long j10) {
        this.f25915k = aVar;
        aVar.h(this);
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f25918n.getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.f25918n.getNextLoadPositionUs();
    }

    @Override
    public y getTrackGroups() {
        return this.f25913i;
    }

    @Override
    public boolean isLoading() {
        return this.f25918n.isLoading();
    }

    @Override
    public void g(i iVar) {
        this.f25915k.g(this);
    }

    public void k() {
        for (i iVar : this.f25917m) {
            iVar.B();
        }
        this.f25915k = null;
    }

    public void l(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar) {
        this.f25916l = aVar;
        for (i iVar : this.f25917m) {
            ((b) iVar.q()).c(aVar);
        }
        this.f25915k.g(this);
    }

    @Override
    public void maybeThrowPrepareError() {
        this.f25907c.maybeThrowError();
    }

    @Override
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        this.f25918n.reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        for (i iVar : this.f25917m) {
            iVar.E(j10);
        }
        return j10;
    }
}
