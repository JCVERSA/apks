package io.appmetrica.analytics.impl;

import defpackage.i81;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class Qe implements InterfaceC3023yn {
    public final boolean a;

    public Qe(Se se) {
        boolean z;
        List<Re> list = se.b;
        if ((list instanceof Collection) && list.isEmpty()) {
            z = true;
        } else {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((Re) it.next()).c == X7.c) {
                    z = false;
                }
            }
            z = true;
        }
        this.a = z;
    }

    @Override
    public final List<Re> invoke(List<? extends Re> list, C2542ff c2542ff) {
        Re re = new Re(c2542ff.a, c2542ff.b, c2542ff.e);
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((Re) it.next()).c == c2542ff.e) {
                    if (re.c == X7.c && this.a) {
                        return i81.K0(list, re);
                    }
                    return null;
                }
            }
        }
        return i81.K0(list, re);
    }
}
