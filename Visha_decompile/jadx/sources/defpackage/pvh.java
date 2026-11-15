package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class pvh implements nvh {
    public final nvh a;

    public pvh(nvh nvhVar) {
        this.a = nvhVar;
    }

    @Override
    public final void a(View view, JSONObject jSONObject, mvh mvhVar, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        cvh cvhVarA = cvh.a();
        if (cvhVarA != null) {
            Collection collectionB = cvhVarA.b();
            int size = collectionB.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            Iterator it = collectionB.iterator();
            while (it.hasNext()) {
                View viewF = ((suh) it.next()).f();
                if (viewF != null && viewF.isAttachedToWindow() && viewF.isShown()) {
                    View view2 = viewF;
                    while (true) {
                        if (view2 == null) {
                            View rootView = viewF.getRootView();
                            if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                identityHashMap.put(rootView, rootView);
                                float z3 = rootView.getZ();
                                int size2 = arrayList.size();
                                while (size2 > 0) {
                                    int i = size2 - 1;
                                    if (((View) arrayList.get(i)).getZ() <= z3) {
                                        break;
                                    } else {
                                        size2 = i;
                                    }
                                }
                                arrayList.add(size2, rootView);
                                break;
                            }
                            break;
                        }
                        if (view2.getAlpha() == 0.0f) {
                            break;
                        }
                        Object parent = view2.getParent();
                        view2 = parent instanceof View ? (View) parent : null;
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i2 = 0; i2 < size3; i2++) {
            mvhVar.a((View) arrayList.get(i2), this.a, jSONObject, z2);
        }
    }

    @Override
    public final JSONObject zza(View view) {
        JSONObject jSONObjectA = vvh.a(0, 0, 0, 0);
        int iB = yvh.b();
        int i = iB - 1;
        if (iB == 0) {
            throw null;
        }
        try {
            jSONObjectA.put("noOutputDevice", i == 0);
        } catch (JSONException e) {
            wvh.a("Error with setting output device status", e);
        }
        return jSONObjectA;
    }
}
