package defpackage;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class s9d implements j3d {
    public final int[] a = new int[2];

    @Override
    public JSONObject a(View view) {
        if (view == null) {
            return k8d.c(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.a);
        int[] iArr = this.a;
        return k8d.c(iArr[0], iArr[1], width, height);
    }

    public final void b(ViewGroup viewGroup, JSONObject jSONObject, j3d.a aVar, boolean z) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            aVar.a(viewGroup.getChildAt(i), this, jSONObject, z);
        }
    }

    public final void c(ViewGroup viewGroup, JSONObject jSONObject, j3d.a aVar, boolean z) {
        HashMap map = new HashMap();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            ArrayList arrayList = (ArrayList) map.get(Float.valueOf(childAt.getZ()));
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(Float.valueOf(childAt.getZ()), arrayList);
            }
            arrayList.add(childAt);
        }
        ArrayList arrayList2 = new ArrayList(map.keySet());
        Collections.sort(arrayList2);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((ArrayList) map.get((Float) it.next())).iterator();
            while (it2.hasNext()) {
                aVar.a((View) it2.next(), this, jSONObject, z);
            }
        }
    }

    @Override
    public void a(View view, JSONObject jSONObject, j3d.a aVar, boolean z, boolean z2) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (z) {
                c(viewGroup, jSONObject, aVar, z2);
            } else {
                b(viewGroup, jSONObject, aVar, z2);
            }
        }
    }
}
