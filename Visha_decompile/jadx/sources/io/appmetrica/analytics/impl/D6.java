package io.appmetrica.analytics.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y71;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;

public final class D6 implements Converter {
    @Override
    public final Sl[] fromModel(Map<String, ? extends List<String>> map) {
        Sl[] slArr = new Sl[map.size()];
        int i = 0;
        for (Object obj : map.entrySet()) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            Map.Entry entry = (Map.Entry) obj;
            Sl sl = new Sl();
            sl.a = (String) entry.getKey();
            Object[] array = ((Collection) entry.getValue()).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            sl.b = (String[]) array;
            slArr[i] = sl;
            i = i2;
        }
        return slArr;
    }

    @Override
    public final Map<String, List<String>> toModel(Sl[] slArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(slArr.length), 16));
        for (Sl sl : slArr) {
            Pair pairA = abb.a(sl.a, defpackage.hi.c1(sl.b));
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return linkedHashMap;
    }
}
