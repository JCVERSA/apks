package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt;

public class fd implements InvocationHandler {
    public final Class b;
    public final Map c;
    public final yi5 d;
    public final yi5 e;
    public final List f;

    public fd(Class cls, Map map, yi5 yi5Var, yi5 yi5Var2, List list) {
        this.b = cls;
        this.c = map;
        this.d = yi5Var;
        this.e = yi5Var2;
        this.f = list;
    }

    @Override
    public Object invoke(Object obj, Method method, Object[] objArr) {
        return AnnotationConstructorCallerKt.i(this.b, this.c, this.d, this.e, this.f, obj, method, objArr);
    }
}
