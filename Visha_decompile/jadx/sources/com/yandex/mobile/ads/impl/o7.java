package com.yandex.mobile.ads.impl;

import com.monetization.ads.quality.base.model.configuration.AdQualityVerifiableNetwork;
import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

public final class o7 {
    public static d7 a(b7 b7Var) {
        Object next;
        y45.j(b7Var, "sdkAdQualityConfiguration");
        int iG = b7Var.g();
        boolean zE = b7Var.e();
        boolean zC = b7Var.c();
        Map<String, c7> mapA = b7Var.a();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it = mapA.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            z6.a aVar = z6.c;
            String str = (String) entry.getKey();
            aVar.getClass();
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            Iterator<E> it2 = z6.a().iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!y45.e(((z6) next).b(), str));
            AdQualityVerifiableNetwork adQualityVerifiableNetworkA = z6.a.a((z6) next);
            if (adQualityVerifiableNetworkA != null) {
                linkedHashMap.put(adQualityVerifiableNetworkA, new m7(((c7) entry.getValue()).a(), ((c7) entry.getValue()).b()));
            }
        }
        return new d7(iG, zE, zC, linkedHashMap, b7Var.f());
    }
}
