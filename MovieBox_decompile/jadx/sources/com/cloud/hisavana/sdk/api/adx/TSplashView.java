package com.cloud.hisavana.sdk.api.adx;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import c7.b;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.api.listener.g;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.e1;
import com.cloud.hisavana.sdk.p3;

public class TSplashView extends ViewApi {

    private RelativeLayout f20987m;

    private View f20988n;

    private g f20989o;

    private Context f20990p;

    private String f20991q;

    private boolean f20992r;

    private boolean f20993s;

    private Float f20994t;

    private static class a extends ViewApi.a {
        a(TSplashView tSplashView) {
            super(tSplashView);
        }

        @Override
        public g f() {
            ViewApi viewApi = this.f21007a;
            if (viewApi instanceof TSplashView) {
                return ((TSplashView) viewApi).f20989o;
            }
            return null;
        }
    }

    public TSplashView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void d() {
        try {
            RelativeLayout relativeLayout = this.f20987m;
            if (relativeLayout != null) {
                removeView(relativeLayout);
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void destroy() {
        d();
        super.destroy();
        this.f20988n = null;
        this.f20987m = null;
    }

    public void loadAd() {
        if (this.f20992r) {
            b.o(this.f20990p, this.f20991q, this.f20993s);
        }
        if (b()) {
            e1 e1Var = new e1(new p3.b().i(4).e(this.f20996b).r(this.f20997c).l(this.f20998d).j(this.f20999e).d(this.f21004j).o(this.f21001g).v(this.f21002h).c(this.f21003i).g());
            e1Var.g(new a(this));
            e1Var.E();
        }
    }

    public TSplashView setLiteInit(String str, boolean z10) {
        this.f20992r = true;
        this.f20991q = str;
        this.f20993s = z10;
        return this;
    }

    public void setLogoLayout(View view) {
        this.f20988n = view;
    }

    public void setLogoLayoutHeightRatio(Float f10) {
        this.f20994t = f10;
    }

    public void setSkipListener(g gVar) {
        this.f20989o = gVar;
    }

    public void show() {
        F f10 = this.f20995a;
        if (f10 == null || !(f10 instanceof e1)) {
            return;
        }
        try {
            d();
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            this.f20987m = relativeLayout;
            addView(relativeLayout, -1, -1);
            ((e1) this.f20995a).j0(this.f20987m);
            ((e1) this.f20995a).e0(this.f20994t);
            ((e1) this.f20995a).i0(this.f20988n);
            this.f21005k.add(this.f20995a);
        } catch (Throwable th2) {
            b4.b().w("ssp", "TSplashView show error: " + th2.getMessage());
        }
        ((e1) this.f20995a).h0(this.f20990p);
    }

    public TSplashView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f20992r = false;
        this.f20993s = false;
        this.f20990p = context;
    }

    public TSplashView(Context context, String str) {
        super(context, str);
        this.f20992r = false;
        this.f20993s = false;
        this.f20990p = context;
    }
}
