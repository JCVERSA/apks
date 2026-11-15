package kotlin.jvm.internal;

import defpackage.be5;
import defpackage.bf5;
import defpackage.we5;
import defpackage.xq8;

public abstract class MutablePropertyReference0 extends MutablePropertyReference implements we5 {
    public MutablePropertyReference0() {
    }

    @Override
    public be5 computeReflected() {
        return xq8.e(this);
    }

    public abstract Object get();

    @Override
    public Object getDelegate() {
        return ((we5) getReflected()).getDelegate();
    }

    @Override
    public Object invoke() {
        return get();
    }

    public abstract void set(Object obj);

    public MutablePropertyReference0(Object obj) {
        super(obj);
    }

    @Override
    public bf5.a getGetter() {
        return ((we5) getReflected()).getGetter();
    }

    @Override
    public we5.a getSetter() {
        return ((we5) getReflected()).getSetter();
    }

    public MutablePropertyReference0(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
