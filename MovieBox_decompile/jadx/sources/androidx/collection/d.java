package androidx.collection;

import java.util.ConcurrentModificationException;
import kotlin.jvm.internal.Intrinsics;

public abstract class d {
    public static final void a(b bVar, int i10) {
        Intrinsics.h(bVar, "<this>");
        bVar.m(new int[i10]);
        bVar.l(new Object[i10]);
    }

    public static final int b(b bVar, int i10) {
        Intrinsics.h(bVar, "<this>");
        try {
            return n.a.a(bVar.e(), bVar.i(), i10);
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static final int c(b bVar, Object obj, int i10) {
        Intrinsics.h(bVar, "<this>");
        int i11 = bVar.i();
        if (i11 == 0) {
            return -1;
        }
        int iB = b(bVar, i10);
        if (iB < 0 || Intrinsics.c(obj, bVar.c()[iB])) {
            return iB;
        }
        int i12 = iB + 1;
        while (i12 < i11 && bVar.e()[i12] == i10) {
            if (Intrinsics.c(obj, bVar.c()[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iB - 1; i13 >= 0 && bVar.e()[i13] == i10; i13--) {
            if (Intrinsics.c(obj, bVar.c()[i13])) {
                return i13;
            }
        }
        return ~i12;
    }

    public static final int d(b bVar) {
        Intrinsics.h(bVar, "<this>");
        return c(bVar, null, 0);
    }
}
