package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Map;

public abstract class f implements k {

    private final boolean f26631a;

    private final ArrayList f26632b = new ArrayList(1);

    private int f26633c;

    private n f26634d;

    protected f(boolean z10) {
        this.f26631a = z10;
    }

    @Override
    public final void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        if (this.f26632b.contains(k0Var)) {
            return;
        }
        this.f26632b.add(k0Var);
        this.f26633c++;
    }

    @Override
    public Map getResponseHeaders() {
        return j.a(this);
    }

    protected final void h(int i10) {
        n nVar = (n) p0.j(this.f26634d);
        for (int i11 = 0; i11 < this.f26633c; i11++) {
            ((k0) this.f26632b.get(i11)).e(this, nVar, this.f26631a, i10);
        }
    }

    protected final void i() {
        n nVar = (n) p0.j(this.f26634d);
        for (int i10 = 0; i10 < this.f26633c; i10++) {
            ((k0) this.f26632b.get(i10)).c(this, nVar, this.f26631a);
        }
        this.f26634d = null;
    }

    protected final void j(n nVar) {
        for (int i10 = 0; i10 < this.f26633c; i10++) {
            ((k0) this.f26632b.get(i10)).h(this, nVar, this.f26631a);
        }
    }

    protected final void k(n nVar) {
        this.f26634d = nVar;
        for (int i10 = 0; i10 < this.f26633c; i10++) {
            ((k0) this.f26632b.get(i10)).g(this, nVar, this.f26631a);
        }
    }
}
