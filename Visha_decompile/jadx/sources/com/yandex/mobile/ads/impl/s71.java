package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.hunantv.media.player.libnative.ImgoMediaPlayerLib;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import com.monetization.ads.mediation.base.model.MediatedAdObject;
import com.monetization.ads.mediation.nativeads.MediatedNativeAd;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdAssets;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdImage;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapter;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapterListener;
import com.yandex.mobile.ads.impl.o8;
import com.yandex.mobile.ads.impl.p51;
import com.yandex.mobile.ads.impl.s71;
import defpackage.abb;
import defpackage.af5;
import defpackage.c74;
import defpackage.e74;
import defpackage.ky5;
import defpackage.y45;
import defpackage.zfb;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Lambda;

public final class s71 implements MediatedNativeAdapterListener {
    static final af5[] o = {ta.a(s71.class, "nativeAdLoadManager", "getNativeAdLoadManager()Lcom/monetization/ads/nativeads/NativeAdLoadManager;", 0)};
    private final o8<y61> a;
    private final rx0<MediatedNativeAdapter, MediatedNativeAdapterListener> b;
    private final wx0 c;
    private final oy0 d;
    private final ok0 e;
    private final Context f;
    private final go1 g;
    private final LinkedHashMap h;
    private final LinkedHashMap i;
    private final kj0 j;
    private final ny0 k;
    private final ay0 l;
    private final xy0 m;
    private boolean n;

    public static final class a extends Lambda implements c74 {
        final MediatedNativeAd c;
        final gr1 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(MediatedNativeAd mediatedNativeAd, gr1 gr1Var) {
            super(0);
            this.c = mediatedNativeAd;
            this.d = gr1Var;
        }

        @Override
        public final Object invoke() {
            s71.this.a(this.c, this.d);
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements e74 {
        public b() {
            super(1);
        }

        public final void a(String str) {
            y45.j(str, "errorDescription");
            s71.this.onAdFailedToLoad(new MediatedAdRequestError(1, "Ad is blocked by quality verification with reasons:  " + str));
        }

        @Override
        public final Object invoke(Object obj) {
            a((String) obj);
            return zfb.a;
        }
    }

    public s71(o8 o8Var, g61 g61Var, rx0 rx0Var) {
        this(o8Var, g61Var, rx0Var, new wx0(), new oy0(), new ok0(rx0Var));
    }

    @Override
    public final void onAdClicked() {
        l7 l7VarJ;
        g61 g61Var = (g61) this.g.getValue(this, o[0]);
        if (g61Var != null && (l7VarJ = g61Var.j()) != null) {
            l7VarJ.a();
        }
        rx0<MediatedNativeAdapter, MediatedNativeAdapterListener> rx0Var = this.b;
        Context context = this.f;
        y45.i(context, "applicationContext");
        rx0Var.a(context, this.h);
        Context context2 = this.f;
        y45.i(context2, "applicationContext");
        op1.b bVar = op1.b.C;
        pp1 pp1Var = new pp1(this.h, 2);
        pp1Var.b(bVar.a(), ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_PLAYER_EVENT_TYPE_INT);
        pp1Var.b(this.i, "ad_info");
        pp1Var.a(this.a.b());
        Map<String, Object> mapS = this.a.s();
        if (mapS != null) {
            pp1Var.a((Map<String, ? extends Object>) mapS);
        }
        this.b.d(context2, pp1Var.b());
        this.c.a();
    }

    @Override
    public final void onAdClosed() {
        l7 l7VarJ;
        this.c.b();
        g61 g61Var = (g61) this.g.getValue(this, o[0]);
        if (g61Var == null || (l7VarJ = g61Var.j()) == null) {
            return;
        }
        l7VarJ.b();
    }

    @Override
    public final void onAdFailedToLoad(MediatedAdRequestError mediatedAdRequestError) {
        y45.j(mediatedAdRequestError, "error");
        g61 g61Var = (g61) this.g.getValue(this, o[0]);
        if (g61Var != null) {
            this.b.b(g61Var.l(), new w3(mediatedAdRequestError.getCode(), mediatedAdRequestError.getDescription(), mediatedAdRequestError.getDescription(), null), this);
        }
    }

    @Override
    public final void onAdImpression() {
        if (this.n) {
            return;
        }
        this.n = true;
        rx0<MediatedNativeAdapter, MediatedNativeAdapterListener> rx0Var = this.b;
        Context context = this.f;
        y45.i(context, "applicationContext");
        rx0Var.b(context, this.h);
        Context context2 = this.f;
        y45.i(context2, "applicationContext");
        op1.b bVar = op1.b.y;
        pp1 pp1Var = new pp1(this.h, 2);
        pp1Var.b(bVar.a(), ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_PLAYER_EVENT_TYPE_INT);
        pp1Var.b(this.i, "ad_info");
        pp1Var.a(this.a.b());
        Map<String, Object> mapS = this.a.s();
        if (mapS != null) {
            pp1Var.a((Map<String, ? extends Object>) mapS);
        }
        this.b.d(context2, pp1Var.b());
        this.c.a(this.e.a());
    }

    @Override
    public final void onAdLeftApplication() {
        this.c.c();
    }

    @Override
    public final void onAdOpened() {
        this.c.d();
    }

    @Override
    public final void onAppInstallAdLoaded(MediatedNativeAd mediatedNativeAd) {
        y45.j(mediatedNativeAd, "mediatedNativeAd");
        b(mediatedNativeAd, gr1.d);
    }

    @Override
    public final void onContentAdLoaded(MediatedNativeAd mediatedNativeAd) {
        y45.j(mediatedNativeAd, "mediatedNativeAd");
        b(mediatedNativeAd, gr1.c);
    }

    public final void a(final MediatedNativeAd mediatedNativeAd, gr1 gr1Var) {
        final g61 g61Var = (g61) this.g.getValue(this, o[0]);
        if (g61Var != null) {
            this.h.put("native_ad_type", gr1Var.a());
            this.b.c(g61Var.l(), this.h);
            this.i.putAll(ky5.h(abb.a("title", mediatedNativeAd.getMediatedNativeAdAssets().getTitle())));
            this.d.getClass();
            y45.j(mediatedNativeAd, "mediatedNativeAd");
            MediatedNativeAdAssets mediatedNativeAdAssets = mediatedNativeAd.getMediatedNativeAdAssets();
            List<MediatedNativeAdImage> listP = defpackage.y71.p(mediatedNativeAdAssets.getFavicon(), mediatedNativeAdAssets.getIcon(), mediatedNativeAdAssets.getImage());
            this.j.a(this.k.b(listP));
            this.l.a(mediatedNativeAd, gr1Var, listP, new ay0.a() {
                @Override
                public final void a(o8 o8Var) {
                    s71.a(mediatedNativeAd, this, g61Var, o8Var);
                }
            });
        }
    }

    private final void b(MediatedNativeAd mediatedNativeAd, gr1 gr1Var) {
        tx0 tx0VarA;
        g61 g61Var = (g61) this.g.getValue(this, o[0]);
        if (g61Var != null) {
            qx0<T> qx0VarA = this.b.a();
            MediatedAdObject mediatedAdObjectA = (qx0VarA == 0 || (tx0VarA = qx0VarA.a()) == null) ? null : tx0VarA.a();
            if (mediatedAdObjectA != null) {
                g61Var.a(mediatedAdObjectA.getAd(), mediatedAdObjectA.getInfo(), new a(mediatedNativeAd, gr1Var), new b());
            } else {
                sp0.a(new Object[0]);
                a(mediatedNativeAd, gr1Var);
            }
        }
    }

    public s71(o8<y61> o8Var, g61 g61Var, rx0<MediatedNativeAdapter, MediatedNativeAdapterListener> rx0Var, wx0 wx0Var, oy0 oy0Var, ok0 ok0Var) {
        y45.j(o8Var, "adResponse");
        y45.j(g61Var, "nativeAdLoadManager");
        y45.j(rx0Var, "mediatedAdController");
        y45.j(wx0Var, "nativeAdEventObservable");
        y45.j(oy0Var, "mediatedImagesExtractor");
        y45.j(ok0Var, "impressionDataProvider");
        this.a = o8Var;
        this.b = rx0Var;
        this.c = wx0Var;
        this.d = oy0Var;
        this.e = ok0Var;
        Context applicationContext = g61Var.l().getApplicationContext();
        this.f = applicationContext;
        this.g = ho1.a(g61Var);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.h = linkedHashMap;
        this.i = new LinkedHashMap();
        kj0 kj0Var = new kj0(g61Var.l());
        this.j = kj0Var;
        ny0 ny0Var = new ny0(g61Var.l());
        this.k = ny0Var;
        this.l = new ay0(g61Var.l(), kj0Var, ny0Var);
        y45.i(applicationContext, "applicationContext");
        this.m = new xy0(applicationContext, rx0Var, linkedHashMap);
    }

    public static final void a(MediatedNativeAd mediatedNativeAd, final s71 s71Var, g61 g61Var, o8 o8Var) {
        y45.j(mediatedNativeAd, "$mediatedNativeAd");
        y45.j(s71Var, "this$0");
        y45.j(o8Var, "convertedAdResponse");
        ez0 ez0Var = new ez0(mediatedNativeAd, s71Var.m, g61Var.j(), new bx1());
        g61Var.a((o8<y61>) o8Var, new s51(new xx0(s71Var.a, s71Var.b.a()), new vx0(new vx0.a() {
            @Override
            public final void a(p51 p51Var) {
                s71.a(this.a, p51Var);
            }
        }), ez0Var, new ry0(), new dz0()));
    }

    public static final void a(s71 s71Var, p51 p51Var) {
        y45.j(s71Var, "this$0");
        y45.j(p51Var, "controller");
        s71Var.c.a(p51Var);
    }
}
