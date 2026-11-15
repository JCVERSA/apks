package defpackage;

import com.google.android.gms.internal.ads.f8;
import com.google.android.gms.internal.ads.p7;
import com.google.android.gms.internal.ads.zzfwr;
import java.util.Collections;
import java.util.List;

public abstract class p7i extends f8 {
    public List j;

    public p7i(zzfwr zzfwrVar, boolean z) {
        super(zzfwrVar, z, true);
        List listEmptyList = zzfwrVar.isEmpty() ? Collections.emptyList() : p7.a(zzfwrVar.size());
        for (int i = 0; i < zzfwrVar.size(); i++) {
            listEmptyList.add(null);
        }
        this.j = listEmptyList;
    }

    public abstract Object B(List list);

    @Override
    public final void p(int i, Object obj) {
        List list = this.j;
        if (list != null) {
            list.set(i, new o7i(obj));
        }
    }

    @Override
    public final void q() {
        List list = this.j;
        if (list != null) {
            zzc(B(list));
        }
    }

    @Override
    public final void s(int i) {
        super.s(i);
        this.j = null;
    }
}
