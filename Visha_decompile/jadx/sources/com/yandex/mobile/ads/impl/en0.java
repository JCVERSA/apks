package com.yandex.mobile.ads.impl;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.common.AdOverlayInfo;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.Player;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class en0 {
    private final q5 a;
    private final nl b;
    private final pl c;
    private final ls0 d;
    private final o60 e;
    private final tj1 f;
    private final Player.Listener g;
    private final nb2 h;
    private final q9 i;
    private final o5 j;
    private final a70 k;
    private final ui1 l;
    private et m;
    private Player n;
    private Object o;
    private boolean p;
    private boolean q;

    public en0(o9 o9Var, q5 q5Var, nl nlVar, pl plVar, ls0 ls0Var, si1 si1Var, o60 o60Var, tj1 tj1Var, v60 v60Var, nb2 nb2Var, q9 q9Var, o5 o5Var, a70 a70Var, ui1 ui1Var) {
        y45.j(o9Var, "adStateDataController");
        y45.j(q5Var, "adPlaybackStateCreator");
        y45.j(nlVar, "bindingControllerCreator");
        y45.j(plVar, "bindingControllerHolder");
        y45.j(ls0Var, "loadingController");
        y45.j(si1Var, "playerStateController");
        y45.j(o60Var, "exoPlayerAdPrepareHandler");
        y45.j(tj1Var, "positionProviderHolder");
        y45.j(v60Var, "playerListener");
        y45.j(nb2Var, "videoAdCreativePlaybackProxyListener");
        y45.j(q9Var, "adStateHolder");
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(a70Var, "currentExoPlayerProvider");
        y45.j(ui1Var, "playerStateHolder");
        this.a = q5Var;
        this.b = nlVar;
        this.c = plVar;
        this.d = ls0Var;
        this.e = o60Var;
        this.f = tj1Var;
        this.g = v60Var;
        this.h = nb2Var;
        this.i = q9Var;
        this.j = o5Var;
        this.k = a70Var;
        this.l = ui1Var;
    }

    public static final void b(en0 en0Var, et etVar) {
        en0Var.j.a(en0Var.a.a(etVar, en0Var.o));
    }

    public final void a(int i, int i2) {
        this.e.a(i, i2);
    }

    public final void a(int i, int i2, IOException iOException) {
        y45.j(iOException, "exception");
        this.e.b(i, i2, iOException);
    }

    public final void b() {
        Player playerA = this.k.a();
        if (playerA != null) {
            if (this.m != null) {
                long jMsToUs = Util.msToUs(playerA.getCurrentPosition());
                if (!playerA.isPlayingAd()) {
                    jMsToUs = 0;
                }
                AdPlaybackState adPlaybackStateWithAdResumePositionUs = this.j.a().withAdResumePositionUs(jMsToUs);
                y45.i(adPlaybackStateWithAdResumePositionUs, "withAdResumePositionUs(...)");
                this.j.a(adPlaybackStateWithAdResumePositionUs);
            }
            playerA.removeListener(this.g);
            this.j.a((AdsLoader.EventListener) null);
            this.k.a((Player) null);
            this.p = true;
        }
    }

    public final void a(ViewGroup viewGroup, List<xb2> list) {
        if (this.q || this.m != null || viewGroup == null) {
            return;
        }
        this.q = true;
        if (list == null) {
            list = defpackage.y71.k();
        }
        this.d.a(viewGroup, list, new a());
    }

    public final void a() {
        this.q = false;
        this.p = false;
        this.m = null;
        this.f.a((oi1) null);
        this.i.a();
        this.i.a((bj1) null);
        this.c.c();
        this.j.b();
        this.d.a();
        this.h.a((lo0) null);
        ll llVarA = this.c.a();
        if (llVarA != null) {
            llVarA.c();
        }
        ll llVarA2 = this.c.a();
        if (llVarA2 != null) {
            llVarA2.d();
        }
    }

    public final class a implements ls0.b {
        public a() {
        }

        @Override
        public final void a(ViewGroup viewGroup, List<xb2> list, et etVar) {
            y45.j(viewGroup, "viewGroup");
            y45.j(list, "friendlyOverlays");
            y45.j(etVar, "loadedInstreamAd");
            en0.this.q = false;
            en0.this.m = etVar;
            et etVar2 = en0.this.m;
            if (etVar2 != null) {
                en0.this.getClass();
                etVar2.b();
            }
            ll llVarA = en0.this.b.a(viewGroup, list, etVar);
            en0.this.c.a(llVarA);
            llVarA.a(en0.this.h);
            llVarA.c();
            llVarA.d();
            if (en0.this.k.b()) {
                en0.this.p = true;
                en0.b(en0.this, etVar);
            }
        }

        @Override
        public final void a(String str) {
            y45.j(str, "reason");
            en0.this.q = false;
            o5 o5Var = en0.this.j;
            AdPlaybackState adPlaybackState = AdPlaybackState.NONE;
            y45.i(adPlaybackState, "NONE");
            o5Var.a(adPlaybackState);
        }
    }

    public final void a(rn2 rn2Var) {
        this.h.a(rn2Var);
    }

    public final void a(Player player) {
        this.n = player;
    }

    public final void a(AdsLoader.EventListener eventListener, AdViewProvider adViewProvider, Object obj) {
        xb2.a aVar;
        y45.j(eventListener, "eventListener");
        Player player = this.n;
        this.k.a(player);
        this.o = obj;
        if (player != null) {
            player.addListener(this.g);
            this.j.a(eventListener);
            this.f.a(new oi1(player, this.l));
            if (this.p) {
                this.j.a(this.j.a());
                ll llVarA = this.c.a();
                if (llVarA != null) {
                    llVarA.a();
                    return;
                }
                return;
            }
            et etVar = this.m;
            if (etVar != null) {
                this.j.a(this.a.a(etVar, this.o));
                return;
            }
            if (adViewProvider != null) {
                ViewGroup adViewGroup = adViewProvider.getAdViewGroup();
                ArrayList arrayList = new ArrayList();
                for (AdOverlayInfo adOverlayInfo : adViewProvider.getAdOverlayInfos()) {
                    y45.g(adOverlayInfo);
                    y45.j(adOverlayInfo, "adOverlayInfo");
                    View view = adOverlayInfo.view;
                    y45.i(view, "view");
                    int i = adOverlayInfo.purpose;
                    if (i == 1) {
                        aVar = xb2.a.b;
                    } else if (i == 2) {
                        aVar = xb2.a.c;
                    } else if (i != 4) {
                        aVar = xb2.a.e;
                    } else {
                        aVar = xb2.a.d;
                    }
                    arrayList.add(new xb2(view, aVar, adOverlayInfo.reasonDetail));
                }
                a(adViewGroup, arrayList);
            }
        }
    }
}
