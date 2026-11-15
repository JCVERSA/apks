package we;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class d implements a {

    private final int[] f74273a = new int[2];

    private void b(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0921a interfaceC0921a, boolean z10) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            interfaceC0921a.a(viewGroup.getChildAt(i10), this, jSONObject, z10);
        }
    }

    private void c(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0921a interfaceC0921a, boolean z10) {
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
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
                interfaceC0921a.a((View) it2.next(), this, jSONObject, z10);
            }
        }
    }

    @Override
    public JSONObject a(View view) {
        if (view == null) {
            return xe.c.b(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f74273a);
        int[] iArr = this.f74273a;
        return xe.c.b(iArr[0], iArr[1], width, height);
    }

    @Override
    public void a(View view, JSONObject jSONObject, a.InterfaceC0921a interfaceC0921a, boolean z10, boolean z11) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (z10) {
                c(viewGroup, jSONObject, interfaceC0921a, z11);
            } else {
                b(viewGroup, jSONObject, interfaceC0921a, z11);
            }
        }
    }
}
