package com.mgtv.a.b.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mgmi.ads.api.AdWidgetInfoImp;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTStaticResource;
import com.mgtv.a.c.e;
import com.mgtv.a.d.b.d;
import defpackage.dkd;
import defpackage.g4d;
import defpackage.wrd;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.util.List;

public abstract class a<T> {
    protected int c;
    protected String d;
    protected int e;
    protected WeakReference<Context> j;
    protected com.mgtv.a.d.b.b k;
    protected b m;
    protected com.mgmi.ads.api.a n;
    protected int f = 0;
    protected int g = 0;
    protected boolean h = true;
    protected boolean i = false;
    protected com.mgtv.a.a.a l = new com.mgtv.a.a.a();

    public a(String str) {
        this.d = str;
    }

    public int A() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || !(bVar.p() instanceof VASTAd)) {
            return 0;
        }
        String sspPrice = ((VASTAd) this.k.p()).getSspPrice();
        if (TextUtils.isEmpty(sspPrice)) {
            return -1;
        }
        return g4d.j(wrd.c(URLDecoder.decode(sspPrice)));
    }

    public void a(int i, int i2) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean b(T t) {
        if (this.k == null) {
            return false;
        }
        if (t instanceof VASTAd) {
            this.c = ((VASTAd) t).show_type;
        }
        com.mgtv.a.a.a aVar = this.l;
        if (aVar != null) {
            aVar.a(t);
        }
        q();
        return this.k.a(t);
    }

    public void c(boolean z) {
        this.i = z;
    }

    public void d() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.d();
        }
        a((Object) null);
    }

    public void e() {
    }

    public void e_() {
        com.mgtv.a.a.a aVar = this.l;
        if (aVar != null) {
            com.mgtv.a.d.b.b bVar = this.k;
            if (bVar != null) {
                aVar.a(bVar.p());
            }
            this.l.b();
        }
        b bVar2 = this.m;
        if (bVar2 != null) {
            bVar2.o();
        }
    }

    public void f() {
        b bVar = this.m;
        if (bVar != null) {
            bVar.q();
        }
    }

    public void f_() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.a();
        }
    }

    public void g() {
    }

    public void g_() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.b();
        }
    }

    public void h() {
    }

    public void h_() {
    }

    public void j() {
    }

    public void k() {
        b bVar = this.m;
        if (bVar != null) {
            bVar.p();
        }
    }

    public void l() {
    }

    public boolean m() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            return bVar.k();
        }
        return false;
    }

    public com.mgmi.ads.api.a p() {
        return this.n;
    }

    public void q() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.a(new e() {
                @Override
                public void a() {
                    com.mgtv.a.a.a aVar = a.this.l;
                    if (aVar != null) {
                        aVar.a();
                    }
                }

                @Override
                public void b() {
                    com.mgtv.a.a.a aVar;
                    a aVar2 = a.this;
                    com.mgtv.a.d.b.b bVar2 = aVar2.k;
                    if (bVar2 != null && (aVar = aVar2.l) != null) {
                        aVar.a(bVar2.p());
                    }
                    a.this.h_();
                }

                @Override
                public void c() {
                    a.this.l();
                }

                @Override
                public void d() {
                    a.this.e_();
                }

                @Override
                public void e() {
                    a.this.k();
                }

                @Override
                public void f() {
                    a.this.f();
                }

                @Override
                public void g() {
                    com.mgtv.a.a.a aVar = a.this.l;
                    if (aVar != null) {
                        aVar.g();
                    }
                    a.this.g();
                }

                @Override
                public void a(int i, int i2) {
                    com.mgtv.a.a.a aVar = a.this.l;
                    if (aVar != null) {
                        aVar.a(i, i2);
                    }
                    a.this.a(i, i2);
                }

                @Override
                public void a(boolean z, boolean z2, boolean z3) {
                    com.mgmi.ads.api.a aVar = a.this.n;
                    if (aVar != null) {
                        aVar.onUpdateStatus(z, z2, z3);
                    }
                }

                @Override
                public void a(String str, int i, String str2) {
                    a aVar = a.this;
                    aVar.h = true;
                    if (aVar.l != null) {
                        if ("boot".equals(aVar.d)) {
                            a.this.l.a(str, i, str2);
                        } else {
                            com.mgtv.a.d.b.b bVar2 = a.this.k;
                            if (bVar2 != null && bVar2.v() == 0) {
                                a.this.l.a("errmsg what=" + i + "extra=" + str2, 8);
                            } else {
                                a.this.l.b(i);
                            }
                        }
                    }
                    a.this.a(str, i, str2);
                }

                @Override
                public void a(int i, String str) {
                    com.mgtv.a.a.a aVar = a.this.l;
                    if (aVar != null) {
                        aVar.a(i, str);
                    }
                    b bVar2 = a.this.m;
                    if (bVar2 != null) {
                        bVar2.a(i, str);
                    }
                }
            });
            this.k.a(new d() {
                @Override
                public void a(int i, Object obj) {
                    if (i == 2 || i == 4) {
                        com.mgtv.a.d.b.b bVar2 = a.this.k;
                        if (bVar2 == null) {
                            return;
                        }
                        if (obj instanceof Boolean) {
                            bVar2.a(((Boolean) obj).booleanValue());
                        }
                        a aVar = a.this;
                        com.mgtv.a.a.a aVar2 = aVar.l;
                        if (aVar2 == null || i == 4) {
                            return;
                        }
                        aVar2.a(aVar.k.p());
                        a.this.l.b(((Boolean) obj).booleanValue());
                        return;
                    }
                    if (i == 1) {
                        com.mgmi.ads.api.a aVar3 = a.this.n;
                        if (aVar3 != null) {
                            aVar3.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_COUNT_CLICK, new AdWidgetInfo(""));
                            return;
                        }
                        return;
                    }
                    if (i == 3) {
                        com.mgmi.ads.api.a aVar4 = a.this.n;
                        if (aVar4 != null) {
                            aVar4.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_PAUSEAD_REPLAYER, new AdWidgetInfo(""));
                            return;
                        }
                        return;
                    }
                    b bVar3 = a.this.m;
                    if (bVar3 != null) {
                        bVar3.a(i, obj);
                    }
                }

                @Override
                public int b() {
                    com.mgmi.ads.api.a aVar = a.this.n;
                    if (aVar != null) {
                        return aVar.getVideoWidth();
                    }
                    return 0;
                }

                @Override
                public void c() {
                    a.this.e();
                }

                @Override
                public void a(View view, dkd dkdVar) {
                    a aVar = a.this;
                    com.mgtv.a.d.b.b bVar2 = aVar.k;
                    if (bVar2 != null) {
                        com.mgtv.a.a.b bVar3 = new com.mgtv.a.a.b(aVar.j, bVar2.p(), a.this.k.q());
                        bVar3.a(a.this.n);
                        bVar3.a(view, dkdVar);
                    }
                    a.this.h();
                }

                @Override
                public void a(View view) {
                    com.mgtv.a.a.a aVar = a.this.l;
                    if (aVar != null) {
                        aVar.a(600000, "");
                    }
                    b bVar2 = a.this.m;
                    if (bVar2 != null) {
                        bVar2.a(600000, "");
                    }
                }

                @Override
                public void a(boolean z) {
                    a aVar = a.this;
                    com.mgtv.a.d.b.b bVar2 = aVar.k;
                    if (bVar2 != null) {
                        com.mgtv.a.a.b bVar3 = new com.mgtv.a.a.b(aVar.j, bVar2.p(), a.this.k.q());
                        bVar3.a(a.this.n);
                        bVar3.b();
                    }
                    com.mgmi.ads.api.a aVar2 = a.this.n;
                    if (aVar2 != null) {
                        aVar2.onAdListener(com.mgmi.ads.api.a.EnumC0161a.FULLSCREEN_REQUESTED, (AdWidgetInfoImp) null);
                    }
                }

                @Override
                public void a(Object obj) {
                    a aVar = a.this;
                    com.mgtv.a.d.b.b bVar2 = aVar.k;
                    if (bVar2 != null) {
                        com.mgtv.a.a.b bVar3 = new com.mgtv.a.a.b(aVar.j, bVar2.p(), a.this.k.q());
                        bVar3.a(a.this.n);
                        bVar3.c();
                        a.this.k.s();
                        a.this.j();
                    }
                }

                @Override
                public Bitmap a(int i, int i2) {
                    com.mgmi.ads.api.a aVar = a.this.n;
                    if (aVar != null) {
                        return aVar.getSnapshot(i, i2);
                    }
                    return null;
                }

                @Override
                public int a() {
                    com.mgmi.ads.api.a aVar = a.this.n;
                    if (aVar != null) {
                        return aVar.getVideoHeight();
                    }
                    return 0;
                }
            });
            r();
        }
    }

    public void r() {
    }

    public void s() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.s();
            this.k = null;
        }
        if (this.l != null) {
            this.l = null;
        }
    }

    public int t() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            return bVar.o();
        }
        return 0;
    }

    public boolean u() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || (bVar instanceof com.mgtv.a.d.c.a) || !(bVar.p() instanceof VASTAd)) {
            return true;
        }
        return ((VASTAd) this.k.p()).isSelfRender();
    }

    public String v() {
        com.mgtv.a.d.b.b bVar = this.k;
        return (bVar == null || !(bVar.p() instanceof VASTAd)) ? "" : ((VASTAd) this.k.p()).getTitle();
    }

    public String w() {
        com.mgtv.a.d.b.b bVar = this.k;
        return (bVar == null || !(bVar.p() instanceof VASTAd)) ? "" : ((VASTAd) this.k.p()).getDiscription();
    }

    public String x() {
        VASTStaticResource currentStaticResource;
        com.mgtv.a.d.b.b bVar = this.k;
        return (bVar == null || !(bVar.p() instanceof VASTAd) || (currentStaticResource = ((VASTAd) this.k.p()).getCurrentStaticResource()) == null) ? "" : currentStaticResource.getUrl();
    }

    public void y() {
        com.mgtv.a.a.a aVar;
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || !(bVar.p() instanceof VASTAd) || (aVar = this.l) == null) {
            return;
        }
        aVar.a(this.k.p());
        this.l.b();
    }

    public void z() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || bVar.u() == null) {
            return;
        }
        this.k.u().a((View) null, new dkd());
    }

    public void a(T t) {
    }

    public void a(b bVar) {
        this.m = bVar;
    }

    public void a(com.mgmi.ads.api.a aVar) {
        this.n = aVar;
    }

    public boolean a(Context context, ViewGroup viewGroup) {
        if (this.d == null) {
            return false;
        }
        this.j = new WeakReference<>(context);
        if ("paster".equalsIgnoreCase(this.d)) {
            this.k = new com.mgtv.a.d.e.a(context, viewGroup);
        } else if ("pause".equalsIgnoreCase(this.d)) {
            this.k = new com.mgtv.a.d.f.a(context, viewGroup);
        } else if ("boot".equalsIgnoreCase(this.d)) {
            this.k = new com.mgtv.a.d.c.a(context, viewGroup);
        } else if ("Corner".equalsIgnoreCase(this.d)) {
            this.k = new com.mgtv.a.d.d.a(context, viewGroup);
        } else if ("banner".equalsIgnoreCase(this.d)) {
            this.k = new com.mgtv.a.d.a.a(context, viewGroup);
        }
        return this.k != null;
    }

    public void b(int i) {
        this.g = i;
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.c(i);
        }
        com.mgtv.a.a.a aVar = this.l;
        if (aVar != null) {
            aVar.a(i > 0);
        }
    }

    public void a(int i) {
        this.f = i;
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.b(i);
        }
    }

    public void a(Context context, List<VASTAd> list) {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || context == null) {
            return;
        }
        bVar.a(context, list);
    }

    public void a(String str) {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.d(str);
        }
        com.mgtv.a.a.a aVar = this.l;
        if (aVar != null) {
            aVar.a(str);
        }
    }

    public void a(String str, int i, String str2) {
        b bVar = this.m;
        if (bVar != null) {
            bVar.a(str, i, str2);
        }
    }

    public void a(boolean z, com.mgmi.e.a aVar) {
        com.mgtv.a.d.b.b bVar;
        com.mgtv.a.a.a aVar2 = this.l;
        if (aVar2 == null || (bVar = this.k) == null) {
            return;
        }
        if (bVar instanceof com.mgtv.a.d.c.a) {
            aVar2.a(z, ((com.mgtv.a.d.c.a) bVar).p(), aVar);
        } else if (bVar.p() instanceof VASTAd) {
            this.l.a(z, (VASTAd) this.k.p(), aVar);
        }
    }
}
