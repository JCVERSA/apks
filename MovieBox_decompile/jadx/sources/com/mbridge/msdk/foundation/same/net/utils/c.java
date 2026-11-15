package com.mbridge.msdk.foundation.same.net.utils;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class c {

    private final String f34622a;

    private int f34623b;

    private ConcurrentHashMap<String, b> f34624c;

    private ArrayList<Integer> f34625d;

    private static class b {

        public int f34626a;

        public String f34627b;

        public long f34628c;

        public b(long j10, int i10, String str) {
            this.f34628c = j10;
            this.f34626a = i10;
            this.f34627b = str;
        }
    }

    private static class C0465c {

        private static final c f34629a = new c();
    }

    private List<Integer> a() {
        return Arrays.asList(-1, -10, -1201, -1202, -1203, -1205, -1206, -1208, -1301, -1302, -1305, -1306, -1307, -1915, 10602, 10603, 10604, 10609, 10610, 10616);
    }

    public static c b() {
        return C0465c.f34629a;
    }

    private c() {
        this.f34622a = "IDErrorUtil";
        this.f34624c = new ConcurrentHashMap<>();
        this.f34625d = new ArrayList<>();
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        gVarD = gVarD == null ? h.b().a() : gVarD;
        this.f34623b = gVarD.t() * 1000;
        if (gVarD.x() == null || gVarD.x().size() <= 0) {
            o0.b("IDErrorUtil", "Setting ercd is EMPTY and use default code list.");
            this.f34625d.addAll(a());
        } else {
            o0.b("IDErrorUtil", "Setting ercd not EMPTY will use setting.");
            this.f34625d.addAll(gVarD.x());
        }
    }

    public synchronized void a(String str, int i10, String str2, long j10) {
        if (this.f34624c.containsKey(str)) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (this.f34625d.contains(Integer.valueOf(i10))) {
            o0.b("IDErrorUtil", "addErrorInfo : " + str + " " + str2);
            this.f34624c.put(str, new b(j10, i10, str2));
        }
    }

    public e a(com.mbridge.msdk.foundation.same.net.wrapper.e eVar) {
        String str = eVar.a().get("app_id");
        String str2 = eVar.a().get("placement_id");
        String str3 = TextUtils.isEmpty(str2) ? "" : str2;
        String strReplace = eVar.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
        if (TextUtils.isEmpty(strReplace)) {
            strReplace = eVar.a().get("unit_ids");
            if (!TextUtils.isEmpty(strReplace)) {
                strReplace = strReplace.replace("[", "").replace("]", "");
            }
        }
        String str4 = strReplace;
        String str5 = eVar.a().get("ad_type");
        if (TextUtils.isEmpty(str5)) {
            str5 = "0";
        }
        return a(str, str4, str3, eVar.a().get("token"), str5);
    }

    private e a(String str, String str2, String str3, String str4, String str5) {
        int i10;
        String str6 = str + "_" + str3 + "_" + str2 + "_" + str5;
        b bVarA = a(str6);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.mbridge.msdk.tracker.network.g("data_res_type", "1"));
        if (bVarA != null && !TextUtils.isEmpty(bVarA.f34627b)) {
            try {
                if (bVarA.f34626a != -1) {
                    return e.a(new JSONObject(bVarA.f34627b), new com.mbridge.msdk.foundation.same.net.toolbox.a(200, bVarA.f34627b.getBytes(), arrayList));
                }
                if (!TextUtils.isEmpty(str4)) {
                    return null;
                }
                if (str5 != null && !TextUtils.isEmpty(str5) && (i10 = Integer.parseInt(str5)) != 287 && i10 != 94) {
                    if (System.currentTimeMillis() < ((long) (h.b().c(str, str2).u() * 1000)) + bVarA.f34628c) {
                        return e.a(new JSONObject(bVarA.f34627b), new com.mbridge.msdk.foundation.same.net.toolbox.a(200, bVarA.f34627b.getBytes(), arrayList));
                    }
                    this.f34624c.remove(str6);
                    return null;
                }
            } catch (Exception e10) {
                o0.b("IDErrorUtil", e10.getMessage());
            }
        }
        o0.b("IDErrorUtil", "getErrorInfo RETURN NULL");
        return null;
    }

    private synchronized b a(String str) {
        b bVar;
        o0.b("IDErrorUtil", "getErrorInfo : " + str);
        if (!this.f34624c.containsKey(str) || (bVar = this.f34624c.get(str)) == null) {
            return null;
        }
        if (bVar.f34626a == -1) {
            return bVar;
        }
        if (System.currentTimeMillis() > bVar.f34628c + ((long) this.f34623b)) {
            this.f34624c.remove(str);
            if (this.f34624c.size() > 0) {
                for (Map.Entry<String, b> entry : this.f34624c.entrySet()) {
                    o0.b("IDErrorUtil", "getErrorInfo : delete timeout entry");
                    if (System.currentTimeMillis() - entry.getValue().f34628c > this.f34623b) {
                        this.f34624c.remove(entry.getKey());
                    }
                }
            }
            return null;
        }
        o0.b("IDErrorUtil", "getErrorInfo : " + bVar.f34627b);
        return bVar;
    }
}
