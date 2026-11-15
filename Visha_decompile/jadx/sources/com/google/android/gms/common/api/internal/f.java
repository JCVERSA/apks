package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import defpackage.zda;

public abstract class f {
    public final d a;
    public final Feature[] b;
    public final boolean c;
    public final int d;

    public f(d dVar, Feature[] featureArr, boolean z, int i) {
        this.a = dVar;
        this.b = featureArr;
        this.c = z;
        this.d = i;
    }

    public void a() {
        this.a.a();
    }

    public d.a b() {
        return this.a.b();
    }

    public Feature[] c() {
        return this.b;
    }

    public abstract void d(com.google.android.gms.common.api.a.b bVar, zda zdaVar);

    public final int e() {
        return this.d;
    }

    public final boolean f() {
        return this.c;
    }
}
