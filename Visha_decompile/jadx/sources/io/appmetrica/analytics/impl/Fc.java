package io.appmetrica.analytics.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.qv0;
import defpackage.wn8;
import defpackage.z71;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import org.json.JSONObject;

public final class Fc {
    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    public static final H9 a(Fc fc, Q9 q9, Map map) {
        int i;
        Object value;
        fc.getClass();
        H9 h9 = new H9();
        switch (q9) {
            case UNKNOWN:
                i = 0;
                break;
            case APPSFLYER:
                i = 1;
                break;
            case ADJUST:
                i = 2;
                break;
            case KOCHAVA:
                i = 3;
                break;
            case TENJIN:
                i = 4;
                break;
            case AIRBRIDGE:
                i = 5;
                break;
            case SINGULAR:
                i = 6;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        h9.a = i;
        Gc.b.getClass();
        Set<Map.Entry> setEntrySet = map.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(setEntrySet, 10)), 16));
        for (Map.Entry entry : setEntrySet) {
            Object key = entry.getKey();
            if (entry.getValue() instanceof Number) {
                Object value2 = entry.getValue();
                if (value2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Number");
                }
                double dDoubleValue = ((Number) value2).doubleValue();
                if (Double.isInfinite(dDoubleValue) || Double.isNaN(dDoubleValue)) {
                    value = null;
                } else {
                    value = entry.getValue();
                }
            } else {
                value = entry.getValue();
            }
            Pair pairA = abb.a(key, value);
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        String string = new JSONObject(linkedHashMap).toString();
        if (string != null) {
            h9.b = string.getBytes(qv0.b);
        }
        return h9;
    }
}
