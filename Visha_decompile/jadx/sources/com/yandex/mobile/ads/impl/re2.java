package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.g1a;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;

public final class re2 {
    private final Context a;
    private final lg2 b;
    private final qg2 c;

    public re2(Context context) {
        y45.j(context, "context");
        this.a = context.getApplicationContext();
        this.b = new lg2();
        this.c = new qg2();
    }

    public final void a(List<String> list, Map<String, String> map) {
        y45.j(list, "rawUrls");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        for (String str : list) {
            boolean z = map != null;
            if (z) {
                this.b.getClass();
                y45.j(str, "url");
                y45.j(map, "macros");
                String strN = str;
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    strN = g1a.N(strN, entry.getKey(), entry.getValue(), false, 4, null);
                }
                str = strN;
            } else if (z) {
                throw new NoWhenBranchMatchedException();
            }
            arrayList.add(str);
        }
        this.c.getClass();
        y45.j(arrayList, "trackingUrls");
        ArrayList<String> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!y45.e((String) obj, "about:blank")) {
                arrayList2.add(obj);
            }
        }
        for (String str2 : arrayList2) {
            ze2.a aVar = ze2.c;
            Context context = this.a;
            y45.i(context, "applicationContext");
            aVar.a(context).a(str2);
        }
    }
}
