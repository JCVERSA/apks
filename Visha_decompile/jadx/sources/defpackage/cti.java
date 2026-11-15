package defpackage;

import java.util.List;

public final class cti {
    public static final List a(Object obj, long j) {
        ysi ysiVar = (ysi) vui.p(obj, j);
        if (ysiVar.zzc()) {
            return ysiVar;
        }
        int size = ysiVar.size();
        ysi ysiVarE = ysiVar.e(size == 0 ? 10 : size + size);
        vui.D(obj, j, ysiVarE);
        return ysiVarE;
    }
}
