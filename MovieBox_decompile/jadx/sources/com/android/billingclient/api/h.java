package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;

public abstract class h {

    public static final class a {

        private volatile x0 f18440a;

        private final Context f18441b;

        private volatile v f18442c;

        private volatile boolean f18443d;

        a(Context context, r1 r1Var) {
            this.f18441b = context;
        }

        public h a() {
            if (this.f18441b == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            if (this.f18442c == null) {
                if (this.f18443d) {
                    return new i(null, this.f18441b, null, null);
                }
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            if (this.f18440a != null) {
                return this.f18442c != null ? new i(null, this.f18440a, this.f18441b, this.f18442c, null, null, null) : new i(null, this.f18440a, this.f18441b, null, null, null);
            }
            throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
        }

        public a b() {
            v0 v0Var = new v0(null);
            v0Var.a();
            this.f18440a = v0Var.b();
            return this;
        }

        public a c(v vVar) {
            this.f18442c = vVar;
            return this;
        }
    }

    public static a c(Context context) {
        return new a(context, null);
    }

    public abstract boolean a();

    public abstract n b(Activity activity, m mVar);

    public abstract void d(w wVar, s sVar);

    public abstract void e(x xVar, u uVar);

    public abstract void f(j jVar);
}
