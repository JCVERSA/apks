package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty1;

public abstract class MutablePropertyReference1 extends MutablePropertyReference implements KMutableProperty1 {
    public MutablePropertyReference1() {
    }

    @Override
    protected KCallable computeReflected() {
        return Reflection.f(this);
    }

    public abstract Object get(Object obj);

    @Override
    @SinceKotlin
    public Object getDelegate(Object obj) {
        return ((KMutableProperty1) getReflected()).getDelegate(obj);
    }

    @Override
    public Object invoke(Object obj) {
        return get(obj);
    }

    public abstract void set(Object obj, Object obj2);

    @SinceKotlin
    public MutablePropertyReference1(Object obj) {
        super(obj);
    }

    @Override
    public KProperty1.Getter getGetter() {
        return ((KMutableProperty1) getReflected()).getGetter();
    }

    @Override
    public KMutableProperty1.Setter getSetter() {
        return ((KMutableProperty1) getReflected()).getSetter();
    }

    @SinceKotlin
    public MutablePropertyReference1(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
