package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import defpackage.as8;
import defpackage.q0e;
import defpackage.r0e;
import defpackage.wd8;

public class g {
    public final f a;
    public final h b;
    public final Runnable c;

    public static class a {
        public as8 a;
        public as8 b;
        public d d;
        public Feature[] e;
        public int g;
        public Runnable c = new Runnable() {
            @Override
            public final void run() {
            }
        };
        public boolean f = true;

        public a(q0e q0eVar) {
        }

        public g a() {
            wd8.b(this.a != null, "Must set register function");
            wd8.b(this.b != null, "Must set unregister function");
            wd8.b(this.d != null, "Must set holder");
            return new g(new o(this, this.d, this.e, this.f, this.g), new p(this, (d.a) wd8.m(this.d.b(), "Key must not be null")), this.c, null);
        }

        public a b(as8 as8Var) {
            this.a = as8Var;
            return this;
        }

        public a c(int i) {
            this.g = i;
            return this;
        }

        public a d(as8 as8Var) {
            this.b = as8Var;
            return this;
        }

        public a e(d dVar) {
            this.d = dVar;
            return this;
        }
    }

    public g(f fVar, h hVar, Runnable runnable, r0e r0eVar) {
        this.a = fVar;
        this.b = hVar;
        this.c = runnable;
    }

    public static a a() {
        return new a(null);
    }
}
