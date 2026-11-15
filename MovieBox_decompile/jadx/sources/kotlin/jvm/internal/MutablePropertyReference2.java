package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty2;

public abstract class MutablePropertyReference2 extends MutablePropertyReference implements KMutableProperty2 {
    public MutablePropertyReference2() {
    }

    @Override
    protected KCallable computeReflected() {
        return Reflection.g(this);
    }

    public abstract Object get(Object obj, Object obj2);

    @Override
    @SinceKotlin
    public Object getDelegate(Object obj, Object obj2) {
        return ((KMutableProperty2) getReflected()).getDelegate(obj, obj2);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return get(obj, obj2);
    }

    public abstract void set(Object obj, Object obj2, Object obj3);

    @SinceKotlin
    public MutablePropertyReference2(Class cls, String str, String str2, int i10) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i10);
    }

    @Override
    public KProperty2.Getter getGetter() {
        return ((KMutableProperty2) getReflected()).getGetter();
    }

    @Override
    public KMutableProperty2.Setter getSetter() {
        return ((KMutableProperty2) getReflected()).getSetter();
    }
}
