package kotlin.jvm.internal;

import defpackage.be5;
import defpackage.cf5;
import defpackage.xq8;

public abstract class PropertyReference1 extends PropertyReference implements cf5 {
    public PropertyReference1() {
    }

    @Override
    public be5 computeReflected() {
        return xq8.j(this);
    }

    public abstract Object get(Object obj);

    @Override
    public Object getDelegate(Object obj) {
        return ((cf5) getReflected()).getDelegate(obj);
    }

    @Override
    public Object invoke(Object obj) {
        return get(obj);
    }

    public PropertyReference1(Object obj) {
        super(obj);
    }

    @Override
    public cf5.a getGetter() {
        return ((cf5) getReflected()).getGetter();
    }

    public PropertyReference1(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
