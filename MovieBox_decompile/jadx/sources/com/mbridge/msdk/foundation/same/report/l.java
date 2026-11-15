package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class l {

    private final Map<String, String> f34735a;

    private final String f34736b;

    public static class b {

        private final Map<String, String> f34737a = new HashMap();

        private final String f34738b;

        public b(String str) {
            this.f34738b = str;
        }

        public l a() {
            return new l(this);
        }
    }

    private void a(Map<String, String> map, JSONObject jSONObject) {
        if (map == null || map.isEmpty() || jSONObject == null) {
            return;
        }
        try {
            for (String str : map.keySet()) {
                jSONObject.put(str, a(map.get(str)));
            }
        } catch (Exception e10) {
            o0.b("SameCommonReporter", e10.getMessage());
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(this.f34736b)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", this.f34736b);
            a(this.f34735a, jSONObject);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b("SameCommonReporter", th2.getMessage());
        }
    }

    private l(b bVar) {
        this.f34736b = bVar.f34738b;
        this.f34735a = bVar.f34737a;
    }

    private String a(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception unused) {
            return str;
        }
    }
}
