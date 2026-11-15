package io.appmetrica.analytics.impl;

import java.util.ArrayList;

public final class T4 extends AbstractC2816qf {
    public final S4 a;

    public T4(O4 o4) {
        this.a = new S4(o4);
    }

    @Override
    public final AbstractC2461c9 a(int i) {
        ArrayList arrayList = new ArrayList();
        int iOrdinal = EnumC2588hb.a(i).ordinal();
        if (iOrdinal == 12) {
            arrayList.add(this.a.a);
        } else if (iOrdinal == 14) {
            arrayList.add(this.a.b);
        } else if (iOrdinal == 34) {
            arrayList.add(this.a.c);
        }
        return new C2436b9(arrayList);
    }
}
