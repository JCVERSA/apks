package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Iterator;

public final class Kb {
    public final Z2 a;
    public final C2653k2 b;
    public final ArrayList c;

    public Kb(Z2 z2, C2653k2 c2653k2) {
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        this.a = z2;
        arrayList.add(z2);
        this.b = c2653k2;
        arrayList.add(c2653k2);
    }

    public final synchronized void a() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Vj) it.next()).onCreate();
        }
    }

    public final synchronized void a(C2885ta c2885ta) {
        this.c.add(c2885ta);
    }
}
