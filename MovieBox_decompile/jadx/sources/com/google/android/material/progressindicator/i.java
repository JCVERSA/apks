package com.google.android.material.progressindicator;

import java.util.ArrayList;
import java.util.List;

abstract class i {

    protected j f28651a;

    protected final List f28652b = new ArrayList();

    protected i(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            this.f28652b.add(new h.a());
        }
    }

    abstract void a();

    protected float b(int i10, int i11, int i12) {
        return (i10 - i11) / i12;
    }

    public abstract void c();

    public abstract void d(androidx.vectordrawable.graphics.drawable.b bVar);

    protected void e(j jVar) {
        this.f28651a = jVar;
    }

    abstract void f();

    abstract void g();

    public abstract void h();
}
