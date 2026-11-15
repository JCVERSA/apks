package defpackage;

import java.util.Collections;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference2;
import kotlin.jvm.internal.PropertyReference0;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference2;

public abstract class xq8 {
    public static final br8 a;
    public static final de5[] b;

    static {
        br8 br8Var = null;
        try {
            br8Var = (br8) cr8.class.newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (br8Var == null) {
            br8Var = new br8();
        }
        a = br8Var;
        b = new de5[0];
    }

    public static le5 a(FunctionReference functionReference) {
        return a.a(functionReference);
    }

    public static de5 b(Class cls) {
        return a.b(cls);
    }

    public static ke5 c(Class cls) {
        return a.c(cls, "");
    }

    public static ke5 d(Class cls, String str) {
        return a.c(cls, str);
    }

    public static we5 e(MutablePropertyReference0 mutablePropertyReference0) {
        return a.d(mutablePropertyReference0);
    }

    public static xe5 f(MutablePropertyReference1 mutablePropertyReference1) {
        return a.e(mutablePropertyReference1);
    }

    public static ye5 g(MutablePropertyReference2 mutablePropertyReference2) {
        return a.f(mutablePropertyReference2);
    }

    public static ff5 h(Class cls) {
        return a.l(b(cls), Collections.emptyList(), true);
    }

    public static bf5 i(PropertyReference0 propertyReference0) {
        return a.g(propertyReference0);
    }

    public static cf5 j(PropertyReference1 propertyReference1) {
        return a.h(propertyReference1);
    }

    public static df5 k(PropertyReference2 propertyReference2) {
        return a.i(propertyReference2);
    }

    public static String l(g84 g84Var) {
        return a.j(g84Var);
    }

    public static String m(Lambda lambda) {
        return a.k(lambda);
    }
}
