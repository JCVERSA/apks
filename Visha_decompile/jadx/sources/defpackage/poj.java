package defpackage;

import android.net.Uri;
import android.os.Looper;
import androidx.media3.common.C;

public final class poj extends ulj implements goj {
    public final t8i h;
    public final ojj i;
    public final int j;
    public boolean k = true;
    public long l = C.TIME_UNSET;
    public boolean m;
    public boolean n;
    public ixi o;
    public cme p;
    public final moj q;
    public final rrj r;

    public poj(cme cmeVar, t8i t8iVar, moj mojVar, ojj ojjVar, rrj rrjVar, int i, int i2, erj erjVar, k3i k3iVar, ooj oojVar) {
        this.p = cmeVar;
        this.h = t8iVar;
        this.q = mojVar;
        this.i = ojjVar;
        this.r = rrjVar;
        this.j = i;
    }

    @Override
    public final zmj b(bnj bnjVar, nrj nrjVar, long j) {
        v9i v9iVarZza = this.h.zza();
        ixi ixiVar = this.o;
        if (ixiVar != null) {
            v9iVarZza.c(ixiVar);
        }
        xge xgeVar = zzJ().b;
        xgeVar.getClass();
        Uri uri = xgeVar.a;
        moj mojVar = this.q;
        m();
        return new koj(uri, v9iVarZza, new dmj(mojVar.a), this.i, n(bnjVar), this.r, p(bnjVar), this, nrjVar, null, this.j, 0, null, kfh.N(C.TIME_UNSET), null);
    }

    @Override
    public final void h(zmj zmjVar) {
        ((koj) zmjVar).w();
    }

    @Override
    public final synchronized void i(cme cmeVar) {
        this.p = cmeVar;
    }

    @Override
    public final void k(long j, kae kaeVar, boolean z) {
        if (j == C.TIME_UNSET) {
            j = this.l;
        }
        boolean zZzh = kaeVar.zzh();
        if (!this.k && this.l == j && this.m == zZzh && this.n == z) {
            return;
        }
        this.l = j;
        this.m = zZzh;
        this.n = z;
        this.k = false;
        x();
    }

    @Override
    public final void t(ixi ixiVar) {
        this.o = ixiVar;
        Looper.myLooper().getClass();
        m();
        x();
    }

    @Override
    public final void v() {
    }

    public final void x() {
        long j = this.l;
        boolean z = this.m;
        boolean z2 = this.n;
        cme cmeVarZzJ = zzJ();
        cpj cpjVar = new cpj(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j, j, 0L, 0L, z, false, false, null, cmeVarZzJ, z2 ? cmeVarZzJ.c : null);
        u(this.k ? new loj(this, cpjVar) : cpjVar);
    }

    @Override
    public final synchronized cme zzJ() {
        return this.p;
    }

    @Override
    public final void zzz() {
    }
}
