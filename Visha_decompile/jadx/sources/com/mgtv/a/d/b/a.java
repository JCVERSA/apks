package com.mgtv.a.d.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.mgadplus.viewgroup.dynamicview.ContainerLayout;
import com.mgmi.R;
import com.mgmi.ViewGroup.MgmiAdTopBar;
import defpackage.dkd;
import defpackage.l4d;

public abstract class a<T> {
    protected int h;
    protected int i;
    protected boolean j;
    protected boolean k;
    protected String m;
    protected T n;
    protected View o;
    protected MgmiAdTopBar p;
    protected View q;
    protected View r;
    protected View s;
    protected ViewGroup t;
    protected ImageView u;
    protected d v;
    protected int g = -1;
    protected boolean l = false;

    public void a(int i) {
    }

    public abstract void a(Context context);

    public void b(T t) {
    }

    public void c(T t) {
        this.n = t;
        g(t);
        f(this.n);
        d(this.n);
    }

    public void d(int i) {
    }

    public void e() {
    }

    public void f(T t) {
    }

    public void g() {
    }

    public View h() {
        return this.o;
    }

    public boolean i() {
        String str = this.m;
        if (str != null) {
            return "1".equalsIgnoreCase(str);
        }
        return com.mgmi.platform.e.a(com.mgmi.ads.api.c.a()) > com.mgmi.platform.e.b(com.mgmi.ads.api.c.a());
    }

    public ViewGroup j() {
        return this.t;
    }

    public void a(T t) {
    }

    public void b(int i) {
        this.h = i;
    }

    public void d(T t) {
        a(t);
        b(t);
        e(t);
    }

    public void e(T t) {
    }

    public void f() {
        View view = this.q;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view2) {
                    d dVar = a.this.v;
                    if (dVar != null) {
                        dVar.a(view2);
                    }
                }
            });
        }
        View view2 = this.o;
        if (view2 != null) {
            if (view2 instanceof ContainerLayout) {
                ((ContainerLayout) view2).setTapclickListener(new ContainerLayout.b() {
                    @Override
                    public void onClick(View view3, float f, float f2, float f3, float f4, float f5, float f6) {
                        a aVar = a.this;
                        if (aVar.v == null || !aVar.a(f, f2)) {
                            return;
                        }
                        a aVar2 = a.this;
                        aVar2.v.a(view3, new dkd(f, f2, f3, f4, aVar2.o.getWidth(), a.this.o.getHeight()));
                    }
                });
            } else {
                view2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view3) {
                        d dVar = a.this.v;
                        if (dVar != null) {
                            dVar.a(view3, new dkd());
                        }
                    }
                });
            }
        }
        ImageView imageView = this.u;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view3) {
                    d dVar = a.this.v;
                    if (dVar != null) {
                        dVar.c();
                    }
                }
            });
        }
        g();
    }

    public void g(T t) {
    }

    public void a(Context context, T t) {
        this.n = t;
        a(context);
        f();
    }

    public void e(int i) {
        d dVar = this.v;
        if (dVar != null) {
            dVar.a(4, Boolean.valueOf(this.l));
        }
        MgmiAdTopBar mgmiAdTopBar = this.p;
        if (mgmiAdTopBar != null) {
            if (i != 0 && i != 2) {
                mgmiAdTopBar.setIvAdVoiceSrc(R.drawable.mgmi_icon_ad_voice_open);
            } else {
                mgmiAdTopBar.setIvAdVoiceSrc(R.drawable.mgmi_icon_ad_voice_close);
            }
        }
    }

    public void c(int i) {
        System.out.println("setCanSkipTime " + i);
        this.i = i;
    }

    public void a(d dVar) {
        this.v = dVar;
    }

    public boolean a(float f, float f2) {
        if (!this.k || !this.j) {
            return true;
        }
        View view = this.r;
        if (view == null || view.getVisibility() != 0) {
            return false;
        }
        return l4d.e(this.r, f, f2);
    }

    public void a(String str) {
        this.m = str;
    }

    public void a(int i, int i2) {
        if (i == 0) {
            l4d.f(this.r, 8);
        } else if (i == 1) {
            l4d.f(this.r, 0);
        } else {
            l4d.f(this.r, i2);
        }
    }

    public void a(boolean z) {
        ImageView imageView = this.u;
        if (imageView == null) {
            return;
        }
        if (z) {
            l4d.f(imageView, 8);
        } else {
            l4d.f(imageView, 0);
        }
    }
}
