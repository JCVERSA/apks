package com.yandex.mobile.ads.impl;

import androidx.annotation.NonNull;

public final class p3 {
    private final vn2 a;

    private p3(vn2 vn2Var) {
        this.a = vn2Var;
    }

    public static p3 a(vn2 vn2Var) {
        if (vn2Var.j().c() != null) {
            throw new IllegalStateException("AdEvents already exists for AdSession");
        }
        if (vn2Var.k()) {
            throw new IllegalStateException("AdSession is finished");
        }
        p3 p3Var = new p3(vn2Var);
        vn2Var.j().a(p3Var);
        return p3Var;
    }

    public final void a() {
        if (!this.a.k()) {
            if (this.a.l()) {
                if (!this.a.g()) {
                    try {
                        this.a.b();
                    } catch (Exception unused) {
                    }
                }
                if (this.a.g()) {
                    this.a.e();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Impression event is not expected from the Native AdSession");
        }
        throw new IllegalStateException("AdSession is finished");
    }

    public final void a(@NonNull ga2 ga2Var) {
        xo2.a(this.a);
        if (this.a.l()) {
            this.a.a(ga2Var.a());
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }
}
