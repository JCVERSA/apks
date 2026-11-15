package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;

public abstract class MutablePropertyReference extends PropertyReference implements KMutableProperty {
    public MutablePropertyReference() {
    }

    @Override
    public abstract KProperty.Getter getGetter();

    public abstract KMutableProperty.Setter getSetter();

    @SinceKotlin
    public MutablePropertyReference(Object obj) {
        super(obj);
    }

    @SinceKotlin
    public MutablePropertyReference(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
