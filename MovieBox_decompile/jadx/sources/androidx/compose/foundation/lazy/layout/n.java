package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.internal.Intrinsics;

public abstract class n {
    public static final int a(m mVar, Object obj, int i10) {
        int iA;
        return (obj == null || mVar.getItemCount() == 0 || (i10 < mVar.getItemCount() && Intrinsics.c(obj, mVar.b(i10))) || (iA = mVar.a(obj)) == -1) ? i10 : iA;
    }
}
