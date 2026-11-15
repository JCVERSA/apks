package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public abstract class qd5 {
    public static final b a = new b(null);
    public static final d b = new d(JvmPrimitiveType.BOOLEAN);
    public static final d c = new d(JvmPrimitiveType.CHAR);
    public static final d d = new d(JvmPrimitiveType.BYTE);
    public static final d e = new d(JvmPrimitiveType.SHORT);
    public static final d f = new d(JvmPrimitiveType.INT);
    public static final d g = new d(JvmPrimitiveType.FLOAT);
    public static final d h = new d(JvmPrimitiveType.LONG);
    public static final d i = new d(JvmPrimitiveType.DOUBLE);

    public static final class a extends qd5 {
        public final qd5 j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(qd5 qd5Var) {
            super(null);
            y45.j(qd5Var, "elementType");
            this.j = qd5Var;
        }

        public final qd5 i() {
            return this.j;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return qd5.b;
        }

        public final d b() {
            return qd5.d;
        }

        public final d c() {
            return qd5.c;
        }

        public final d d() {
            return qd5.i;
        }

        public final d e() {
            return qd5.g;
        }

        public final d f() {
            return qd5.f;
        }

        public final d g() {
            return qd5.h;
        }

        public final d h() {
            return qd5.e;
        }

        public b() {
        }
    }

    public static final class c extends qd5 {
        public final String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str) {
            super(null);
            y45.j(str, "internalName");
            this.j = str;
        }

        public final String i() {
            return this.j;
        }
    }

    public static final class d extends qd5 {
        public final JvmPrimitiveType j;

        public d(JvmPrimitiveType jvmPrimitiveType) {
            super(null);
            this.j = jvmPrimitiveType;
        }

        public final JvmPrimitiveType i() {
            return this.j;
        }
    }

    public qd5(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public String toString() {
        return sd5.a.e(this);
    }

    public qd5() {
    }
}
