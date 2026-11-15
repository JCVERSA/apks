package com.mgmi.ads.api.e;

import android.content.Context;
import android.view.ViewGroup;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.model.VASTAd;
import defpackage.l4d;
import java.util.List;

public class g {
    com.mgmi.ads.api.c.a a;
    private com.mgmi.platform.d c;
    private List<com.mgmi.platform.view.ViewGroup.widget.c> d;
    private com.mgmi.platform.view.ViewGroup.widget.e e;
    private ViewGroup f;
    private Context g;
    private com.mgmi.platform.view.ViewGroup.widget.b h;
    private com.mgmi.ads.api.d.a i;
    private VASTAd b = null;
    private boolean j = false;

    public g(Context context, ViewGroup viewGroup, com.mgmi.ads.api.d.a aVar, com.mgmi.platform.d dVar, com.mgmi.ads.api.c.a aVar2) {
        this.g = context;
        this.f = viewGroup;
        this.i = aVar;
        this.c = dVar;
        this.a = aVar2;
    }

    private void c() {
        a(false);
    }

    public void a() {
        ViewGroup viewGroup;
        com.mgmi.platform.d dVar = this.c;
        if (dVar != null && dVar.d() != null && (viewGroup = (ViewGroup) this.c.d().getParent()) != null) {
            l4d.g(viewGroup, this.c.d());
        }
        com.mgmi.platform.view.ViewGroup.widget.b bVar = this.h;
        if (bVar != null && bVar.r()) {
            this.h.d();
            this.h = null;
            this.e = null;
        }
        List<com.mgmi.platform.view.ViewGroup.widget.c> list = this.d;
        if (list != null) {
            for (com.mgmi.platform.view.ViewGroup.widget.c cVar : list) {
                if (cVar != null && cVar.r()) {
                    cVar.d();
                }
                try {
                    l4d.g(this.f, cVar.c());
                } catch (Throwable unused) {
                }
            }
            this.d.clear();
            this.d = null;
        }
    }

    public boolean b() {
        return this.j;
    }

    private void a(boolean z) {
        com.mgmi.platform.view.ViewGroup.widget.b bVar = this.h;
        if (bVar != null) {
            if (!z) {
                bVar.d();
                this.h = null;
            }
            com.mgmi.platform.view.ViewGroup.widget.e eVar = this.e;
            if (eVar != null) {
                eVar.w();
            }
            this.e = null;
        }
        com.mgmi.ads.api.d.a aVar = this.i;
        if (aVar != null && !z) {
            aVar.e();
        }
        this.j = false;
        List<com.mgmi.platform.view.ViewGroup.widget.c> list = this.d;
        if (list != null) {
            for (com.mgmi.platform.view.ViewGroup.widget.c cVar : list) {
                if (cVar != null && cVar.q()) {
                    cVar.k();
                }
            }
        }
    }

    public void a(VASTAd vASTAd) {
        this.b = vASTAd;
    }

    public void a(com.mgmi.ads.api.h hVar, String str) {
        com.mgmi.platform.view.ViewGroup.widget.b bVar;
        if (!hVar.equals(com.mgmi.ads.api.h.FULLSCREEN) && !hVar.equals(com.mgmi.ads.api.h.HARLFSCREEN)) {
            if (!hVar.equals(com.mgmi.ads.api.h.AD_PLAY_END) && !hVar.equals(com.mgmi.ads.api.h.AD_PLAY_ERROR)) {
                if (hVar.equals(com.mgmi.ads.api.h.AD_PLAY_FIRST_FRAME)) {
                    com.mgmi.platform.view.ViewGroup.widget.e eVar = this.e;
                    if (eVar == null || !eVar.p()) {
                        return;
                    }
                    this.e.x();
                    return;
                }
                if (hVar.equals(com.mgmi.ads.api.h.PAUSE)) {
                    com.mgmi.platform.view.ViewGroup.widget.e eVar2 = this.e;
                    if (eVar2 != null && eVar2.p()) {
                        SourceKitLogger.a("InteractCreativeManager", "callback play mPlayerWidget PAUSE");
                        this.e.j();
                        return;
                    }
                    com.mgmi.platform.view.ViewGroup.widget.b bVar2 = this.h;
                    if (bVar2 != null && bVar2.r()) {
                        SourceKitLogger.a("InteractCreativeManager", "callback play mPlayerWidget PAUSE no process");
                        return;
                    }
                    List<com.mgmi.platform.view.ViewGroup.widget.c> list = this.d;
                    if (list != null) {
                        for (com.mgmi.platform.view.ViewGroup.widget.c cVar : list) {
                            if (cVar != null && cVar.p()) {
                                cVar.b(true);
                                cVar.j();
                            }
                        }
                        return;
                    }
                    return;
                }
                if (hVar.equals(com.mgmi.ads.api.h.RESUME)) {
                    SourceKitLogger.a("InteractCreativeManager", "callback play mPlayerWidget RESUME");
                    com.mgmi.platform.view.ViewGroup.widget.e eVar3 = this.e;
                    if (eVar3 != null && eVar3.q()) {
                        SourceKitLogger.a("InteractCreativeManager", "callback play mPlayerWidget RESUME");
                        this.e.k();
                        return;
                    }
                    com.mgmi.platform.view.ViewGroup.widget.b bVar3 = this.h;
                    if (bVar3 != null && bVar3.r()) {
                        SourceKitLogger.a("InteractCreativeManager", "callback play mPlayerWidget PAUSE no process");
                        return;
                    }
                    List<com.mgmi.platform.view.ViewGroup.widget.c> list2 = this.d;
                    if (list2 != null) {
                        for (com.mgmi.platform.view.ViewGroup.widget.c cVar2 : list2) {
                            if (cVar2 != null && cVar2.q()) {
                                cVar2.k();
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            com.mgmi.platform.view.ViewGroup.widget.e eVar4 = this.e;
            if (eVar4 == null || !eVar4.p()) {
                return;
            }
            c();
            return;
        }
        List<com.mgmi.platform.view.ViewGroup.widget.c> list3 = this.d;
        if (list3 != null) {
            for (com.mgmi.platform.view.ViewGroup.widget.c cVar3 : list3) {
                if (cVar3 != null && cVar3.r()) {
                    if (hVar.equals(com.mgmi.ads.api.h.FULLSCREEN)) {
                        cVar3.a();
                    } else if (hVar.equals(com.mgmi.ads.api.h.HARLFSCREEN)) {
                        cVar3.b();
                    }
                }
            }
        }
        if (this.h != null) {
            if (hVar.equals(com.mgmi.ads.api.h.FULLSCREEN)) {
                this.h.a();
            } else if (hVar.equals(com.mgmi.ads.api.h.HARLFSCREEN)) {
                this.h.b();
            }
        }
        if (this.i.i().isFullScreen() || (bVar = this.h) == null || !bVar.r()) {
            return;
        }
        a(this.h instanceof com.mgmi.platform.view.ViewGroup.widget.a);
    }
}
