package com.yandex.mobile.ads.impl;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

public final class oo2 implements xn2 {
    private final xn2 a;

    public oo2(so2 so2Var) {
        this.a = so2Var;
    }

    @Override
    public final JSONObject a(View view) {
        return io2.a(0, 0, 0, 0);
    }

    @Override
    public final void a(View view, JSONObject jSONObject, xn2.a aVar, boolean z, boolean z2) {
        View rootView;
        ArrayList arrayList = new ArrayList();
        wn2 wn2VarA = wn2.a();
        if (wn2VarA != null) {
            Collection<vn2> collectionC = wn2VarA.c();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionC.size() * 2) + 3);
            Iterator<vn2> it = collectionC.iterator();
            while (it.hasNext()) {
                View viewF = it.next().f();
                if (viewF != null && ap2.b(viewF) && (rootView = viewF.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fA = ap2.a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && ap2.a((View) arrayList.get(size - 1)) > fA) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((g72) aVar).a((View) it2.next(), this.a, jSONObject, z2);
        }
    }
}
