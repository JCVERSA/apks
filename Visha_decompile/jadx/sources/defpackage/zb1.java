package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.text.StringSubstitutor;

public final class zb1 {
    public final String a;
    public final Set b;
    public final Set c;
    public final int d;
    public final int e;
    public final nc1 f;
    public final Set g;

    public static b c(vk8 vk8Var) {
        return new b(vk8Var, new vk8[0]);
    }

    public static b d(vk8 vk8Var, vk8... vk8VarArr) {
        return new b(vk8Var, vk8VarArr);
    }

    public static b e(Class cls) {
        return new b(cls, new Class[0]);
    }

    public static b f(Class cls, Class... clsArr) {
        return new b(cls, clsArr);
    }

    public static zb1 l(final Object obj, Class cls) {
        return m(cls).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return zb1.q(obj, ic1Var);
            }
        }).d();
    }

    public static b m(Class cls) {
        return e(cls).g();
    }

    public static Object q(Object obj, ic1 ic1Var) {
        return obj;
    }

    public static Object r(Object obj, ic1 ic1Var) {
        return obj;
    }

    public static zb1 s(final Object obj, Class cls, Class... clsArr) {
        return f(cls, clsArr).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return zb1.r(obj, ic1Var);
            }
        }).d();
    }

    public Set g() {
        return this.c;
    }

    public nc1 h() {
        return this.f;
    }

    public String i() {
        return this.a;
    }

    public Set j() {
        return this.b;
    }

    public Set k() {
        return this.g;
    }

    public boolean n() {
        return this.d == 1;
    }

    public boolean o() {
        return this.d == 2;
    }

    public boolean p() {
        return this.e == 0;
    }

    public zb1 t(nc1 nc1Var) {
        return new zb1(this.a, this.b, this.c, this.d, this.e, nc1Var, this.g);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.b.toArray()) + ">{" + this.d + ", type=" + this.e + ", deps=" + Arrays.toString(this.c.toArray()) + StringSubstitutor.DEFAULT_VAR_END;
    }

    public static class b {
        public String a;
        public final Set b;
        public final Set c;
        public int d;
        public int e;
        public nc1 f;
        public final Set g;

        public b b(k82 k82Var) {
            yd8.c(k82Var, "Null dependency");
            j(k82Var.b());
            this.c.add(k82Var);
            return this;
        }

        public b c() {
            return i(1);
        }

        public zb1 d() {
            yd8.d(this.f != null, "Missing required property: factory.");
            return new zb1(this.a, new HashSet(this.b), new HashSet(this.c), this.d, this.e, this.f, this.g);
        }

        public b e() {
            return i(2);
        }

        public b f(nc1 nc1Var) {
            this.f = (nc1) yd8.c(nc1Var, "Null factory");
            return this;
        }

        public final b g() {
            this.e = 1;
            return this;
        }

        public b h(String str) {
            this.a = str;
            return this;
        }

        public final b i(int i) {
            yd8.d(this.d == 0, "Instantiation type has already been set.");
            this.d = i;
            return this;
        }

        public final void j(vk8 vk8Var) {
            yd8.a(!this.b.contains(vk8Var), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b(Class cls, Class... clsArr) {
            this.a = null;
            HashSet hashSet = new HashSet();
            this.b = hashSet;
            this.c = new HashSet();
            this.d = 0;
            this.e = 0;
            this.g = new HashSet();
            yd8.c(cls, "Null interface");
            hashSet.add(vk8.b(cls));
            for (Class cls2 : clsArr) {
                yd8.c(cls2, "Null interface");
                this.b.add(vk8.b(cls2));
            }
        }

        public b(vk8 vk8Var, vk8... vk8VarArr) {
            this.a = null;
            HashSet hashSet = new HashSet();
            this.b = hashSet;
            this.c = new HashSet();
            this.d = 0;
            this.e = 0;
            this.g = new HashSet();
            yd8.c(vk8Var, "Null interface");
            hashSet.add(vk8Var);
            for (vk8 vk8Var2 : vk8VarArr) {
                yd8.c(vk8Var2, "Null interface");
            }
            Collections.addAll(this.b, vk8VarArr);
        }
    }

    public zb1(String str, Set set, Set set2, int i, int i2, nc1 nc1Var, Set set3) {
        this.a = str;
        this.b = Collections.unmodifiableSet(set);
        this.c = Collections.unmodifiableSet(set2);
        this.d = i;
        this.e = i2;
        this.f = nc1Var;
        this.g = Collections.unmodifiableSet(set3);
    }
}
