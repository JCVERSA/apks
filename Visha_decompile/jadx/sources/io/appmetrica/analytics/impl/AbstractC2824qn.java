package io.appmetrica.analytics.impl;

import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractC2824qn {
    public static final C2749nn a(Throwable th, S s, List list, String str, Boolean bool) {
        ArrayList arrayList = null;
        C2500dn c2500dnA = th != null ? AbstractC2525en.a(th, 1, 0) : null;
        if (list != null) {
            arrayList = new ArrayList(z71.v(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new C2548fl((StackTraceElement) it.next()));
            }
        }
        return new C2749nn(c2500dnA, s, arrayList, null, null, null, str, bool);
    }
}
