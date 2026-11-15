package androidx.compose.ui.text;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

public abstract class i {
    public static final int a(List list, int i10) {
        byte b10;
        int size = list.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            m mVar = (m) list.get(i12);
            if (mVar.f() > i10) {
                b10 = 1;
            } else {
                b10 = mVar.b() <= i10 ? (byte) -1 : (byte) 0;
            }
            if (b10 < 0) {
                i11 = i12 + 1;
            } else {
                if (b10 <= 0) {
                    return i12;
                }
                size = i12 - 1;
            }
        }
        return -(i11 + 1);
    }

    public static final int b(List list, int i10) {
        byte b10;
        int size = list.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            m mVar = (m) list.get(i12);
            if (mVar.g() > i10) {
                b10 = 1;
            } else {
                b10 = mVar.c() <= i10 ? (byte) -1 : (byte) 0;
            }
            if (b10 < 0) {
                i11 = i12 + 1;
            } else {
                if (b10 <= 0) {
                    return i12;
                }
                size = i12 - 1;
            }
        }
        return -(i11 + 1);
    }

    public static final int c(List list, float f10) {
        byte b10;
        if (f10 <= 0.0f) {
            return 0;
        }
        if (f10 >= ((m) CollectionsKt.u0(list)).a()) {
            return CollectionsKt.n(list);
        }
        int size = list.size() - 1;
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) >>> 1;
            m mVar = (m) list.get(i11);
            if (mVar.h() > f10) {
                b10 = 1;
            } else {
                b10 = mVar.a() <= f10 ? (byte) -1 : (byte) 0;
            }
            if (b10 < 0) {
                i10 = i11 + 1;
            } else {
                if (b10 <= 0) {
                    return i11;
                }
                size = i11 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static final void d(List list, long j10, Function1 function1) {
        int size = list.size();
        for (int iA = a(list, b0.j(j10)); iA < size; iA++) {
            m mVar = (m) list.get(iA);
            if (mVar.f() >= b0.i(j10)) {
                return;
            }
            if (mVar.f() != mVar.b()) {
                function1.invoke(mVar);
            }
        }
    }
}
