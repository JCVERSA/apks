package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

public abstract class jd3 extends pf1 {
    public static final a b = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final jd3 a(String str) {
            y45.j(str, "message");
            return new b(str);
        }

        public a() {
        }
    }

    public static final class b extends jd3 {
        public final String c;

        public b(String str) {
            y45.j(str, "message");
            this.c = str;
        }

        @Override
        public gd3 a(qq6 qq6Var) {
            y45.j(qq6Var, "module");
            return id3.d(ErrorTypeKind.ERROR_CONSTANT_VALUE, this.c);
        }

        @Override
        public String toString() {
            return this.c;
        }
    }

    public jd3() {
        super(zfb.a);
    }

    @Override
    public zfb b() {
        throw new UnsupportedOperationException();
    }
}
