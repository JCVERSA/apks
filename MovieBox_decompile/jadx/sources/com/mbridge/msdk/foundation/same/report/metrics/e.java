package com.mbridge.msdk.foundation.same.report.metrics;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import java.util.Map;

public class e {

    private Map<String, String> f34793a = new HashMap();

    public void a(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            if (!(obj instanceof String)) {
                this.f34793a.put(str, obj + "");
            } else if (!TextUtils.isEmpty((String) obj)) {
                this.f34793a.put(str, (String) obj);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public Object b(String str) {
        return this.f34793a.get(str);
    }

    public void c(String str) {
        if (this.f34793a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f34793a.remove(str);
    }

    public boolean a(String str) {
        return this.f34793a.containsKey(str);
    }

    public Map<String, String> a() {
        return this.f34793a;
    }

    public void a(e eVar) {
        Map<String, String> map;
        Map<String, String> map2;
        if (eVar == null || (map = eVar.f34793a) == null || (map2 = this.f34793a) == null) {
            return;
        }
        map2.putAll(map);
    }
}
