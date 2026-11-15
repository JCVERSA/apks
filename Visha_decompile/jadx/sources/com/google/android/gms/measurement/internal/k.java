package com.google.android.gms.measurement.internal;

import defpackage.b7j;

public final class k {
    public zzkd a;
    public final b7j b;

    public k(b7j b7jVar) {
        this.b = b7jVar;
    }

    public final void a(long j) {
        this.a = new zzkd(this, this.b.a.c().currentTimeMillis(), j);
        this.b.c.postDelayed(this.a, 2000L);
    }

    public final void b() {
        this.b.g();
        zzkd zzkdVar = this.a;
        if (zzkdVar != null) {
            this.b.c.removeCallbacks(zzkdVar);
        }
        this.b.a.F().q.a(false);
    }
}
