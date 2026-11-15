package com.mgtv.a.d.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTChannelAd;
import com.mgmi.model.VASTMediaFile;
import com.mgtv.a.c.c;
import com.mgtv.a.c.e;
import com.mgtv.a.c.f;
import com.mgtv.a.c.h;
import com.mgtv.a.d.b.b;
import com.mgtv.a.d.b.d;
import defpackage.j4d;
import defpackage.l4d;
import java.util.Iterator;

public class a extends b<VASTChannelAd> {
    boolean a;
    boolean b;

    public a(Context context, ViewGroup viewGroup) {
        super(context, viewGroup);
        this.b = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d(Context context) {
        if (this.g == 0 || context == null) {
            return;
        }
        c();
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(context, this.g);
            l4d.g(this.k, this.n.h());
            l4d.b(this.k, this.n.h());
            com.mgtv.a.d.b.a aVar2 = this.n;
            if (aVar2 instanceof com.mgtv.a.d.a.a.a) {
                ((com.mgtv.a.d.a.a.a) aVar2).a((VASTAd) this.g);
            }
        }
    }

    @Override
    public void e() {
        super.e();
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(true);
        }
    }

    @Override
    public void f() {
        c cVar = this.m;
        if (cVar != null) {
            cVar.c();
        }
    }

    @Override
    public void g() {
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void h() {
        Context context = this.j;
        if (context == null || this.g == 0) {
            return;
        }
        try {
            if (!c(context)) {
                e eVar = this.o;
                if (eVar != null) {
                    eVar.a("", -110, "渲染失败");
                    return;
                }
                return;
            }
            Iterator<VASTMediaFile> it = ((VASTChannelAd) this.g).getMediaFiles().iterator();
            while (true) {
                if (!it.hasNext()) {
                    if (((VASTChannelAd) this.g).getCurrentStaticResource() != null && !TextUtils.isEmpty(((VASTChannelAd) this.g).getCurrentStaticResource().getUrl())) {
                        this.m.a(((VASTChannelAd) this.g).getCurrentStaticResource().getUrl());
                        break;
                    } else {
                        break;
                        break;
                    }
                }
                VASTMediaFile next = it.next();
                if (next != null) {
                    this.i = next;
                    this.m.a(next.getValue());
                    break;
                }
            }
            if (!(this.m instanceof f)) {
                this.a = true;
            } else {
                this.b = false;
                j4d.c(new Runnable() {
                    @Override
                    public void run() {
                        a.super.d();
                    }
                }, 0L);
            }
        } catch (Throwable unused) {
        }
    }

    public void i() {
        if (!this.b) {
            b();
            return;
        }
        this.b = false;
        if (this.a) {
            super.d();
        } else {
            d();
        }
    }

    @Override
    public boolean j() {
        c cVar = this.m;
        if (cVar instanceof f) {
            return false;
        }
        return (cVar instanceof h) || (cVar instanceof com.mgtv.a.c.b);
    }

    @Override
    public void a() {
        super.a();
    }

    @Override
    public void b() {
        super.b();
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            ((com.mgtv.a.d.a.a.a) aVar).b();
        }
        e eVar = this.o;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override
    public void c() {
        com.mgtv.a.d.a.a.a aVar = new com.mgtv.a.d.a.a.a();
        this.n = aVar;
        d dVar = this.p;
        if (dVar != null) {
            aVar.a(dVar);
        }
    }

    @Override
    public void a(Context context) {
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            l4d.g(this.k, aVar.h());
        }
        d(context);
        com.mgtv.a.d.b.a aVar2 = this.n;
        if (aVar2 != null) {
            aVar2.c(this.g);
        }
    }

    @Override
    public boolean c(Context context) {
        a(context);
        b(context);
        return this.m != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void b(Context context) {
        if (this.g != 0) {
            com.mgtv.a.d.b.e eVar = this.l;
            if (eVar != null) {
                this.m = eVar.a(context, this.n.j(), (VASTAd) this.g);
            }
            c cVar = this.m;
            if (cVar != null) {
                cVar.a(this.q);
                ((com.mgtv.a.c.a) this.m).b(1);
                ((com.mgtv.a.c.a) this.m).a(((VASTChannelAd) this.g).getDuration());
                ((com.mgtv.a.c.a) this.m).a(false, false, 0);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void d() {
        Context context = this.j;
        if (context == null || this.g == 0) {
            return;
        }
        try {
            if (!c(context)) {
                e eVar = this.o;
                if (eVar != null) {
                    eVar.a("", -110, "渲染失败");
                    return;
                }
                return;
            }
            for (VASTMediaFile vASTMediaFile : ((VASTChannelAd) this.g).getMediaFiles()) {
                if (vASTMediaFile != null) {
                    this.i = vASTMediaFile;
                    this.m.a(vASTMediaFile.getValue());
                    j4d.c(new Runnable() {
                        @Override
                        public void run() {
                            a.super.d();
                        }
                    }, 300L);
                }
            }
            if (((VASTChannelAd) this.g).getCurrentStaticResource() != null && !TextUtils.isEmpty(((VASTChannelAd) this.g).getCurrentStaticResource().getUrl())) {
                this.m.a(((VASTChannelAd) this.g).getCurrentStaticResource().getUrl());
            }
            j4d.c(new Runnable() {
                @Override
                public void run() {
                    a.super.d();
                }
            }, 300L);
        } catch (Throwable unused) {
        }
    }
}
