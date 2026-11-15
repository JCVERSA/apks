package kotlin.sequences;

import java.util.HashSet;
import java.util.Iterator;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

final class a extends AbstractIterator {

    private final Iterator f64505c;

    private final Function1 f64506d;

    private final HashSet f64507e;

    public a(Iterator source, Function1 keySelector) {
        Intrinsics.h(source, "source");
        Intrinsics.h(keySelector, "keySelector");
        this.f64505c = source;
        this.f64506d = keySelector;
        this.f64507e = new HashSet();
    }

    @Override
    protected void a() {
        while (this.f64505c.hasNext()) {
            Object next = this.f64505c.next();
            if (this.f64507e.add(this.f64506d.invoke(next))) {
                e(next);
                return;
            }
        }
        c();
    }
}
