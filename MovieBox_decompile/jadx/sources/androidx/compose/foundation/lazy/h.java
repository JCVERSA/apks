package androidx.compose.foundation.lazy;

import java.util.List;
import kotlin.collections.CollectionsKt;

public abstract class h {
    public static final n a(List list, o oVar, List list2, int i10, int i11, int i12) {
        int index = ((n) CollectionsKt.i0(list)).getIndex();
        int size = list2.size();
        int iIntValue = -1;
        int iIntValue2 = -1;
        int i13 = 0;
        while (i13 < size && ((Number) list2.get(i13)).intValue() <= index) {
            iIntValue2 = ((Number) list2.get(i13)).intValue();
            i13++;
            iIntValue = ((Number) ((i13 < 0 || i13 > CollectionsKt.n(list2)) ? -1 : list2.get(i13))).intValue();
        }
        int size2 = list.size();
        int iG = Integer.MIN_VALUE;
        int iG2 = Integer.MIN_VALUE;
        int i14 = -1;
        for (int i15 = 0; i15 < size2; i15++) {
            n nVar = (n) list.get(i15);
            if (nVar.getIndex() == iIntValue2) {
                iG = nVar.g();
                i14 = i15;
            } else if (nVar.getIndex() == iIntValue) {
                iG2 = nVar.g();
            }
        }
        if (iIntValue2 == -1) {
            return null;
        }
        n nVarE = o.e(oVar, iIntValue2, 0L, 2, null);
        nVarE.c(true);
        int iMax = iG != Integer.MIN_VALUE ? Math.max(-i10, iG) : -i10;
        if (iG2 != Integer.MIN_VALUE) {
            iMax = Math.min(iMax, iG2 - nVarE.getSize());
        }
        nVarE.r(iMax, i11, i12);
        if (i14 != -1) {
            list.set(i14, nVarE);
        } else {
            list.add(0, nVarE);
        }
        return nVarE;
    }
}
