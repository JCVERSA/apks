package kotlin.collections;

import defpackage.q93;
import defpackage.tc9;
import defpackage.y45;
import java.util.Iterator;

public abstract class SlidingWindowKt {
    public static final void a(int i, int i2) {
        String str;
        if (i <= 0 || i2 <= 0) {
            if (i != i2) {
                str = "Both size " + i + " and step " + i2 + " must be greater than zero.";
            } else {
                str = "size " + i + " must be greater than zero.";
            }
            throw new IllegalArgumentException(str.toString());
        }
    }

    public static final Iterator b(Iterator it, int i, int i2, boolean z, boolean z2) {
        y45.j(it, "iterator");
        return !it.hasNext() ? q93.b : tc9.a(new SlidingWindowKt$windowedIterator$1(i, i2, it, z2, z, null));
    }
}
