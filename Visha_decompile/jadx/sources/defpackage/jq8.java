package defpackage;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public final class jq8 extends lq8 implements z75 {
    public final Class b;
    public final Collection c;
    public final boolean d;

    public jq8(Class cls) {
        y45.j(cls, "reflectType");
        this.b = cls;
        this.c = y71.k();
    }

    @Override
    public Class O() {
        return this.b;
    }

    @Override
    public Collection getAnnotations() {
        return this.c;
    }

    @Override
    public PrimitiveType getType() {
        if (y45.e(O(), Void.TYPE)) {
            return null;
        }
        return JvmPrimitiveType.get(O().getName()).getPrimitiveType();
    }

    @Override
    public boolean x() {
        return this.d;
    }
}
