package com.mgmi.ads.api.d;

import android.content.Context;
import android.view.ViewGroup;
import com.mgmi.ads.api.e.g;
import com.mgmi.ads.api.h;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.VASTAd;
import com.mgmi.model.i;
import com.mgmi.model.r;
import com.mgmi.platform.d;
import java.lang.ref.WeakReference;
import java.util.List;

public class a extends b {
    private g f;
    private d g;
    private com.mgmi.e.a.d h;
    private com.mgmi.net.bean.b i;
    private com.mgmi.ads.api.f.b j;

    public a(Context context) {
        super(context);
    }

    public void a(r rVar, com.mgmi.ads.api.e.b bVar, com.mgmi.ads.api.c.a aVar, com.mgmi.ads.api.a aVar2, d dVar, Context context) {
        super.a(rVar, bVar, aVar, aVar2);
        this.h = com.mgmi.net.b.a().b();
        this.g = dVar;
    }

    @Override
    public void b() {
        com.mgmi.ads.api.e.b bVar = this.a;
        if (bVar != null) {
            bVar.d();
            this.a = null;
        }
        g gVar = this.f;
        if (gVar != null) {
            gVar.a();
        }
        com.mgmi.ads.api.c.a aVar = this.b;
        if (aVar != null) {
            aVar.e();
            if (this.b.d() != null) {
                this.b.d().removeAllViews();
            }
            this.b = null;
        }
        com.mgmi.ads.api.f.b bVar2 = this.j;
        if (bVar2 != null) {
            bVar2.c();
            this.j = null;
        }
    }

    public void c() {
        g gVar = this.f;
        if (gVar == null || !gVar.b()) {
            com.mgmi.ads.api.e.b bVar = this.a;
            if (bVar != null) {
                bVar.f();
            }
            com.mgmi.ads.api.f.b bVar2 = this.j;
            if (bVar2 != null) {
                bVar2.a();
            }
        }
    }

    public void d() {
        g gVar = this.f;
        if (gVar == null || !gVar.b()) {
            com.mgmi.ads.api.e.b bVar = this.a;
            if (bVar != null) {
                bVar.e();
            }
            com.mgmi.ads.api.f.b bVar2 = this.j;
            if (bVar2 != null) {
                bVar2.b();
            }
        }
    }

    public void e() {
        com.mgmi.ads.api.c.a aVar = this.b;
        if (aVar != null) {
            aVar.f();
        }
        com.mgmi.ads.api.e.b bVar = this.a;
        if (bVar != null) {
            bVar.h();
        }
    }

    @Override
    public void f() {
        com.mgmi.ads.api.f.b bVar = this.j;
        if (bVar != null) {
            bVar.b(-1);
        }
    }

    public void g() {
        com.mgmi.ads.api.e.b bVar = this.a;
        if (bVar != null) {
            bVar.i();
        }
    }

    public void h() {
        com.mgmi.ads.api.e.b bVar = this.a;
        if (bVar != null) {
            bVar.j();
        }
    }

    public void a(com.mgmi.net.bean.b bVar) {
        this.i = bVar;
    }

    @Override
    public void a() {
        com.mgmi.net.bean.b bVar;
        if (this.h == null || (bVar = this.i) == null || bVar.i() == null || this.i.i().x() != 4580 || this.i.i().b() == 4590) {
            return;
        }
        this.h.a(this.i);
    }

    public static int a(r rVar) {
        if (rVar == null) {
            return -1;
        }
        if (rVar.f() == 1) {
            return -2;
        }
        if (rVar.e() == null || rVar.e().isEmpty()) {
            return -1;
        }
        List<VASTAd> listE = rVar.e();
        if (listE.get(0) != null && (listE.get(0).getAdFrom().equals("gdt") || listE.get(0).getAdFrom().equals("opposdk"))) {
            return -5;
        }
        for (VASTAd vASTAd : listE) {
            if (vASTAd.getAdFrom().equals("google") && vASTAd.getVastTargetURI() != null) {
                return -3;
            }
        }
        return -4;
    }

    public void a(h hVar, String str) {
        g gVar;
        com.mgmi.ads.api.a aVar;
        com.mgmi.ads.api.c.a aVar2;
        if ((hVar.equals(h.AD_PLAY_END) || hVar.equals(h.PAUSE) || hVar.equals(h.RESUME) || hVar.equals(h.AD_PLAY_FIRST_FRAME) || hVar.equals(h.AD_PLAY_ERROR)) && (gVar = this.f) != null && gVar.b()) {
            this.f.a(hVar, str);
            com.mgmi.ads.api.f.b bVar = this.j;
            if (bVar != null) {
                bVar.a(hVar);
                return;
            }
            return;
        }
        g gVar2 = this.f;
        if (gVar2 != null) {
            gVar2.a(hVar, str);
        }
        com.mgmi.ads.api.e.b bVar2 = this.a;
        if (bVar2 != null) {
            bVar2.a(hVar, str);
        } else if (h.CONTENT_ONEND.equals(hVar) && (aVar = this.c) != null) {
            aVar.onAdListener(com.mgmi.ads.api.a.EnumC0161a.RESUME_POSITIVE_REQUESTED, new AdWidgetInfo("").setWidgetType("ADS_TYPE_BACK_VIDEO"));
        }
        if (!hVar.equals(h.AD_ONPAUSE) && !hVar.equals(h.AD_ONRESUME) && (aVar2 = this.b) != null) {
            aVar2.a(hVar, str);
        }
        com.mgmi.ads.api.f.b bVar3 = this.j;
        if (bVar3 != null) {
            bVar3.a(hVar);
        }
    }

    @Override
    public void a(VASTAd vASTAd, ViewGroup viewGroup, com.mgmi.ads.api.c.a aVar) {
        if (this.f == null) {
            this.f = new g(this.e.get(), viewGroup, this, this.g, aVar);
        }
        this.f.a(vASTAd);
    }

    public void a(int i, i iVar) {
        if (this.h != null) {
            com.mgmi.e.g gVar = new com.mgmi.e.g();
            com.mgmi.ads.api.c.a aVar = this.b;
            if (aVar != null) {
                gVar.a(aVar.b());
            }
            this.h.a(i, iVar, gVar);
        }
    }

    public void a(com.mgmi.ads.api.a.d dVar) {
        WeakReference<Context> weakReference = this.e;
        if (weakReference == null) {
            return;
        }
        weakReference.get();
    }

    @Override
    public void a(boolean z) {
        com.mgmi.ads.api.f.b bVar = this.j;
        if (bVar != null) {
            try {
                if (!z) {
                    bVar.a(-1);
                } else {
                    bVar.b(-1);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
