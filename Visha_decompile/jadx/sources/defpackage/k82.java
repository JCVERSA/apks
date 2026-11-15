package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class k82 {
    public final vk8 a;
    public final int b;
    public final int c;

    public k82(Class cls, int i, int i2) {
        this(vk8.b(cls), i, i2);
    }

    public static String a(int i) {
        if (i == 0) {
            return "direct";
        }
        if (i == 1) {
            return "provider";
        }
        if (i == 2) {
            return "deferred";
        }
        throw new AssertionError("Unsupported injection: " + i);
    }

    public static k82 g(Class cls) {
        return new k82(cls, 0, 0);
    }

    public static k82 h(vk8 vk8Var) {
        return new k82(vk8Var, 0, 1);
    }

    public static k82 i(Class cls) {
        return new k82(cls, 0, 1);
    }

    public static k82 j(vk8 vk8Var) {
        return new k82(vk8Var, 1, 0);
    }

    public static k82 k(Class cls) {
        return new k82(cls, 1, 0);
    }

    public static k82 l(Class cls) {
        return new k82(cls, 1, 1);
    }

    public static k82 m(Class cls) {
        return new k82(cls, 2, 0);
    }

    public vk8 b() {
        return this.a;
    }

    public boolean c() {
        return this.c == 2;
    }

    public boolean d() {
        return this.c == 0;
    }

    public boolean e() {
        return this.b == 1;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k82)) {
            return false;
        }
        k82 k82Var = (k82) obj;
        return this.a.equals(k82Var.a) && this.b == k82Var.b && this.c == k82Var.c;
    }

    public boolean f() {
        return this.b == 2;
    }

    public int hashCode() {
        return this.c ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.a);
        sb.append(", type=");
        int i = this.b;
        if (i == 1) {
            str = "required";
        } else {
            str = i == 0 ? "optional" : "set";
        }
        sb.append(str);
        sb.append(", injection=");
        sb.append(a(this.c));
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }

    public k82(vk8 vk8Var, int i, int i2) {
        this.a = (vk8) yd8.c(vk8Var, "Null dependency anInterface.");
        this.b = i;
        this.c = i2;
    }
}
