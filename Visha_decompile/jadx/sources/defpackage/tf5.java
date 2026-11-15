package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class tf5 {
    public static final tf5 c = new tf5("COMPOSITION");
    public final List a;
    public uf5 b;

    public tf5(String... strArr) {
        this.a = Arrays.asList(strArr);
    }

    public tf5 a(String str) {
        tf5 tf5Var = new tf5(this);
        tf5Var.a.add(str);
        return tf5Var;
    }

    public final boolean b() {
        List list = this.a;
        return ((String) list.get(list.size() - 1)).equals("**");
    }

    public boolean c(String str, int i) {
        if (i >= this.a.size()) {
            return false;
        }
        boolean z = i == this.a.size() - 1;
        String str2 = (String) this.a.get(i);
        if (!str2.equals("**")) {
            return (z || (i == this.a.size() + (-2) && b())) && (str2.equals(str) || str2.equals("*"));
        }
        if (!z && ((String) this.a.get(i + 1)).equals(str)) {
            return i == this.a.size() + (-2) || (i == this.a.size() + (-3) && b());
        }
        if (z) {
            return true;
        }
        int i2 = i + 1;
        if (i2 < this.a.size() - 1) {
            return false;
        }
        return ((String) this.a.get(i2)).equals(str);
    }

    public uf5 d() {
        return this.b;
    }

    public int e(String str, int i) {
        if (f(str)) {
            return 0;
        }
        if (((String) this.a.get(i)).equals("**")) {
            return (i != this.a.size() - 1 && ((String) this.a.get(i + 1)).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        tf5 tf5Var = (tf5) obj;
        if (!this.a.equals(tf5Var.a)) {
            return false;
        }
        uf5 uf5Var = this.b;
        if (uf5Var != null) {
            return uf5Var.equals(tf5Var.b);
        }
        return tf5Var.b == null;
    }

    public final boolean f(String str) {
        return "__container".equals(str);
    }

    public boolean g(String str, int i) {
        if (f(str)) {
            return true;
        }
        if (i >= this.a.size()) {
            return false;
        }
        return ((String) this.a.get(i)).equals(str) || ((String) this.a.get(i)).equals("**") || ((String) this.a.get(i)).equals("*");
    }

    public boolean h(String str, int i) {
        return "__container".equals(str) || i < this.a.size() - 1 || ((String) this.a.get(i)).equals("**");
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        uf5 uf5Var = this.b;
        return iHashCode + (uf5Var != null ? uf5Var.hashCode() : 0);
    }

    public tf5 i(uf5 uf5Var) {
        tf5 tf5Var = new tf5(this);
        tf5Var.b = uf5Var;
        return tf5Var;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("KeyPath{keys=");
        sb.append(this.a);
        sb.append(",resolved=");
        sb.append(this.b != null);
        sb.append('}');
        return sb.toString();
    }

    public tf5(tf5 tf5Var) {
        this.a = new ArrayList(tf5Var.a);
        this.b = tf5Var.b;
    }
}
