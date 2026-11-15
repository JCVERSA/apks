package defpackage;

import com.google.android.gms.internal.ads.p7;
import com.google.android.gms.internal.ads.zzfwr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class n7i extends p7i {
    public n7i(zzfwr zzfwrVar, boolean z) {
        super(zzfwrVar, z);
        r();
    }

    @Override
    public final Object B(List list) {
        ArrayList arrayListA = p7.a(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            o7i o7iVar = (o7i) it.next();
            arrayListA.add(o7iVar != null ? o7iVar.a : null);
        }
        return Collections.unmodifiableList(arrayListA);
    }
}
