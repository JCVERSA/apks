package ke;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import le.e;
import le.i;
import org.json.JSONObject;

public class c implements a {

    private final a f63978a;

    public c(a aVar) {
        this.f63978a = aVar;
    }

    @Override
    public JSONObject a(View view) {
        JSONObject jSONObjectC = le.c.c(0, 0, 0, 0);
        le.c.e(jSONObjectC, e.a());
        return jSONObjectC;
    }

    ArrayList b() {
        View rootView;
        ArrayList arrayList = new ArrayList();
        com.iab.omid.library.hisavana.internal.c cVarE = com.iab.omid.library.hisavana.internal.c.e();
        if (cVarE != null) {
            Collection collectionA = cVarE.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator it = collectionA.iterator();
            while (it.hasNext()) {
                View viewM = ((h) it.next()).m();
                if (viewM != null && i.g(viewM) && (rootView = viewM.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fD = i.d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && i.d((View) arrayList.get(size - 1)) > fD) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override
    public void a(View view, JSONObject jSONObject, a.InterfaceC0790a interfaceC0790a, boolean z10, boolean z11) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            interfaceC0790a.a((View) it.next(), this.f63978a, jSONObject, z11);
        }
    }
}
