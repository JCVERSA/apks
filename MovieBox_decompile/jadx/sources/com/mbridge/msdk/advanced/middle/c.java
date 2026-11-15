package com.mbridge.msdk.advanced.middle;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.advanced.view.MBOutNativeAdvancedViewGroup;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.NativeAdvancedAdListener;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import org.json.JSONObject;

public class c {
    private static String G = "NativeAdvancedProvider";
    private boolean A;
    private boolean B;
    private boolean C;

    private String f33341a;

    private String f33342b;

    private MBridgeIds f33343c;

    private com.mbridge.msdk.advanced.manager.b f33344d;

    private com.mbridge.msdk.advanced.manager.c f33345e;

    private b f33346f;

    private NativeAdvancedAdListener f33347g;

    private d f33348h;

    private MBNativeAdvancedView f33349i;

    private MBNativeAdvancedWebview f33350j;

    private com.mbridge.msdk.advanced.view.a f33351k;

    private l f33352l;

    private boolean f33353m;

    private j f33354n;

    private JSONObject f33364x;

    private MBOutNativeAdvancedViewGroup f33366z;

    private int f33355o = -1;

    private boolean f33356p = false;

    private int f33357q = 0;

    private boolean f33358r = false;

    private int f33359s = 0;

    private boolean f33360t = false;

    private int f33361u = 0;

    private int f33362v = 0;

    private Object f33363w = new Object();

    private boolean f33365y = false;
    private boolean D = true;
    public boolean E = false;
    private ViewTreeObserver.OnScrollChangedListener F = new a();

    class a implements ViewTreeObserver.OnScrollChangedListener {

        class RunnableC0446a implements Runnable {
            RunnableC0446a() {
            }

            @Override
            public void run() {
                c.this.D = true;
            }
        }

        a() {
        }

        @Override
        public void onScrollChanged() {
            if (c.this.D) {
                c.this.D = false;
                if (c.this.f33366z != null) {
                    c.this.f33366z.postDelayed(new RunnableC0446a(), 1000L);
                }
                try {
                    c.this.i();
                } catch (Exception e10) {
                    o0.b(c.G, e10.getMessage());
                }
            }
        }
    }

    public c(String str, String str2, Activity activity) {
        this.f33342b = TextUtils.isEmpty(str) ? "" : str;
        this.f33341a = str2;
        this.f33343c = new MBridgeIds(str, str2);
        a(activity);
    }

    private void e(int i10) {
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33350j;
        if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
            return;
        }
        try {
            if (this.f33350j != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("netstat", i10);
                f.a().a((WebView) this.f33350j, "onNetstatChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        } catch (Throwable th2) {
            o0.a(G, th2.getMessage());
        }
    }

    private void j() {
        a(this.f33355o);
        c(this.f33357q);
        g(this.f33359s);
        a(this.f33364x);
        e(k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
    }

    public MBOutNativeAdvancedViewGroup d() {
        return this.f33366z;
    }

    public int f() {
        return this.f33355o;
    }

    public boolean g() {
        return this.f33353m;
    }

    public void h(int i10) {
        this.f33360t = true;
        g(i10);
    }

    public void i(int i10) {
        if (i10 == 1) {
            this.A = true;
        } else if (i10 == 2) {
            this.B = true;
        } else if (i10 == 3) {
            this.C = true;
        }
        try {
            i();
        } catch (Exception e10) {
            o0.b(G, e10.getMessage());
        }
    }

    private void g(int i10) {
        if (this.f33360t) {
            this.f33359s = i10;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33350j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.advanced.signal.a.a(this.f33350j, "setVideoPlayMode", "autoPlay", Integer.valueOf(i10));
        }
    }

    public void b(JSONObject jSONObject) {
        this.f33365y = true;
        a(jSONObject);
    }

    public void c(String str) throws Throwable {
        b bVar = new b(this, this.f33343c);
        this.f33346f = bVar;
        bVar.a(this.f33347g);
        this.f33346f.a(str);
        a(str, 2);
    }

    public void d(String str) throws Throwable {
        if (!TextUtils.isEmpty(str)) {
            c(str);
            return;
        }
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f33347g;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.onLoadFailed(this.f33343c, "bid  token is null or empty");
        }
    }

    public void f(int i10) {
        if (i10 == 1) {
            this.A = false;
        } else if (i10 == 2) {
            this.B = false;
        } else if (i10 == 3) {
            this.C = false;
        }
        h();
    }

    private void h() {
        com.mbridge.msdk.advanced.manager.c cVar = this.f33345e;
        if (cVar != null) {
            cVar.e();
        }
    }

    public void a(boolean z10) {
        this.f33353m = z10;
    }

    public boolean b(String str) {
        return (this.f33366z == null || com.mbridge.msdk.advanced.manager.d.a(this.f33349i, this.f33342b, this.f33341a, str, this.f33355o, false, true) == null) ? false : true;
    }

    private void a(JSONObject jSONObject) {
        if (this.f33365y) {
            this.f33364x = jSONObject;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33350j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.advanced.signal.a.a(this.f33350j, "setStyleList", "", jSONObject);
        }
    }

    public void b(int i10) {
        this.f33356p = true;
        a(i10);
    }

    private void c(int i10) {
        if (this.f33358r) {
            this.f33357q = i10;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33350j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.advanced.signal.a.a(this.f33350j, "setVolume", CampaignEx.JSON_NATIVE_VIDEO_MUTE, Integer.valueOf(i10));
        }
    }

    public void i() {
        if (this.A && this.B && this.C) {
            CampaignEx campaignExA = com.mbridge.msdk.advanced.manager.d.a(this.f33349i, this.f33342b, this.f33341a, "", this.f33355o, true, true);
            if (campaignExA != null) {
                campaignExA.getImpReportType();
            }
            if (b1.a(this.f33349i.getAdvancedNativeWebview(), 0) || this.f33366z.getAlpha() < 0.5f || this.f33366z.getVisibility() != 0) {
                return;
            }
            com.mbridge.msdk.advanced.manager.c cVar = this.f33345e;
            if (cVar != null) {
                cVar.f();
            }
            b(campaignExA);
        }
    }

    public void d(int i10) {
        this.f33358r = true;
        c(i10);
    }

    public void b(int i10, int i11) {
        a(i10, i11);
    }

    public String e() {
        if (this.E) {
            com.mbridge.msdk.advanced.manager.c cVar = this.f33345e;
            if (cVar != null) {
                return cVar.c();
            }
            return "";
        }
        com.mbridge.msdk.advanced.manager.b bVar = this.f33344d;
        if (bVar != null) {
            return bVar.d();
        }
        return "";
    }

    public void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (this.f33352l == null) {
                this.f33352l = h.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f33341a);
            }
            this.f33348h = new d(this, this.f33347g, campaignEx);
            o0.a(G, "show start");
            if (this.f33361u != 0 && this.f33362v != 0) {
                a(campaignEx, false);
                return;
            }
            d dVar = this.f33348h;
            if (dVar != null) {
                dVar.a(this.f33343c, "width or height is 0  or width or height is too small");
            }
        }
    }

    public void a(NativeAdvancedAdListener nativeAdvancedAdListener) {
        this.f33347g = nativeAdvancedAdListener;
    }

    private void a(int i10) {
        if (this.f33356p) {
            this.f33355o = i10;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33350j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            int i11 = this.f33355o;
            if (i11 == 1) {
                this.f33345e.a(true);
                com.mbridge.msdk.advanced.signal.a.a(this.f33350j, "showCloseButton", "", null);
            } else if (i11 == 0) {
                this.f33345e.a(false);
                com.mbridge.msdk.advanced.signal.a.a(this.f33350j, "hideCloseButton", "", null);
            }
        }
    }

    public String c() {
        if (this.E) {
            com.mbridge.msdk.advanced.manager.c cVar = this.f33345e;
            if (cVar != null) {
                return cVar.a();
            }
            return "";
        }
        com.mbridge.msdk.advanced.manager.b bVar = this.f33344d;
        if (bVar != null) {
            return bVar.c();
        }
        return "";
    }

    public void b() {
        if (this.f33347g != null) {
            this.f33347g = null;
        }
        if (this.f33346f != null) {
            this.f33346f = null;
        }
        if (this.f33348h != null) {
            this.f33348h = null;
        }
        com.mbridge.msdk.advanced.manager.b bVar = this.f33344d;
        if (bVar != null) {
            bVar.a((MBNativeAdvancedView) null);
            this.f33344d.e();
        }
        com.mbridge.msdk.advanced.manager.c cVar = this.f33345e;
        if (cVar != null) {
            cVar.g();
        }
        MBNativeAdvancedView mBNativeAdvancedView = this.f33349i;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.destroy();
        }
        com.mbridge.msdk.advanced.common.c.b(this.f33342b + this.f33341a + e());
        com.mbridge.msdk.advanced.view.a aVar = this.f33351k;
        if (aVar != null) {
            aVar.b();
        }
        MBOutNativeAdvancedViewGroup mBOutNativeAdvancedViewGroup = this.f33366z;
        if (mBOutNativeAdvancedViewGroup != null) {
            mBOutNativeAdvancedViewGroup.getViewTreeObserver().removeOnScrollChangedListener(this.F);
            this.f33366z.removeAllViews();
            this.f33366z = null;
        }
    }

    void a(CampaignEx campaignEx, boolean z10) {
        j();
        MBOutNativeAdvancedViewGroup mBOutNativeAdvancedViewGroup = this.f33366z;
        if (mBOutNativeAdvancedViewGroup == null || mBOutNativeAdvancedViewGroup.getParent() == null) {
            return;
        }
        if (campaignEx != null && z10) {
            if (this.f33352l == null) {
                this.f33352l = h.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f33341a);
            }
            this.f33348h = new d(this, this.f33347g, campaignEx);
        }
        if (this.f33345e == null) {
            com.mbridge.msdk.advanced.manager.c cVar = new com.mbridge.msdk.advanced.manager.c(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33342b, this.f33341a);
            this.f33345e = cVar;
            cVar.a(this);
        }
        a(campaignEx);
    }

    private void a(CampaignEx campaignEx) {
        if (com.mbridge.msdk.advanced.manager.d.a(this.f33349i, campaignEx, this.f33342b, this.f33341a)) {
            this.f33345e.a(this.f33348h);
            o0.b(G, "start show process");
            this.f33345e.a(campaignEx, this.f33349i, true);
        }
    }

    private void a(String str, int i10) throws Throwable {
        boolean zB;
        this.D = true;
        synchronized (this.f33363w) {
            try {
                if (this.f33353m) {
                    if (this.f33346f != null) {
                        this.f33346f.a(new com.mbridge.msdk.foundation.error.b(880016, "current unit is loading"), i10);
                        this.f33353m = true;
                    }
                    return;
                }
                this.f33353m = true;
                if (this.f33361u != 0 && this.f33362v != 0) {
                    if (this.f33349i == null) {
                        if (this.f33346f != null) {
                            this.f33346f.a(new com.mbridge.msdk.foundation.error.b(880030), i10);
                            return;
                        }
                        return;
                    }
                    try {
                        zB = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
                    } catch (Exception e10) {
                        o0.b(G, e10.getMessage());
                        zB = false;
                    }
                    if (!zB) {
                        if (this.f33346f != null) {
                            this.f33346f.a(new com.mbridge.msdk.foundation.error.b(880029), i10);
                            return;
                        }
                        return;
                    }
                    this.f33349i.clearResStateAndRemoveClose();
                    l lVarA = h.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f33341a);
                    this.f33352l = lVarA;
                    if (lVarA == null) {
                        this.f33352l = l.k(this.f33341a);
                    }
                    if (this.f33344d == null) {
                        this.f33344d = new com.mbridge.msdk.advanced.manager.b(this.f33342b, this.f33341a, 0L);
                    }
                    b bVar = this.f33346f;
                    if (bVar != null) {
                        bVar.a(str);
                        this.f33344d.a(this.f33346f);
                    }
                    this.f33349i.resetLoadState();
                    this.f33344d.a(this.f33349i);
                    this.f33344d.a(this.f33352l);
                    this.f33344d.a(this.f33361u, this.f33362v);
                    this.f33344d.a(this.f33355o);
                    this.f33344d.b(str, i10);
                    return;
                }
                if (this.f33346f != null) {
                    this.f33346f.a(new com.mbridge.msdk.foundation.error.b(880028), i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void a(Activity activity) {
        com.mbridge.msdk.advanced.view.a aVar;
        ViewGroup.LayoutParams layoutParams;
        Context context;
        if (this.f33345e == null) {
            com.mbridge.msdk.advanced.manager.c cVar = new com.mbridge.msdk.advanced.manager.c(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33342b, this.f33341a);
            this.f33345e = cVar;
            cVar.a(this);
        }
        if (this.f33350j == null) {
            try {
                this.f33350j = new MBNativeAdvancedWebview(com.mbridge.msdk.foundation.controller.c.m().d());
            } catch (Exception e10) {
                o0.b(G, e10.getMessage());
            }
            if (this.f33351k == null) {
                try {
                    this.f33351k = new com.mbridge.msdk.advanced.view.a(this.f33341a, this.f33345e.b(), this);
                } catch (Exception e11) {
                    o0.b(G, e11.getMessage());
                }
            }
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33350j;
            if (mBNativeAdvancedWebview != null && (aVar = this.f33351k) != null) {
                mBNativeAdvancedWebview.setWebViewClient(aVar);
            }
        }
        if (this.f33349i == null) {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            if (activity == null) {
                context = activity;
                context = contextD;
            }
            context = activity;
            MBNativeAdvancedView mBNativeAdvancedView = new MBNativeAdvancedView(context);
            this.f33349i = mBNativeAdvancedView;
            mBNativeAdvancedView.setAdvancedNativeWebview(this.f33350j);
            MBNativeAdvancedWebview mBNativeAdvancedWebview2 = this.f33350j;
            if (mBNativeAdvancedWebview2 != null && mBNativeAdvancedWebview2.getParent() == null) {
                this.f33349i.addView(this.f33350j, new ViewGroup.LayoutParams(-1, -1));
            }
        }
        if (this.f33366z == null) {
            this.f33366z = new MBOutNativeAdvancedViewGroup(com.mbridge.msdk.foundation.controller.c.m().d());
            if (this.f33361u != 0 && this.f33362v != 0) {
                layoutParams = new ViewGroup.LayoutParams(this.f33361u, this.f33362v);
            } else {
                layoutParams = new ViewGroup.LayoutParams(-1, -1);
            }
            this.f33366z.setLayoutParams(layoutParams);
            this.f33366z.setProvider(this);
            this.f33366z.addView(this.f33349i);
            this.f33366z.getViewTreeObserver().addOnScrollChangedListener(this.F);
        }
        if (this.f33354n == null) {
            this.f33354n = new j();
        }
        this.f33354n.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c(), this.f33341a);
    }

    public String a(String str) {
        com.mbridge.msdk.advanced.manager.b bVar = this.f33344d;
        if (bVar != null) {
            return bVar.a(str);
        }
        return "";
    }

    private void a(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        this.f33362v = i10;
        this.f33361u = i11;
        this.f33366z.setLayoutParams(new ViewGroup.LayoutParams(i11, i10));
    }
}
