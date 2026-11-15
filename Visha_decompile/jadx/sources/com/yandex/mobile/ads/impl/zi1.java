package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class zi1 {
    private final b70 a;
    private Float b;

    public zi1(b70 b70Var) {
        y45.j(b70Var, "playerProvider");
        this.a = b70Var;
    }

    public final void a(float f) {
        if (this.b == null) {
            this.b = a();
        }
        com.google.android.exoplayer2.t tVarA = this.a.a();
        if (tVarA == null) {
            return;
        }
        tVarA.setVolume(f);
    }

    public final void b() {
        Float f = this.b;
        if (f != null) {
            float fFloatValue = f.floatValue();
            com.google.android.exoplayer2.t tVarA = this.a.a();
            if (tVarA != null) {
                tVarA.setVolume(fFloatValue);
            }
        }
        this.b = null;
    }

    public final Float a() {
        com.google.android.exoplayer2.t tVarA = this.a.a();
        if (tVarA != null) {
            return Float.valueOf(tVarA.getVolume());
        }
        return null;
    }
}
