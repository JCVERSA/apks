package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceAmount;
import io.appmetrica.analytics.ecommerce.ECommercePrice;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class C2741nf {
    public final V a;
    public final List b;

    public C2741nf(ECommercePrice eCommercePrice) {
        this(new V(eCommercePrice.getFiat()), a(eCommercePrice.getInternalComponents()));
    }

    public static LinkedList a(List list) {
        if (list == null) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ECommerceAmount eCommerceAmount = (ECommerceAmount) it.next();
            linkedList.add(new V(eCommerceAmount.getAmount(), eCommerceAmount.getUnit()));
        }
        return linkedList;
    }

    public final String toString() {
        return "PriceWrapper{fiat=" + this.a + ", internalComponents=" + this.b + '}';
    }

    public C2741nf(V v, LinkedList linkedList) {
        this.a = v;
        this.b = linkedList;
    }
}
