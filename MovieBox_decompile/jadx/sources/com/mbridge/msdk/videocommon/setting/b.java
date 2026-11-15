package com.mbridge.msdk.videocommon.setting;

import android.text.TextUtils;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class b {

    private static ConcurrentHashMap<String, c> f39149c = new ConcurrentHashMap<>();

    public static com.mbridge.msdk.videocommon.setting.a f39150d = null;

    private static volatile b f39151e;

    private volatile boolean f39152a = false;

    private CopyOnWriteArrayList<String> f39153b = new CopyOnWriteArrayList<>();

    class a implements H5DownLoadManager.ZipDownloadListener {

        final String f39154a;

        final String f39155b;

        a(String str, String str2) {
            this.f39154a = str;
            this.f39155b = str2;
        }

        @Override
        public void onFailed(String str, String str2) {
            j.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39154a, this.f39155b, 2, str2);
        }

        @Override
        public void onSuccess(String str, String str2, boolean z10) {
            j.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39154a, this.f39155b, 1, "");
        }
    }

    private b() {
    }

    public static b b() {
        if (f39151e == null) {
            synchronized (b.class) {
                try {
                    if (f39151e == null) {
                        f39151e = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f39151e;
    }

    public void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f39153b.add(str);
        } catch (Exception unused) {
        }
    }

    public com.mbridge.msdk.videocommon.setting.a c() {
        com.mbridge.msdk.videocommon.setting.a aVar = f39150d;
        if (aVar != null) {
            return aVar;
        }
        String strA = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + com.mbridge.msdk.foundation.controller.c.m().b());
        if (TextUtils.isEmpty(strA)) {
            e(com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
            return a();
        }
        com.mbridge.msdk.videocommon.setting.a aVarA = com.mbridge.msdk.videocommon.setting.a.a(strA);
        if (!a(aVarA)) {
            return aVarA;
        }
        e(com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
        return a();
    }

    public String d(String str) {
        return com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + str);
    }

    public void e(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f39153b.remove(str);
        } catch (Exception unused) {
        }
    }

    public void f(String str, String str2) {
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + str, str2);
        f39150d = com.mbridge.msdk.videocommon.setting.a.a(str2);
    }

    public void g(String str, String str2) {
        try {
            String strA = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + str + "_" + str2);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strA);
            jSONObject.put("current_time", System.currentTimeMillis());
            a(str, str2, jSONObject.toString());
        } catch (Throwable th2) {
            o0.b("RewardSettingManager", th2.getMessage());
        }
    }

    public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.net.c cVar) {
        try {
            if (!TextUtils.isEmpty(str3) && !this.f39153b.contains(str3)) {
                a(str3);
                new com.mbridge.msdk.videocommon.net.a().a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, str3, cVar);
                return;
            }
            o0.a("test_reward_unit_setting", "unitID: " + str3 + " is requesting");
        } catch (Exception unused) {
        }
    }

    public c d(String str, String str2) {
        String str3 = "reward_" + str + "_" + str2;
        if (f39149c.containsKey(str3)) {
            return f39149c.get(str3);
        }
        c cVarA = c.a(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str3));
        if (cVarA != null) {
            f39149c.put(str3, cVarA);
        }
        return cVarA;
    }

    public void e(String str, String str2) {
        if (this.f39152a) {
            return;
        }
        this.f39152a = true;
        new com.mbridge.msdk.videocommon.net.a().a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2);
    }

    public void f(String str) {
        try {
            String strA = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + str);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strA);
            jSONObject.put("current_time", System.currentTimeMillis());
            f(str, jSONObject.toString());
        } catch (Throwable th2) {
            o0.b("RewardSettingManager", th2.getMessage());
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strC = b().a(com.mbridge.msdk.foundation.controller.c.m().b(), str, false).c();
        if (TextUtils.isEmpty(strC) || !TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(strC))) {
            return;
        }
        a(strC, str);
    }

    public c a(String str, String str2, boolean z10) {
        c cVar;
        boolean zA;
        String str3 = "reward_" + str + "_" + str2;
        if (f39149c.containsKey(str3)) {
            try {
                cVar = f39149c.get(str3);
                try {
                    zA = a(cVar);
                } catch (Exception unused) {
                    zA = false;
                }
            } catch (Exception unused2) {
                cVar = null;
            }
            if (zA) {
                a(str, com.mbridge.msdk.foundation.controller.c.m().c(), str2, null);
            }
            return cVar;
        }
        c cVarA = c.a(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str3));
        if (!a(cVarA)) {
            f39149c.put(str3, cVarA);
            return cVarA;
        }
        if (cVarA != null) {
            return cVarA;
        }
        a(str, com.mbridge.msdk.foundation.controller.c.m().c(), str2, null);
        return a(z10);
    }

    public com.mbridge.msdk.videocommon.setting.a d() {
        String str = "reward_" + com.mbridge.msdk.foundation.controller.c.m().b();
        if (f39150d == null) {
            String strA = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str);
            if (!TextUtils.isEmpty(strA)) {
                com.mbridge.msdk.videocommon.setting.a aVarA = com.mbridge.msdk.videocommon.setting.a.a(strA);
                if (aVarA != null) {
                    f39150d = aVarA;
                }
                return aVarA;
            }
        }
        return f39150d;
    }

    public c c(String str, String str2) {
        c cVar;
        boolean zA;
        String str3 = "reward_" + str + "_" + str2;
        if (f39149c.containsKey(str3)) {
            try {
                cVar = f39149c.get(str3);
                try {
                    zA = a(cVar);
                } catch (Exception unused) {
                    zA = false;
                }
            } catch (Exception unused2) {
                cVar = null;
            }
            if (zA) {
                a(str, com.mbridge.msdk.foundation.controller.c.m().c(), str2, null);
            }
            return cVar;
        }
        c cVarA = c.a(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str3));
        if (a(cVarA)) {
            a(str, com.mbridge.msdk.foundation.controller.c.m().c(), str2, null);
            return null;
        }
        f39149c.put(str3, cVarA);
        return cVarA;
    }

    public void b(boolean z10) {
        this.f39152a = z10;
    }

    public String b(String str, String str2) {
        return com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("reward_" + str + "_" + str2);
    }

    public boolean a(com.mbridge.msdk.videocommon.setting.a aVar) {
        if (aVar != null) {
            return aVar.b() + aVar.d() <= System.currentTimeMillis();
        }
        return true;
    }

    public static boolean c(String str) {
        JSONArray jSONArrayOptJSONArray;
        try {
            if (!TextUtils.isEmpty(str) && (jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("unitSetting")) != null) {
                String strOptString = jSONArrayOptJSONArray.optJSONObject(0).optString("unitId");
                if (jSONArrayOptJSONArray.length() > 0 && !TextUtils.isEmpty(strOptString)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public final com.mbridge.msdk.videocommon.setting.a a() {
        com.mbridge.msdk.videocommon.setting.a aVar = new com.mbridge.msdk.videocommon.setting.a();
        HashMap map = new HashMap(5);
        map.put("1", 1000);
        map.put(PrepareException.ERROR_MINI_APP_CLOSE, 1000);
        map.put(PrepareException.ERROR_MANIFEST_INFO, 1000);
        HashMap map2 = new HashMap(3);
        map2.put("1", new com.mbridge.msdk.videocommon.entity.c("Virtual Item", 1));
        aVar.a(map);
        aVar.b(map2);
        aVar.c(43200L);
        aVar.e(5400L);
        aVar.d(3600L);
        aVar.b(3600L);
        aVar.f(5L);
        aVar.a(1);
        return aVar;
    }

    private final boolean a(c cVar) {
        com.mbridge.msdk.videocommon.setting.a aVarC = c();
        if (aVarC == null || cVar == null) {
            return true;
        }
        return cVar.j() + aVarC.h() <= System.currentTimeMillis();
    }

    public void a(String str, String str2, String str3) {
        String str4 = "reward_" + str + "_" + str2;
        com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(str4, str3);
        c cVarA = c.a(str3);
        f39149c.put(str4, cVarA);
        if (com.mbridge.msdk.util.b.a() || TextUtils.isEmpty(cVarA.c())) {
            return;
        }
        a(cVarA.c(), str2);
    }

    private void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            j.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, 2, "alert url is exception ,url:" + str);
            return;
        }
        H5DownLoadManager.getInstance().downloadH5Res(new com.mbridge.msdk.foundation.same.report.metrics.c(true), str, new a(str, str2));
    }

    public c a(boolean z10) {
        c cVar = new c();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new com.mbridge.msdk.videocommon.entity.b(1, 30, null));
            cVar.a((List<com.mbridge.msdk.videocommon.entity.b>) arrayList);
            cVar.b(1);
            cVar.e(1);
            cVar.E(1);
            cVar.h(1);
            cVar.u(1);
            cVar.n(1);
            cVar.D(3);
            cVar.C(80);
            cVar.y(100);
            cVar.i(0);
            cVar.o(2);
            cVar.G(-1);
            cVar.p(70);
            cVar.H(2);
            if (z10) {
                cVar.I(5);
            } else {
                cVar.I(-1);
            }
            cVar.m(0);
            cVar.A(0);
            cVar.k(1);
            cVar.B(1);
            cVar.f(3);
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            arrayList2.add(4);
            arrayList2.add(6);
            cVar.a(arrayList2);
            cVar.q(1);
            cVar.F(1);
            cVar.r(60);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return cVar;
    }
}
