package io.appmetrica.analytics.impl;

import defpackage.ky5;
import defpackage.y71;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class E6 {
    public final C2946vl a = new C2946vl();
    public Map b = kotlin.collections.a.l();
    public Map c = kotlin.collections.a.l();
    public IdentifiersResult d;

    public final synchronized void a(IdentifiersResult identifiersResult) {
        HashMap map;
        Map mapL;
        List listA;
        String str;
        try {
            IdentifiersResult identifiersResult2 = this.d;
            String str2 = identifiersResult2 != null ? identifiersResult2.id : null;
            if (str2 == null || str2.length() == 0 || ((str = identifiersResult.id) != null && str.length() != 0)) {
                this.d = identifiersResult;
                String str3 = identifiersResult.id;
                if (str3 == null) {
                    map = null;
                } else {
                    map = new HashMap();
                    try {
                        JSONObject jSONObject = new JSONObject(str3);
                        Iterator<String> itKeys = jSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            ArrayList arrayListA = AbstractC2712mb.a(new JSONArray(jSONObject.optString(next)));
                            if (arrayListA != null) {
                                map.put(next, arrayListA);
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (map != null) {
                    mapL = new LinkedHashMap(ky5.g(map.size()));
                    for (Map.Entry entry : map.entrySet()) {
                        Object key = entry.getKey();
                        List list = (List) entry.getValue();
                        mapL.put(key, new IdentifiersResult(String.valueOf(In.a((Collection) list) ? null : new JSONArray((Collection) list)), identifiersResult.status, identifiersResult.errorExplanation));
                    }
                } else {
                    mapL = kotlin.collections.a.l();
                }
                this.c = mapL;
                LinkedHashMap linkedHashMap = new LinkedHashMap(ky5.g(mapL.size()));
                for (Map.Entry entry2 : mapL.entrySet()) {
                    Object key2 = entry2.getKey();
                    String str4 = ((IdentifiersResult) entry2.getValue()).id;
                    if (str4 == null) {
                        listA = null;
                    } else {
                        try {
                            listA = AbstractC2712mb.a(new JSONArray(str4));
                        } catch (Throwable unused2) {
                            listA = null;
                        }
                    }
                    if (listA == null) {
                        listA = y71.k();
                    }
                    linkedHashMap.put(key2, listA);
                }
                this.b = linkedHashMap;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(List list, HashMap map) {
        IdentifierStatus identifierStatus;
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                List list2 = (List) this.b.get(str);
                if (list2 != null && !list2.isEmpty()) {
                    linkedHashMap.put(str, list2);
                }
            }
            C2946vl c2946vl = this.a;
            String strA = AbstractC2712mb.a((Map) linkedHashMap);
            IdentifiersResult identifiersResult = this.d;
            if (identifiersResult == null || (identifierStatus = identifiersResult.status) == null) {
                identifierStatus = IdentifierStatus.UNKNOWN;
            }
            map.put("appmetrica_custom_sdk_hosts", c2946vl.a(new IdentifiersResult(strA, identifierStatus, identifiersResult != null ? identifiersResult.errorExplanation : null)));
        } catch (Throwable th) {
            throw th;
        }
    }
}
