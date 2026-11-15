package defpackage;

import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.m8;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class juf implements r0h {
    public final List a;

    public juf(List list) {
        this.a = list;
    }

    @Override
    public final void zzq() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            j8.r((im5) it.next(), new iuf(this), m8.c());
        }
    }

    public juf(buf bufVar) {
        this.a = Collections.singletonList(j8.h(bufVar));
    }
}
