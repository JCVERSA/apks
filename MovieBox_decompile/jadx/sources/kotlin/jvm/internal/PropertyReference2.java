package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty2;

public abstract class PropertyReference2 extends PropertyReference implements KProperty2 {
    public PropertyReference2() {
    }

    @Override
    protected KCallable computeReflected() {
        return Reflection.j(this);
    }

    public abstract Object get(Object obj, Object obj2);

    @Override
    @SinceKotlin
    public Object getDelegate(Object obj, Object obj2) {
        return ((KProperty2) getReflected()).getDelegate(obj, obj2);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return get(obj, obj2);
    }

    @SinceKotlin
    public PropertyReference2(Class cls, String str, String str2, int i10) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i10);
    }

    @Override
    public KProperty2.Getter getGetter() {
        return ((KProperty2) getReflected()).getGetter();
    }
}
