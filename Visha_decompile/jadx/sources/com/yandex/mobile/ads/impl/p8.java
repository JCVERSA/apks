package com.yandex.mobile.ads.impl;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import defpackage.j1a;
import defpackage.y45;
import defpackage.ye9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

public final class p8 {
    public static f a(Map map) {
        Set setG1;
        Long lValueOf;
        y45.j(map, "headers");
        String strA = nf0.a(map, vh0.s);
        String strOptString = "";
        if (strA == null) {
            strA = "";
        }
        String strA2 = nf0.a(map, vh0.W);
        if (strA2 == null) {
            setG1 = ye9.f();
        } else {
            try {
                strOptString = new JSONObject(strA2).optString("test_ids", "");
            } catch (Throwable unused) {
                sp0.d(new Object[0]);
            }
            String str = strOptString;
            y45.g(str);
            List listO0 = j1a.O0(str, new String[]{ProcessInfo.SPLIT_NEW_VERSION}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList();
            Iterator it = listO0.iterator();
            while (it.hasNext()) {
                try {
                    lValueOf = Long.valueOf(Long.parseLong((String) it.next()));
                } catch (Throwable unused2) {
                    lValueOf = null;
                }
                if (lValueOf != null) {
                    arrayList.add(lValueOf);
                }
            }
            setG1 = defpackage.i81.g1(arrayList);
        }
        return new f(strA, setG1);
    }
}
