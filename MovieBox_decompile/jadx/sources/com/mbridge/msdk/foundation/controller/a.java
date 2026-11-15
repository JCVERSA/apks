package com.mbridge.msdk.foundation.controller;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class a {

    public static final String f34161q = com.mbridge.msdk.foundation.controller.c.class.getSimpleName();

    public static HashMap<String, String> f34162r = new HashMap<>();

    protected String f34164b;

    protected Context f34165c;

    protected String f34166d;

    private WeakReference<Activity> f34167e;

    private String f34168f;

    private int f34169g;

    private String f34172j;

    private String f34173k;

    private int f34174l;

    private WeakReference<Context> f34176n;

    private JSONObject f34177o;

    private final q f34163a = new q();

    private JSONObject f34170h = new JSONObject();

    private boolean f34171i = false;

    private ConcurrentHashMap<String, String> f34175m = new ConcurrentHashMap<>();

    private int f34178p = 0;

    class RunnableC0455a implements Runnable {
        RunnableC0455a() {
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.same.report.crashreport.e.a(a.this.f34165c).a();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.same.report.crashreport.d.c();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override
        public void run() {
            try {
                a aVar = a.this;
                aVar.f34164b = (String) w0.a(aVar.f34165c, "sp_appId", "");
            } catch (Throwable th2) {
                o0.b(a.f34161q, th2.getMessage());
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() {
            try {
                a aVar = a.this;
                aVar.f34172j = (String) w0.a(aVar.f34165c, "sp_appKey", "");
            } catch (Throwable th2) {
                o0.b(a.f34161q, th2.getMessage());
            }
        }
    }

    public interface e {
    }

    private void l() {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.b.i() && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                Object objA = w0.a(this.f34165c, MBridgeConstans.SP_GA_ID, "");
                Object objA2 = w0.a(this.f34165c, MBridgeConstans.SP_GA_ID_LIMIT, 0);
                if (objA instanceof String) {
                    String str = (String) objA;
                    if (TextUtils.isEmpty(str)) {
                        f.d();
                    } else {
                        f.a(str);
                    }
                    if (objA2 instanceof Integer) {
                        f.a(((Integer) objA2).intValue());
                    }
                }
            }
        } catch (Exception e10) {
            o0.b(f34161q, e10.getMessage());
        }
    }

    protected abstract void a(e eVar);

    public void b(int i10) {
        this.f34174l = i10;
    }

    public void c(int i10) {
        this.f34178p = i10;
    }

    public Context d() {
        return this.f34165c;
    }

    public q e() {
        return this.f34163a;
    }

    public Context f() {
        WeakReference<Context> weakReference = this.f34176n;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public int g() {
        return this.f34169g;
    }

    public String h() {
        try {
            if (!TextUtils.isEmpty(this.f34166d)) {
                return this.f34166d;
            }
            Context context = this.f34165c;
            if (context == null) {
                return null;
            }
            String packageName = context.getPackageName();
            this.f34166d = packageName;
            return packageName;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String i() {
        if (!TextUtils.isEmpty(this.f34173k)) {
            return this.f34173k;
        }
        Context context = this.f34165c;
        if (context != null) {
            return (String) w0.a(context, "sp_wx_appKey", "");
        }
        return null;
    }

    public JSONObject j() {
        return this.f34177o;
    }

    public int k() {
        return this.f34178p;
    }

    public WeakReference<Activity> a() {
        return this.f34167e;
    }

    public void b(e eVar) {
        try {
            k0.C(this.f34165c);
            a(eVar);
            h.a(this.f34165c, this.f34164b);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                try {
                    try {
                        k0.d(this.f34165c.getPackageManager().getApplicationInfo("com.android.vending", 0).enabled ? 1 : 2);
                    } catch (Throwable th2) {
                        o0.b(f34161q, th2.getMessage());
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    k0.d(0);
                }
            }
            try {
                g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (gVarD == null) {
                    gVarD = h.b().a();
                }
                q qVarE = com.mbridge.msdk.foundation.controller.c.m().e();
                if (qVarE != null && qVarE.b() && gVarD != null && gVarD.E() == 1) {
                    com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0455a());
                }
                if (qVarE == null || !qVarE.a()) {
                    return;
                }
                com.mbridge.msdk.foundation.same.threadpool.a.c().post(new b());
            } catch (Throwable th3) {
                o0.b(f34161q, th3.getMessage());
            }
        } catch (Exception e10) {
            o0.b(f34161q, e10.getMessage());
        }
    }

    public void c(e eVar) {
        if (this.f34171i) {
            return;
        }
        l();
        try {
            JSONObject jSONObject = new JSONObject();
            this.f34177o = jSONObject;
            jSONObject.put("webgl", 0);
        } catch (JSONException e10) {
            o0.b(f34161q, e10.getMessage());
        }
        b(eVar);
    }

    public void d(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f34173k = str;
            Context context = this.f34165c;
            if (context != null) {
                w0.b(context, "sp_wx_appKey", str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void e(String str) {
        Context context;
        try {
            this.f34164b = str;
            if (TextUtils.isEmpty(str) || (context = this.f34165c) == null) {
                return;
            }
            w0.b(context, "sp_appId", str);
        } catch (Exception e10) {
            o0.b(f34161q, e10.getMessage());
        }
    }

    public void f(String str) {
        Context context;
        try {
            this.f34172j = str;
            if (TextUtils.isEmpty(str) || (context = this.f34165c) == null) {
                return;
            }
            w0.b(context, "sp_appKey", str);
        } catch (Exception e10) {
            o0.b(f34161q, e10.getMessage());
        }
    }

    public void a(WeakReference<Activity> weakReference) {
        this.f34167e = weakReference;
    }

    public void a(Context context) {
        if (context instanceof Activity) {
            this.f34176n = new WeakReference<>(context);
        }
    }

    public void a(int i10) {
        this.f34169g = i10;
    }

    public BitmapDrawable a(String str, int i10) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        String str2;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = this.f34175m) == null || !concurrentHashMap.containsKey(str) || !q0.a().a("w_m_r_l", true)) {
            return null;
        }
        String str3 = this.f34175m.get(str);
        BitmapDrawable bitmapDrawableN = t0.n(str3);
        int i11 = TextUtils.isEmpty(str3) ? 2 : 1;
        if (TextUtils.isEmpty(str3)) {
            str2 = "get watermark failed";
        } else {
            str2 = bitmapDrawableN != null ? "" : "str to bitmap failed";
        }
        j.a(str, i10, i11, str2, bitmapDrawableN == null ? 2 : 1, str3);
        return bitmapDrawableN;
    }

    public String c() {
        try {
            if (!TextUtils.isEmpty(this.f34172j)) {
                return this.f34172j;
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new d());
            return "";
        } catch (Throwable th2) {
            o0.b(f34161q, th2.getMessage());
            return "";
        }
    }

    public void a(JSONObject jSONObject) {
        this.f34177o = jSONObject;
    }

    public void a(String str) {
        try {
            if (this.f34175m != null && !TextUtils.isEmpty(str) && this.f34175m.containsKey(str)) {
                this.f34175m.remove(str);
            }
        } catch (Exception e10) {
            o0.b(f34161q, e10.getMessage());
        }
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f34166d = str;
    }

    public void a(String str, JSONObject jSONObject) {
        if (q0.a().a("w_m_r_l", true)) {
            try {
                if (this.f34170h == null) {
                    this.f34170h = jSONObject;
                } else if (jSONObject != null) {
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        this.f34170h.put(next, jSONObject.get(next));
                    }
                }
                if (this.f34170h.has(MBridgeConstans.EXTRA_KEY_WM)) {
                    if (this.f34175m == null) {
                        this.f34175m = new ConcurrentHashMap<>();
                    }
                    this.f34175m.put(str, this.f34170h.getString(MBridgeConstans.EXTRA_KEY_WM));
                }
            } catch (Exception e10) {
                o0.b(f34161q, e10.getMessage());
            }
        }
    }

    public String b() {
        try {
            if (!TextUtils.isEmpty(this.f34164b)) {
                return this.f34164b;
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new c());
            return "";
        } catch (Exception e10) {
            o0.b(f34161q, e10.getMessage());
            return "";
        }
    }

    public void b(String str) {
        Context context;
        try {
            this.f34168f = str;
            if (TextUtils.isEmpty(str) || (context = this.f34165c) == null) {
                return;
            }
            w0.b(context, "applicationIds", str);
        } catch (Exception e10) {
            o0.b(f34161q, e10.getMessage());
        }
    }

    public void b(Context context) {
        this.f34165c = context;
    }
}
