package com.iab.omid.library.bytedance2.processor;

import android.view.View;
import androidx.annotation.NonNull;
import com.iab.omid.library.bytedance2.utils.e;
import com.iab.omid.library.bytedance2.utils.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class c implements a {

    private final a f32636a;

    public c(a aVar) {
        this.f32636a = aVar;
    }

    @NonNull
    ArrayList<View> a() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        com.iab.omid.library.bytedance2.internal.c cVarC = com.iab.omid.library.bytedance2.internal.c.c();
        if (cVarC != null) {
            Collection<com.iab.omid.library.bytedance2.adsession.a> collectionA = cVarC.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator<com.iab.omid.library.bytedance2.adsession.a> it = collectionA.iterator();
            while (it.hasNext()) {
                View viewC = it.next().c();
                if (viewC != null && h.e(viewC) && (rootView = viewC.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fC = h.c(rootView);
                    int size = arrayList.size();
                    while (size > 0 && h.c(arrayList.get(size - 1)) > fC) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override
    public JSONObject a(View view) {
        JSONObject jSONObjectA = com.iab.omid.library.bytedance2.utils.c.a(0, 0, 0, 0);
        com.iab.omid.library.bytedance2.utils.c.a(jSONObjectA, e.a());
        return jSONObjectA;
    }

    @Override
    public void a(View view, JSONObject jSONObject, a.InterfaceC0430a interfaceC0430a, boolean z10, boolean z11) {
        Iterator<View> it = a().iterator();
        while (it.hasNext()) {
            interfaceC0430a.a(it.next(), this.f32636a, jSONObject, z11);
        }
    }
}
