package defpackage;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class jd5 extends se0 {
    public static final a h = new a(null);
    public static final jd5 i;
    public static final jd5 j;
    public static final jd5 k;
    public final boolean g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        jd5 jd5Var = new jd5(1, 8, 0);
        i = jd5Var;
        j = jd5Var.m();
        k = new jd5(new int[0]);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jd5(int[] iArr, boolean z) {
        super(Arrays.copyOf(iArr, iArr.length));
        y45.j(iArr, "versionArray");
        this.g = z;
    }

    public final boolean h(jd5 jd5Var) {
        y45.j(jd5Var, "metadataVersionFromLanguageVersion");
        if (a() == 2 && b() == 0) {
            jd5 jd5Var2 = i;
            if (jd5Var2.a() == 1 && jd5Var2.b() == 8) {
                return true;
            }
        }
        return i(jd5Var.k(this.g));
    }

    public final boolean i(jd5 jd5Var) {
        if ((a() == 1 && b() == 0) || a() == 0) {
            return false;
        }
        return !l(jd5Var);
    }

    public final boolean j() {
        return this.g;
    }

    public final jd5 k(boolean z) {
        jd5 jd5Var = z ? i : j;
        return jd5Var.l(this) ? jd5Var : this;
    }

    public final boolean l(jd5 jd5Var) {
        if (a() > jd5Var.a()) {
            return true;
        }
        return a() >= jd5Var.a() && b() > jd5Var.b();
    }

    public final jd5 m() {
        return (a() == 1 && b() == 9) ? new jd5(2, 0, 0) : new jd5(a(), b() + 1, 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public jd5(int... iArr) {
        this(iArr, false);
        y45.j(iArr, "numbers");
    }
}
