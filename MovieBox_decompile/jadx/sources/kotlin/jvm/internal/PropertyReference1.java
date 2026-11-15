package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty1;

public abstract class PropertyReference1 extends PropertyReference implements KProperty1 {
    public PropertyReference1() {
    }

    @Override
    protected KCallable computeReflected() {
        return Reflection.i(this);
    }

    public abstract Object get(Object obj);

    @Override
    @SinceKotlin
    public Object getDelegate(Object obj) {
        return ((KProperty1) getReflected()).getDelegate(obj);
    }

    @Override
    public Object invoke(Object obj) {
        return get(obj);
    }

    @SinceKotlin
    public PropertyReference1(Object obj) {
        super(obj);
    }

    @Override
    public KProperty1.Getter getGetter() {
        return ((KProperty1) getReflected()).getGetter();
    }

    @SinceKotlin
    public PropertyReference1(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
