package defpackage;

import com.google.android.gms.common.Feature;

public abstract class yda {
    public final Feature[] a;
    public final boolean b;
    public final int c;

    public static class a {
        public as8 a;
        public Feature[] c;
        public boolean b = true;
        public int d = 0;

        public a(u0e u0eVar) {
        }

        public yda a() {
            wd8.b(this.a != null, "execute parameter required");
            return new t0e(this, this.c, this.b, this.d);
        }

        public a b(as8 as8Var) {
            this.a = as8Var;
            return this;
        }

        public a c(boolean z) {
            this.b = z;
            return this;
        }

        public a d(Feature... featureArr) {
            this.c = featureArr;
            return this;
        }

        public a e(int i) {
            this.d = i;
            return this;
        }
    }

    public yda(Feature[] featureArr, boolean z, int i) {
        this.a = featureArr;
        boolean z2 = false;
        if (featureArr != null && z) {
            z2 = true;
        }
        this.b = z2;
        this.c = i;
    }

    public static a a() {
        return new a(null);
    }

    public abstract void b(com.google.android.gms.common.api.a.b bVar, zda zdaVar);

    public boolean c() {
        return this.b;
    }

    public final int d() {
        return this.c;
    }

    public final Feature[] e() {
        return this.a;
    }
}
