package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class kl {
    private final s41 a;
    private final na1 b;
    private final fc1 c;
    private final dc1 d;
    private final s51 e;
    private final r81 f;
    private final sa g;
    private final bv1 h;
    private final g41 i;
    private final s9 j;

    public kl(s41 s41Var, f71 f71Var, fc1 fc1Var, dc1 dc1Var, s51 s51Var, r81 r81Var, m71 m71Var, bv1 bv1Var, g41 g41Var, s9 s9Var) {
        y45.j(s41Var, "nativeAdBlock");
        y45.j(f71Var, "nativeValidator");
        y45.j(fc1Var, "nativeVisualBlock");
        y45.j(dc1Var, "nativeViewRenderer");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(r81Var, "forceImpressionConfigurator");
        y45.j(m71Var, "adViewRenderingValidator");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(s9Var, "adStructureType");
        this.a = s41Var;
        this.b = f71Var;
        this.c = fc1Var;
        this.d = dc1Var;
        this.e = s51Var;
        this.f = r81Var;
        this.g = m71Var;
        this.h = bv1Var;
        this.i = g41Var;
        this.j = s9Var;
    }

    public final s9 a() {
        return this.j;
    }

    public final sa b() {
        return this.g;
    }

    public final r81 c() {
        return this.f;
    }

    public final s41 d() {
        return this.a;
    }

    public final s51 e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kl)) {
            return false;
        }
        kl klVar = (kl) obj;
        return y45.e(this.a, klVar.a) && y45.e(this.b, klVar.b) && y45.e(this.c, klVar.c) && y45.e(this.d, klVar.d) && y45.e(this.e, klVar.e) && y45.e(this.f, klVar.f) && y45.e(this.g, klVar.g) && y45.e(this.h, klVar.h) && y45.e(this.i, klVar.i) && this.j == klVar.j;
    }

    public final g41 f() {
        return this.i;
    }

    public final na1 g() {
        return this.b;
    }

    public final dc1 h() {
        return this.d;
    }

    public final int hashCode() {
        int iHashCode = (this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        g41 g41Var = this.i;
        return this.j.hashCode() + ((iHashCode + (g41Var == null ? 0 : g41Var.hashCode())) * 31);
    }

    public final fc1 i() {
        return this.c;
    }

    public final bv1 j() {
        return this.h;
    }

    public final String toString() {
        return "BinderConfiguration(nativeAdBlock=" + this.a + ", nativeValidator=" + this.b + ", nativeVisualBlock=" + this.c + ", nativeViewRenderer=" + this.d + ", nativeAdFactoriesProvider=" + this.e + ", forceImpressionConfigurator=" + this.f + ", adViewRenderingValidator=" + this.g + ", sdkEnvironmentModule=" + this.h + ", nativeData=" + this.i + ", adStructureType=" + this.j + ")";
    }
}
