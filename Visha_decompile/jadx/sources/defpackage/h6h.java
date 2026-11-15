package defpackage;

import com.google.android.gms.internal.ads.j8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public final class h6h implements eeh {
    public final Set a;

    public h6h(Set set) {
        this.a = set;
    }

    @Override
    public final int zza() {
        return 8;
    }

    @Override
    public final im5 zzb() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        return j8.h(new f6h(arrayList, null));
    }
}
