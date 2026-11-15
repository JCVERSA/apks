package com.cloud.hisavana.sdk.api.adx;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.q1;
import defpackage.ied;
import defpackage.ikd;
import defpackage.jf7;
import defpackage.r6;

public class TSplashView extends ViewApi {
    public RelativeLayout o;
    public View p;
    public jf7 q;
    public Context r;
    public String s;
    public boolean t;
    public boolean u;
    public Float v;

    public static class a extends ViewApi.a {
        public a(TSplashView tSplashView) {
            super(tSplashView);
        }

        @Override
        public jf7 f() {
            ViewApi viewApi = this.a;
            if (viewApi instanceof TSplashView) {
                return ((TSplashView) viewApi).q;
            }
            return null;
        }
    }

    public TSplashView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override
    public void destroy() {
        e();
        super.destroy();
        this.p = null;
        this.o = null;
    }

    public final void e() {
        try {
            RelativeLayout relativeLayout = this.o;
            if (relativeLayout != null) {
                removeView(relativeLayout);
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public int getAdType() {
        return 4;
    }

    public void loadAd() {
        if (this.t) {
            r6.s(this.r, this.s, this.u);
        }
        if (b()) {
            q1 q1Var = new q1(new ied.b().i(getAdType()).e(this.c).s(this.d).m(this.e).k(this.f).c(this.k).j(this.n).p(this.h).w(this.i).b(this.j).g());
            q1Var.g(new a(this));
            q1Var.E();
        }
    }

    public TSplashView setLiteInit(String str, boolean z) {
        this.t = true;
        this.s = str;
        this.u = z;
        return this;
    }

    public void setLogoLayout(View view) {
        this.p = view;
    }

    public void setLogoLayoutHeightRatio(Float f) {
        this.v = f;
    }

    public void setSkipListener(jf7 jf7Var) {
        this.q = jf7Var;
    }

    public void show() {
        G g = this.b;
        if (g == null || !(g instanceof q1)) {
            return;
        }
        ied iedVarP = g.p();
        if (iedVarP != null && TextUtils.isEmpty(iedVarP.m())) {
            iedVarP.f(this.n);
        }
        try {
            e();
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            this.o = relativeLayout;
            addView(relativeLayout, -1, -1);
            ((q1) this.b).n0(this.o);
            ((q1) this.b).j0(this.v);
            ((q1) this.b).q0(this.p);
            this.l.add(this.b);
        } catch (Throwable th) {
            ikd.b().w("ssp", "TSplashView show error: " + th.getMessage());
        }
        ((q1) this.b).l0(this.r);
    }

    public TSplashView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.t = false;
        this.u = false;
        this.r = context;
    }

    public TSplashView(Context context, String str) {
        super(context, str);
        this.t = false;
        this.u = false;
        this.r = context;
    }
}
