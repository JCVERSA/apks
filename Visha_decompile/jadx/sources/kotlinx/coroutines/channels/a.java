package kotlinx.coroutines.channels;

import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {
    public static final b b = new b(null);
    public static final c c = new c();
    public final Object a;

    public static final class C0413a extends c {
        public final Throwable a;

        public C0413a(Throwable th) {
            this.a = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof C0413a) && y45.e(this.a, ((C0413a) obj).a);
        }

        public int hashCode() {
            Throwable th = this.a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override
        public String toString() {
            return "Closed(" + this.a + ')';
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Object a(Throwable th) {
            return a.c(new C0413a(th));
        }

        public final Object b() {
            return a.c(a.c);
        }

        public final Object c(Object obj) {
            return a.c(obj);
        }

        public b() {
        }
    }

    public static class c {
        public String toString() {
            return "Failed";
        }
    }

    public a(Object obj) {
        this.a = obj;
    }

    public static final a b(Object obj) {
        return new a(obj);
    }

    public static Object c(Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof a) && y45.e(obj, ((a) obj2).k());
    }

    public static final Throwable e(Object obj) {
        C0413a c0413a = obj instanceof C0413a ? (C0413a) obj : null;
        if (c0413a != null) {
            return c0413a.a;
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
        return obj instanceof C0413a;
    }

    public static final boolean i(Object obj) {
        return !(obj instanceof c);
    }

    public static String j(Object obj) {
        if (obj instanceof C0413a) {
            return ((C0413a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.a, obj);
    }

    public int hashCode() {
        return g(this.a);
    }

    public final Object k() {
        return this.a;
    }

    public String toString() {
        return j(this.a);
    }
}
