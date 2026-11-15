package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.WriteMode;

public abstract class u95 implements lz9 {
    public static final a d = new a(null);
    public final da5 a;
    public final td9 b;
    public final kotlinx.serialization.json.internal.a c;

    public static final class a extends u95 {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
            super(new da5(false, false, false, false, false, false, null, false, false, null, false, false, null, 8191, null), ud9.a(), null);
        }
    }

    public u95(da5 da5Var, td9 td9Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(da5Var, td9Var);
    }

    @Override
    public td9 a() {
        return this.b;
    }

    @Override
    public final String b(nd9 nd9Var, Object obj) {
        y45.j(nd9Var, "serializer");
        dc5 dc5Var = new dc5();
        try {
            yb5.b(this, dc5Var, nd9Var, obj);
            return dc5Var.toString();
        } finally {
            dc5Var.g();
        }
    }

    public final Object c(k92 k92Var, String str) {
        y45.j(k92Var, "deserializer");
        y45.j(str, "string");
        oz9 oz9Var = new oz9(str);
        Object objB = new xy9(this, WriteMode.OBJ, oz9Var, k92Var.getDescriptor(), null).B(k92Var);
        oz9Var.w();
        return objB;
    }

    public final da5 d() {
        return this.a;
    }

    public final kotlinx.serialization.json.internal.a e() {
        return this.c;
    }

    public u95(da5 da5Var, td9 td9Var) {
        this.a = da5Var;
        this.b = td9Var;
        this.c = new kotlinx.serialization.json.internal.a();
    }
}
