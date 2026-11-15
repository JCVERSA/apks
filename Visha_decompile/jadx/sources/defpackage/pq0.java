package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.io.IOUtils;

public final class pq0 {
    public static final a e = new a(null);
    public static final by6 f;
    public static final o54 g;
    public final o54 a;
    public final o54 b;
    public final by6 c;
    public final o54 d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        by6 by6Var = su9.m;
        f = by6Var;
        o54 o54VarK = o54.k(by6Var);
        y45.i(o54VarK, "topLevel(LOCAL_NAME)");
        g = o54VarK;
    }

    public pq0(o54 o54Var, o54 o54Var2, by6 by6Var, o54 o54Var3) {
        y45.j(o54Var, "packageName");
        y45.j(by6Var, "callableName");
        this.a = o54Var;
        this.b = o54Var2;
        this.c = by6Var;
        this.d = o54Var3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pq0)) {
            return false;
        }
        pq0 pq0Var = (pq0) obj;
        return y45.e(this.a, pq0Var.a) && y45.e(this.b, pq0Var.b) && y45.e(this.c, pq0Var.c) && y45.e(this.d, pq0Var.d);
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        o54 o54Var = this.b;
        int iHashCode2 = (((iHashCode + (o54Var == null ? 0 : o54Var.hashCode())) * 31) + this.c.hashCode()) * 31;
        o54 o54Var2 = this.d;
        return iHashCode2 + (o54Var2 != null ? o54Var2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String strB = this.a.b();
        y45.i(strB, "packageName.asString()");
        sb.append(g1a.M(strB, '.', IOUtils.DIR_SEPARATOR_UNIX, false, 4, null));
        sb.append("/");
        o54 o54Var = this.b;
        if (o54Var != null) {
            sb.append(o54Var);
            sb.append(Consts.DOT);
        }
        sb.append(this.c);
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public pq0(o54 o54Var, o54 o54Var2, by6 by6Var, o54 o54Var3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(o54Var, o54Var2, by6Var, (i & 8) != 0 ? null : o54Var3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public pq0(o54 o54Var, by6 by6Var) {
        this(o54Var, null, by6Var, null, 8, null);
        y45.j(o54Var, "packageName");
        y45.j(by6Var, "callableName");
    }
}
