package kotlinx.serialization.internal;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

public abstract class x extends w {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(kotlinx.serialization.b element) {
        super(element, null);
        Intrinsics.h(element, "element");
    }

    @Override
    public Iterator d(Collection collection) {
        Intrinsics.h(collection, "<this>");
        return collection.iterator();
    }

    @Override
    public int e(Collection collection) {
        Intrinsics.h(collection, "<this>");
        return collection.size();
    }
}
