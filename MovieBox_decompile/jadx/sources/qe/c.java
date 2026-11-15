package qe;

import android.view.View;
import com.iab.omid.library.mmadbridge.adsession.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
import re.e;

public class c implements a {

    private final a f69626a;

    public c(a aVar) {
        this.f69626a = aVar;
    }

    @Override
    public JSONObject a(View view) {
        JSONObject jSONObjectB = re.c.b(0, 0, 0, 0);
        re.c.e(jSONObjectB, e.a());
        return jSONObjectB;
    }

    ArrayList b() {
        View rootView;
        ArrayList arrayList = new ArrayList();
        com.iab.omid.library.mmadbridge.internal.c cVarE = com.iab.omid.library.mmadbridge.internal.c.e();
        if (cVarE != null) {
            Collection collectionA = cVarE.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator it = collectionA.iterator();
            while (it.hasNext()) {
                View viewN = ((h) it.next()).n();
                if (viewN != null && re.h.g(viewN) && (rootView = viewN.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fD = re.h.d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && re.h.d((View) arrayList.get(size - 1)) > fD) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override
    public void a(View view, JSONObject jSONObject, a.InterfaceC0862a interfaceC0862a, boolean z10, boolean z11) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            interfaceC0862a.a((View) it.next(), this.f69626a, jSONObject, z11);
        }
    }
}
