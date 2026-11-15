package kotlin.jvm.internal;

import defpackage.af5;
import defpackage.ve5;

public abstract class MutablePropertyReference extends PropertyReference implements ve5 {
    public MutablePropertyReference() {
    }

    @Override
    public abstract af5.b getGetter();

    @Override
    public abstract ve5.a getSetter();

    public MutablePropertyReference(Object obj) {
        super(obj);
    }

    public MutablePropertyReference(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
