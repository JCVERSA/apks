package com.facebook.ads.redexgen.core;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class C1147Ox implements X5 {
    public final Collection<String> A00;

    public C1147Ox() {
        this.A00 = new ArrayList();
    }

    @Override
    public final void AGO(String str) {
        this.A00.add(str);
    }

    @Override
    public final void flush() {
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.A00.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append('\n');
        }
        return sb.toString();
    }
}
