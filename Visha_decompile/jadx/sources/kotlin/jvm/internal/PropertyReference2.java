package kotlin.jvm.internal;

import defpackage.be5;
import defpackage.df5;
import defpackage.xq8;

public abstract class PropertyReference2 extends PropertyReference implements df5 {
    public PropertyReference2() {
    }

    @Override
    public be5 computeReflected() {
        return xq8.k(this);
    }

    public abstract Object get(Object obj, Object obj2);

    @Override
    public Object getDelegate(Object obj, Object obj2) {
        return ((df5) getReflected()).getDelegate(obj, obj2);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return get(obj, obj2);
    }

    public PropertyReference2(Class cls, String str, String str2, int i) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i);
    }

    @Override
    public df5.a getGetter() {
        return ((df5) getReflected()).getGetter();
    }
}
