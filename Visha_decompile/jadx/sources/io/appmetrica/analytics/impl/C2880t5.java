package io.appmetrica.analytics.impl;

import java.util.Iterator;
import java.util.List;
import kotlin.Pair;

public final class C2880t5 implements Yn {
    public final List a;

    public C2880t5(List<? extends Pair<String, ? extends Yn>> list) {
        this.a = list;
    }

    @Override
    public final String a() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            String strA = ((Yn) ((Pair) it.next()).getSecond()).a();
            if (strA != null && strA.length() > 0) {
                return strA;
            }
        }
        return null;
    }

    @Override
    public final void a(String str) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Yn) ((Pair) it.next()).getSecond()).a(str);
        }
    }
}
