package com.mgmi.platform;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.f.f;
import com.mgmi.net.bean.SdkConfigData;
import com.mgmi.ssp.MGTVAdFactory;
import com.mgmi.thirdparty.IpdxManager;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import defpackage.fyd;
import defpackage.i4d;
import defpackage.mpd;
import defpackage.n4d;
import defpackage.qwd;
import defpackage.u3d;
import defpackage.wad;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class b {
    public static SdkConfigData a = null;
    public static String s = "";
    public static String t = "";
    public static String u = "";
    private static b v;
    private boolean E;
    public List<String> b;
    public List<String> c;
    public String d;
    private IpdxManager z;
    private boolean w = false;
    private boolean x = true;
    private boolean y = true;
    public int e = 1;
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;
    public boolean i = false;
    public boolean j = false;
    private boolean A = false;
    public boolean k = true;
    public boolean l = false;
    public boolean m = false;
    public int n = 1;
    public int o = 1;
    public int p = 4;
    public int q = 3;
    public long r = 30000;
    private int B = -1;
    private int C = 0;
    private int D = 0;
    private boolean F = false;

    public class AnonymousClass1 extends com.mgadplus.netlib.base.b<SdkConfigData> {
        final Context a;

        public AnonymousClass1(Context context) {
            this.a = context;
        }

        @Override
        public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
        }

        @Override
        public void b(SdkConfigData sdkConfigData) {
            b.this.a(sdkConfigData, this.a, (com.mgmi.platform.b.a) null);
            SdkConfigData sdkConfigData2 = b.a;
            if (sdkConfigData2 != null && sdkConfigData2.lm_pkg_wl != null) {
                String packageName = this.a.getPackageName();
                if (b.a.lm_pkg_wl.size() > 0 && b.a.lm_pkg_wl.contains(packageName)) {
                    b.this.a(this.a, 1);
                }
            }
            if (b.a.ins_switch == 1) {
                i4d.a().b(new Runnable() {
                    @Override
                    public void run() {
                        String strJ;
                        b bVar = b.this;
                        SdkConfigData sdkConfigData3 = b.a;
                        if (sdkConfigData3 == null || TextUtils.isEmpty(sdkConfigData3.ins_info_desc)) {
                            return;
                        }
                        final String strA = wad.a(AnonymousClass1.this.a);
                        if (TextUtils.isEmpty(strA)) {
                            return;
                        }
                        try {
                            strJ = n4d.j(strA + "^" + String.valueOf(System.currentTimeMillis() / 1000), "jlk0m9l3");
                        } catch (Exception unused) {
                            strJ = null;
                        }
                        if (strJ != null) {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("info", strJ);
                                jSONObject.put(DownloadFacadeEnum.USER_DID, mpd.x(AnonymousClass1.this.a));
                                String oaid = MGTVAdFactory.getInstance().getOaid();
                                if (!TextUtils.isEmpty(oaid)) {
                                    jSONObject.put(CommonUrlParts.HUAWEI_OAID, oaid);
                                }
                                jSONObject.put("muid", e.c(AnonymousClass1.this.a));
                                jSONObject.put("lmac", e.e(AnonymousClass1.this.a));
                                jSONObject.put("ladid", e.d(AnonymousClass1.this.a));
                            } catch (Throwable unused2) {
                            }
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            Context context = anonymousClass1.a;
                            b bVar2 = b.this;
                            com.mgadplus.netlib.a.e.a(context, new com.mgadplus.netlib.a.a(b.a.ins_info_desc).a("Insinfo", jSONObject.toString(), com.mgadplus.netlib.base.c.a.BODY), new com.mgadplus.netlib.base.b<String>() {
                                @Override
                                public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
                                }

                                @Override
                                public void b(String str) {
                                    u3d.g(AnonymousClass1.this.a, "mgmi_app_store_cache", qwd.c(strA));
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    private b() {
        l();
    }

    public static void a(Context context) {
    }

    public static String g() {
        SdkConfigData sdkConfigData = a;
        return (sdkConfigData == null || TextUtils.isEmpty(sdkConfigData.cdn_dest)) ? "http://d.da.mgtv.com/d/crash" : a.cdn_dest;
    }

    private void l() {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.add("mobile2.da.mgtv.com");
        ArrayList arrayList2 = new ArrayList();
        this.c = arrayList2;
        arrayList2.add(ProxyConfig.MATCH_HTTPS);
        this.d = "mobile.da.mgtv.com";
    }

    private void m() {
        if (this.E) {
            return;
        }
        this.E = true;
        e.c();
    }

    public boolean b() {
        return !this.m;
    }

    public String c() {
        return null;
    }

    public boolean d() {
        return this.e == 1;
    }

    public String e() {
        String str;
        String str2;
        String strA = com.mgmi.f.a.a();
        if (!TextUtils.isEmpty(strA)) {
            return Uri.decode(strA);
        }
        SdkConfigData sdkConfigData = a;
        if (sdkConfigData == null || (str = sdkConfigData.host) == null || TextUtils.isEmpty(str) || (str2 = a.schema) == null || TextUtils.isEmpty(str2)) {
            return f.o() == 1 ? "https://oxnet.da.mgtv.com" : "https://xnet.da.mgtv.com";
        }
        return a.schema + "://" + a.host;
    }

    public String f() {
        String str;
        String str2;
        String strA = com.mgmi.f.a.a();
        if (!TextUtils.isEmpty(strA)) {
            return Uri.decode(strA);
        }
        SdkConfigData sdkConfigData = a;
        if (sdkConfigData == null || (str = sdkConfigData.live_host) == null || TextUtils.isEmpty(str) || (str2 = a.live_schema) == null || TextUtils.isEmpty(str2)) {
            return f.o() == 1 ? "https://oxnet.da.mgtv.com" : "https://adlive.da.mgtv.com";
        }
        return a.live_schema + "://" + a.live_host;
    }

    public boolean h() {
        return this.k;
    }

    public int i() {
        int i = this.p;
        if (i >= 3 && i <= 8) {
            return i;
        }
        return 4;
    }

    public int j() {
        return this.q;
    }

    public int k() {
        int i = this.C;
        if (i == 0) {
            this.C = i + 1;
            SourceKitLogger.a("BootAdsloader", "c2sPreloadTag = 0 use cache c2sPreload =" + this.B);
            return this.B;
        }
        int iF = u3d.f(com.mgmi.ads.api.c.a(), "C2SPRELOAD", -1);
        SourceKitLogger.a("BootAdsloader", "c2sPreloadTag = 1 use net c2sPreload =" + iF);
        return iF;
    }

    public void b(Context context, @Nullable String str) {
        if (this.F) {
            return;
        }
        com.mgmi.g.a aVar = new com.mgmi.g.a();
        if (str != null) {
            aVar.a(str);
            t = str;
        }
        String str2 = a().e() + "/sdk/config";
        if (fyd.e(context)) {
            this.F = true;
            com.mgadplus.netlib.a.e.a(null, new com.mgadplus.netlib.a.a(str2).a(com.mgmi.f.b.a(context, aVar, (String) null, false)), new AnonymousClass1(context));
        }
    }

    public static b a() {
        if (v == null) {
            synchronized (b.class) {
                try {
                    if (v == null) {
                        v = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return v;
    }

    private void a(Context context, SdkConfigData sdkConfigData) {
        if (sdkConfigData.lm_mid_bl == 1) {
            this.m = true;
            u3d.d(context, "mgmi_ssp_black", true);
        } else {
            this.m = false;
            u3d.d(context, "mgmi_ssp_black", false);
        }
        if (sdkConfigData.is_use_ad_cache == 1) {
            this.w = true;
        } else {
            this.w = false;
        }
        if (sdkConfigData.is_new_feature == 1) {
            u3d.d(context, "mgmi_switch_newfeature", true);
        } else {
            u3d.d(context, "mgmi_switch_newfeature", false);
        }
        int i = sdkConfigData.retry_status;
        if (i == 1) {
            this.o = i;
        } else {
            this.o = 0;
        }
        this.e = sdkConfigData.is_use_ipdx;
    }

    public void b(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.l = u3d.h(context, "mgmi_switch_ima", true);
        this.m = u3d.h(context, "mgmi_ssp_black", false);
        this.k = u3d.h(context, "mgmi_switch_newfeature", true);
        SourceKitLogger.a("mgadlog", "initSwitch");
        this.n = u3d.f(context, "mgmi_ssp_package_value", -1);
        SourceKitLogger.a("mgmi", "time duration=" + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    public boolean a(String str) {
        List<Integer> list;
        SdkConfigData sdkConfigData = a;
        if (sdkConfigData == null || (list = sdkConfigData.lm_pid_bl) == null) {
            return true;
        }
        return !list.contains(str);
    }

    public boolean a(Context context, String str) {
        List<String> list;
        SdkConfigData sdkConfigData = a;
        if (sdkConfigData != null && (list = sdkConfigData.lm_pkg_wl) != null) {
            if (list.size() > 0 && a.lm_pkg_wl.contains(str)) {
                a(context, 1);
                m();
                SourceKitLogger.a("mgadlog", "111111 true ");
                return true;
            }
            SourceKitLogger.a("mgadlog", "22222 true ");
            a(context, 0);
            return false;
        }
        if (this.n == 1) {
            m();
            SourceKitLogger.a("mgadlog", "33333 true ");
            return true;
        }
        SourceKitLogger.a("mgadlog", "44444 false ");
        return false;
    }

    public void a(Context context, int i) {
        if (this.n != i) {
            this.n = i;
            u3d.c(context, "mgmi_ssp_package_value", i);
        }
    }

    public void a(SdkConfigData sdkConfigData, Context context, @NonNull com.mgmi.platform.b.a aVar) {
        if (sdkConfigData != null) {
            a = sdkConfigData;
            if (context == null) {
                return;
            }
            a(context, sdkConfigData);
            if (a.is_use_ipdx == 1) {
                if (this.z == null) {
                    this.z = IpdxManager.a(context);
                }
                IpdxManager ipdxManager = this.z;
                SdkConfigData sdkConfigData2 = a;
                ipdxManager.a(sdkConfigData2.ipdx_url, sdkConfigData2.ipdx_err_url, sdkConfigData2.ipdx_advance_time);
                this.z.a();
            }
        }
    }
}
