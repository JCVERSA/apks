package z3;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements g {

    public static final C0953a f76609c = new C0953a(null);

    private final String f76610a;

    private final Object[] f76611b;

    public static final class C0953a {
        public C0953a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a(f fVar, int i10, Object obj) {
            if (obj == null) {
                fVar.g(i10);
                return;
            }
            if (obj instanceof byte[]) {
                fVar.k0(i10, (byte[]) obj);
                return;
            }
            if (obj instanceof Float) {
                fVar.a(i10, ((Number) obj).floatValue());
                return;
            }
            if (obj instanceof Double) {
                fVar.a(i10, ((Number) obj).doubleValue());
                return;
            }
            if (obj instanceof Long) {
                fVar.c(i10, ((Number) obj).longValue());
                return;
            }
            if (obj instanceof Integer) {
                fVar.c(i10, ((Number) obj).intValue());
                return;
            }
            if (obj instanceof Short) {
                fVar.c(i10, ((Number) obj).shortValue());
                return;
            }
            if (obj instanceof Byte) {
                fVar.c(i10, ((Number) obj).byteValue());
                return;
            }
            if (obj instanceof String) {
                fVar.V(i10, (String) obj);
                return;
            }
            if (obj instanceof Boolean) {
                fVar.c(i10, ((Boolean) obj).booleanValue() ? 1L : 0L);
                return;
            }
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i10 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
        }

        public final void b(f statement, Object[] objArr) {
            Intrinsics.h(statement, "statement");
            if (objArr == null) {
                return;
            }
            int length = objArr.length;
            int i10 = 0;
            while (i10 < length) {
                Object obj = objArr[i10];
                i10++;
                a(statement, i10, obj);
            }
        }

        private C0953a() {
        }
    }

    public a(String query, Object[] objArr) {
        Intrinsics.h(query, "query");
        this.f76610a = query;
        this.f76611b = objArr;
    }

    @Override
    public void b(f statement) {
        Intrinsics.h(statement, "statement");
        f76609c.b(statement, this.f76611b);
    }

    @Override
    public String d() {
        return this.f76610a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(String query) {
        this(query, null);
        Intrinsics.h(query, "query");
    }
}
