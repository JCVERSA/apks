package defpackage;

import android.util.Pair;
import androidx.media3.common.C;

public final class wmj extends opj {
    public final boolean l;
    public final e4f m;
    public final y2f n;
    public umj o;
    public tmj p;
    public boolean q;
    public boolean r;
    public boolean s;

    public wmj(knj knjVar, boolean z) {
        boolean z2;
        super(knjVar);
        if (z) {
            knjVar.zzv();
            z2 = true;
        } else {
            z2 = false;
        }
        this.l = z2;
        this.m = new e4f();
        this.n = new y2f();
        knjVar.zzM();
        this.o = umj.q(knjVar.zzJ());
    }

    @Override
    public final bnj C(bnj bnjVar) {
        Object obj = this.o.d;
        Object obj2 = bnjVar.a;
        if (obj != null && this.o.d.equals(obj2)) {
            obj2 = umj.e;
        }
        return bnjVar.a(obj2);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005d  */
    @Override
    public final void D(w4f w4fVar) {
        long j;
        bnj bnjVarA = null;
        if (this.r) {
            this.o = this.o.p(w4fVar);
            tmj tmjVar = this.p;
            if (tmjVar != null) {
                I(tmjVar.i());
            }
        } else if (w4fVar.o()) {
            this.o = this.s ? this.o.p(w4fVar) : umj.r(w4fVar, e4f.o, umj.e);
        } else {
            e4f e4fVar = this.m;
            w4fVar.e(0, e4fVar, 0L);
            Object obj = e4fVar.a;
            tmj tmjVar2 = this.p;
            if (tmjVar2 != null) {
                j = tmjVar2.j();
                this.o.n(tmjVar2.b.a, this.n);
                this.o.e(0, e4fVar, 0L);
                if (j == 0) {
                    j = 0;
                }
            } else {
                j = 0;
            }
            Pair pairL = w4fVar.l(e4fVar, this.n, 0, j);
            Object obj2 = pairL.first;
            long jLongValue = ((Long) pairL.second).longValue();
            this.o = this.s ? this.o.p(w4fVar) : umj.r(w4fVar, obj, obj2);
            tmj tmjVar3 = this.p;
            if (tmjVar3 != null && I(jLongValue)) {
                bnj bnjVar = tmjVar3.b;
                bnjVarA = bnjVar.a(H(bnjVar.a));
            }
        }
        this.s = true;
        this.r = true;
        u(this.o);
        if (bnjVarA != null) {
            tmj tmjVar4 = this.p;
            tmjVar4.getClass();
            tmjVar4.k(bnjVarA);
        }
    }

    @Override
    public final void E() {
        if (this.l) {
            return;
        }
        this.q = true;
        y(null, this.k);
    }

    public final w4f F() {
        return this.o;
    }

    @Override
    public final tmj b(bnj bnjVar, nrj nrjVar, long j) {
        tmj tmjVar = new tmj(bnjVar, nrjVar, j);
        tmjVar.o(this.k);
        if (this.r) {
            tmjVar.k(bnjVar.a(H(bnjVar.a)));
        } else {
            this.p = tmjVar;
            if (!this.q) {
                this.q = true;
                y(null, this.k);
            }
        }
        return tmjVar;
    }

    public final Object H(Object obj) {
        return (this.o.d == null || !obj.equals(umj.e)) ? obj : this.o.d;
    }

    public final boolean I(long j) {
        tmj tmjVar = this.p;
        int iA = this.o.a(tmjVar.b.a);
        if (iA == -1) {
            return false;
        }
        umj umjVar = this.o;
        y2f y2fVar = this.n;
        umjVar.d(iA, y2fVar, false);
        long j2 = y2fVar.d;
        if (j2 != C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        tmjVar.l(j);
        return true;
    }

    @Override
    public final void h(zmj zmjVar) {
        ((tmj) zmjVar).n();
        if (zmjVar == this.p) {
            this.p = null;
        }
    }

    @Override
    public final void i(cme cmeVar) {
        if (this.s) {
            this.o = this.o.p(new lpj(this.o.b, cmeVar));
        } else {
            this.o = umj.q(cmeVar);
        }
        this.k.i(cmeVar);
    }

    @Override
    public final void v() {
        this.r = false;
        this.q = false;
        super.v();
    }

    @Override
    public final void zzz() {
    }
}
