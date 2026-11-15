package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Array;

public abstract class di {
    public static final Object[] a(Object[] objArr, int i) {
        y45.j(objArr, TypedValues.Custom.S_REFERENCE);
        Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i);
        y45.h(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (Object[]) objNewInstance;
    }

    public static final void b(int i, int i2) {
        if (i <= i2) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i + ") is greater than size (" + i2 + ").");
    }
}
