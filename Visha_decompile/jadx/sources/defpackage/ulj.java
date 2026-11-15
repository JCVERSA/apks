package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;

public abstract class ulj implements knj {
    public final ArrayList a = new ArrayList(1);
    public final HashSet b = new HashSet(1);
    public final rnj c = new rnj();
    public final jjj d = new jjj();
    public Looper e;
    public w4f f;
    public tfj g;

    @Override
    public final void a(kjj kjjVar) {
        this.d.c(kjjVar);
    }

    @Override
    public final void c(cnj cnjVar) {
        ArrayList arrayList = this.a;
        arrayList.remove(cnjVar);
        if (!arrayList.isEmpty()) {
            g(cnjVar);
            return;
        }
        this.e = null;
        this.f = null;
        this.g = null;
        this.b.clear();
        v();
    }

    @Override
    public final void d(Handler handler, kjj kjjVar) {
        this.d.b(handler, kjjVar);
    }

    @Override
    public final void e(cnj cnjVar) {
        this.e.getClass();
        HashSet hashSet = this.b;
        boolean zIsEmpty = hashSet.isEmpty();
        hashSet.add(cnjVar);
        if (zIsEmpty) {
            s();
        }
    }

    @Override
    public final void f(cnj cnjVar, ixi ixiVar, tfj tfjVar) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.e;
        boolean z = true;
        if (looper != null && looper != looperMyLooper) {
            z = false;
        }
        n7g.d(z);
        this.g = tfjVar;
        w4f w4fVar = this.f;
        this.a.add(cnjVar);
        if (this.e == null) {
            this.e = looperMyLooper;
            this.b.add(cnjVar);
            t(ixiVar);
        } else if (w4fVar != null) {
            e(cnjVar);
            cnjVar.a(this, w4fVar);
        }
    }

    @Override
    public final void g(cnj cnjVar) {
        HashSet hashSet = this.b;
        boolean zIsEmpty = hashSet.isEmpty();
        hashSet.remove(cnjVar);
        if (zIsEmpty || !hashSet.isEmpty()) {
            return;
        }
        r();
    }

    @Override
    public abstract void i(cme cmeVar);

    @Override
    public final void j(snj snjVar) {
        this.c.i(snjVar);
    }

    @Override
    public final void l(Handler handler, snj snjVar) {
        this.c.b(handler, snjVar);
    }

    public final tfj m() {
        tfj tfjVar = this.g;
        n7g.b(tfjVar);
        return tfjVar;
    }

    public final jjj n(bnj bnjVar) {
        return this.d.a(0, bnjVar);
    }

    public final jjj o(int i, bnj bnjVar) {
        return this.d.a(0, bnjVar);
    }

    public final rnj p(bnj bnjVar) {
        return this.c.a(0, bnjVar);
    }

    public final rnj q(int i, bnj bnjVar) {
        return this.c.a(0, bnjVar);
    }

    public void r() {
    }

    public void s() {
    }

    public abstract void t(ixi ixiVar);

    public final void u(w4f w4fVar) {
        this.f = w4fVar;
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((cnj) arrayList.get(i)).a(this, w4fVar);
        }
    }

    public abstract void v();

    public final boolean w() {
        return !this.b.isEmpty();
    }

    @Override
    public w4f zzM() {
        return null;
    }

    @Override
    public boolean zzv() {
        return true;
    }
}
