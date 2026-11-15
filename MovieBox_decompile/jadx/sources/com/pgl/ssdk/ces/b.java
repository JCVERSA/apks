package com.pgl.ssdk.ces;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.pgl.ssdk.a0;
import com.pgl.ssdk.b0;
import com.pgl.ssdk.c0;
import com.pgl.ssdk.c1;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.pgl.ssdk.d0;
import com.pgl.ssdk.e0;
import com.pgl.ssdk.f0;
import com.pgl.ssdk.g0;
import com.pgl.ssdk.h0;
import com.pgl.ssdk.i0;
import com.pgl.ssdk.j0;
import com.pgl.ssdk.k0;
import com.pgl.ssdk.l0;
import com.pgl.ssdk.o0;
import com.pgl.ssdk.s;
import com.pgl.ssdk.t;
import com.pgl.ssdk.t0;
import com.pgl.ssdk.u;
import com.pgl.ssdk.u0;
import com.pgl.ssdk.v;
import com.pgl.ssdk.v0;
import com.pgl.ssdk.w;
import com.pgl.ssdk.x;
import com.pgl.ssdk.y;
import com.pgl.ssdk.z;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class b {

    private static volatile b f39266a = null;

    private static boolean f39267b = false;

    private static Map<String, Object> f39268c = null;

    private static int f39269d = 1;

    private static t0.a f39270e;

    public Context f39272g;

    private String f39273h;

    private int f39274i;

    private String f39275j;

    private String f39279n;

    public boolean f39271f = false;

    private String f39276k = null;

    private String f39277l = null;

    private boolean f39278m = false;

    private boolean f39280o = false;

    public int f39281p = 2;

    static class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            x.b(x.b());
        }
    }

    class RunnableC0552b implements Runnable {
        RunnableC0552b() {
        }

        @Override
        public void run() {
            i0.a(b.this.f39272g).a();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override
        public void run() {
            z.b(b.this.f39272g);
        }
    }

    private b(Context context, String str) {
        this.f39272g = context;
        this.f39273h = str;
    }

    public static b a(Context context, String str, int i10, int i11, String str2) {
        if (f39266a == null) {
            synchronized (b.class) {
                try {
                    if (f39266a == null) {
                        if (context == null) {
                            context = z.a().getApplicationContext();
                        }
                        if (context == null) {
                            f39269d = 4;
                            return null;
                        }
                        a(i10);
                        t0.a aVarB = t0.b(context, "nms");
                        if (aVarB != null) {
                            f39269d = aVarB.f39377a;
                            f39270e = aVarB;
                            return null;
                        }
                        b bVar = new b(context, str);
                        f39266a = bVar;
                        bVar.f39274i = i11;
                        f39266a.f39275j = str2;
                        f39266a.b(context);
                        f39266a.d(a(context));
                        x.c(context);
                        f39269d = 0;
                        o0.b(new a());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f39266a;
    }

    private void b(Context context) {
        if (context == null || f39267b) {
            return;
        }
        try {
            com.pgl.ssdk.ces.a.meta(101, null, "1");
            com.pgl.ssdk.ces.a.meta(102, null, this.f39273h);
            com.pgl.ssdk.ces.a.meta(Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, null, Integer.valueOf(this.f39274i));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(z.g(context));
            com.pgl.ssdk.ces.a.meta(105, null, sb2.toString());
            com.pgl.ssdk.ces.a.meta(106, null, z.e(context));
            com.pgl.ssdk.ces.a.meta(107, null, z.d(context));
            com.pgl.ssdk.ces.a.meta(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, null, z.c(context));
            com.pgl.ssdk.ces.a.meta(109, null, z.c());
            com.pgl.ssdk.ces.a.meta(110, null, z.b());
            com.pgl.ssdk.ces.a.meta(Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, null, this.f39275j);
            f39267b = true;
        } catch (Throwable unused) {
        }
    }

    public static String c() {
        if (h() != null) {
            return h().f39273h;
        }
        return null;
    }

    public static String d() {
        if (h() != null) {
            return h().f39276k;
        }
        return null;
    }

    public static String f() {
        b bVarH = h();
        if (bVarH == null || !bVarH.f39278m || TextUtils.isEmpty(bVarH.f39277l)) {
            return null;
        }
        return bVarH.f39277l;
    }

    public static int g() {
        return f39269d;
    }

    public static b h() {
        return f39266a;
    }

    public static t0.a i() {
        return f39270e;
    }

    public long e() {
        return x.a(this.f39272g);
    }

    public String j() {
        return x.c();
    }

    public String k() {
        return c1.a();
    }

    public void l() {
        this.f39280o = true;
        c1.a(this.f39272g, this.f39273h);
        a("Start", (Map<String, Object>) null);
    }

    private void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f39279n = str;
        com.pgl.ssdk.ces.a.meta(104, null, str);
    }

    public synchronized void c(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f39277l)) {
            com.pgl.ssdk.ces.a.meta(111, null, str);
            this.f39277l = str;
            c1.b();
        }
    }

    public synchronized void b(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f39276k)) {
            this.f39276k = str;
            com.pgl.ssdk.ces.a.meta(103, null, str);
            c1.b();
        }
    }

    public void b() {
        o0.b(new c());
    }

    private static String a(Context context) {
        String strA = u0.a(context, "iid");
        if (!TextUtils.isEmpty(strA)) {
            return strA;
        }
        String string = UUID.randomUUID().toString();
        u0.b(context, "iid", string);
        return string;
    }

    public static void a(int i10) {
        k0.a(i10);
    }

    public void a(String str, String str2, String str3, String str4) {
        b(str2);
        c(str4);
        try {
            l();
        } catch (Throwable unused) {
        }
    }

    public Map<String, String> a(String str, byte[] bArr) {
        HashMap map = new HashMap();
        if (str == null) {
            str = "";
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        String str2 = (String) com.pgl.ssdk.ces.a.meta(224, this.f39272g, new Object[]{str, bArr});
        if (!TextUtils.isEmpty(str2)) {
            map.put("X-Armors", str2);
        }
        return map;
    }

    public void a(String str, Map<String, Object> map) {
        try {
            long j10 = "Start".equals(str) ? 10000L : 0L;
            Handler handlerB = o0.b();
            if (handlerB != null) {
                handlerB.postDelayed(new l0(this.f39272g, Sdk$SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE, new Object[]{str, map}), j10);
            }
            a();
            x.a();
        } catch (Throwable unused) {
        }
    }

    public Object a(int i10, Object obj) {
        Object objValueOf;
        if (i10 == 123) {
            objValueOf = d0.a(this.f39272g);
        } else if (i10 == 121) {
            objValueOf = b0.a();
        } else if (i10 == 122) {
            objValueOf = b0.b();
        } else if (i10 == 126) {
            objValueOf = b0.b(this.f39272g);
        } else if (i10 == 128) {
            objValueOf = b0.c(this.f39272g);
        } else if (i10 == 120) {
            objValueOf = a0.c();
        } else if (i10 == 124) {
            objValueOf = e0.c(this.f39272g);
        } else if (i10 == 130) {
            objValueOf = e0.a(this.f39272g);
        } else if (i10 == 145) {
            objValueOf = f0.b(this.f39272g);
        } else if (i10 == 125) {
            objValueOf = e0.b(this.f39272g);
        } else if (i10 == 129) {
            objValueOf = c0.e(this.f39272g);
        } else if (i10 == 141) {
            objValueOf = c0.d(this.f39272g);
        } else if (i10 == 134) {
            objValueOf = h0.a(this.f39272g).b();
        } else if (i10 == 140) {
            objValueOf = i0.a(this.f39272g).e();
        } else if (i10 == 144) {
            objValueOf = i0.a(this.f39272g).d();
        } else if (i10 == 133) {
            objValueOf = a(obj);
        } else {
            if (i10 == 135) {
                return t.f();
            }
            if (i10 == 201) {
                objValueOf = b0.a(this.f39272g);
            } else if (i10 == 202) {
                objValueOf = b0.c();
            } else {
                if (i10 == 236) {
                    return v0.a((String) obj);
                }
                if (i10 == 142) {
                    objValueOf = z.f(this.f39272g);
                } else if (i10 == 143) {
                    objValueOf = f0.a(this.f39272g);
                } else {
                    if (i10 == 146) {
                        try {
                            return t.b();
                        } catch (Throwable unused) {
                            return null;
                        }
                    }
                    if (i10 == 147) {
                        objValueOf = Boolean.valueOf(z.h(this.f39272g));
                    } else if (i10 == 148) {
                        objValueOf = s.b(this.f39272g);
                    } else if (i10 == 149) {
                        objValueOf = u.a(this.f39272g);
                    } else if (i10 == 150) {
                        objValueOf = Integer.valueOf(v.a());
                    } else if (i10 == 151) {
                        objValueOf = u.c();
                    } else if (i10 == 161) {
                        objValueOf = Boolean.valueOf(t.g());
                    } else if (i10 == 169) {
                        objValueOf = Boolean.valueOf(y.b(this.f39272g));
                    } else {
                        if (i10 != 170) {
                            return null;
                        }
                        objValueOf = Integer.valueOf(w.b((String) obj));
                    }
                }
            }
        }
        return objValueOf;
    }

    public void a(MotionEvent motionEvent) {
        w.a(motionEvent, this.f39272g);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public synchronized void a(Map<String, Object> map) {
        byte b10;
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    try {
                        for (String str : map.keySet()) {
                            Object obj = map.get(str);
                            if (obj != null) {
                                switch (str.hashCode()) {
                                    case -2021683300:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_TRANSFER_HOST)) {
                                            b10 = 2;
                                        } else {
                                            b10 = -1;
                                        }
                                        break;
                                    case -1195280656:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_SEC_CONFIG_STR)) {
                                            b10 = 5;
                                        } else {
                                            b10 = -1;
                                        }
                                        break;
                                    case 156851746:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS)) {
                                            b10 = 3;
                                        } else {
                                            b10 = -1;
                                        }
                                        break;
                                    case 398905722:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_CHECKCLAZZ)) {
                                            b10 = 0;
                                        } else {
                                            b10 = -1;
                                        }
                                        break;
                                    case 485444716:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_TARGET_IDC)) {
                                            b10 = 4;
                                        } else {
                                            b10 = -1;
                                        }
                                        break;
                                    case 500804551:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_IPV6)) {
                                            b10 = 1;
                                        } else {
                                            b10 = -1;
                                        }
                                        break;
                                    default:
                                        b10 = -1;
                                        break;
                                }
                                if (b10 != 0) {
                                    if (b10 != 1) {
                                        if (b10 != 2) {
                                            if (b10 != 3) {
                                                if (b10 != 4) {
                                                    if (b10 == 5 && (obj instanceof String)) {
                                                        a((String) obj);
                                                    }
                                                } else if (obj instanceof String) {
                                                    k0.b((String) obj);
                                                }
                                            } else if (obj instanceof Set) {
                                                Set set = (Set) obj;
                                                com.pgl.ssdk.ces.a.meta(165, null, Boolean.valueOf(set.contains("boot")));
                                                com.pgl.ssdk.ces.a.meta(166, null, Boolean.valueOf(set.contains("mnc")));
                                                com.pgl.ssdk.ces.a.meta(167, null, Boolean.valueOf(set.contains("mcc")));
                                                com.pgl.ssdk.ces.a.meta(168, null, Boolean.valueOf(set.contains(UrlKt.KEY_MINI_GAID)));
                                                this.f39278m = set.contains(UrlKt.KEY_MINI_GAID);
                                            }
                                        } else if (obj instanceof String) {
                                            k0.a((String) obj);
                                        }
                                    } else if (obj instanceof String) {
                                        String str2 = (String) obj;
                                        if (!TextUtils.isEmpty(str2)) {
                                            j0.a(str2);
                                        }
                                    }
                                } else if (obj instanceof String) {
                                    String strA = g0.a((String) obj);
                                    if (!TextUtils.isEmpty(strA)) {
                                        com.pgl.ssdk.ces.a.meta(159, null, strA);
                                    }
                                }
                            }
                        }
                        if (f39268c == null) {
                            f39268c = new HashMap();
                        }
                        f39268c.putAll(map);
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003c  */
    private void a(String str) {
        byte b10;
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                int iHashCode = next.hashCode();
                if (iHashCode != -93508180) {
                    if (iHashCode == 944591168 && next.equals("report_ratio")) {
                        b10 = 1;
                    } else {
                        b10 = -1;
                    }
                } else if (next.equals("autoctl_detect_enable")) {
                    b10 = 0;
                } else {
                    b10 = -1;
                }
                if (b10 != 0) {
                    if (b10 == 1 && (obj instanceof Integer) && ((Integer) obj).intValue() > 0) {
                        this.f39281p = ((Integer) obj).intValue();
                    }
                } else if (obj instanceof Boolean) {
                    h0.f39307b = ((Boolean) obj).booleanValue();
                }
            }
        } catch (JSONException unused) {
        }
    }

    private String a(Object obj) {
        Map<String, Object> map;
        if (!(obj instanceof String) || !"Start".equals((String) obj) || (map = f39268c) == null || map.isEmpty()) {
            return "{}";
        }
        try {
            return new JSONObject(f39268c).toString();
        } catch (Exception unused) {
            return "{}";
        }
    }

    public void a() {
        o0.b(new RunnableC0552b());
    }
}
