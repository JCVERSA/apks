package com.avery.subtitle;

import java.util.List;

public abstract class c {
    public static m5.b a(long j10, List list) {
        if (list != null && !list.isEmpty()) {
            int size = list.size() - 1;
            int i10 = 0;
            while (i10 <= size) {
                int i11 = (i10 + size) / 2;
                m5.b bVar = (m5.b) list.get(i11);
                int i12 = bVar.f66263b.f66266a;
                if (j10 >= i12) {
                    int i13 = bVar.f66264c.f66266a;
                    if (j10 > i13) {
                        if (j10 < i12) {
                            return bVar;
                        }
                        i10 = i11 + 1;
                    } else if (j10 >= i12 && j10 <= i13) {
                        return bVar;
                    }
                } else {
                    if (j10 > bVar.f66264c.f66266a) {
                        return bVar;
                    }
                    size = i11 - 1;
                }
            }
        }
        return null;
    }
}
