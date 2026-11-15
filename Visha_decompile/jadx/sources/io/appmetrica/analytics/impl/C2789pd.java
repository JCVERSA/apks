package io.appmetrica.analytics.impl;

import defpackage.abb;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Pair;

public final class C2789pd implements Converter {
    public final C2447bk a = C2910ua.j().o();

    @Override
    public final Vl[] fromModel(Map<String, ? extends Object> map) {
        Vl vl;
        Map<String, C2490dd> mapC = this.a.c();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            C2490dd c2490dd = mapC.get(key);
            if (c2490dd == null || value == null) {
                vl = null;
            } else {
                vl = new Vl();
                vl.a = key;
                vl.b = (byte[]) c2490dd.c.fromModel(value);
            }
            if (vl != null) {
                arrayList.add(vl);
            }
        }
        Object[] array = arrayList.toArray(new Vl[0]);
        if (array != null) {
            return (Vl[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    @Override
    public final Map<String, Object> toModel(Vl[] vlArr) {
        Map<String, C2490dd> mapC = this.a.c();
        ArrayList arrayList = new ArrayList();
        for (Vl vl : vlArr) {
            C2490dd c2490dd = mapC.get(vl.a);
            Pair pairA = c2490dd != null ? abb.a(vl.a, c2490dd.c.toModel(vl.b)) : null;
            if (pairA != null) {
                arrayList.add(pairA);
            }
        }
        return kotlin.collections.a.y(arrayList);
    }
}
