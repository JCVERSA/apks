package defpackage;

import java.util.List;

public abstract class ob5 {
    public static final pnb a = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return ob5.g(obj);
        }
    };
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return ob5.h((String) obj);
        }
    };
    public static final hm5 c = new hm5() {
        @Override
        public final boolean a(List list) {
            return ob5.i(list);
        }
    };
    public static final e74 d = new e74() {
        @Override
        public final Object invoke(Object obj) {
            return ob5.j(obj);
        }
    };

    public static pnb e() {
        return a;
    }

    public static e74 f() {
        return d;
    }

    public static boolean g(Object obj) {
        return true;
    }

    public static boolean h(String str) {
        return true;
    }

    public static boolean i(List list) {
        return true;
    }

    public static Object j(Object obj) {
        return obj;
    }
}
