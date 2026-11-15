package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import org.mozilla.javascript.ES6Iterator;

public final class cq8 extends qp8 implements l75 {
    public final Enum c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cq8(by6 by6Var, Enum r3) {
        super(by6Var, null);
        y45.j(r3, ES6Iterator.VALUE_PROPERTY);
        this.c = r3;
    }

    @Override
    public xw0 d() {
        Class<?> enclosingClass = this.c.getClass();
        if (!enclosingClass.isEnum()) {
            enclosingClass = enclosingClass.getEnclosingClass();
        }
        y45.i(enclosingClass, "enumClass");
        return ReflectClassUtilKt.a(enclosingClass);
    }

    @Override
    public by6 getEntryName() {
        return by6.g(this.c.name());
    }
}
