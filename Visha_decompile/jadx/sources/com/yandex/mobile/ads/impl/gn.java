package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;

public final class gn {
    private final vp1 a;
    private final vq1 b;

    public static final class a {
        private final vp1 a;

        public a(long j, vp1 vp1Var) {
            y45.j(vp1Var, Progress.REQUEST);
            this.a = vp1Var;
        }

        public final gn a() {
            gn gnVar = new gn(this.a, null);
            return (gnVar.b() == null || !this.a.b().a()) ? gnVar : new gn(null, null);
        }
    }

    public gn(vp1 vp1Var, vq1 vq1Var) {
        this.a = vp1Var;
        this.b = vq1Var;
    }

    public final vq1 a() {
        return this.b;
    }

    public final vp1 b() {
        return this.a;
    }
}
