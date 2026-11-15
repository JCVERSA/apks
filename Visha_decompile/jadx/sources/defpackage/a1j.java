package defpackage;

import com.google.android.gms.internal.ads.zzii;
import java.util.Objects;

public abstract class a1j implements x9j, aaj {
    public final int b;
    public baj d;
    public int e;
    public tfj f;
    public tbg g;
    public int h;
    public yoj i;
    public erj[] j;
    public long k;
    public long l;
    public boolean n;
    public boolean o;
    public bnj q;
    public z9j r;
    public final Object a = new Object();
    public final p7j c = new p7j();
    public long m = Long.MIN_VALUE;
    public w4f p = w4f.a;

    public a1j(int i) {
        this.b = i;
    }

    public final int A(long j) {
        yoj yojVar = this.i;
        yojVar.getClass();
        return yojVar.a(j - this.k);
    }

    public final long B() {
        return this.l;
    }

    public final w4f C() {
        return this.p;
    }

    public final tbg D() {
        tbg tbgVar = this.g;
        tbgVar.getClass();
        return tbgVar;
    }

    public final p7j E() {
        p7j p7jVar = this.c;
        p7jVar.b = null;
        p7jVar.a = null;
        return p7jVar;
    }

    public final baj F() {
        baj bajVar = this.d;
        bajVar.getClass();
        return bajVar;
    }

    public final tfj G() {
        tfj tfjVar = this.f;
        tfjVar.getClass();
        return tfjVar;
    }

    public abstract void H();

    public abstract void I(boolean z, boolean z2);

    public abstract void J(long j, boolean z);

    @Override
    public final void b(erj[] erjVarArr, yoj yojVar, long j, long j2, bnj bnjVar) {
        n7g.f(!this.n);
        this.i = yojVar;
        this.q = bnjVar;
        if (this.m == Long.MIN_VALUE) {
            this.m = j;
        }
        this.j = erjVarArr;
        this.k = j2;
        u(erjVarArr, j, j2, bnjVar);
    }

    @Override
    public final void c(long j) {
        x(j, false);
    }

    @Override
    public abstract void e(int i, Object obj);

    @Override
    public final void i(w4f w4fVar) {
        if (Objects.equals(this.p, w4fVar)) {
            return;
        }
        this.p = w4fVar;
    }

    @Override
    public final void j(z9j z9jVar) {
        synchronized (this.a) {
            this.r = z9jVar;
        }
    }

    @Override
    public final void k(baj bajVar, erj[] erjVarArr, yoj yojVar, long j, boolean z, boolean z2, long j2, long j3, bnj bnjVar) {
        n7g.f(this.h == 0);
        this.d = bajVar;
        this.q = bnjVar;
        this.h = 1;
        I(z, z2);
        b(erjVarArr, yojVar, j2, j3, bnjVar);
        x(j2, z);
    }

    @Override
    public final int l() {
        return this.h;
    }

    @Override
    public final void n(int i, tfj tfjVar, tbg tbgVar) {
        this.e = i;
        this.f = tfjVar;
        this.g = tbgVar;
    }

    @Override
    public final long o() {
        return this.m;
    }

    public abstract void p();

    public final void q() {
        z9j z9jVar;
        synchronized (this.a) {
            z9jVar = this.r;
        }
        if (z9jVar != null) {
            z9jVar.a(this);
        }
    }

    public abstract void r();

    public abstract void s();

    public abstract void t();

    public abstract void u(erj[] erjVarArr, long j, long j2, bnj bnjVar);

    public final boolean v() {
        if (zzQ()) {
            return this.n;
        }
        yoj yojVar = this.i;
        yojVar.getClass();
        return yojVar.zze();
    }

    public final erj[] w() {
        erj[] erjVarArr = this.j;
        erjVarArr.getClass();
        return erjVarArr;
    }

    public final void x(long j, boolean z) {
        this.n = false;
        this.l = j;
        this.m = j;
        J(j, z);
    }

    public final int y(p7j p7jVar, xzi xziVar, int i) {
        yoj yojVar = this.i;
        yojVar.getClass();
        int iB = yojVar.b(p7jVar, xziVar, i);
        if (iB == -4) {
            if (xziVar.f()) {
                this.m = Long.MIN_VALUE;
                return this.n ? -4 : -3;
            }
            long j = xziVar.f + this.k;
            xziVar.f = j;
            this.m = Math.max(this.m, j);
        } else if (iB == -5) {
            erj erjVar = p7jVar.a;
            erjVar.getClass();
            long j2 = erjVar.t;
            if (j2 != Long.MAX_VALUE) {
                gpj gpjVarB = erjVar.b();
                gpjVarB.I(j2 + this.k);
                p7jVar.a = gpjVarB.K();
                return -5;
            }
        }
        return iB;
    }

    public final zzii z(Throwable th, erj erjVar, boolean z, int i) {
        int iG = 4;
        if (erjVar != null && !this.o) {
            this.o = true;
            try {
                iG = g(erjVar) & 7;
            } catch (zzii unused) {
            } finally {
                this.o = false;
            }
        }
        return zzii.zzb(th, zzU(), this.e, erjVar, iG, this.q, z, i);
    }

    @Override
    public final void zzG() {
        n7g.f(this.h == 0);
        p();
    }

    @Override
    public final void zzI() {
        n7g.f(this.h == 0);
        p7j p7jVar = this.c;
        p7jVar.b = null;
        p7jVar.a = null;
        r();
    }

    @Override
    public final void zzK() {
        this.n = true;
    }

    @Override
    public final void zzO() {
        n7g.f(this.h == 1);
        this.h = 2;
        s();
    }

    @Override
    public final void zzP() {
        n7g.f(this.h == 2);
        this.h = 1;
        t();
    }

    @Override
    public final boolean zzQ() {
        return this.m == Long.MIN_VALUE;
    }

    @Override
    public final boolean zzR() {
        return this.n;
    }

    @Override
    public final int zzb() {
        return this.b;
    }

    @Override
    public b8j zzl() {
        return null;
    }

    @Override
    public final aaj zzm() {
        return this;
    }

    @Override
    public final yoj zzp() {
        return this.i;
    }

    @Override
    public final void zzq() {
        synchronized (this.a) {
            this.r = null;
        }
    }

    @Override
    public final void zzr() {
        n7g.f(this.h == 1);
        p7j p7jVar = this.c;
        p7jVar.b = null;
        p7jVar.a = null;
        this.h = 0;
        this.i = null;
        this.j = null;
        this.n = false;
        H();
        this.q = null;
    }

    @Override
    public void zzt() {
    }

    @Override
    public final void zzw() {
        yoj yojVar = this.i;
        yojVar.getClass();
        yojVar.zzd();
    }
}
