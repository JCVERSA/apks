package kotlin.jvm.internal;

import defpackage.be5;
import defpackage.cf5;
import defpackage.xe5;
import defpackage.xq8;

public abstract class MutablePropertyReference1 extends MutablePropertyReference implements xe5 {
    public MutablePropertyReference1() {
    }

    @Override
    public be5 computeReflected() {
        return xq8.f(this);
    }

    public abstract Object get(Object obj);

    @Override
    public Object getDelegate(Object obj) {
        return ((xe5) getReflected()).getDelegate(obj);
    }

    @Override
    public Object invoke(Object obj) {
        return get(obj);
    }

    public abstract void set(Object obj, Object obj2);

    public MutablePropertyReference1(Object obj) {
        super(obj);
    }

    @Override
    public cf5.a getGetter() {
        return ((xe5) getReflected()).getGetter();
    }

    @Override
    public xe5.a getSetter() {
        return ((xe5) getReflected()).getSetter();
    }

    public MutablePropertyReference1(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
