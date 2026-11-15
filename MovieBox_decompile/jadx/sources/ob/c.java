package ob;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class c {

    private final String f67729a;

    private final Set f67730b;

    private final Set f67731c;

    private final int f67732d;

    private final int f67733e;

    private final h f67734f;

    private final Set f67735g;

    public static b c(Class cls) {
        return new b(cls, new Class[0]);
    }

    public static b d(Class cls, Class... clsArr) {
        return new b(cls, clsArr);
    }

    public static b e(b0 b0Var) {
        return new b(b0Var, new b0[0]);
    }

    public static b f(b0 b0Var, b0... b0VarArr) {
        return new b(b0Var, b0VarArr);
    }

    public static c l(final Object obj, Class cls) {
        return m(cls).f(new h() {
            @Override
            public final Object a(e eVar) {
                return c.q(obj, eVar);
            }
        }).d();
    }

    public static b m(Class cls) {
        return c(cls).g();
    }

    public static Object q(Object obj, e eVar) {
        return obj;
    }

    public static Object r(Object obj, e eVar) {
        return obj;
    }

    public static c s(final Object obj, Class cls, Class... clsArr) {
        return d(cls, clsArr).f(new h() {
            @Override
            public final Object a(e eVar) {
                return c.r(obj, eVar);
            }
        }).d();
    }

    public Set g() {
        return this.f67731c;
    }

    public h h() {
        return this.f67734f;
    }

    public String i() {
        return this.f67729a;
    }

    public Set j() {
        return this.f67730b;
    }

    public Set k() {
        return this.f67735g;
    }

    public boolean n() {
        return this.f67732d == 1;
    }

    public boolean o() {
        return this.f67732d == 2;
    }

    public boolean p() {
        return this.f67733e == 0;
    }

    public c t(h hVar) {
        return new c(this.f67729a, this.f67730b, this.f67731c, this.f67732d, this.f67733e, hVar, this.f67735g);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f67730b.toArray()) + ">{" + this.f67732d + ", type=" + this.f67733e + ", deps=" + Arrays.toString(this.f67731c.toArray()) + "}";
    }

    public static class b {

        private String f67736a;

        private final Set f67737b;

        private final Set f67738c;

        private int f67739d;

        private int f67740e;

        private h f67741f;

        private final Set f67742g;

        public b g() {
            this.f67740e = 1;
            return this;
        }

        private b i(int i10) {
            a0.d(this.f67739d == 0, "Instantiation type has already been set.");
            this.f67739d = i10;
            return this;
        }

        private void j(b0 b0Var) {
            a0.a(!this.f67737b.contains(b0Var), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b b(r rVar) {
            a0.c(rVar, "Null dependency");
            j(rVar.c());
            this.f67738c.add(rVar);
            return this;
        }

        public b c() {
            return i(1);
        }

        public c d() {
            a0.d(this.f67741f != null, "Missing required property: factory.");
            return new c(this.f67736a, new HashSet(this.f67737b), new HashSet(this.f67738c), this.f67739d, this.f67740e, this.f67741f, this.f67742g);
        }

        public b e() {
            return i(2);
        }

        public b f(h hVar) {
            this.f67741f = (h) a0.c(hVar, "Null factory");
            return this;
        }

        public b h(String str) {
            this.f67736a = str;
            return this;
        }

        private b(Class cls, Class... clsArr) {
            this.f67736a = null;
            HashSet hashSet = new HashSet();
            this.f67737b = hashSet;
            this.f67738c = new HashSet();
            this.f67739d = 0;
            this.f67740e = 0;
            this.f67742g = new HashSet();
            a0.c(cls, "Null interface");
            hashSet.add(b0.b(cls));
            for (Class cls2 : clsArr) {
                a0.c(cls2, "Null interface");
                this.f67737b.add(b0.b(cls2));
            }
        }

        private b(b0 b0Var, b0... b0VarArr) {
            this.f67736a = null;
            HashSet hashSet = new HashSet();
            this.f67737b = hashSet;
            this.f67738c = new HashSet();
            this.f67739d = 0;
            this.f67740e = 0;
            this.f67742g = new HashSet();
            a0.c(b0Var, "Null interface");
            hashSet.add(b0Var);
            for (b0 b0Var2 : b0VarArr) {
                a0.c(b0Var2, "Null interface");
            }
            Collections.addAll(this.f67737b, b0VarArr);
        }
    }

    private c(String str, Set set, Set set2, int i10, int i11, h hVar, Set set3) {
        this.f67729a = str;
        this.f67730b = Collections.unmodifiableSet(set);
        this.f67731c = Collections.unmodifiableSet(set2);
        this.f67732d = i10;
        this.f67733e = i11;
        this.f67734f = hVar;
        this.f67735g = Collections.unmodifiableSet(set3);
    }
}
