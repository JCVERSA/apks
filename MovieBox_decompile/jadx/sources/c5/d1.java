package c5;

import b5.b2;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;

public class d1 implements z0, b2 {

    public static final d1 f16514a = new d1();

    @Override
    public int b() {
        return 12;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        o0Var.A(obj instanceof AtomicReference ? ((AtomicReference) obj).get() : ((Reference) obj).get());
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Object objL0 = aVar.l0(parameterizedType.getActualTypeArguments()[0]);
        Type rawType = parameterizedType.getRawType();
        if (rawType == AtomicReference.class) {
            return new AtomicReference(objL0);
        }
        if (rawType == WeakReference.class) {
            return new WeakReference(objL0);
        }
        if (rawType == SoftReference.class) {
            return new SoftReference(objL0);
        }
        throw new UnsupportedOperationException(rawType.toString());
    }
}
