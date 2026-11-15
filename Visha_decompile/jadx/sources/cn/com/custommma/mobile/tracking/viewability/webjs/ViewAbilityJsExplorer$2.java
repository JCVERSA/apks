package cn.com.custommma.mobile.tracking.viewability.webjs;

import defpackage.rq5;
import defpackage.ubc;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;

class ViewAbilityJsExplorer$2 implements Runnable {
    final b this$0;

    public ViewAbilityJsExplorer$2(b bVar) {
    }

    @Override
    public void run() {
        try {
            if (b.a(null) == null && b.a(null).getUrl() == null) {
                rq5.d("The webview is initializing,and this monitoring frame is discarded.");
                return;
            }
            if (b.f(null).isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = new JSONArray();
            Iterator it = b.f(null).keySet().iterator();
            if (it.hasNext()) {
                ubc.a(b.f(null).get((String) it.next()));
                throw null;
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                b.f(null).remove((String) it2.next());
            }
            if (jSONArray.length() > 0) {
                b.a(null).loadUrl(String.format("javascript:sendViewabilityMessage(%s)", jSONArray.toString()));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
