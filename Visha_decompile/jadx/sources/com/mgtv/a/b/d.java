package com.mgtv.a.b;

import android.content.Context;
import com.mgmi.ads.api.e.i;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.VASTAd;
import com.mgmi.model.r;
import java.util.List;

public class d extends com.mgtv.a.b.a.a<VASTAd> {
    private int a;
    private int b;
    private AdWidgetInfo o;
    private r p;
    private List<VASTAd> q;

    public d() {
        this("paster");
    }

    private void B() {
        com.mgtv.a.a.a aVar;
        com.mgtv.a.d.b.b bVar;
        if (!this.h && (aVar = this.l) != null && (bVar = this.k) != null) {
            aVar.a(bVar.p());
            this.l.h();
        }
        com.mgtv.a.b.a.b bVar2 = this.m;
        if (bVar2 != null) {
            bVar2.r();
            this.m = null;
        }
        this.q = null;
        this.f = 0;
        this.g = 0;
    }

    @Override
    public void d() {
        super.d();
    }

    @Override
    public void e_() {
        com.mgtv.a.a.a aVar = this.l;
        if (aVar != null) {
            int i = this.e;
            aVar.a(i, i == 8);
        }
        com.mgtv.a.b.a.b bVar = this.m;
        if (bVar != null) {
            bVar.o();
        }
    }

    @Override
    public void g() {
        super.g();
        try {
            b();
        } catch (Throwable unused) {
        }
    }

    @Override
    public void h_() {
        com.mgmi.ads.api.a aVar;
        if (this.a != 0 || (aVar = this.n) == null) {
            return;
        }
        aVar.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_PREPARED, new AdWidgetInfo(""));
    }

    public boolean o() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || !(bVar instanceof com.mgtv.a.d.e.a)) {
            return false;
        }
        return ((com.mgtv.a.d.e.a) bVar).h();
    }

    public d(String str) {
        super(str);
        this.b = 0;
    }

    public void a(r rVar) {
        this.p = rVar;
        if (rVar != null) {
            this.f = rVar.a();
            this.g = this.p.b();
        }
    }

    @Override
    public void a(VASTAd vASTAd) {
        com.mgtv.a.d.b.b bVar;
        com.mgtv.a.a.a aVar = this.l;
        if (aVar == null || (bVar = this.k) == null) {
            return;
        }
        aVar.a(bVar.p());
        this.l.b();
    }

    @Override
    public void a(Context context, List<VASTAd> list) {
        this.q = list;
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || context == null) {
            return;
        }
        bVar.a(context, list);
    }

    public void b() {
        List<VASTAd> list = this.q;
        if (list == null) {
            B();
            return;
        }
        int size = list.size();
        int i = this.a;
        if (i >= size) {
            B();
            i.a().b();
            return;
        }
        VASTAd vASTAd = this.q.get(i);
        if (vASTAd.isInteractAd()) {
            B();
            return;
        }
        int i2 = this.a + 1;
        this.a = i2;
        if (i2 >= size) {
            B();
            i.a().b();
            return;
        }
        VASTAd vASTAd2 = this.q.get(i2);
        if (vASTAd2 != null) {
            this.f -= vASTAd.getDuration();
            this.g -= vASTAd.getDuration();
            if (b(vASTAd2)) {
                b(this.g);
                a(this.f);
                d();
                return;
            }
            b();
            return;
        }
        B();
    }

    @Override
    public boolean b(VASTAd vASTAd) {
        List<VASTAd> list;
        if (this.k == null || (list = this.q) == null) {
            return false;
        }
        try {
            VASTAd vASTAd2 = list.get(this.a);
            if (vASTAd2 != null) {
                this.c = vASTAd2.show_type;
            }
            com.mgtv.a.a.a aVar = this.l;
            if (aVar != null) {
                aVar.a((Object) vASTAd2);
            }
            q();
            return this.k.a(vASTAd2);
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override
    public void a(String str, int i, String str2) {
        super.a(str, i, str2);
        try {
            b();
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z) {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.a(z);
        }
    }

    @Override
    public void a(int i, int i2) {
        int i3 = this.f - (i / 1000);
        if (i3 < 0) {
            i3 = 0;
        }
        if (this.o == null) {
            this.o = new AdWidgetInfo("");
        }
        if (this.n == null || this.b == i3) {
            return;
        }
        this.o.setAdDrationRemain(i3);
        this.b = i3;
        this.n.onAdListener(com.mgmi.ads.api.a.EnumC0161a.PLAYER_PROGRESS_UPDATE, this.o);
    }

    public void b(boolean z) {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || !(bVar instanceof com.mgtv.a.d.e.a)) {
            return;
        }
        ((com.mgtv.a.d.e.a) bVar).b(z);
    }
}
