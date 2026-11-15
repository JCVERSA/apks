package defpackage;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KVariance;

public final class jf5 {
    public static final a c = new a(null);
    public static final jf5 d = new jf5(null, null);
    public final KVariance a;
    public final ff5 b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final jf5 a(ff5 ff5Var) {
            y45.j(ff5Var, "type");
            return new jf5(KVariance.IN, ff5Var);
        }

        public final jf5 b(ff5 ff5Var) {
            y45.j(ff5Var, "type");
            return new jf5(KVariance.OUT, ff5Var);
        }

        public final jf5 c() {
            return jf5.d;
        }

        public final jf5 d(ff5 ff5Var) {
            y45.j(ff5Var, "type");
            return new jf5(KVariance.INVARIANT, ff5Var);
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public jf5(KVariance kVariance, ff5 ff5Var) {
        String str;
        this.a = kVariance;
        this.b = ff5Var;
        if ((kVariance == null) == (ff5Var == null)) {
            return;
        }
        if (kVariance == null) {
            str = "Star projection must have no type specified.";
        } else {
            str = "The projection variance " + kVariance + " requires type to be specified.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    public final KVariance a() {
        return this.a;
    }

    public final ff5 b() {
        return this.b;
    }

    public final ff5 c() {
        return this.b;
    }

    public final KVariance d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jf5)) {
            return false;
        }
        jf5 jf5Var = (jf5) obj;
        return this.a == jf5Var.a && y45.e(this.b, jf5Var.b);
    }

    public int hashCode() {
        KVariance kVariance = this.a;
        int iHashCode = (kVariance == null ? 0 : kVariance.hashCode()) * 31;
        ff5 ff5Var = this.b;
        return iHashCode + (ff5Var != null ? ff5Var.hashCode() : 0);
    }

    public String toString() {
        KVariance kVariance = this.a;
        int i = kVariance == null ? -1 : b.a[kVariance.ordinal()];
        if (i == -1) {
            return "*";
        }
        if (i == 1) {
            return String.valueOf(this.b);
        }
        if (i == 2) {
            return "in " + this.b;
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return "out " + this.b;
    }
}
