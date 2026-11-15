package io.appmetrica.analytics.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.wn8;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;

public final class N3 implements ProtobufConverter {
    @Override
    public final R3 fromModel(M3 m3) {
        R3 r3 = new R3();
        r3.a = a(m3.a);
        int size = m3.b.size();
        O3[] o3Arr = new O3[size];
        for (int i = 0; i < size; i++) {
            o3Arr[i] = a((L3) m3.b.get(i));
        }
        r3.b = o3Arr;
        return r3;
    }

    @Override
    public final M3 toModel(R3 r3) {
        O3 o3 = r3.a;
        if (o3 == null) {
            o3 = new O3();
        }
        L3 l3A = a(o3);
        O3[] o3Arr = r3.b;
        ArrayList arrayList = new ArrayList(o3Arr.length);
        for (O3 o4 : o3Arr) {
            arrayList.add(a(o4));
        }
        return new M3(l3A, arrayList);
    }

    public static O3 a(L3 l3) {
        Q3 q3;
        O3 o3 = new O3();
        Map map = l3.a;
        int i = 0;
        if (map != null) {
            q3 = new Q3();
            int size = map.size();
            P3[] p3Arr = new P3[size];
            for (int i2 = 0; i2 < size; i2++) {
                p3Arr[i2] = new P3();
            }
            q3.a = p3Arr;
            int i3 = 0;
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                P3 p3 = q3.a[i3];
                p3.a = str;
                p3.b = str2;
                i3++;
            }
        } else {
            q3 = null;
        }
        o3.a = q3;
        int iOrdinal = l3.b.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                i = 2;
                if (iOrdinal != 2) {
                    i = 3;
                    if (iOrdinal != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                }
            } else {
                i = 1;
            }
        }
        o3.b = i;
        return o3;
    }

    public static L3 a(O3 o3) {
        LinkedHashMap linkedHashMap;
        X7 x7;
        Q3 q3 = o3.a;
        if (q3 != null) {
            P3[] p3Arr = q3.a;
            linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(p3Arr.length), 16));
            for (P3 p3 : p3Arr) {
                Pair pairA = abb.a(p3.a, p3.b);
                linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
            }
        } else {
            linkedHashMap = null;
        }
        int i = o3.b;
        if (i == 0) {
            x7 = X7.b;
        } else if (i == 1) {
            x7 = X7.c;
        } else if (i == 2) {
            x7 = X7.d;
        } else if (i != 3) {
            x7 = X7.b;
        } else {
            x7 = X7.e;
        }
        return new L3(linkedHashMap, x7);
    }
}
