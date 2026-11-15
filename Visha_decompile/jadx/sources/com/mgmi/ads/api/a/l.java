package com.mgmi.ads.api.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.ViewGroup;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.VASTChannelAd;
import com.mgmi.model.r;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class l extends e implements g.a, com.mgmi.ads.api.e.j.a, com.mgmi.ads.api.e.l.a {
    private boolean A;
    private ArrayList<String> B;
    private String C;
    private List<g> u;
    private g v;
    private g w;
    private int x;
    private a y;
    private boolean z;

    public static class a extends Handler {
        WeakReference<l> a;

        public a(l lVar) {
            super(Looper.getMainLooper());
            this.a = new WeakReference<>(lVar);
        }

        @Override
        public void handleMessage(Message message) {
            l lVar;
            super.handleMessage(message);
            WeakReference<l> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null || message.what != 505 || (lVar = this.a.get()) == null) {
                return;
            }
            lVar.n();
        }
    }

    public l(Context context) {
        super(context);
        this.x = 0;
        this.z = false;
        this.A = true;
        this.y = new a(this);
        this.o = String.valueOf(hashCode());
        this.B = new ArrayList<>();
    }

    private void e(d dVar) {
        if (String.valueOf(dVar.k().k()).equals(VASTChannelAd.AD_HORIZONTAL) || String.valueOf(dVar.k().k()).equals(VASTChannelAd.AD_HUAXU)) {
            com.mgmi.ads.api.e.i.a().a(this);
            com.mgmi.ads.api.e.l.a().a(this);
            this.C = "from_banner" + dVar.k().k();
        }
    }

    private void f(d dVar) {
        a(dVar, new e.a() {
            @Override
            public void a(r rVar) {
                try {
                    l.this.a(rVar);
                } catch (Exception e) {
                    SourceKitLogger.a("BaseAdView_SuperBannerAdsloader", "requestAds banner e0" + e.toString());
                }
            }

            @Override
            public void a() {
                SourceKitLogger.a("BaseAdView_SuperBannerAdsloader", "requestAds banner fail");
                l lVar = l.this;
                lVar.n = 1;
                lVar.a(false, 700002);
            }
        }, "BaseAdView_SuperBannerAdsloader");
    }

    private void o() {
        g gVar = this.v;
        if (gVar != null) {
            gVar.d();
            this.v = null;
        }
        List<g> list = this.u;
        int i = 0;
        if (list != null && list.size() > 0) {
            int size = this.u.size();
            this.B.clear();
            for (int i2 = 0; i2 < size; i2++) {
                g gVar2 = this.u.get(i2);
                this.v = gVar2;
                int pairid = gVar2.a.getPairid();
                if (pairid > 0) {
                    this.z = false;
                    this.B.add(pairid + "");
                }
            }
            if (this.B.size() > 0) {
                if (this.n != 2) {
                    com.mgmi.ads.api.e.j.d dVar = new com.mgmi.ads.api.e.j.d();
                    dVar.b = this.C;
                    dVar.c = 0;
                    com.mgmi.ads.api.e.i.a().a(dVar);
                    this.n = 1;
                    while (i < size) {
                        this.u.get(i).h = true;
                        i++;
                    }
                    this.r = true;
                    this.v.h = true;
                    return;
                }
                com.mgmi.ads.api.e.j.d dVar2 = new com.mgmi.ads.api.e.j.d();
                dVar2.a = this.B;
                dVar2.b = this.C;
                this.n = 1;
                dVar2.c = 0;
                c(dVar2);
                this.r = true;
                while (i < size) {
                    this.u.get(i).h = true;
                    i++;
                }
                this.v.h = true;
                return;
            }
        }
        List<g> list2 = this.u;
        if (list2 != null && list2.size() > 0) {
            g gVar3 = this.u.get(0);
            this.v = gVar3;
            gVar3.b((ViewGroup) null);
            this.r = false;
            this.u.get(0).h = false;
            this.v.h = false;
        }
        this.n = 1;
    }

    private void p() {
        this.z = false;
        this.A = true;
        ArrayList<String> arrayList = this.B;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.n = 0;
        this.p = 0;
        this.r = false;
        this.s = false;
        ArrayList<String> arrayList2 = this.q;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
    }

    @Override
    public void a(com.mgmi.ads.api.e.j.d dVar) {
        if (this.f != null) {
            this.n = 2;
            if (this.q == null) {
                this.q = new ArrayList<>();
            }
            this.q.clear();
            this.q.addAll(dVar.a);
            if (d() != null) {
                this.f.d(d().isFullScreen() ? 2 : 1);
            }
            b(this.f);
        }
    }

    @Override
    public void a_() {
        if (this.f.n() == null) {
            super.l();
        } else {
            this.f.n().removeAllViews();
            a(this.f.n());
        }
    }

    @Override
    public void b(d dVar) {
        e(dVar);
        if (com.mgmi.platform.c.c()) {
            return;
        }
        if (!this.r) {
            f(dVar);
            return;
        }
        int i = this.n;
        if (i == 2) {
            f(dVar);
            return;
        }
        if (i == 1) {
            this.f = dVar;
            com.mgmi.ads.api.e.j.d dVar2 = new com.mgmi.ads.api.e.j.d();
            dVar2.b = this.o;
            dVar2.d = this.s;
            com.mgmi.ads.api.e.i.a().c(dVar2);
        }
    }

    @Override
    public void c(com.mgmi.ads.api.e.j.d dVar) {
        List<g> list;
        g gVar;
        g gVar2;
        String str = dVar.b;
        if ((str.equals(this.C) || str.equals("from_all")) && (list = this.u) != null && list.size() > 0) {
            int size = this.u.size();
            if (str.equals("from_all") || this.q == null) {
                this.q = dVar.a;
            }
            int size2 = this.q.size();
            int i = dVar.c;
            if (i > size2) {
                return;
            }
            this.p = i;
            SourceKitLogger.a("fanfansss", "11111preAdPairidsList:" + this.q);
            loop0: while (i < size2) {
                String str2 = this.q.get(i);
                for (int i2 = 0; i2 < size; i2++) {
                    g gVar3 = this.u.get(i2);
                    if (str2.equals(gVar3.a.getPairid() + "")) {
                        this.v = gVar3;
                        break loop0;
                    }
                }
                i++;
            }
            if (this.A && (gVar2 = this.v) != null) {
                gVar2.b((ViewGroup) null);
                this.A = false;
            }
            d dVar2 = this.f;
            if (dVar2 == null || dVar2.n() == null) {
                if (this.f == null || (gVar = this.v) == null) {
                    return;
                }
                gVar.b((ViewGroup) null);
                return;
            }
            g gVar4 = this.v;
            if (gVar4 != null) {
                gVar4.b(this.f.n());
            }
        }
    }

    @Override
    public com.mgmi.ads.api.a d() {
        return this.f.h();
    }

    @Override
    public void g() {
        g gVar = this.v;
        if (gVar != null) {
            gVar.c();
        }
    }

    @Override
    public void h() {
        g gVar = this.v;
        if (gVar != null) {
            gVar.b();
        }
    }

    @Override
    public void l() {
        d dVar = this.f;
        if (dVar == null || dVar.h() == null) {
            return;
        }
        this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_SUCCESS, new AdWidgetInfo(this.f.j()));
        this.k = this.v.j;
        this.f.h().onADLoaded(this.k);
    }

    public void n() {
        this.x++;
        List<g> list = this.u;
        if (list == null || list.size() <= 0) {
            return;
        }
        if (this.x >= this.u.size()) {
            this.x = 0;
        }
        g gVar = this.v;
        if (gVar != null) {
            gVar.d();
        }
        g gVar2 = this.u.get(this.x);
        this.v = gVar2;
        int iB = gVar2.b(this.f.n());
        if (iB != 1 && iB == 3) {
            b(1);
        }
    }

    @Override
    public d e() {
        return this.f;
    }

    private VASTChannelAd a(List<VASTChannelAd> list) {
        for (VASTChannelAd vASTChannelAd : list) {
            if (com.mgmi.ads.api.e.a.b(vASTChannelAd)) {
                return vASTChannelAd;
            }
        }
        return null;
    }

    @Override
    public void a(r rVar) {
        Context context = this.a.get();
        if (context == null) {
            return;
        }
        boolean z = false;
        if (rVar == null) {
            a(false, 700001);
            return;
        }
        this.u = new ArrayList();
        d dVar = this.f;
        if (dVar != null) {
            if ("ADS_BANNER".equals(dVar.j()) || "ADS_TYPE_INSIDE_BANNER".equals(this.f.j())) {
                List<VASTChannelAd> listH = rVar.h();
                if (listH != null && listH.size() > 0) {
                    VASTChannelAd vASTChannelAdA = a(listH);
                    if (vASTChannelAdA != null) {
                        this.z = false;
                        h hVar = new h(context, listH, vASTChannelAdA, null);
                        hVar.a(this);
                        if (this.f.e()) {
                            hVar.a(this.f.f());
                        }
                        this.u.add(hVar);
                    } else {
                        if (listH.size() > 1) {
                            this.z = true;
                        } else {
                            this.z = false;
                        }
                        for (VASTChannelAd vASTChannelAd : listH) {
                            if (vASTChannelAd != null && vASTChannelAd.getCurrentStaticResource() != null && "19".equalsIgnoreCase(vASTChannelAd.getCurrentStaticResource().getStyle())) {
                                vASTChannelAd.setSupportChangeColor(!z);
                                z = true;
                            }
                            if (!vASTChannelAd.getAdFrom().equals("toutiao") && !vASTChannelAd.getAdFrom().equals("opposdk") && !vASTChannelAd.getAdFrom().equals("hyjy")) {
                                h hVar2 = new h(context, listH, vASTChannelAd, vASTChannelAd.getOrginTargetURI());
                                hVar2.a(this);
                                if (this.f.e()) {
                                    hVar2.a(this.f.f());
                                }
                                this.u.add(hVar2);
                            }
                        }
                    }
                    o();
                    return;
                }
                this.n = 1;
                a(false, 700001);
            }
        }
    }

    @Override
    public void b(com.mgmi.ads.api.e.j.d dVar) {
        if (dVar.b.equals(this.o)) {
            this.s = dVar.d;
            SourceKitLogger.a("BaseAdView_SuperBannerAdsloader", "fanfansss banner = " + this + " @  onPreAdPlayingTag = isReactAd " + this.r + "hasRequestTag " + this.n + "isPreAdsPlaying = " + this.s);
            if (this.r && this.n == 1 && this.s) {
                return;
            }
            f(this.f);
            this.n = 1;
        }
    }

    private void b(int i) {
        if (!this.z || i <= 0) {
            return;
        }
        this.y.removeMessages(505);
        this.y.sendEmptyMessageDelayed(505, i * 1000);
    }

    @Override
    public void b() {
        super.b();
        g gVar = this.v;
        if (gVar != null) {
            gVar.e();
        }
    }

    @Override
    public void c() {
        super.c();
        g gVar = this.v;
        if (gVar != null) {
            gVar.f();
        }
    }

    @Override
    public void a(int i) {
        l();
        if (this.r) {
            this.w = this.v;
        }
    }

    @Override
    public void a(boolean z, int i) {
        d dVar;
        g gVar;
        b(1);
        if (!this.z) {
            super.a(z, i);
        }
        if (this.r) {
            com.mgmi.ads.api.e.j.d dVar2 = new com.mgmi.ads.api.e.j.d();
            ArrayList<String> arrayList = this.q;
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            List<g> list = this.u;
            if (list != null && list.size() > 0 && this.u.indexOf(this.v) == this.u.size() && (dVar = this.f) != null && dVar.n() != null && (gVar = this.w) != null) {
                gVar.b(this.f.n());
                return;
            }
            dVar2.b = this.C;
            dVar2.c = this.p + 1;
            dVar2.a = this.q;
            this.u.remove(this.v);
            c(dVar2);
        }
    }

    @Override
    public void a(ViewGroup viewGroup) {
        super.a(viewGroup);
        this.f.a(viewGroup);
        g gVar = this.v;
        if (gVar != null) {
            gVar.a(viewGroup);
        }
    }

    @Override
    public void a() {
        this.y.removeMessages(505);
        super.a();
        SourceKitLogger.a("BaseAdView_SuperBannerAdsloader", "Superbannerview finish");
        List<g> list = this.u;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.g();
                }
            }
            this.u.clear();
            this.u = null;
            this.w = null;
        }
        com.mgmi.ads.api.e.i.a().b(this);
        p();
        com.mgmi.ads.api.e.l.a().b(this);
    }

    @Override
    public void a(String str) {
        SourceKitLogger.a("BaseAdView_SuperBannerAdsloader", "Superbannerview getScreenState banner e0" + str);
        if (!str.equals(com.mgmi.ads.api.e.l.b) || this.v == null) {
            return;
        }
        SourceKitLogger.a("BaseAdView_SuperBannerAdsloader", "Superbannerview getScreenState banner e11111111" + str);
        this.v.i();
    }

    @Override
    public void a(boolean z, com.mgmi.e.a aVar) {
        g gVar = this.v;
        if (gVar != null) {
            gVar.a(z, aVar);
        }
    }
}
