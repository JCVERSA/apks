package io.appmetrica.analytics.impl;

import defpackage.d81;
import defpackage.i81;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public final class Xc {
    public final LinkedHashSet a = new LinkedHashSet();

    public final synchronized Set a() {
        ArrayList arrayList;
        try {
            LinkedHashSet linkedHashSet = this.a;
            ArrayList arrayList2 = new ArrayList(z71.v(linkedHashSet, 10));
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                arrayList2.add(((Wc) it.next()).a());
            }
            arrayList = new ArrayList();
            for (Object obj : arrayList2) {
                if (((String) obj).length() > 0) {
                    arrayList.add(obj);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return i81.g1(arrayList);
    }

    public final synchronized void a(Wc... wcArr) {
        d81.D(this.a, wcArr);
    }
}
