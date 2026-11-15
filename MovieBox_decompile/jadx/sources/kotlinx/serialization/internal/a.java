package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class a implements kotlinx.serialization.b {
    public a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static void i(a aVar, sy.c cVar, int i10, Object obj, boolean z10, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
        }
        if ((i11 & 8) != 0) {
            z10 = true;
        }
        aVar.h(cVar, i10, obj, z10);
    }

    private final int j(sy.c cVar, Object obj) {
        int iK = cVar.k(getDescriptor());
        c(obj, iK);
        return iK;
    }

    protected abstract Object a();

    protected abstract int b(Object obj);

    protected abstract void c(Object obj, int i10);

    protected abstract Iterator d(Object obj);

    @Override
    public Object deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return f(decoder, null);
    }

    protected abstract int e(Object obj);

    public final Object f(sy.e decoder, Object obj) {
        Object objA;
        Intrinsics.h(decoder, "decoder");
        if (obj == null || (objA = k(obj)) == null) {
            objA = a();
        }
        int iB = b(objA);
        sy.c cVarB = decoder.b(getDescriptor());
        if (!cVarB.p()) {
            while (true) {
                int iO = cVarB.o(getDescriptor());
                if (iO == -1) {
                    break;
                }
                i(this, cVarB, iB + iO, objA, false, 8, null);
            }
        } else {
            g(cVarB, objA, iB, j(cVarB, objA));
        }
        cVarB.c(getDescriptor());
        return l(objA);
    }

    protected abstract void g(sy.c cVar, Object obj, int i10, int i11);

    protected abstract void h(sy.c cVar, int i10, Object obj, boolean z10);

    protected abstract Object k(Object obj);

    protected abstract Object l(Object obj);

    private a() {
    }
}
