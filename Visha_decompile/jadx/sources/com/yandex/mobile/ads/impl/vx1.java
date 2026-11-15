package com.yandex.mobile.ads.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

final class vx1 extends wx1.d<Object> {
    final Set b;
    final Set c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vx1(mk0 mk0Var, mk0 mk0Var2) {
        super();
        this.b = mk0Var;
        this.c = mk0Var2;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.b.contains(obj) && this.c.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection<?> collection) {
        return this.b.containsAll(collection) && this.c.containsAll(collection);
    }

    @Override
    public final boolean isEmpty() {
        return Collections.disjoint(this.c, this.b);
    }

    @Override
    public final Iterator iterator() {
        return new ux1(this);
    }

    @Override
    public final int size() {
        Iterator it = this.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.c.contains(it.next())) {
                i++;
            }
        }
        return i;
    }
}
