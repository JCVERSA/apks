package kotlinx.coroutines.channels;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final b f64724b = new b(null);

    private static final c f64725c = new c();

    private final Object f64726a;

    public static final class a extends c {

        public final Throwable f64727a;

        public a(Throwable th2) {
            this.f64727a = th2;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && Intrinsics.c(this.f64727a, ((a) obj).f64727a);
        }

        public int hashCode() {
            Throwable th2 = this.f64727a;
            if (th2 != null) {
                return th2.hashCode();
            }
            return 0;
        }

        @Override
        public String toString() {
            return "Closed(" + this.f64727a + ')';
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Object a(Throwable th2) {
            return h.c(new a(th2));
        }

        public final Object b() {
            return h.c(h.f64725c);
        }

        public final Object c(Object obj) {
            return h.c(obj);
        }

        private b() {
        }
    }

    public static class c {
        public String toString() {
            return "Failed";
        }
    }

    private h(Object obj) {
        this.f64726a = obj;
    }

    public static final h b(Object obj) {
        return new h(obj);
    }

    public static Object c(Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof h) && Intrinsics.c(obj, ((h) obj2).k());
    }

    public static final Throwable e(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar != null) {
            return aVar.f64727a;
        }
        return null;
    }

    public static final Object f(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return obj instanceof a;
    }

    public static final boolean i(Object obj) {
        return !(obj instanceof c);
    }

    public static String j(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f64726a, obj);
    }

    public int hashCode() {
        return g(this.f64726a);
    }

    public final Object k() {
        return this.f64726a;
    }

    public String toString() {
        return j(this.f64726a);
    }
}
