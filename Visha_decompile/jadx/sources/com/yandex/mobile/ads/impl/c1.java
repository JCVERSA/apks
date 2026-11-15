package com.yandex.mobile.ads.impl;

import android.content.Intent;
import defpackage.y45;

public final class c1 {
    private final o8<?> a;
    private final o3 b;
    private final gv1 c;
    private final q61 d;
    private final int e;
    private final t8 f;
    private final Intent g;

    public static final class a {
        private final o8<?> a;
        private final o3 b;
        private final t8 c;
        private gv1 d;
        private q61 e;
        private int f;
        private Intent g;

        public a(o8<?> o8Var, o3 o3Var, t8 t8Var) {
            y45.j(o8Var, "adResponse");
            y45.j(o3Var, "adConfiguration");
            y45.j(t8Var, "adResultReceiver");
            this.a = o8Var;
            this.b = o3Var;
            this.c = t8Var;
        }

        public final Intent a() {
            return this.g;
        }

        public final o3 b() {
            return this.b;
        }

        public final o8<?> c() {
            return this.a;
        }

        public final t8 d() {
            return this.c;
        }

        public final q61 e() {
            return this.e;
        }

        public final int f() {
            return this.f;
        }

        public final gv1 g() {
            return this.d;
        }

        public final a a(Intent intent) {
            y45.j(intent, "activityResultIntent");
            this.g = intent;
            return this;
        }

        public final a a(q61 q61Var) {
            y45.j(q61Var, "nativeAd");
            this.e = q61Var;
            return this;
        }

        public final a a(int i) {
            this.f = i;
            return this;
        }

        public final a a(gv1 gv1Var) {
            y45.j(gv1Var, "contentController");
            this.d = gv1Var;
            return this;
        }
    }

    public c1(a aVar) {
        y45.j(aVar, "builder");
        this.a = aVar.c();
        this.b = aVar.b();
        this.c = aVar.g();
        this.d = aVar.e();
        this.e = aVar.f();
        this.f = aVar.d();
        this.g = aVar.a();
    }

    public final Intent a() {
        return this.g;
    }

    public final o3 b() {
        return this.b;
    }

    public final o8<?> c() {
        return this.a;
    }

    public final t8 d() {
        return this.f;
    }

    public final q61 e() {
        return this.d;
    }

    public final int f() {
        return this.e;
    }

    public final gv1 g() {
        return this.c;
    }
}
