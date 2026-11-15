package com.yandex.mobile.ads.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class i22 implements n32 {
    private final List<List<hv>> b;
    private final List<Long> c;

    public i22(ArrayList arrayList, ArrayList arrayList2) {
        this.b = arrayList;
        this.c = arrayList2;
    }

    @Override
    public final long a(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i < this.c.size()) {
            return this.c.get(i).longValue();
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final List<hv> b(long j) {
        int iA = f92.a((List) this.c, Long.valueOf(j), false);
        return iA == -1 ? Collections.emptyList() : this.b.get(iA);
    }

    @Override
    public final int a() {
        return this.c.size();
    }

    @Override
    public final int a(long j) {
        int i;
        List<Long> list = this.c;
        Long lValueOf = Long.valueOf(j);
        int i2 = f92.a;
        int iBinarySearch = Collections.binarySearch(list, lValueOf);
        if (iBinarySearch < 0) {
            i = ~iBinarySearch;
        } else {
            int size = list.size();
            do {
                iBinarySearch++;
                if (iBinarySearch >= size) {
                    break;
                }
            } while (list.get(iBinarySearch).compareTo(lValueOf) == 0);
            i = iBinarySearch;
        }
        if (i < this.c.size()) {
            return i;
        }
        return -1;
    }
}
