package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty0;

public abstract class PropertyReference0 extends PropertyReference implements KProperty0 {
    public PropertyReference0() {
    }

    @Override
    protected KCallable computeReflected() {
        return Reflection.h(this);
    }

    public abstract Object get();

    @Override
    @SinceKotlin
    public Object getDelegate() {
        return ((KProperty0) getReflected()).getDelegate();
    }

    @Override
    public Object invoke() {
        return get();
    }

    @SinceKotlin
    public PropertyReference0(Object obj) {
        super(obj);
    }

    @Override
    public KProperty0.Getter getGetter() {
        return ((KProperty0) getReflected()).getGetter();
    }

    @SinceKotlin
    public PropertyReference0(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
