package we;

import android.view.View;
import com.iab.omid.library.vungle.adsession.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
import xe.e;

public class c implements a {

    private final a f74272a;

    public c(a aVar) {
        this.f74272a = aVar;
    }

    @Override
    public JSONObject a(View view) {
        JSONObject jSONObjectB = xe.c.b(0, 0, 0, 0);
        xe.c.e(jSONObjectB, e.a());
        return jSONObjectB;
    }

    ArrayList b() {
        View rootView;
        ArrayList arrayList = new ArrayList();
        com.iab.omid.library.vungle.internal.c cVarE = com.iab.omid.library.vungle.internal.c.e();
        if (cVarE != null) {
            Collection collectionA = cVarE.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator it = collectionA.iterator();
            while (it.hasNext()) {
                View viewL = ((h) it.next()).l();
                if (viewL != null && xe.h.g(viewL) && (rootView = viewL.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fD = xe.h.d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && xe.h.d((View) arrayList.get(size - 1)) > fD) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override
    public void a(View view, JSONObject jSONObject, a.InterfaceC0921a interfaceC0921a, boolean z10, boolean z11) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            interfaceC0921a.a((View) it.next(), this.f74272a, jSONObject, z11);
        }
    }
}
