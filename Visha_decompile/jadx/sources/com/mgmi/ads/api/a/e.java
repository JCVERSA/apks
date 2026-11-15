package com.mgmi.ads.api.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.gson.JsonElement;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.r;
import defpackage.fyd;
import defpackage.g4d;
import defpackage.mpd;
import defpackage.n4d;
import defpackage.r7d;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class e implements b, o.a {
    protected static final Handler m = new Handler(Looper.getMainLooper());
    WeakReference<Context> a;
    protected o b;
    protected com.mgadplus.netlib.base.b c;
    protected String d;

    @Nullable
    protected d f;
    protected a g;
    protected List<com.mgtv.a.b.a.a> k;
    protected boolean l;
    protected String o;
    protected ArrayList<String> q;
    protected String j = "";
    protected int n = 0;
    protected int p = 0;
    protected boolean r = false;
    protected boolean s = false;
    protected com.mgmi.e.a.d e = com.mgmi.net.b.a().b();
    protected String i = com.mgmi.f.f.l();
    protected boolean h = false;
    protected r7d t = new r7d();

    public interface a {
        @UiThread
        void a();

        @UiThread
        void a(r rVar);
    }

    public e(Context context) {
        this.a = new WeakReference<>(context);
    }

    @Override
    @CallSuper
    public void a(ViewGroup viewGroup) {
    }

    @Override
    public void b() {
    }

    @Override
    public void b_() {
    }

    @Override
    public void c() {
    }

    @Override
    public void c_() {
    }

    public void d(d dVar) {
    }

    @Override
    public void f() {
    }

    @Override
    public void g() {
    }

    @Override
    public void h() {
    }

    public d i() {
        return this.f;
    }

    public void j() {
        if (this.g == null || this.a.get() == null || this.f == null) {
            return;
        }
        m.post(new Runnable() {
            @Override
            public void run() {
                e.this.g.a();
            }
        });
    }

    public boolean k() {
        return this.h;
    }

    public void l() {
        d dVar = this.f;
        if (dVar == null || dVar.h() == null) {
            return;
        }
        this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_SUCCESS, new AdWidgetInfo(this.f.j()));
        this.f.h().onADLoaded(this.k);
    }

    public void m() {
        a(false);
        d dVar = this.f;
        if (dVar == null || dVar.h() == null) {
            return;
        }
        this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_NET_CALLBACK, new AdWidgetInfo(this.f.j()));
    }

    @Override
    public void a(com.mgmi.ads.api.h hVar, String str) {
    }

    @Override
    public void b(d dVar) {
        a(dVar, null, "BaseAdsLoader");
    }

    public void c(d dVar) {
        this.f = dVar;
    }

    @Override
    public void a(boolean z, com.mgmi.e.a aVar) {
    }

    @Override
    public void b(r rVar) {
        if (this.c != null) {
            if (rVar != null) {
                a(i(), this.c, this.d, rVar);
                c(rVar);
            } else {
                a(i(), this.c, this.d, "vast xml data error", 104000);
                j();
            }
        }
    }

    public void c(final r rVar) {
        if (this.g == null || this.a.get() == null || this.f == null) {
            return;
        }
        m.post(new Runnable() {
            @Override
            public void run() {
                e.this.g.a(rVar);
            }
        });
    }

    @Override
    @CallSuper
    public void a() {
        this.l = true;
        this.c = null;
        com.mgadplus.netlib.a.e.a(this.t);
        List<com.mgtv.a.b.a.a> list = this.k;
        if (list != null) {
            list.clear();
            this.k = null;
        }
        o oVar = this.b;
        if (oVar != null) {
            oVar.a(true);
            this.b = null;
        }
        com.mgmi.b.b.a().b();
    }

    public void a(r rVar) {
        SourceKitLogger.a("BaseAdsLoader", "setAdsViewModelControl");
    }

    public Map<String, String> a(Context context, d dVar) {
        if (!dVar.j().equals("ADS_NOFITY") && !dVar.j().equals("ADS_BANNER") && !dVar.j().equals("ADS_FLOAT") && !dVar.j().equals("ADS_TYPE_SLIDEBANNER") && !dVar.j().equals("ADS_TYPE_DAMANG_BANNER") && !dVar.j().equals("ADS_TYPE_MIN_BANNER") && !dVar.j().equals("ADS_TYPE_INSIDE_BANNER")) {
            if (!dVar.j().equals("ADS_ONLINE_VIDEO") && !dVar.j().equals("ADS_VIDEO_WIDGET") && !dVar.j().equals("ADS_TYPE_PAUSED") && !dVar.j().equals("ADS_VIDEO_WIDGET_FOCUS") && !dVar.j().equals("ADS_VIDEO_AI") && !dVar.j().equals("ADS_VIDEO_WIDGET_PROGRESS") && !dVar.j().equals("ADS_TYPE_BARRAGE")) {
                if (dVar.j().equals("ADS_OFFVIDEO_ONLINE")) {
                    dVar.k().a(4590);
                    dVar.k().i(4580);
                    return com.mgmi.f.b.a(context, new com.mgmi.model.n().a(4580).a(dVar.k()).a(dVar.o()).b(4590).c(110110).a(this.i));
                }
                if (dVar.j().equals("ADS_TYPE_DOWNLOADING_OFFLINEAD")) {
                    return com.mgmi.f.b.b(context, new com.mgmi.model.n().a(4590).a(dVar.k()).a(dVar.o()).c(110110).a(this.i), null);
                }
                if (dVar.j().equals("ADS_BOOT")) {
                    com.mgmi.g.a aVarK = dVar.k();
                    aVarK.a(9000031L).i(4580);
                    aVarK.k(com.mgmi.platform.b.a().k());
                    return com.mgmi.f.b.a(context, aVarK, this.i, this.f.p());
                }
                if (dVar.j().equals("ADS_TYPE_LOADING")) {
                    com.mgmi.g.a aVarK2 = dVar.k();
                    aVarK2.a(9000098L).i(4580);
                    return com.mgmi.f.b.a(context, aVarK2, this.i);
                }
                if (!dVar.j().equals("ADS_TYPE_PULL_REFRESH")) {
                    return null;
                }
                dVar.k().a(9000112L);
                return com.mgmi.f.b.a(context, dVar, this.i);
            }
            if (dVar.k().t() == 1) {
                return com.mgmi.f.b.a(context, new com.mgmi.model.n().a(dVar.k()).a(dVar.o()).c(110110).a(4390).b(-1).a(this.i), dVar);
            }
            if (!dVar.j().equals("ADS_VIDEO_WIDGET") && !dVar.j().equals("ADS_TYPE_PAUSED") && !dVar.j().equals("ADS_VIDEO_WIDGET_FOCUS") && !dVar.j().equals("ADS_VIDEO_AI") && !dVar.j().equals("ADS_VIDEO_WIDGET_PROGRESS") && !dVar.j().equals("ADS_TYPE_BARRAGE")) {
                dVar.k().i(4580);
                return com.mgmi.f.b.a(context, new com.mgmi.model.n().a(4580).a(dVar.k()).a(dVar.o()).b(dVar.k().b()).c(110110).a(this.i));
            }
            return com.mgmi.f.b.a(context, new com.mgmi.model.n().a(dVar.k()).b(dVar.k().b()).a(dVar.k().x()).a(dVar.o()).c(110110).a(this.i), dVar);
        }
        return com.mgmi.f.b.a(context, dVar, this.i);
    }

    public void a(d dVar, a aVar, String str) {
        if (dVar == null) {
            return;
        }
        Context context = this.a.get();
        this.l = false;
        this.j = str;
        this.f = dVar;
        this.g = aVar;
        try {
            a(dVar);
            d(dVar);
            Map<String, String> mapA = a(context, dVar);
            if (context != null && mapA != null) {
                if (dVar.k() != null && dVar.k().t() == 1) {
                    a(dVar.i(), mapA, dVar, context, str, false);
                } else {
                    a(dVar.i(), mapA, dVar, context, str, true);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void a(d dVar, com.mgadplus.netlib.base.b bVar, String str, @Nullable r rVar) {
        if (dVar == null || dVar.k() == null || !dVar.k().i()) {
            com.mgmi.net.bean.b bVar2 = new com.mgmi.net.bean.b();
            bVar2.b(this.i);
            if (bVar != null) {
                bVar2.a(bVar.g());
                bVar2.a(bVar.c());
                if (bVar.i()) {
                    bVar2.c(bVar.h());
                } else {
                    bVar2.c(str);
                }
            }
            if (rVar != null) {
                bVar2.a(rVar.n());
            }
            if (dVar != null) {
                a(bVar2, dVar);
            }
            com.mgmi.e.a.d dVar2 = this.e;
            if (dVar2 != null) {
                dVar2.c(bVar2);
            }
        }
    }

    public void a(d dVar, com.mgadplus.netlib.base.b bVar, String str, String str2, int i) {
        if (dVar == null || dVar.k() == null || !dVar.k().i()) {
            com.mgmi.net.bean.b bVar2 = new com.mgmi.net.bean.b();
            bVar2.b(this.i);
            if (bVar != null) {
                bVar2.a(bVar.g());
                bVar2.a(bVar.c());
                if (bVar.i()) {
                    bVar2.c(bVar.h());
                } else {
                    bVar2.c(str);
                }
            }
            bVar2.d(str2);
            bVar2.b(i);
            if (dVar != null) {
                a(bVar2, dVar);
            }
            com.mgmi.e.a.d dVar2 = this.e;
            if (dVar2 != null) {
                dVar2.d(bVar2);
            }
        }
    }

    public void a(com.mgmi.net.bean.b bVar, d dVar) {
        if (dVar != null) {
            if (!dVar.j().equals("ADS_NOFITY") && !dVar.j().equals("ADS_BANNER") && !dVar.j().equals("ADS_FLOAT") && !dVar.j().equals("ADS_TYPE_INSIDE_BANNER")) {
                if (dVar.j().equals("ADS_ONLINE_VIDEO")) {
                    bVar.b(true);
                    bVar.a(4);
                    return;
                }
                if (dVar.j().equals("ADS_OFFVIDEO_ONLINE")) {
                    bVar.b(false);
                    bVar.a(4);
                    return;
                }
                if (!dVar.j().equals("ADS_VIDEO_WIDGET") && !dVar.j().equals("ADS_TYPE_PAUSED") && !dVar.j().equals("ADS_VIDEO_AI") && !dVar.j().equals("ADS_VIDEO_WIDGET_PROGRESS")) {
                    if (dVar.j().equals("ADS_TYPE_DOWNLOADING_OFFLINEAD")) {
                        bVar.b(false);
                        bVar.a(9);
                        return;
                    }
                    return;
                }
                bVar.b(false);
                bVar.a(4);
                return;
            }
            bVar.b(false);
            bVar.a(5);
        }
    }

    public void a(String str, String str2, d dVar, com.mgadplus.netlib.base.b bVar) {
        this.c = bVar;
        this.d = str2;
        o oVar = this.b;
        if (oVar != null) {
            oVar.a(true);
        }
        o oVar2 = new o(this);
        this.b = oVar2;
        oVar2.a(str);
    }

    public void a(d dVar) {
        if (!dVar.j().equals("ADS_NOFITY") && !dVar.j().equals("ADS_BANNER") && !dVar.j().equals("ADS_FLOAT") && !dVar.j().equals("ADS_TYPE_SLIDEBANNER") && !dVar.j().equals("ADS_TYPE_DAMANG_BANNER") && !dVar.j().equals("ADS_TYPE_MIN_BANNER") && !dVar.j().equals("ADS_TYPE_INSIDE_BANNER")) {
            if (!dVar.j().equals("ADS_ONLINE_VIDEO") && !dVar.j().equals("ADS_TYPE_AUTO_PLAYER") && !dVar.j().equals("ADS_VIDEO_WIDGET") && !dVar.j().equals("ADS_TYPE_PAUSED")) {
                if (dVar.j().equals("ADS_VIDEO_WIDGET_PROGRESS")) {
                    dVar.a(com.mgmi.platform.b.a().e() + "/app/progress");
                    return;
                }
                if (dVar.j().equals("ADS_VIDEO_AI")) {
                    dVar.a(com.mgmi.platform.b.a().e() + "/app/ai_implant");
                    return;
                }
                if (dVar.j().equals("ADS_VIDEO_WIDGET_FOCUS")) {
                    dVar.a(com.mgmi.platform.b.a().e() + "/app/focus");
                    return;
                }
                if (dVar.j().equals("ADS_OFFVIDEO_ONLINE")) {
                    dVar.a(com.mgmi.platform.b.a().e() + "/app/player");
                    return;
                }
                if (dVar.j().equals("ADS_TYPE_DOWNLOADING_OFFLINEAD")) {
                    dVar.a(com.mgmi.platform.b.a().e() + "/off/player");
                    return;
                }
                if (dVar.j().equals("ADS_BOOT")) {
                    dVar.a(com.mgmi.platform.b.a().e() + "/json/app/boot");
                    return;
                }
                if (dVar.j().equals("ADS_TYPE_LOADING")) {
                    dVar.a(com.mgmi.platform.b.a().e() + "/player/loading");
                    return;
                }
                if (dVar.j().equals("ADS_TYPE_PULL_REFRESH")) {
                    dVar.a(com.mgmi.platform.b.a().e() + "/app/el");
                    return;
                }
                if (dVar.j().equals("ADS_TYPE_BARRAGE")) {
                    dVar.a(com.mgmi.platform.b.a().e() + "/app/barrage");
                    return;
                }
                return;
            }
            if (dVar.k() != null && dVar.k().t() == 1) {
                dVar.a(com.mgmi.platform.b.a().f() + "/app/live");
                return;
            }
            dVar.a(com.mgmi.platform.b.a().e() + "/app/player");
            return;
        }
        dVar.a(com.mgmi.platform.b.a().e() + "/m/page");
    }

    public void a(@NonNull final String str, @NonNull final Map<String, String> map, @NonNull d dVar, Context context, String str2, boolean z) {
        if (fyd.e(context)) {
            a(true);
            com.mgadplus.netlib.a.a aVarA = new com.mgadplus.netlib.a.a(dVar.i()).a(map).a(dVar.d());
            com.mgadplus.netlib.base.c.a aVar = com.mgadplus.netlib.base.c.a.HEADER;
            aVarA.a("auver", "v1", aVar);
            aVarA.a("Authentication", a(context, this.i), aVar);
            com.mgadplus.netlib.a.e.a(context, aVarA, new com.mgadplus.netlib.base.b<JsonElement>() {
                @Override
                public void b(@NonNull JsonElement jsonElement) {
                    e.this.m();
                    if (jsonElement == null) {
                        a(-1, 104000, "http vast format error", null, str);
                        return;
                    }
                    SourceKitLogger.a("BaseAdsLoader", "request success data");
                    String str3 = (String) com.mgadplus.netlib.json.b.a(jsonElement, (Type) String.class);
                    e.this.a(str3, str + "?" + map, e.this.i(), this);
                }

                @Override
                public void a(int i, int i2, @Nullable String str3, @Nullable Throwable th, String str4) {
                    e.this.m();
                    SourceKitLogger.a("BaseAdsLoader", "request error reason=" + i2);
                    e eVar = e.this;
                    eVar.a(eVar.i(), this, str4, str3, i2);
                    e.this.j();
                }
            });
            return;
        }
        j();
    }

    public String a(Context context, String str) {
        try {
            return n4d.j(g4d.i(mpd.F(context)) + "^" + String.valueOf(System.currentTimeMillis() / 1000), str);
        } catch (Exception unused) {
            SourceKitLogger.a("mgmi", "generateAuthenticationtoken error");
            return "";
        }
    }

    public void a(boolean z) {
        this.h = z;
    }

    public void a(boolean z, int i) {
        d dVar = this.f;
        if (dVar == null || dVar.h() == null) {
            return;
        }
        this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_FAIL, new AdWidgetInfo(this.f.j()).setErrorCode(i));
    }
}
