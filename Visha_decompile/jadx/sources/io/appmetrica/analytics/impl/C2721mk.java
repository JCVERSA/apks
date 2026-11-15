package io.appmetrica.analytics.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.qv0;
import defpackage.wn8;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;

public final class C2721mk implements ProtobufConverter {
    @Override
    public final C2771ok fromModel(Map<String, byte[]> map) {
        C2771ok c2771ok = new C2771ok();
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            C2796pk c2796pk = new C2796pk();
            c2796pk.a = entry.getKey().getBytes(qv0.b);
            c2796pk.b = entry.getValue();
            arrayList.add(c2796pk);
        }
        Object[] array = arrayList.toArray(new C2796pk[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        c2771ok.a = (C2796pk[]) array;
        return c2771ok;
    }

    @Override
    public final Map<String, byte[]> toModel(C2771ok c2771ok) {
        C2796pk[] c2796pkArr = c2771ok.a;
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(c2796pkArr.length), 16));
        for (C2796pk c2796pk : c2796pkArr) {
            Pair pairA = abb.a(new String(c2796pk.a, qv0.b), c2796pk.b);
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return linkedHashMap;
    }
}
