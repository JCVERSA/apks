package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.facebook.ads.AdSDKNotificationListener;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class rd2 {
    private final Context a;

    public rd2(Context context) {
        y45.j(context, "context");
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.a = applicationContext;
    }

    public final Map a(LinkedHashMap linkedHashMap, zh2 zh2Var) {
        Map map;
        y45.j(linkedHashMap, "rawEvents");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(this.a);
        if (ju1VarA == null || !ju1VarA.j0()) {
            map = linkedHashMap;
            Map mapC = kotlin.collections.a.C(linkedHashMap);
            List<String> listA = zh2Var != null ? zh2Var.a() : null;
            List list = (List) mapC.get(AdSDKNotificationListener.IMPRESSION_EVENT);
            if (listA != null) {
                mapC.put(AdSDKNotificationListener.IMPRESSION_EVENT, listA);
            } else {
                mapC.remove(AdSDKNotificationListener.IMPRESSION_EVENT);
            }
            if (list != null) {
                mapC.put("render_impression", list);
                map = mapC;
            } else {
                mapC.remove("render_impression");
                map = mapC;
            }
        }
        map = linkedHashMap;
        return map;
    }
}
