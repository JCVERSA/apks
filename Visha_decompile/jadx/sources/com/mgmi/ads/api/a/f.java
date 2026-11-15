package com.mgmi.ads.api.a;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.model.r;
import com.mgmi.net.bean.BootAdBean;
import com.mgmi.net.bean.BootDataItem;
import com.mgmi.net.bean.CustomBootAdBean;
import defpackage.ey4;
import defpackage.fyd;
import defpackage.g4d;
import defpackage.mpd;
import defpackage.n4d;
import defpackage.yld;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class f extends e implements com.mgtv.a.b.a.b {
    protected com.mgtv.a.b.b u;
    protected com.mgadplus.netlib.base.b v;
    BootAdBean w;
    long x;
    boolean y;
    private final ExecutorService z;

    public final class a {
        public a() {
        }

        public void a(@NonNull final String str, @NonNull Map<String, String> map, @NonNull d dVar, Context context, boolean z, final int i) {
            if (!fyd.e(context)) {
                f.this.a(false, 700002);
                return;
            }
            SourceKitLogger.a("BootAdsloader", "requestAds boot ad start:" + str);
            f.this.a(true);
            String strL = com.mgmi.f.f.l();
            f.this.v = new com.mgadplus.netlib.base.b<BootAdBean>() {
                @Override
                public void b(@NonNull BootAdBean bootAdBean) {
                    try {
                        com.mgmi.trace.a.a().c();
                        f.this.m();
                        if (bootAdBean == null) {
                            a(-1, 104000, "http vast format error", null, str);
                        } else {
                            SourceKitLogger.c("lyzzzzzz", "parseBootadBean-start");
                            f.this.x = System.currentTimeMillis();
                            f.this.a(bootAdBean, str, this, i);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

                @Override
                public void a(int i2, int i3, @Nullable String str2, @Nullable Throwable th, String str3) {
                    SourceKitLogger.a("BootAdsloader", "requestAds error reason=" + i3);
                    f.this.m();
                    f fVar = f.this;
                    fVar.a(fVar.i(), this, str3, str2, i3);
                    f.this.a(false, 700002);
                }
            };
            com.mgmi.trace.a.a().a(strL);
            if (fyd.e(context)) {
                com.mgadplus.netlib.a.a aVarA = new com.mgadplus.netlib.a.a(str).a(map).a(dVar.d());
                com.mgadplus.netlib.base.c.a aVar = com.mgadplus.netlib.base.c.a.HEADER;
                aVarA.a("auver", "v1", aVar);
                f fVar = f.this;
                aVarA.a("Authentication", fVar.a(context, fVar.i), aVar);
                f.this.a(true);
                com.mgadplus.netlib.a.e.a(context, aVarA, new com.mgadplus.netlib.base.b<BootAdBean>() {
                    @Override
                    public void b(@NonNull BootAdBean bootAdBean) {
                        f.this.a(false);
                        f.this.m();
                        f.this.a(bootAdBean, str, this, i);
                    }

                    @Override
                    public void a(int i2, int i3, @Nullable String str2, @Nullable Throwable th, String str3) {
                        f.this.a(false);
                        f.this.m();
                        if (i2 != 200) {
                            f fVar2 = f.this;
                            fVar2.a(fVar2.i(), this, str3, str2, i2);
                            f.this.a(false, 3002);
                        } else if (i3 != 0 && i3 != 200) {
                            f fVar3 = f.this;
                            fVar3.a(fVar3.i(), this, str3, str2, i3);
                            f.this.a(false, i3);
                        } else {
                            f fVar4 = f.this;
                            fVar4.a(fVar4.i(), this, str3, str2, i2);
                            if (!TextUtils.isEmpty(str2)) {
                                f.this.a(false, i2);
                            } else {
                                f.this.a(false, i2);
                            }
                        }
                    }
                });
            } else {
                f.this.a(false, 3001);
            }
            SourceKitLogger.a("mgmiad", "BootAdsloader.requestAds");
        }
    }

    public f(Activity activity) {
        super(activity);
        this.z = Executors.newSingleThreadExecutor();
    }

    private void a(Runnable runnable) {
        this.z.submit(runnable);
    }

    private void d(BootAdBean bootAdBean) {
        BootDataItem bootDataItem;
        if (bootAdBean == null || (bootDataItem = bootAdBean.data) == null || TextUtils.isEmpty(bootDataItem.type) || TextUtils.isEmpty(bootAdBean.data.url)) {
            return;
        }
        if (bootAdBean.data.type.equals("1")) {
            ey4.b(com.mgmi.ads.api.c.a(), bootAdBean.data.url, null);
        } else if (bootAdBean.data.type.equals("2") && TextUtils.isEmpty(yld.b(bootAdBean.data.url))) {
            yld.c(com.mgmi.ads.api.e.c.a(), com.mgmi.ads.api.e.c.b(), bootAdBean.data.url);
        }
    }

    private boolean s() {
        WeakReference<Context> weakReference;
        if (this.u == null && (weakReference = this.a) != null && weakReference.get() != null) {
            com.mgtv.a.b.b bVar = new com.mgtv.a.b.b();
            this.u = bVar;
            bVar.a((com.mgtv.a.b.a.b) this);
            d dVar = this.f;
            if (dVar != null) {
                this.u.a(dVar.h());
                this.u.a(this.a.get(), this.f.n());
            }
        }
        return this.u != null;
    }

    @Override
    public void b(d dVar) {
        a(dVar, (e.a) null);
    }

    @Override
    public void c() {
        super.c();
        com.mgtv.a.b.b bVar = this.u;
        if (bVar != null) {
            bVar.f_();
        }
    }

    @Override
    public void g() {
        com.mgtv.a.b.b bVar;
        d dVar = this.f;
        if (dVar == null || !dVar.t() || (bVar = this.u) == null) {
            return;
        }
        bVar.d();
    }

    @Override
    public void l() {
        d dVar = this.f;
        if (dVar == null || dVar.h() == null) {
            return;
        }
        com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_SUCCESS;
        BootAdBean bootAdBean = this.w;
        if (bootAdBean == null || bootAdBean.data == null) {
            this.f.h().onAdListener(enumC0161a, new CustomBootAdBean().setWidgetType("ADS_BOOT"));
        } else {
            this.f.h().onAdListener(enumC0161a, new CustomBootAdBean().setWidgetType("ADS_BOOT").setECpm(this.w.data.ssp_win_price));
        }
    }

    @Override
    public void m() {
        a(false);
        d dVar = this.f;
        if (dVar == null || dVar.h() == null) {
            return;
        }
        this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_NET_CALLBACK, new CustomBootAdBean());
    }

    public Activity n() {
        WeakReference<Context> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return (Activity) this.a.get();
    }

    @Override
    public void o() {
        this.y = true;
        d dVar = this.f;
        if (dVar == null || dVar.h() == null) {
            return;
        }
        this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_RENDER_SUCCESS, new CustomBootAdBean());
    }

    @Override
    public void p() {
    }

    @Override
    public void q() {
    }

    @Override
    public void r() {
        d dVar = this.f;
        if (dVar == null || dVar.h() == null) {
            return;
        }
        this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_FINISH, new CustomBootAdBean());
    }

    private void b(Context context, String str) {
        a(new com.mgmi.c.a.a(context, str, new com.mgmi.c.a.b() {
            @Override
            public void a() {
            }

            @Override
            public void a(String str2, File file) throws Throwable {
                com.mgmi.b.c.a().a(str2, file.getAbsolutePath());
            }
        }));
    }

    public void a(d dVar, e.a aVar) {
        Context context = this.a.get();
        this.l = false;
        this.f = dVar;
        this.g = aVar;
        this.j = "BootAdsloader";
        a(dVar);
        d(dVar);
        Map<String, String> mapA = a(context, dVar);
        if (context != null && mapA != null) {
            new a().a(dVar.i(), mapA, dVar, context, true, 1);
            return;
        }
        com.mgmi.ads.api.a aVarH = dVar.h();
        if (aVarH != null) {
            aVarH.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_FAIL, new CustomBootAdBean());
        }
    }

    private boolean c(BootAdBean bootAdBean) {
        BootDataItem bootDataItem;
        if (bootAdBean == null || (bootDataItem = bootAdBean.data) == null || bootDataItem.interact_tpid <= 0) {
            return false;
        }
        return !TextUtils.isEmpty(bootDataItem.interact_online);
    }

    public void b(BootAdBean bootAdBean) {
        BootDataItem bootDataItem;
        if (this.a.get() != null && bootAdBean != null && (bootDataItem = bootAdBean.data) != null && (!TextUtils.isEmpty(bootDataItem.url) || c(bootAdBean))) {
            BootDataItem bootDataItem2 = bootAdBean.data;
            bootDataItem2.hasExposed = false;
            if (!TextUtils.isEmpty(bootDataItem2.url)) {
                String[] strArrK = g4d.k(bootAdBean.data.url);
                if (strArrK != null) {
                    for (String str : strArrK) {
                        if (g4d.q(str)) {
                            BootDataItem bootDataItem3 = bootAdBean.data;
                            bootDataItem3.realUrl = str;
                            if (bootDataItem3.interact_tpid > 0) {
                                bootDataItem3.type = "4";
                                bootDataItem3.url = str;
                                break;
                            }
                            com.mgmi.ads.api.e.f.a();
                            String strA = com.mgmi.ads.api.e.f.a(str);
                            if (strA != null) {
                                BootDataItem bootDataItem4 = bootAdBean.data;
                                bootDataItem4.url = strA;
                                bootDataItem4.type = "4";
                                break;
                            }
                        } else {
                            BootDataItem bootDataItem5 = bootAdBean.data;
                            bootDataItem5.url = str;
                            if (bootDataItem5.interact_tpid > 0 && !TextUtils.isEmpty(bootDataItem5.interact_online)) {
                                BootDataItem bootDataItem6 = bootAdBean.data;
                                bootDataItem6.type = "4";
                                bootDataItem6.url = str;
                                bootDataItem6.realUrl = str;
                                break;
                            }
                            if (!TextUtils.isEmpty(bootAdBean.data.type)) {
                                if (!bootAdBean.data.type.equals("4")) {
                                    continue;
                                } else if (g4d.o(str)) {
                                    BootDataItem bootDataItem7 = bootAdBean.data;
                                    bootDataItem7.type = "1";
                                    bootDataItem7.isBackUp = true;
                                } else if (g4d.p(str)) {
                                    bootAdBean.data.type = "2";
                                } else {
                                    a(false, 700001);
                                    a(bootAdBean, 700009, "unKnown media type", str);
                                    com.mgmi.net.b.a().b().b(bootAdBean);
                                    return;
                                }
                            } else {
                                com.mgmi.net.b.a().b().b(bootAdBean);
                                a(false, 700001);
                                return;
                            }
                        }
                    }
                }
            } else if (c(bootAdBean)) {
                BootDataItem bootDataItem8 = bootAdBean.data;
                bootDataItem8.type = "4";
                String str2 = bootDataItem8.interact_online;
                bootDataItem8.url = str2;
                bootDataItem8.realUrl = str2;
            }
            if (s() && this.u.b(bootAdBean)) {
                d dVar = this.f;
                if (dVar != null) {
                    this.u.b(dVar.g());
                    this.u.a(this.f.a());
                }
                d dVar2 = this.f;
                if (dVar2 == null || !dVar2.t()) {
                    this.u.d();
                }
            }
            com.mgmi.trace.a.a().b(this.x);
            l();
            return;
        }
        com.mgmi.net.b.a().b().b(bootAdBean);
        a(false, 700001);
        com.mgmi.trace.a.a().a(bootAdBean, false);
    }

    @Override
    public void a() {
        super.a();
        com.mgtv.a.b.b bVar = this.u;
        if (bVar != null) {
            bVar.s();
        }
    }

    public void a(BootAdBean bootAdBean) {
        BootDataItem bootDataItem;
        List<BootDataItem> list;
        List<String> list2;
        BootDataItem bootDataItem2;
        List<BootDataItem> list3;
        List<String> list4;
        BootDataItem bootDataItem3;
        List<String> list5;
        BootDataItem bootDataItem4;
        List<String> list6;
        d(bootAdBean);
        if (bootAdBean != null && (bootDataItem4 = bootAdBean.data) != null && (list6 = bootDataItem4.backup_url) != null && !list6.isEmpty()) {
            Iterator<String> it = bootAdBean.data.backup_url.iterator();
            while (it.hasNext()) {
                b(com.mgmi.ads.api.c.a(), it.next());
            }
        }
        if (bootAdBean != null && (bootDataItem3 = bootAdBean.data) != null && (list5 = bootDataItem3.backup_video_url) != null && !list5.isEmpty()) {
            for (String str : bootAdBean.data.backup_video_url) {
                if (yld.b(str) == null) {
                    yld.c(com.mgmi.ads.api.e.c.a(), com.mgmi.ads.api.e.c.b(), str);
                }
            }
        }
        if (bootAdBean != null && (bootDataItem2 = bootAdBean.data) != null && (list3 = bootDataItem2.ad_list) != null && list3.size() > 0) {
            int size = bootAdBean.data.ad_list.size();
            for (int i = 0; i < size; i++) {
                BootDataItem bootDataItem5 = bootAdBean.data.ad_list.get(i);
                if (bootDataItem5 != null && (("huge".equalsIgnoreCase(bootDataItem5.ad_type) || "imax".equalsIgnoreCase(bootDataItem5.ad_type)) && (list4 = bootDataItem5.backup_url) != null && list4.size() > 0)) {
                    Iterator<String> it2 = bootDataItem5.backup_url.iterator();
                    while (it2.hasNext()) {
                        b(com.mgmi.ads.api.c.a(), it2.next());
                    }
                }
            }
        }
        if (bootAdBean == null || (bootDataItem = bootAdBean.data) == null || (list = bootDataItem.ad_list) == null || list.size() <= 0) {
            return;
        }
        int size2 = bootAdBean.data.ad_list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            BootDataItem bootDataItem6 = bootAdBean.data.ad_list.get(i2);
            if (bootDataItem6 != null && (("huge".equalsIgnoreCase(bootDataItem6.ad_type) || "imax".equalsIgnoreCase(bootDataItem6.ad_type)) && (list2 = bootDataItem6.backup_video_url) != null && list2.size() > 0)) {
                for (String str2 : bootDataItem6.backup_video_url) {
                    if (yld.b(str2) == null) {
                        yld.c(com.mgmi.ads.api.e.c.a(), com.mgmi.ads.api.e.c.b(), str2);
                    }
                }
            }
        }
    }

    public void a(BootAdBean bootAdBean, String str, com.mgadplus.netlib.base.b bVar, int i) {
        BootDataItem bootDataItem;
        if (bootAdBean != null && i == 3) {
            bootAdBean.isWarmBoot = true;
        }
        a(bootAdBean, bVar);
        b(bootAdBean, bVar);
        if (bootAdBean != null && (bootDataItem = bootAdBean.data) != null && bootDataItem.type != null) {
            this.w = bootAdBean;
            long jI = com.mgmi.platform.b.a().i() * 1000;
            long jC = jI > bVar.c() ? jI - bVar.c() : 1000L;
            a(bootAdBean);
            a(n(), bootAdBean, this.f, str, bVar, jC);
            return;
        }
        a(this.f, bVar, str, "AD_VAST_REQUEST_ERROR_NOT_VAST_CONTENT", 103000);
        a(false, 700001);
        com.mgmi.net.b.a().b().b(bootAdBean);
    }

    public void b(BootAdBean bootAdBean, com.mgadplus.netlib.base.b bVar) {
        if (bootAdBean == null || bVar == null) {
            return;
        }
        com.mgmi.net.bean.d dVar = new com.mgmi.net.bean.d();
        dVar.b = bVar.c();
        bootAdBean.thirdPartSdkCostItem = dVar;
        if (!"3".equals(bootAdBean.data.type) || TextUtils.isEmpty(bootAdBean.data.url)) {
            return;
        }
        bootAdBean.thirdPartSdkCostItem.c = bootAdBean.data.url;
    }

    private void a(boolean z, Activity activity, BootAdBean bootAdBean, d dVar, String str, com.mgadplus.netlib.base.b bVar, long j) {
        BootDataItem bootDataItem;
        SourceKitLogger.a("mgmiad", "BootAdsloader.playBoot");
        if (bootAdBean != null && (bootDataItem = bootAdBean.data) != null && activity != null) {
            if ("1".equals(bootDataItem.type) || "2".equals(bootAdBean.data.type) || "4".equals(bootAdBean.data.type)) {
                a(dVar, bVar, str, (r) null);
                b(bootAdBean);
                return;
            }
            return;
        }
        a(dVar, bVar, str, "AD_VAST_REQUEST_ERROR_NOT_VAST_CONTENT", 103000);
        a(false, 700001);
        com.mgmi.net.b.a().b().b(bootAdBean);
        com.mgmi.trace.a.a().a(bootAdBean, false);
    }

    @Override
    public void b() {
        super.b();
        com.mgtv.a.b.b bVar = this.u;
        if (bVar != null) {
            bVar.g_();
        }
    }

    private void a(Activity activity, BootAdBean bootAdBean, d dVar, String str, com.mgadplus.netlib.base.b bVar, long j) {
        a(false, activity, bootAdBean, dVar, str, bVar, j);
    }

    public void a(BootAdBean bootAdBean, int i, String str, String str2) {
        String str3;
        if (bootAdBean == null || (str3 = bootAdBean.data.err) == null) {
            return;
        }
        String strReplace = str3.replace("[ERRORCODE]", String.valueOf(i));
        String strB = "null";
        String strReplace2 = strReplace.replace("[ERRORMSG]", str == null ? "null" : g4d.b(str));
        if (str2 != null) {
            strB = g4d.b(str2);
        }
        this.e.a(strReplace2.replace("[ERRORURL]", strB));
    }

    @Override
    @UiThread
    public void a(boolean z, int i) {
        d dVar = this.f;
        if (dVar == null || dVar.h() == null) {
            return;
        }
        this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_FAIL, new CustomBootAdBean().setErrorCode(i).setWidgetType("ADS_BOOT"));
    }

    @Override
    public void a(String str, int i, String str2) {
        r();
    }

    @Override
    public void a(int i, Object obj) {
        if (i == 600000) {
            d dVar = this.f;
            if (dVar != null && dVar.h() != null) {
                this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.CLOSE_AD, new CustomBootAdBean());
            }
            com.mgtv.a.b.b bVar = this.u;
            if (bVar != null) {
                bVar.s();
            }
        }
    }

    @Override
    public String a(Context context, String str) {
        try {
            return n4d.j(g4d.i(mpd.F(context)) + "^" + String.valueOf(System.currentTimeMillis() / 1000), str);
        } catch (Exception unused) {
            SourceKitLogger.a("mgmi", "generateAuthenticationtoken error");
            return "";
        }
    }

    public void a(BootAdBean bootAdBean, com.mgadplus.netlib.base.b bVar) {
        if (bootAdBean == null || bVar == null) {
            return;
        }
        com.mgmi.net.bean.a aVar = new com.mgmi.net.bean.a();
        aVar.b = bVar.c();
        aVar.a(bVar.e());
        aVar.b(bVar.f());
        BootDataItem bootDataItem = bootAdBean.data;
        if (bootDataItem != null) {
            aVar.f = bootDataItem.url;
        }
        bootAdBean.reportCreativeTrackInfo = aVar;
    }

    @Override
    public void a(boolean z, com.mgmi.e.a aVar) {
        com.mgtv.a.b.b bVar = this.u;
        if (bVar != null) {
            bVar.a(z, aVar);
        }
    }
}
