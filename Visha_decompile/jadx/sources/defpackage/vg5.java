package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;

public interface vg5 extends dh5 {

    public static abstract class a {

        public static final class C0453a extends a {
            public final c a;
            public final byte[] b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0453a(c cVar, byte[] bArr) {
                super(null);
                y45.j(cVar, "kotlinJvmBinaryClass");
                this.a = cVar;
                this.b = bArr;
            }

            public final c b() {
                return this.a;
            }

            public C0453a(c cVar, byte[] bArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(cVar, (i & 2) != 0 ? null : bArr);
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            C0453a c0453a = this instanceof C0453a ? (C0453a) this : null;
            if (c0453a != null) {
                return c0453a.b();
            }
            return null;
        }

        public a() {
        }
    }

    a b(s65 s65Var, jd5 jd5Var);

    a c(xw0 xw0Var, jd5 jd5Var);
}
