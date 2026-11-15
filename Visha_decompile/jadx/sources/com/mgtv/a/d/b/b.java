package com.mgtv.a.d.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mgadplus.brower.ImgoAdWebView;
import com.mgmi.ads.api.AdSize;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTMediaFile;
import com.mgmi.model.VASTStaticResource;
import com.mgmi.net.bean.BootAdBean;
import com.mgtv.a.c.h;
import defpackage.dkd;
import defpackage.l4d;
import java.util.List;

public abstract class b<T> {
    protected int c;
    protected String f;
    protected T g;
    protected VASTStaticResource h;
    protected VASTMediaFile i;
    protected Context j;
    protected ViewGroup k;
    protected com.mgtv.a.c.c m;
    protected a n;
    protected com.mgtv.a.c.e o;
    protected d p;
    protected boolean d = false;
    protected boolean e = false;
    protected com.mgtv.a.c.d q = new com.mgtv.a.c.d<T>() {
        @Override
        public ViewGroup a(int i) {
            return null;
        }

        @Override
        public void b(String str) {
            b.this.b(str);
        }

        @Override
        public void c(String str) {
            b.this.c(str);
        }

        @Override
        public void d(String str) {
        }

        @Override
        public String e(String str) {
            T t = b.this.g;
            if (t != null && (t instanceof VASTAd)) {
                return ((VASTAd) t).getInteractJsonM();
            }
            if (t == null || !(t instanceof BootAdBean) || ((BootAdBean) t).data == null) {
                return null;
            }
            return ((BootAdBean) t).data.interact_json;
        }

        @Override
        public void f(String str) {
        }

        @Override
        public void g() {
            b.this.l();
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.g();
            }
        }

        @Override
        public Context h() {
            return null;
        }

        @Override
        public int i() {
            return 0;
        }

        @Override
        public String j() {
            return k().toString();
        }

        @Override
        public AdSize k() {
            ImgoAdWebView imgoAdWebViewS;
            com.mgtv.a.c.c cVar = b.this.m;
            return (!(cVar instanceof com.mgtv.a.c.b) || (imgoAdWebViewS = ((com.mgtv.a.c.b) cVar).s()) == null) ? new AdSize(-1, -1) : new AdSize(imgoAdWebViewS.getWidth(), imgoAdWebViewS.getHeight());
        }

        @Override
        public boolean l() {
            return b.this.r();
        }

        @Override
        public void a(dkd dkdVar) {
            d dVar = b.this.p;
            if (dVar != null) {
                dVar.a((View) null, dkdVar);
            }
        }

        @Override
        public void b() {
            b.this.m();
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.b();
            }
        }

        @Override
        public void c() {
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.c();
            }
            b.this.g();
        }

        @Override
        public void d() {
            b.this.e();
        }

        @Override
        public void f() {
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.f();
            }
        }

        @Override
        public void a(T t, dkd dkdVar) {
            d dVar = b.this.p;
            if (dVar != null) {
                dVar.a((View) null, dkdVar);
            }
        }

        @Override
        public void e() {
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.e();
            }
        }

        @Override
        public void a(String str) {
            b.this.a(str);
        }

        @Override
        public void a() {
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.a();
            }
        }

        @Override
        public void a(int i, int i2) {
            b.this.a(i);
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.a(i, i2);
            }
        }

        @Override
        public void a(boolean z, boolean z2, boolean z3) {
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.a(z, z2, z3);
            }
        }

        @Override
        public void a(String str, int i, String str2) {
            b.this.a(str, i, str2);
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.a(str, i, str2);
            }
        }

        @Override
        public void a(int i, String str) {
            com.mgtv.a.c.e eVar = b.this.o;
            if (eVar != null) {
                eVar.a(i, str);
            }
        }
    };
    protected e l = new e();

    public b(Context context, ViewGroup viewGroup) {
        this.j = context;
        this.k = viewGroup;
    }

    public abstract void a(Context context);

    public void a(Context context, List<VASTAd> list) {
    }

    public abstract void b(Context context);

    public void b(String str) {
    }

    public abstract void c();

    public void c(String str) {
    }

    public void d() {
        this.e = true;
        com.mgtv.a.c.c cVar = this.m;
        if (cVar != null) {
            cVar.c();
        }
    }

    public void e() {
        com.mgtv.a.c.e eVar = this.o;
        if (eVar != null) {
            eVar.d();
        }
    }

    public void f() {
    }

    public void g() {
    }

    public boolean j() {
        return this.m instanceof h;
    }

    public boolean k() {
        return this.e;
    }

    public void l() {
        a aVar = this.n;
        if (aVar != null) {
            aVar.a(false);
        }
    }

    public void m() {
    }

    public Context n() {
        return this.j;
    }

    public int o() {
        T t = this.g;
        if (t instanceof VASTAd) {
            return ((VASTAd) t).show_type;
        }
        return 0;
    }

    public T p() {
        return this.g;
    }

    public String q() {
        String str = this.f;
        if (str != null) {
            return str;
        }
        return com.mgmi.platform.e.a(com.mgmi.ads.api.c.a()) > com.mgmi.platform.e.b(com.mgmi.ads.api.c.a()) ? "1" : "2";
    }

    public boolean r() {
        String str = this.f;
        if (str != null) {
            return "1".equalsIgnoreCase(str);
        }
        return com.mgmi.platform.e.a(com.mgmi.ads.api.c.a()) > com.mgmi.platform.e.b(com.mgmi.ads.api.c.a());
    }

    public void s() {
        System.out.println("BaseRender release  ");
        this.e = false;
        a aVar = this.n;
        if (aVar != null) {
            l4d.g(this.k, aVar.h());
            this.n.e();
        }
        e eVar = this.l;
        if (eVar != null) {
            eVar.b();
            this.l = null;
        }
        this.n = null;
        this.m = null;
    }

    public ViewGroup t() {
        return this.k;
    }

    public d u() {
        return this.p;
    }

    public int v() {
        return this.c;
    }

    public void a(String str) {
    }

    public void b() {
        com.mgtv.a.c.c cVar = this.m;
        if (cVar != null) {
            cVar.k();
        }
    }

    public boolean c(Context context) {
        return this.m != null;
    }

    public void a(String str, int i, String str2) {
    }

    public void c(int i) {
        a aVar = this.n;
        if (aVar != null) {
            aVar.c(i);
        }
    }

    public boolean a(List<VASTAd> list) {
        return true;
    }

    public void b(int i) {
        a aVar = this.n;
        if (aVar != null) {
            aVar.b(i);
        }
    }

    public void d(String str) {
        this.f = str;
    }

    public boolean a(T t) {
        this.g = t;
        return true;
    }

    public void a() {
        com.mgtv.a.c.c cVar = this.m;
        if (cVar != null) {
            cVar.j();
        }
    }

    public void a(boolean z) {
        com.mgtv.a.c.c cVar = this.m;
        if (cVar != null) {
            cVar.a(z);
        }
    }

    public void a(d dVar) {
        this.p = dVar;
        a aVar = this.n;
        if (aVar != null) {
            aVar.a(dVar);
        }
    }

    public void a(com.mgtv.a.c.e eVar) {
        this.o = eVar;
    }

    public void a(int i) {
        a aVar = this.n;
        if (aVar != null) {
            aVar.a(i);
        }
    }
}
