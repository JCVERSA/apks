package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class f52 {
    private final xl1 a;
    private final z1 b;
    private final mz c;
    private final kp d;
    private final aq e;

    public f52(xl1 xl1Var, z1 z1Var, mz mzVar, kp kpVar) {
        this(xl1Var, z1Var, mzVar, kpVar, new aq());
    }

    public final z1 a() {
        return this.b;
    }

    public final kp b() {
        return this.d;
    }

    public final aq c() {
        return this.e;
    }

    public final mz d() {
        return this.c;
    }

    public final xl1 e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f52)) {
            return false;
        }
        f52 f52Var = (f52) obj;
        return y45.e(this.a, f52Var.a) && y45.e(this.b, f52Var.b) && y45.e(this.c, f52Var.c) && y45.e(this.d, f52Var.d) && y45.e(this.e, f52Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "TimeProviderContainer(progressIncrementer=" + this.a + ", adBlockDurationProvider=" + this.b + ", defaultContentDelayProvider=" + this.c + ", closableAdChecker=" + this.d + ", closeTimerProgressIncrementer=" + this.e + ")";
    }

    public f52(xl1 xl1Var, z1 z1Var, mz mzVar, kp kpVar, aq aqVar) {
        y45.j(xl1Var, "progressIncrementer");
        y45.j(z1Var, "adBlockDurationProvider");
        y45.j(mzVar, "defaultContentDelayProvider");
        y45.j(kpVar, "closableAdChecker");
        y45.j(aqVar, "closeTimerProgressIncrementer");
        this.a = xl1Var;
        this.b = z1Var;
        this.c = mzVar;
        this.d = kpVar;
        this.e = aqVar;
    }
}
