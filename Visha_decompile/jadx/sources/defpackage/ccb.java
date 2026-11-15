package defpackage;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class ccb {
    public static Collection a(Object obj) {
        if ((obj instanceof qe5) && !(obj instanceof re5)) {
            s(obj, "kotlin.collections.MutableCollection");
        }
        return g(obj);
    }

    public static Iterable b(Object obj) {
        if ((obj instanceof qe5) && !(obj instanceof se5)) {
            s(obj, "kotlin.collections.MutableIterable");
        }
        return h(obj);
    }

    public static List c(Object obj) {
        if ((obj instanceof qe5) && !(obj instanceof te5)) {
            s(obj, "kotlin.collections.MutableList");
        }
        return i(obj);
    }

    public static Map d(Object obj) {
        if ((obj instanceof qe5) && !(obj instanceof ue5)) {
            s(obj, "kotlin.collections.MutableMap");
        }
        return j(obj);
    }

    public static Set e(Object obj) {
        if ((obj instanceof qe5) && !(obj instanceof ze5)) {
            s(obj, "kotlin.collections.MutableSet");
        }
        return k(obj);
    }

    public static Object f(Object obj, int i) {
        if (obj != null && !m(obj, i)) {
            s(obj, "kotlin.jvm.functions.Function" + i);
        }
        return obj;
    }

    public static Collection g(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e) {
            throw r(e);
        }
    }

    public static Iterable h(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e) {
            throw r(e);
        }
    }

    public static List i(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e) {
            throw r(e);
        }
    }

    public static Map j(Object obj) {
        try {
            return (Map) obj;
        } catch (ClassCastException e) {
            throw r(e);
        }
    }

    public static Set k(Object obj) {
        try {
            return (Set) obj;
        } catch (ClassCastException e) {
            throw r(e);
        }
    }

    public static int l(Object obj) {
        if (obj instanceof g84) {
            return ((g84) obj).getArity();
        }
        if (obj instanceof c74) {
            return 0;
        }
        if (obj instanceof e74) {
            return 1;
        }
        if (obj instanceof s74) {
            return 2;
        }
        if (obj instanceof u74) {
            return 3;
        }
        if (obj instanceof w74) {
            return 4;
        }
        if (obj instanceof y74) {
            return 5;
        }
        if (obj instanceof z74) {
            return 6;
        }
        if (obj instanceof a84) {
            return 7;
        }
        if (obj instanceof b84) {
            return 8;
        }
        if (obj instanceof c84) {
            return 9;
        }
        if (obj instanceof d74) {
            return 10;
        }
        if (obj instanceof f74) {
            return 11;
        }
        if (obj instanceof g74) {
            return 12;
        }
        if (obj instanceof h74) {
            return 13;
        }
        if (obj instanceof i74) {
            return 14;
        }
        if (obj instanceof j74) {
            return 15;
        }
        if (obj instanceof k74) {
            return 16;
        }
        if (obj instanceof l74) {
            return 17;
        }
        if (obj instanceof m74) {
            return 18;
        }
        if (obj instanceof n74) {
            return 19;
        }
        if (obj instanceof p74) {
            return 20;
        }
        if (obj instanceof q74) {
            return 21;
        }
        return obj instanceof r74 ? 22 : -1;
    }

    public static boolean m(Object obj, int i) {
        return (obj instanceof x74) && l(obj) == i;
    }

    public static boolean n(Object obj) {
        return (obj instanceof List) && (!(obj instanceof qe5) || (obj instanceof te5));
    }

    public static boolean o(Object obj) {
        return (obj instanceof Map) && (!(obj instanceof qe5) || (obj instanceof ue5));
    }

    public static boolean p(Object obj) {
        return (obj instanceof Map.Entry) && (!(obj instanceof qe5) || (obj instanceof ue5.a));
    }

    public static Throwable q(Throwable th) {
        return y45.r(th, ccb.class.getName());
    }

    public static ClassCastException r(ClassCastException classCastException) {
        throw ((ClassCastException) q(classCastException));
    }

    public static void s(Object obj, String str) {
        t((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    public static void t(String str) {
        throw r(new ClassCastException(str));
    }
}
