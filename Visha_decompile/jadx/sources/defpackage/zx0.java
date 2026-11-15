package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class zx0 {
    public static final zx0 e = new a().b();
    public final xna a;
    public final List b;
    public final oi4 c;
    public final String d;

    public static final class a {
        public xna a = null;
        public List b = new ArrayList();
        public oi4 c = null;
        public String d = "";

        public a a(zp5 zp5Var) {
            this.b.add(zp5Var);
            return this;
        }

        public zx0 b() {
            return new zx0(this.a, Collections.unmodifiableList(this.b), this.c, this.d);
        }

        public a c(String str) {
            this.d = str;
            return this;
        }

        public a d(oi4 oi4Var) {
            this.c = oi4Var;
            return this;
        }

        public a e(xna xnaVar) {
            this.a = xnaVar;
            return this;
        }
    }

    public zx0(xna xnaVar, List list, oi4 oi4Var, String str) {
        this.a = xnaVar;
        this.b = list;
        this.c = oi4Var;
        this.d = str;
    }

    public static a e() {
        return new a();
    }

    public String a() {
        return this.d;
    }

    public oi4 b() {
        return this.c;
    }

    public List c() {
        return this.b;
    }

    public xna d() {
        return this.a;
    }

    public byte[] f() {
        return ej8.a(this);
    }
}
