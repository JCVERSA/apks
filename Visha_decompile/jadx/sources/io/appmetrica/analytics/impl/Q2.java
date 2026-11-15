package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Iterator;

public abstract class Q2 {
    public final AbstractC2816qf a;
    public final La b;

    public Q2(AbstractC2816qf abstractC2816qf, La la) {
        this.a = abstractC2816qf;
        this.b = la;
    }

    public final boolean a(@NonNull C2408a6 c2408a6, @NonNull P2 p2) {
        Iterator it = ((C2436b9) this.a.a(c2408a6.d)).a.iterator();
        while (it.hasNext()) {
            if (p2.a(it.next(), c2408a6)) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting(otherwise = 5)
    public final AbstractC2816qf b() {
        return this.a;
    }

    public final La a() {
        return this.b;
    }
}
