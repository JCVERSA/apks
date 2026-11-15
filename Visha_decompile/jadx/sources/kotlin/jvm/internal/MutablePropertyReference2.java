package kotlin.jvm.internal;

import defpackage.be5;
import defpackage.df5;
import defpackage.xq8;
import defpackage.ye5;

public abstract class MutablePropertyReference2 extends MutablePropertyReference implements ye5 {
    public MutablePropertyReference2() {
    }

    @Override
    public be5 computeReflected() {
        return xq8.g(this);
    }

    public abstract Object get(Object obj, Object obj2);

    @Override
    public Object getDelegate(Object obj, Object obj2) {
        return ((ye5) getReflected()).getDelegate(obj, obj2);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return get(obj, obj2);
    }

    public abstract void set(Object obj, Object obj2, Object obj3);

    public MutablePropertyReference2(Class cls, String str, String str2, int i) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i);
    }

    @Override
    public df5.a getGetter() {
        return ((ye5) getReflected()).getGetter();
    }

    @Override
    public ye5.a getSetter() {
        return ((ye5) getReflected()).getSetter();
    }
}
