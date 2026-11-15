package io.appmetrica.analytics.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y71;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;

public final class N8 implements Converter {
    @Override
    public final byte[] fromModel(Map<String, byte[]> map) {
        P8 p8 = new P8();
        O8[] o8Arr = new O8[map.size()];
        int i = 0;
        for (Object obj : map.entrySet()) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            Map.Entry entry = (Map.Entry) obj;
            O8 o8 = new O8();
            o8.a = (String) entry.getKey();
            o8.b = (byte[]) entry.getValue();
            o8Arr[i] = o8;
            i = i2;
        }
        p8.a = o8Arr;
        return MessageNano.toByteArray(p8);
    }

    @Override
    public final Map<String, byte[]> toModel(byte[] bArr) {
        O8[] o8Arr = ((P8) MessageNano.mergeFrom(new P8(), bArr)).a;
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(o8Arr.length), 16));
        for (O8 o8 : o8Arr) {
            Pair pairA = abb.a(o8.a, o8.b);
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return linkedHashMap;
    }
}
