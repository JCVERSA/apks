package com.mgtv.a.a;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgadplus.brower.CustomWebActivity;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgadplus.mgutil.o;
import com.mgmi.R;
import com.mgmi.ads.api.c;
import com.mgmi.ads.api.e;
import com.mgmi.ads.api.j;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.e.a.d;
import com.mgmi.e.f;
import com.mgmi.e.g;
import com.mgmi.model.Clicks;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTFloatAd;
import com.mgmi.net.bean.BootAdBean;
import com.mgmi.net.bean.BootDataItem;
import com.mgmi.net.bean.BootEncTrace;
import com.mgmi.net.bean.CustomBootAdBean;
import defpackage.bld;
import defpackage.dkd;
import defpackage.g4d;
import defpackage.h2d;
import defpackage.j4d;
import defpackage.k7d;
import defpackage.m5d;
import defpackage.wrd;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class b {
    private String b;
    private String f;
    private VASTAd g;
    private BootDataItem h;
    private d i;
    private WeakReference<Context> j;
    private e k;
    private com.mgmi.ads.api.a l;
    private String a = "0";
    private boolean c = false;
    private boolean d = true;
    private String m = null;
    private String n = null;
    private boolean e = false;

    public b(WeakReference<Context> weakReference, @NonNull Object obj, String str) {
        if (obj instanceof VASTAd) {
            VASTAd vASTAd = (VASTAd) obj;
            this.g = vASTAd;
            this.f = String.valueOf(vASTAd.getVastAid());
        } else if (obj instanceof BootAdBean) {
            this.h = ((BootAdBean) obj).data;
            this.f = "";
        }
        this.j = weakReference;
        this.b = str;
        this.i = com.mgmi.net.b.a().b();
    }

    public void b(View view, final dkd dkdVar) {
        int delayRandTime;
        com.mgmi.ads.api.a.EnumC0161a enumC0161a;
        int delayRandTime2;
        j.a().a(this.g);
        VASTAd vASTAd = this.g;
        final Clicks videoClick = null;
        if (vASTAd != null) {
            if (vASTAd.getCurrentStaticResource() != null) {
                videoClick = this.g.getCurrentStaticResource().getVideoClick();
                this.d = true;
            }
            if (videoClick == null && this.g.getCurrentMediaFile() != null) {
                this.d = false;
                videoClick = this.g.getCurrentMediaFile().getVideoClick();
            }
            if (videoClick == null) {
                this.d = false;
                videoClick = this.g.getVideoClick();
            }
        }
        if (videoClick == null || videoClick.getClickThrough() == null) {
            if (this.g != null) {
                if (dkdVar != null) {
                    try {
                        if (dkdVar.e()) {
                            return;
                        }
                    } catch (Throwable unused) {
                        return;
                    }
                }
                if (this.i != null) {
                    VASTAd vASTAd2 = this.g;
                    if ((vASTAd2 instanceof VASTFloatAd) && (delayRandTime = ((VASTFloatAd) vASTAd2).getDelayRandTime()) > 0) {
                        j4d.c(new Runnable() {
                            @Override
                            public void run() {
                                g gVar = new g();
                                gVar.a(dkdVar);
                                gVar.a(b.this.b);
                                gVar.b("3");
                                b.this.i.b(b.this.g, gVar);
                            }
                        }, delayRandTime);
                        return;
                    }
                    g gVar = new g();
                    gVar.a(dkdVar);
                    gVar.a(this.b);
                    gVar.b("3");
                    this.i.b(this.g, gVar);
                    return;
                }
                return;
            }
            return;
        }
        videoClick.getDeepLink(a());
        String clickUrl = videoClick.getClickUrl();
        VASTAd vASTAd3 = this.g;
        if (vASTAd3 != null && "1".equalsIgnoreCase(vASTAd3.getClk_macro())) {
            clickUrl = bld.a(dkdVar, clickUrl);
        }
        String str = clickUrl;
        String external = videoClick.getExternal();
        final String strA = g4d.a();
        boolean zF = dkdVar != null ? dkdVar.f() : false;
        if (this.i != null) {
            VASTAd vASTAd4 = this.g;
            if (!(vASTAd4 instanceof VASTFloatAd) || (delayRandTime2 = ((VASTFloatAd) vASTAd4).getDelayRandTime()) <= 0) {
                g gVarF = new g().f("0");
                gVarF.a(dkdVar);
                gVarF.a(this.b);
                if (dkdVar != null) {
                    gVarF.b(videoClick.getDeepLinkReport()).g(dkdVar.h() != null ? dkdVar.h() : strA);
                } else {
                    gVarF.b(videoClick.getDeepLinkReport()).g(strA);
                }
                if (dkdVar == null || !dkdVar.e()) {
                    if (this.d || this.g.getShow_type() <= 0 || this.g.getShow_type() > 5) {
                        this.i.b(this.g, gVarF);
                    } else {
                        this.i.g(this.g, gVarF);
                    }
                }
            } else {
                j4d.c(new Runnable() {
                    @Override
                    public void run() {
                        g gVarF2 = new g().f("0");
                        gVarF2.a(dkdVar);
                        gVarF2.a(b.this.b);
                        if (dkdVar != null) {
                            gVarF2.b(videoClick.getDeepLinkReport()).g(dkdVar.h() != null ? dkdVar.h() : strA);
                        } else {
                            gVarF2.b(videoClick.getDeepLinkReport()).g(strA);
                        }
                        dkd dkdVar2 = dkdVar;
                        if (dkdVar2 == null || !dkdVar2.e()) {
                            if (b.this.d || b.this.g.getShow_type() <= 0 || b.this.g.getShow_type() > 5) {
                                b.this.i.b(b.this.g, gVarF2);
                            } else {
                                b.this.i.g(b.this.g, gVarF2);
                            }
                        }
                    }
                }, delayRandTime2);
            }
        }
        if (zF || TextUtils.isEmpty(str)) {
            return;
        }
        if (com.mgmi.f.e.d()) {
            SourceKitLogger.a("fz", "onclick url=" + str);
            AdWidgetInfo uuid = new AdWidgetInfo("ADS_VIDEO_WIDGET").setClickUrl(str).setUuid(strA);
            VASTAd vASTAd5 = this.g;
            if (vASTAd5 != null) {
                com.mgmi.ads.api.g.a(uuid, vASTAd5.isShowLandAdLog(), this.g.getAdOrigin());
            }
            if (videoClick.getSchemeNoticeConfirm() == 1) {
                uuid.setAwayAppType(com.mgmi.ads.api.d.AWAY_APP_TYPE_YES);
            } else {
                uuid.setAwayAppType(com.mgmi.ads.api.d.AWAY_APP_TYPE_NO);
            }
            if (a(str, videoClick.getSchemeNoticeConfirm() == 1, new e() {
                @Override
                public void a() {
                    if (b.this.k != null) {
                        b.this.k.a();
                    }
                }

                @Override
                public void b() {
                    if (b.this.k != null) {
                        b.this.k.b();
                    }
                }
            })) {
                o.c(videoClick.getClickThrough(), this.g.getTraceCheck());
                return;
            } else {
                a(external, str, videoClick, uuid, dkdVar);
                o.c(videoClick.getClickThrough(), this.g.getTraceCheck());
                return;
            }
        }
        AdWidgetInfo uuid2 = new AdWidgetInfo("ADS_VIDEO_WIDGET").setClickUrl(str).setUuid(strA);
        VASTAd vASTAd6 = this.g;
        if (vASTAd6 != null) {
            com.mgmi.ads.api.g.a(uuid2, vASTAd6.isShowLandAdLog(), this.g.getAdOrigin());
        }
        if (videoClick.getSchemeNoticeConfirm() == 1) {
            uuid2.setAwayAppType(com.mgmi.ads.api.d.AWAY_APP_TYPE_YES);
        } else {
            uuid2.setAwayAppType(com.mgmi.ads.api.d.AWAY_APP_TYPE_NO);
        }
        if (external.equals("2")) {
            com.mgmi.ads.api.a aVar = this.l;
            if (aVar == null || !aVar.isFullScreen()) {
                VASTAd vASTAd7 = this.g;
                enumC0161a = (vASTAd7 == null || vASTAd7.getAdStyle() != 5) ? com.mgmi.ads.api.a.EnumC0161a.JUMP_HARFSCREEN_SCHEMA : com.mgmi.ads.api.a.EnumC0161a.JUMP_SHOWTIME_HARFSCREEN_SCHEMA;
            } else {
                enumC0161a = com.mgmi.ads.api.a.EnumC0161a.LOAD_HARFSCREEN_SCHEMA;
            }
        } else {
            enumC0161a = external.equals("3") ? com.mgmi.ads.api.a.EnumC0161a.JUMP_HARFSCREEN_SCHEMA : com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA;
        }
        com.mgmi.ads.api.a aVar2 = this.l;
        if (aVar2 != null) {
            aVar2.onAdListener(enumC0161a, uuid2);
        }
        o.c(videoClick.getClickThrough(), this.g.getTraceCheck());
    }

    public void c(View view, dkd dkdVar) {
        String str;
        String strA;
        BootEncTrace bootEncTrace;
        BootDataItem bootDataItem = this.h;
        if (bootDataItem == null || (str = bootDataItem.jumpKind) == null || TextUtils.isEmpty(str) || this.h.jumpKind.equals("0")) {
            if (this.i == null || this.h == null) {
                return;
            }
            g gVar = new g();
            gVar.a(this.b);
            gVar.a(dkdVar);
            j.a().a(this.h);
            BootDataItem bootDataItem2 = this.h;
            bootDataItem2.pageUrl = a(bootDataItem2.pageUrl);
            gVar.b("3");
            this.i.a(this.h, gVar);
            return;
        }
        g gVar2 = new g();
        j.a().a(this.h);
        gVar2.a(this.b);
        gVar2.a(dkdVar);
        gVar2.f("0");
        BootDataItem bootDataItem3 = this.h;
        String str2 = bootDataItem3.pageUrl;
        bootDataItem3.pageUrl = a(str2);
        gVar2.b(this.a);
        CustomBootAdBean customBootAdBean = new CustomBootAdBean();
        BootDataItem bootDataItem4 = this.h;
        com.mgmi.ads.api.g.a(customBootAdBean, bootDataItem4.landAdLog != 0, bootDataItem4.advertiser);
        customBootAdBean.setChildId(this.h.childId);
        customBootAdBean.setJump_type(this.h.jump_type);
        customBootAdBean.setJumpid(this.h.jumpId);
        customBootAdBean.setJumpkind(this.h.jumpKind);
        String strA2 = !TextUtils.isEmpty(this.h.webviewClickUrl) ? this.h.webviewClickUrl : this.h.pageUrl;
        BootDataItem bootDataItem5 = this.h;
        if (bootDataItem5 != null && bootDataItem5 != null && "1".equalsIgnoreCase(bootDataItem5.clk_macro)) {
            strA2 = bld.a(dkdVar, strA2);
        }
        customBootAdBean.setPageUrl(strA2);
        customBootAdBean.setJump_val(this.h.jump_val);
        customBootAdBean.setTransfer(this.h.transfer);
        if (g4d.m(customBootAdBean.getPageUrl())) {
            strA = g4d.a();
            gVar2.g(strA);
        } else {
            strA = null;
        }
        if (!this.e && this.i != null) {
            this.e = true;
            if (dkdVar == null || !dkdVar.e()) {
                BootDataItem bootDataItem6 = this.h;
                if (bootDataItem6 != null && (bootEncTrace = bootDataItem6.enc) != null) {
                    this.h.click = a(bootDataItem6.click, bootEncTrace.click);
                }
                this.i.a(this.h, gVar2);
            } else {
                this.e = false;
            }
        }
        if (!a(customBootAdBean.getPageUrl(), this.h.confirm == 1, new e() {
            @Override
            public void a() {
                if (b.this.k != null) {
                    b.this.k.a();
                }
            }

            @Override
            public void b() {
                if (b.this.k != null) {
                    b.this.k.b();
                }
            }
        })) {
            customBootAdBean.setAwayAppType(this.h.confirm == 1 ? com.mgmi.ads.api.d.AWAY_APP_TYPE_YES : com.mgmi.ads.api.d.AWAY_APP_TYPE_NO);
            a(str2, strA, customBootAdBean);
            return;
        }
        o.b(str2, this.h.trace);
        com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA;
        com.mgmi.ads.api.a aVar = this.l;
        if (aVar != null) {
            aVar.onAdListener(enumC0161a, new CustomBootAdBean());
        }
    }

    public void a(com.mgmi.ads.api.a aVar) {
        this.l = aVar;
    }

    @Nullable
    public Context a() {
        WeakReference<Context> weakReference = this.j;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void a(View view, dkd dkdVar) {
        if (this.g != null) {
            b(view, dkdVar);
        } else if (this.h != null) {
            c(view, dkdVar);
        }
    }

    private void a(String str, final String str2, final Clicks clicks, final AdWidgetInfo adWidgetInfo, final dkd dkdVar) {
        if (str == null || str2 == null || adWidgetInfo == null) {
            return;
        }
        if (com.mgmi.f.e.d()) {
            if (g4d.m(str2)) {
                if (adWidgetInfo.getAwayAppType() == com.mgmi.ads.api.d.AWAY_APP_TYPE_YES) {
                    a(a(), R.string.mgmi_confirm_download, new m5d.b() {
                        @Override
                        public void a() {
                            String uuid = adWidgetInfo.getUuid();
                            if (b.this.a(uuid, str2)) {
                                b bVar = b.this;
                                VASTAd vASTAd = bVar.g;
                                dkd dkdVar2 = dkdVar;
                                Clicks clicks2 = clicks;
                                if (uuid == null) {
                                    uuid = "";
                                }
                                bVar.a(vASTAd, dkdVar2, clicks2, uuid);
                                Clicks clicks3 = clicks;
                                if (clicks3 != null) {
                                    o.c(clicks3.getClickThrough(), b.this.g.getTraceCheck());
                                }
                            }
                        }

                        @Override
                        public void b() {
                        }
                    });
                    return;
                }
                String uuid = adWidgetInfo.getUuid();
                if (a(uuid, str2)) {
                    VASTAd vASTAd = this.g;
                    if (uuid == null) {
                        uuid = "";
                    }
                    a(vASTAd, dkdVar, clicks, uuid);
                    if (clicks != null) {
                        o.c(clicks.getClickThrough(), this.g.getTraceCheck());
                        return;
                    }
                }
            }
            if ("1".equals(str)) {
                try {
                    h2d.h(a(), str2);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } else {
                try {
                    CustomWebActivity.d(a(), adWidgetInfo.getClickUrl(), adWidgetInfo.getUuid(), adWidgetInfo.getAwayAppType());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        if (clicks != null) {
            o.c(clicks.getClickThrough(), this.g.getTraceCheck());
        }
    }

    private void a(String str, String str2, CustomBootAdBean customBootAdBean) {
        if (customBootAdBean == null) {
            com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA;
            com.mgmi.ads.api.a aVar = this.l;
            if (aVar != null) {
                aVar.onAdListener(enumC0161a, customBootAdBean);
                return;
            }
            return;
        }
        String pageUrl = customBootAdBean.getPageUrl();
        String jump_type = customBootAdBean.getJump_type();
        if (com.mgmi.f.e.i()) {
            if (g4d.m(pageUrl) && a(str2, pageUrl)) {
                com.mgmi.ads.api.a.EnumC0161a enumC0161a2 = com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA;
                com.mgmi.ads.api.a aVar2 = this.l;
                if (aVar2 != null) {
                    customBootAdBean.isApkDown = true;
                    aVar2.onAdListener(enumC0161a2, customBootAdBean);
                    return;
                }
                return;
            }
            if ("browser".equals(jump_type)) {
                try {
                    h2d.h(a(), pageUrl);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } else {
                try {
                    CustomWebActivity.d(a(), customBootAdBean.getClickUrl(), customBootAdBean.getUuid(), customBootAdBean.getAwayAppType());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        o.b(str, this.h.trace);
        com.mgmi.ads.api.a.EnumC0161a enumC0161a3 = com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA;
        com.mgmi.ads.api.a aVar3 = this.l;
        if (aVar3 != null) {
            aVar3.onAdListener(enumC0161a3, customBootAdBean);
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00cc  */
    public String a(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.m = null;
        this.n = null;
        String[] strArrK = g4d.k(str);
        if (strArrK == null || strArrK.length <= 0) {
            str2 = null;
            str3 = null;
            str4 = null;
            str5 = null;
        } else {
            str2 = null;
            str3 = null;
            str4 = null;
            str5 = null;
            String str6 = null;
            for (String str7 : strArrK) {
                if (g4d.n(str7)) {
                    str2 = str7;
                } else if (g4d.m(str7)) {
                    str4 = str7;
                } else if (g4d.t(str7)) {
                    if (g4d.f()) {
                        str6 = str7;
                    }
                } else if (g4d.r(str7)) {
                    str3 = str7;
                } else {
                    str5 = str7;
                }
            }
            if (str2 != null) {
                String strD = g4d.d(str2, "MiniProgram://", "?username");
                if (strD == null) {
                    this.m = null;
                    this.n = null;
                } else {
                    if (h2d.b(c.a(), strD + "://") == null) {
                        this.m = null;
                        this.n = null;
                    } else {
                        if (str2.contains("path=")) {
                            this.m = g4d.d(str2, "username=", "&");
                        } else {
                            this.m = g4d.c(str2, "username=");
                        }
                        if (str2.contains("path=")) {
                            this.n = g4d.c(str2, "path=");
                        }
                    }
                }
                str2 = null;
            }
            if (str3 != null) {
                if (h2d.b(c.a(), str3) == null) {
                    if (TextUtils.isEmpty(str6) || h2d.b(c.a(), str6) == null) {
                        str3 = null;
                    } else {
                        str3 = str6;
                    }
                }
            } else if (str6 != null && h2d.b(c.a(), str6) != null) {
                str3 = str6;
            }
        }
        if (!TextUtils.isEmpty(str2) && this.m != null) {
            this.a = "4";
            return str2;
        }
        if (!TextUtils.isEmpty(str3)) {
            this.a = "1";
            return str3;
        }
        if (!TextUtils.isEmpty(str4)) {
            this.a = "2";
            return str4;
        }
        if (!TextUtils.isEmpty(str5)) {
            this.a = "2";
            return str5;
        }
        this.a = "3";
        return null;
    }

    public void c() {
        boolean z;
        int delayRandTime;
        VASTAd vASTAd = this.g;
        if (!(vASTAd instanceof VASTFloatAd) || (delayRandTime = ((VASTFloatAd) vASTAd).getDelayRandTime()) <= 0) {
            z = false;
        } else {
            final VASTFloatAd vASTFloatAd = (VASTFloatAd) this.g;
            j4d.c(new Runnable() {
                @Override
                public void run() {
                    d dVarB = com.mgmi.net.b.a().b();
                    VASTFloatAd vASTFloatAd2 = vASTFloatAd;
                    dVarB.i(vASTFloatAd2, b.this.a(vASTFloatAd2));
                }
            }, delayRandTime);
            z = true;
        }
        if (this.g == null || z) {
            return;
        }
        d dVarB = com.mgmi.net.b.a().b();
        VASTAd vASTAd2 = this.g;
        dVarB.i(vASTAd2, a(vASTAd2));
    }

    public void b() {
        if (this.g != null) {
            com.mgmi.net.b.a().b().a(this.g.getTrackingEventFullScreen());
            f.a(this.g.getTrackingEventFullScreen(f.a()), this.g.isMk());
        }
    }

    public void a(final VASTAd vASTAd, @NonNull @Nullable final dkd dkdVar, final Clicks clicks, final String str) {
        int delayRandTime;
        if (dkdVar != null) {
            try {
                if (dkdVar.e()) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (this.i != null) {
            if ((vASTAd instanceof VASTFloatAd) && (delayRandTime = ((VASTFloatAd) vASTAd).getDelayRandTime()) > 0) {
                j4d.c(new Runnable() {
                    @Override
                    public void run() {
                        g gVarF = b.this.a(vASTAd).f("0");
                        gVarF.a(dkdVar);
                        gVarF.a(b.this.b);
                        Clicks clicks2 = clicks;
                        if (clicks2 != null && str != null) {
                            gVarF.b(clicks2.getDeepLinkReport()).g(str);
                        }
                        b.this.i.b(vASTAd, gVarF);
                    }
                }, delayRandTime);
                return;
            }
            g gVarF = a(vASTAd).f("0");
            gVarF.a(dkdVar);
            gVarF.a(this.b);
            if (clicks != null && str != null) {
                gVarF.b(clicks.getDeepLinkReport()).g(str);
            }
            this.i.b(vASTAd, gVarF);
        }
    }

    public g a(VASTAd vASTAd) {
        g gVar = new g();
        gVar.a(this.b);
        if (vASTAd != null && vASTAd.getCurrentStaticResource() != null && vASTAd.getCurrentStaticResource().getVideoClick() != null && vASTAd.getCurrentStaticResource().getVideoClick().getClickThrough() != null) {
            gVar.c(vASTAd.getCurrentStaticResource().getVideoClick().getClickThrough());
            gVar.d(this.f).e(vASTAd.getCurrentStaticResource().getCid());
        }
        return gVar;
    }

    public boolean a(String str, boolean z, e eVar) {
        if (g4d.u(str)) {
            Activity activityA = h2d.a(a());
            if (activityA != null) {
                if (h2d.b(activityA, str) != null) {
                    if (z) {
                        a(activityA, str, eVar);
                        return true;
                    }
                    h2d.e(activityA, str);
                    return true;
                }
            } else {
                Context contextA = a();
                if (contextA != null && h2d.b(contextA, str) != null) {
                    h2d.e(contextA, str);
                    return true;
                }
            }
        }
        return false;
    }

    private void a(final Context context, final String str, final e eVar) {
        try {
            final com.mgmi.ViewGroup.a.a aVar = new com.mgmi.ViewGroup.a.a(context);
            aVar.a(R.string.mgmi_confim_leave).b(R.string.mgmi_common_cancel).c(R.string.mgmi_common_confim).a(new com.mgmi.ViewGroup.a.a.b(aVar) {
                @Override
                public void a() {
                    super.a();
                    aVar.dismiss();
                    e eVar2 = eVar;
                    if (eVar2 != null) {
                        eVar2.b();
                    }
                    h2d.e(context, str);
                }

                @Override
                public void b() {
                    super.b();
                    aVar.dismiss();
                    e eVar2 = eVar;
                    if (eVar2 != null) {
                        eVar2.a();
                    }
                }
            }).b();
        } catch (Exception unused) {
            h2d.e(context, str);
        }
    }

    public boolean a(String str, String str2) {
        try {
            k7d.c(a()).d(str, str2);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private void a(Context context, int i, final m5d.b bVar) {
        try {
            Activity activityA = h2d.a(context);
            if (activityA == null) {
                return;
            }
            final com.mgmi.ViewGroup.a.a aVar = new com.mgmi.ViewGroup.a.a(activityA);
            aVar.a(i).b(R.string.mgmi_common_cancel).c(R.string.mgmi_common_confim).a(new com.mgmi.ViewGroup.a.a.b(aVar) {
                @Override
                public void a() {
                    super.a();
                    aVar.dismiss();
                    m5d.b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a();
                    }
                }

                @Override
                public void b() {
                    super.b();
                    aVar.dismiss();
                    m5d.b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.b();
                    }
                }
            }).b();
        } catch (Exception e) {
            e.printStackTrace();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public List<String> a(List<String> list, List<String> list2) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            arrayList.addAll(list);
        }
        if (list2 != null) {
            int size = list2.size();
            for (int i = 0; i < size; i++) {
                String str = list2.get(i);
                if (!TextUtils.isEmpty(str)) {
                    String strD = wrd.d(str);
                    if (!TextUtils.isEmpty(strD)) {
                        arrayList.add(strD);
                    }
                }
            }
        }
        return arrayList;
    }
}
