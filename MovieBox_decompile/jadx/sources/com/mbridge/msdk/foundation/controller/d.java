package com.mbridge.msdk.foundation.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.interstitialvideo.out.MBInterstitialVideoHandler;
import com.mbridge.msdk.out.MBRewardVideoHandler;
import com.mbridge.msdk.out.MBridgeSDKFactory;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.j;
import java.util.List;
import java.util.Map;

public class d {

    private static volatile d f34204l;

    private int f34205a;

    private Map<String, Object> f34206b;

    private FastKV f34207c;

    private boolean f34208d = false;

    private String f34209e;

    private String f34210f;

    private String f34211g;

    private Context f34212h;

    private String f34213i;

    private com.mbridge.msdk.preload.a f34214j;

    private String f34215k;

    class a implements Runnable {

        final Context f34216a;

        a(Context context) {
            this.f34216a = context;
        }

        @Override
        public void run() {
            k0.h(this.f34216a);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            Looper.prepare();
            d.this.g();
            d.this.d();
            Looper.loop();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override
        public void run() {
            d dVar = d.this;
            dVar.a(dVar.f34209e);
            new h(d.this.f34212h).a();
        }
    }

    class C0458d implements com.mbridge.msdk.foundation.controller.a.e {
        C0458d() {
        }
    }

    class e implements Runnable {

        final String f34221a;

        e(String str) {
            this.f34221a = str;
        }

        @Override
        public void run() {
            try {
                Thread.sleep(350L);
            } catch (InterruptedException e10) {
                o0.b("SDKController", e10.getMessage());
            }
            new j().b(d.this.f34212h, this.f34221a, d.this.f34210f);
        }
    }

    private d() {
    }

    public void g() {
        try {
            com.mbridge.msdk.timer.b.class.getDeclaredMethod("start", null).invoke(com.mbridge.msdk.timer.b.class.getMethod("getInstance", null).invoke(null, null), null);
        } catch (Throwable th2) {
            o0.b("SDKController", th2.getMessage(), th2);
        }
    }

    public boolean e() {
        return true;
    }

    public void f() {
    }

    private void c() {
        com.mbridge.msdk.foundation.controller.c.m().b(this.f34212h);
        com.mbridge.msdk.foundation.controller.c.m().e(this.f34209e);
        com.mbridge.msdk.foundation.controller.c.m().f(this.f34210f);
        com.mbridge.msdk.foundation.controller.c.m().d(this.f34215k);
        com.mbridge.msdk.foundation.controller.c.m().b(this.f34211g);
        com.mbridge.msdk.foundation.controller.c.m().c(new C0458d());
        try {
            com.mbridge.msdk.foundation.same.net.utils.d.h().j();
        } catch (Throwable th2) {
            o0.b("SDKController", th2.getMessage());
        }
    }

    public void d() {
        List<com.mbridge.msdk.foundation.entity.a> listG;
        Object objNewInstance;
        Object objNewInstance2;
        try {
            g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD == null || (listG = gVarD.g()) == null || listG.size() <= 0) {
                return;
            }
            for (com.mbridge.msdk.foundation.entity.a aVar : listG) {
                if (aVar.a() == 287) {
                    if (this.f34212h != null && (objNewInstance = MBInterstitialVideoHandler.class.getConstructor(String.class, String.class).newInstance("", aVar.b())) != null) {
                        MBInterstitialVideoHandler.class.getMethod("loadFormSelfFilling", null).invoke(objNewInstance, null);
                    }
                } else if (aVar.a() == 94 && (objNewInstance2 = MBRewardVideoHandler.class.getConstructor(String.class, String.class).newInstance("", aVar.b())) != null) {
                    MBRewardVideoHandler.class.getMethod("loadFormSelfFilling", null).invoke(objNewInstance2, null);
                }
            }
        } catch (Throwable th2) {
            o0.b("SDKController", th2.getMessage());
        }
    }

    public void b() {
        a(this.f34212h.getApplicationContext());
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new b());
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new c());
            com.mbridge.msdk.foundation.same.report.j.b();
        } catch (Exception unused) {
            o0.b("SDKController", "get app setting failed");
        }
        this.f34208d = true;
    }

    public static d a() {
        if (f34204l == null) {
            synchronized (d.class) {
                try {
                    if (f34204l == null) {
                        f34204l = new d();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34204l;
    }

    public void b(String str) {
        if (this.f34214j == null) {
            this.f34214j = new com.mbridge.msdk.preload.a();
        }
        try {
            Map<String, Object> map = this.f34206b;
            if (map == null || map.size() <= 0 || !this.f34206b.containsKey(MBridgeConstans.PROPERTIES_LAYOUT_TYPE)) {
                return;
            }
            int iIntValue = ((Integer) this.f34206b.get(MBridgeConstans.PROPERTIES_LAYOUT_TYPE)).intValue();
            if (iIntValue == 0) {
                this.f34214j.a(this.f34206b, this.f34205a);
                return;
            }
            if (1 == iIntValue) {
                this.f34214j.a(this.f34206b);
            } else if (2 != iIntValue) {
                o0.b("SDKController", "unknow layout type in preload");
            } else {
                this.f34214j.b(this.f34206b);
            }
        } catch (Exception e10) {
            o0.b("SDKController", e10.getMessage());
        }
    }

    public void a(Map map, Context context) {
        Object obj;
        if (context != null) {
            if (!TextUtils.isEmpty(MBridgeConstans.DEVELOPER_CUSTOM_PACKAGE)) {
                com.mbridge.msdk.foundation.controller.c.m().c(MBridgeConstans.DEVELOPER_CUSTOM_PACKAGE);
            } else if (map.containsKey(MBridgeConstans.KEY_MBRIDGE_CUSTOM_PACKAGE_NAME) && (obj = map.get(MBridgeConstans.KEY_MBRIDGE_CUSTOM_PACKAGE_NAME)) != null) {
                String str = (String) obj;
                if (!TextUtils.isEmpty(str)) {
                    com.mbridge.msdk.foundation.controller.c.m().c(str);
                }
            }
            if (map != null) {
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_APPID)) {
                    this.f34209e = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPID);
                }
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_APPKEY)) {
                    this.f34210f = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPKEY);
                }
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_WX_APPID)) {
                    this.f34215k = (String) map.get(MBridgeConstans.ID_MBRIDGE_WX_APPID);
                }
                if (map.containsKey(MBridgeConstans.PACKAGE_NAME_MANIFEST)) {
                    this.f34211g = (String) map.get(MBridgeConstans.PACKAGE_NAME_MANIFEST);
                }
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH)) {
                    this.f34213i = (String) map.get(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH);
                }
            }
            this.f34212h = context.getApplicationContext();
            c();
            if (this.f34208d) {
                return;
            }
            b();
            k0.l(context);
            long jX0 = com.mbridge.msdk.setting.h.b().b(this.f34209e).x0();
            if (jX0 != 1300) {
                new Handler(Looper.getMainLooper()).postDelayed(new a(context), jX0);
            }
        }
    }

    private void a(Context context) {
        String string;
        try {
            if (e() && this.f34207c == null) {
                try {
                    this.f34207c = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), i0.a("H+tU+FeXHM==")).build();
                } catch (Exception unused) {
                    this.f34207c = null;
                }
            }
            FastKV fastKV = this.f34207c;
            String string2 = "";
            if (fastKV != null) {
                String string3 = fastKV.getString(i0.a("H+tU+bfPhM=="), "");
                String string4 = this.f34207c.getString(i0.a("H+tU+Fz8"), "");
                if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f34503g)) {
                    com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                    com.mbridge.msdk.foundation.same.a.f34503g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
                }
                if (TextUtils.isEmpty(string3) && TextUtils.isEmpty(string4)) {
                    if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f34503g)) {
                        return;
                    }
                    this.f34207c.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    this.f34207c.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f34503g);
                    return;
                }
                com.mbridge.msdk.foundation.same.a.V = string3;
                com.mbridge.msdk.foundation.same.a.f34503g = string4;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f34503g);
                return;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
            if (sharedPreferences != null) {
                string2 = sharedPreferences.getString(i0.a("H+tU+bfPhM=="), "");
                string = sharedPreferences.getString(i0.a("H+tU+Fz8"), "");
            } else {
                string = "";
            }
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f34503g)) {
                com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                com.mbridge.msdk.foundation.same.a.f34503g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
            }
            if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string)) {
                if ((TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f34503g)) || sharedPreferences == null) {
                    return;
                }
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                editorEdit.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f34503g);
                editorEdit.apply();
                return;
            }
            com.mbridge.msdk.foundation.same.a.V = string2;
            com.mbridge.msdk.foundation.same.a.f34503g = string;
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f34503g);
        } catch (Throwable th2) {
            o0.b("SDKController", th2.getMessage(), th2);
        }
    }

    public void a(String str) {
        if (com.mbridge.msdk.setting.h.b() == null) {
            return;
        }
        com.mbridge.msdk.setting.h hVarB = com.mbridge.msdk.setting.h.b();
        if (hVarB != null) {
            g gVarD = hVarB.d(str);
            if (gVarD != null) {
                MBridgeConstans.OMID_JS_SERVICE_URL = gVarD.U();
                MBridgeConstans.OMID_JS_H5_URL = gVarD.T();
                if (!TextUtils.isEmpty(gVarD.u())) {
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f34644i = gVarD.u();
                    com.mbridge.msdk.foundation.same.net.utils.d.h().e();
                }
                if (!TextUtils.isEmpty(gVarD.v())) {
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f34648m = gVarD.v();
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f();
                }
            } else {
                MBridgeConstans.OMID_JS_SERVICE_URL = com.mbridge.msdk.setting.net.b.f36506b;
                MBridgeConstans.OMID_JS_H5_URL = com.mbridge.msdk.setting.net.b.f36505a;
            }
        }
        if (com.mbridge.msdk.setting.h.b().f(str) && com.mbridge.msdk.setting.h.b().a(str, 1, (String) null)) {
            if (com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("is_first_init", 0) == 0) {
                try {
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().b("is_first_init", 1);
                    if (TextUtils.isEmpty(f.d())) {
                        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(str));
                    } else {
                        new j().b(this.f34212h, str, this.f34210f);
                    }
                    return;
                } catch (Throwable unused) {
                    new j().b(this.f34212h, str, this.f34210f);
                    return;
                }
            }
            new j().b(this.f34212h, str, this.f34210f);
        }
    }

    public void a(Map<String, Object> map, int i10) {
        if (MBridgeSDKFactory.getMBridgeSDK().getStatus() != MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED) {
            o0.b("SDKController", "preloaad failed,sdk do not inited");
            return;
        }
        this.f34206b = map;
        this.f34205a = i10;
        String strB = com.mbridge.msdk.foundation.controller.c.m().b();
        if (map != null) {
            b(strB);
        }
    }
}
