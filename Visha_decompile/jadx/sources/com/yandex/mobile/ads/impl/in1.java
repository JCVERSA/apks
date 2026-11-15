package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.abb;
import defpackage.e74;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;

public final class in1 {
    private final Map<String, String> a;

    public static final class a {
        public static Uri a(Uri uri, e74 e74Var) {
            Map mapL;
            y45.j(uri, "<this>");
            y45.j(e74Var, "modifier");
            Set<String> queryParameterNames = uri.getQueryParameterNames();
            if (queryParameterNames != null) {
                mapL = new LinkedHashMap(wn8.d(ky5.g(defpackage.z71.v(queryParameterNames, 10)), 16));
                for (String str : queryParameterNames) {
                    Pair pairA = abb.a(str, uri.getQueryParameter(str));
                    mapL.put(pairA.getFirst(), pairA.getSecond());
                }
            } else {
                mapL = null;
            }
            if (mapL == null) {
                mapL = kotlin.collections.a.l();
            }
            in1 in1Var = (in1) ((oa2) e74Var).invoke(new in1(mapL));
            Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
            for (Map.Entry<String, String> entry : in1Var.a().entrySet()) {
                builderClearQuery.appendQueryParameter(entry.getKey(), entry.getValue());
            }
            Uri uriBuild = builderClearQuery.build();
            y45.i(uriBuild, "build(...)");
            return uriBuild;
        }
    }

    public in1(Map<String, String> map) {
        y45.j(map, "rawParams");
        this.a = kotlin.collections.a.C(map);
    }

    public final Map<String, String> a() {
        return this.a;
    }

    public final void a(String str, String str2) {
        y45.j(str, "key");
        if (str2 == null || str2.length() <= 0) {
            return;
        }
        this.a.put(str, str2);
    }
}
