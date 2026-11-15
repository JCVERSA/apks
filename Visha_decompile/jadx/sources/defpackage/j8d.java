package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class j8d implements j3d {
    public final j3d a;

    public j8d(j3d j3dVar) {
        this.a = j3dVar;
    }

    @Override
    public JSONObject a(View view) {
        JSONObject jSONObjectC = k8d.c(0, 0, 0, 0);
        k8d.e(jSONObjectC, rad.a());
        return jSONObjectC;
    }

    public ArrayList b() {
        View rootView;
        ArrayList arrayList = new ArrayList();
        i8d i8dVarE = i8d.e();
        if (i8dVarE != null) {
            Collection collectionA = i8dVarE.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator it = collectionA.iterator();
            while (it.hasNext()) {
                View viewM = ((e3d) it.next()).m();
                if (viewM != null && ghd.g(viewM) && (rootView = viewM.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fD = ghd.d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && ghd.d((View) arrayList.get(size - 1)) > fD) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override
    public void a(View view, JSONObject jSONObject, j3d.a aVar, boolean z, boolean z2) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            aVar.a((View) it.next(), this.a, jSONObject, z2);
        }
    }
}
