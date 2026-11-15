package kotlin.jvm.internal;

import defpackage.be5;
import defpackage.bf5;
import defpackage.xq8;

public abstract class PropertyReference0 extends PropertyReference implements bf5 {
    public PropertyReference0() {
    }

    @Override
    public be5 computeReflected() {
        return xq8.i(this);
    }

    public abstract Object get();

    @Override
    public Object getDelegate() {
        return ((bf5) getReflected()).getDelegate();
    }

    @Override
    public Object invoke() {
        return get();
    }

    public PropertyReference0(Object obj) {
        super(obj);
    }

    @Override
    public bf5.a getGetter() {
        return ((bf5) getReflected()).getGetter();
    }

    public PropertyReference0(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
