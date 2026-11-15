package com.apm.insight.runtime;

import android.content.Context;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

public final class f {

    private Context f19181a;

    private HashMap<String, Long> f19182b;

    private int f19183c;

    private int f19184d;

    public f(Context context) {
        this.f19182b = null;
        this.f19183c = 50;
        this.f19184d = 100;
        this.f19181a = context;
        this.f19182b = b();
        this.f19183c = a.a(this.f19183c, "custom_event_settings", "npth_simple_setting", "crash_limit_issue");
        this.f19184d = a.a(this.f19184d, "custom_event_settings", "npth_simple_setting", "crash_limit_all");
    }

    private HashMap<String, Long> b() {
        File fileH = com.apm.insight.l.j.h(this.f19181a);
        HashMap<String, Long> map = new HashMap<>();
        map.put(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
        try {
            JSONArray jSONArrayA = com.apm.insight.l.f.a(fileH.getAbsolutePath());
            if (com.apm.insight.a.a(jSONArrayA)) {
                return map;
            }
            Long lDecode = Long.decode(jSONArrayA.optString(0, null));
            if (System.currentTimeMillis() - lDecode.longValue() > 86400000) {
                File fileG = com.apm.insight.l.j.g(this.f19181a);
                fileH.renameTo(new File(fileG, String.valueOf(System.currentTimeMillis())));
                String[] list = fileG.list();
                if (list != null && list.length > 5) {
                    Arrays.sort(list);
                    new File(fileG, list[0]).delete();
                }
                return map;
            }
            map.put(EventConstants.KEY_TIME, lDecode);
            for (int i10 = 1; i10 < jSONArrayA.length(); i10++) {
                String[] strArrSplit = jSONArrayA.optString(i10, "").split(" ");
                if (strArrSplit.length == 2) {
                    map.put(strArrSplit[0], Long.decode(strArrSplit[1]));
                }
            }
            return map;
        } catch (IOException unused) {
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
    }

    public final void a() throws Throwable {
        HashMap<String, Long> map = this.f19182b;
        Long lRemove = map.remove(EventConstants.KEY_TIME);
        if (lRemove == null) {
            com.apm.insight.c.a();
            j.a(new RuntimeException("err times, no time"), "NPTH_CATCH");
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(lRemove);
        sb2.append('\n');
        for (Map.Entry<String, Long> entry : map.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(' ');
            sb2.append(entry.getValue());
            sb2.append('\n');
        }
        try {
            com.apm.insight.l.f.a(com.apm.insight.l.j.h(this.f19181a), sb2.toString(), false);
        } catch (IOException unused) {
        }
    }

    public final boolean a(String str) {
        if (str == null) {
            str = "default";
        }
        return com.apm.insight.l.c.AnonymousClass1.a(this.f19182b, str, 1L).longValue() < ((long) this.f19183c) && com.apm.insight.l.c.AnonymousClass1.a(this.f19182b, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, 1L).longValue() < ((long) this.f19184d);
    }
}
