package com.mgtv.a.d.c;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mgmi.R;
import com.mgmi.net.bean.BootAdBean;
import com.mgtv.a.c.c;
import com.mgtv.a.c.e;
import com.mgtv.a.c.f;
import com.mgtv.a.c.h;
import com.mgtv.a.d.b.b;
import com.mgtv.a.d.b.d;
import com.mgtv.ads.AdLog;
import defpackage.l4d;
import defpackage.mpd;

public class a extends b<BootAdBean> {
    protected View a;
    private View b;
    private ViewGroup r;
    private ViewGroup s;
    private View t;

    public a(Context context, ViewGroup viewGroup) {
        super(context, viewGroup);
    }

    @Override
    public void a(Context context) {
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            l4d.g(this.r, aVar.h());
        }
        d(context);
        com.mgtv.a.d.b.a aVar2 = this.n;
        if (aVar2 != null) {
            View view = this.a;
            if (view != null && (aVar2 instanceof com.mgtv.a.d.c.a.a)) {
                ((com.mgtv.a.d.c.a.a) aVar2).a(view);
            }
            this.n.c(this.g);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void b(Context context) {
        ViewGroup viewGroup;
        T t = this.g;
        if (t == 0 || (viewGroup = this.r) == null) {
            return;
        }
        c cVarA = this.l.a(context, viewGroup, ((BootAdBean) t).data);
        this.m = cVarA;
        if (cVarA != null) {
            if (cVarA instanceof h) {
                ((h) cVarA).c(1);
            }
            this.m.a(this.q);
            AdLog.i("BootRender1 rendPlayView  ");
            ((com.mgtv.a.c.a) this.m).a(((BootAdBean) this.g).data.duration);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean c(Context context) {
        ViewGroup viewGroup;
        ViewGroup.LayoutParams layoutParams;
        T t = this.g;
        if (((BootAdBean) t).data.duration <= 3 || ((BootAdBean) t).data.duration >= 10) {
            ((BootAdBean) t).data.duration = 3;
        }
        e(context);
        b(context);
        a(context);
        l4d.g(this.k, this.b);
        l4d.b(this.k, this.b);
        b(((BootAdBean) this.g).data.duration);
        if (this.t != null && (viewGroup = this.r) != null && (layoutParams = viewGroup.getLayoutParams()) != null && (this.m instanceof f)) {
            a(context, layoutParams);
            l4d.b(this.s, this.t);
        }
        return this.m != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void d() {
        Context context = this.j;
        if (context == null || this.g == 0) {
            return;
        }
        if (c(context)) {
            if (!TextUtils.isEmpty(((BootAdBean) this.g).data.url)) {
                this.m.a(((BootAdBean) this.g).data.url);
            }
            AdLog.i("BootRender1 start  ");
            super.d();
            return;
        }
        e eVar = this.o;
        if (eVar != null) {
            eVar.a("", -110, "渲染失败");
        }
    }

    @Override
    public void e() {
        super.e();
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar instanceof com.mgtv.a.d.c.a.a) {
            ((com.mgtv.a.d.c.a.a) aVar).d();
        }
    }

    @Override
    public void m() {
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(q());
        }
    }

    @Override
    public void s() {
        AdLog.i("BaseRender release  ");
        this.e = false;
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            l4d.g(this.k, aVar.h());
        }
        com.mgtv.a.d.b.e eVar = this.l;
        if (eVar != null) {
            eVar.b();
            this.l = null;
        }
        this.n = null;
        this.m = null;
    }

    private void e(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_boot_playview, (ViewGroup) null);
        this.b = viewInflate;
        this.r = (ViewGroup) viewInflate.findViewById(R.id.playview_container);
        this.s = (ViewGroup) this.b.findViewById(R.id.largeLog);
    }

    private void a(Context context, ViewGroup.LayoutParams layoutParams) {
        Point pointD = mpd.d(context);
        if (pointD == null) {
            return;
        }
        int i = pointD.y;
        int i2 = pointD.x;
        double d = i / i2;
        if (d > 1.88d) {
            layoutParams.height = (int) (((double) i) * 0.8d);
            layoutParams.width = i2;
        } else if (d < 1.67d) {
            layoutParams.height = (int) (((double) i) * 0.9d);
            layoutParams.width = i2;
        } else {
            layoutParams.width = i2;
            layoutParams.height = (int) (((double) (i2 * 1632)) / 1080.0d);
        }
    }

    public void b(View view) {
        this.t = view;
    }

    private void d(Context context) {
        if (this.g == 0 || context == null) {
            return;
        }
        c();
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(context, this.g);
            l4d.g(this.r, this.n.h());
            l4d.b(this.r, this.n.h());
        }
    }

    @Override
    public void c() {
        com.mgtv.a.d.c.a.a aVar = new com.mgtv.a.d.c.a.a();
        this.n = aVar;
        d dVar = this.p;
        if (dVar != null) {
            aVar.a(dVar);
        }
    }

    public void a(View view) {
        this.a = view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(int i) {
        super.a(i);
        try {
            T t = this.g;
            if (t == 0 || ((BootAdBean) t).data == null || i / 1000 <= ((BootAdBean) t).data.duration) {
                return;
            }
            AdLog.i("BootRender1 onComplete  ");
            c cVar = this.m;
            if (cVar != null) {
                cVar.l();
                c cVar2 = this.m;
                if (cVar2 instanceof com.mgtv.a.c.a) {
                    ((com.mgtv.a.c.a) cVar2).f();
                    ((com.mgtv.a.c.a) this.m).e();
                }
            }
            e eVar = this.o;
            if (eVar != null) {
                eVar.g();
            }
        } catch (Throwable unused) {
        }
    }
}
