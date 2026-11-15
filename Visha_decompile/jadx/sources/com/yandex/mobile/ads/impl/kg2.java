package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.facebook.ads.AdSDKNotificationListener;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class kg2 {
    private static final List<String> c = defpackage.y71.n("clickTracking", AdSDKNotificationListener.IMPRESSION_EVENT);
    private final re2 a;
    private final s82 b;

    public kg2(Context context) {
        y45.j(context, "context");
        this.a = new re2(context);
        this.b = new s82(context);
    }

    public final void a(jg2 jg2Var, String str) {
        y45.j(jg2Var, "trackable");
        y45.j(str, "eventName");
        List<String> list = jg2Var.a().get(str);
        if (c.contains(str)) {
            if (list != null) {
                ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(this.b.a((String) it.next()));
                }
                list = arrayList;
            } else {
                list = null;
            }
        }
        if (list != null) {
            this.a.a(list, null);
        }
    }

    public final void a(jg2 jg2Var, String str, Map<String, String> map) {
        y45.j(jg2Var, "trackable");
        y45.j(str, "eventName");
        y45.j(map, "macros");
        List<String> list = jg2Var.a().get(str);
        if (list != null) {
            this.a.a(list, map);
        }
    }
}
