package io.appmetrica.analytics.impl;

import java.util.LinkedList;

public final class C2834r9 extends AbstractC2816qf {
    public final C2519eh a;
    public final C2569gh b;
    public final Sg c;

    public C2834r9(C2706m5 c2706m5) {
        this.a = new C2519eh(c2706m5);
        this.b = new C2569gh(c2706m5);
        this.c = new Sg(c2706m5);
    }

    @Override
    public final AbstractC2461c9 a(int i) {
        LinkedList linkedList = new LinkedList();
        int iOrdinal = EnumC2588hb.a(i).ordinal();
        if (iOrdinal == 1) {
            linkedList.add(this.a);
        } else if (iOrdinal == 3) {
            linkedList.add(this.c);
        } else if (iOrdinal == 27) {
            linkedList.add(this.b);
            linkedList.add(this.a);
        }
        return new C2436b9(linkedList);
    }
}
