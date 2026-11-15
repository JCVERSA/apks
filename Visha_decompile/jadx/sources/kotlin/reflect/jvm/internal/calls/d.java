package kotlin.reflect.jvm.internal.calls;

import defpackage.fi;
import defpackage.jk0;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class d implements kotlin.reflect.jvm.internal.calls.a {
    public final Method a;
    public final List b;
    public final Type c;

    public static final class a extends d implements jk0 {
        public final Object d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Method method, Object obj) {
            super(method, y71.k(), null);
            y45.j(method, "unboxMethod");
            this.d = obj;
        }

        @Override
        public Object call(Object[] objArr) {
            y45.j(objArr, "args");
            d(objArr);
            return c(this.d, objArr);
        }
    }

    public static final class b extends d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Method method) {
            super(method, x71.e(method.getDeclaringClass()), null);
            y45.j(method, "unboxMethod");
        }

        @Override
        public Object call(Object[] objArr) {
            y45.j(objArr, "args");
            d(objArr);
            Object obj = objArr[0];
            kotlin.reflect.jvm.internal.calls.b.d dVar = kotlin.reflect.jvm.internal.calls.b.e;
            return c(obj, objArr.length <= 1 ? new Object[0] : fi.s(objArr, 1, objArr.length));
        }
    }

    public d(Method method, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(method, list);
    }

    @Override
    public final List a() {
        return this.b;
    }

    public final Object c(Object obj, Object[] objArr) {
        y45.j(objArr, "args");
        return this.a.invoke(obj, Arrays.copyOf(objArr, objArr.length));
    }

    public void d(Object[] objArr) {
        kotlin.reflect.jvm.internal.calls.a.C0371a.a(this, objArr);
    }

    @Override
    public final Method b() {
        return null;
    }

    @Override
    public final Type getReturnType() {
        return this.c;
    }

    public d(Method method, List list) {
        this.a = method;
        this.b = list;
        Class<?> returnType = method.getReturnType();
        y45.i(returnType, "unboxMethod.returnType");
        this.c = returnType;
    }
}
