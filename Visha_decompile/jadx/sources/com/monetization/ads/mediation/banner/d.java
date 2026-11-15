package com.monetization.ads.mediation.banner;

import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.monetization.ads.mediation.banner.d;
import com.yandex.mobile.ads.impl.ah2;
import com.yandex.mobile.ads.impl.go1;
import com.yandex.mobile.ads.impl.gz1;
import com.yandex.mobile.ads.impl.ho1;
import com.yandex.mobile.ads.impl.np0;
import com.yandex.mobile.ads.impl.ta;
import defpackage.af5;
import defpackage.s86;
import defpackage.y45;

public final class d {
    static final af5[] d = {ta.a(d.class, "adView", "getAdView()Landroid/view/ViewGroup;", 0)};
    private final gz1 a;
    private final Handler b = new Handler(Looper.getMainLooper());
    private final go1 c;

    public interface a {
        void a();
    }

    public d(np0 np0Var, gz1 gz1Var) {
        this.a = gz1Var;
        this.c = ho1.a(np0Var);
    }

    public static final ViewGroup a(d dVar) {
        return (ViewGroup) dVar.c.getValue(dVar, d[0]);
    }

    public static final void a(d dVar, View view, a aVar) {
        RelativeLayout.LayoutParams layoutParams;
        y45.j(dVar, "this$0");
        y45.j(view, "$contentView");
        y45.j(aVar, "$contentViewShowListener");
        ViewGroup viewGroup = (ViewGroup) dVar.c.getValue(dVar, d[0]);
        if (viewGroup != null && viewGroup.indexOfChild(view) == -1) {
            gz1 gz1Var = dVar.a;
            if (gz1Var == null) {
                layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            } else {
                int height = gz1Var.getHeight();
                float f = Resources.getSystem().getDisplayMetrics().density;
                if (height >= 0) {
                    height = s86.c(height * f);
                }
                int width = dVar.a.getWidth();
                float f2 = Resources.getSystem().getDisplayMetrics().density;
                if (width >= 0) {
                    width = s86.c(width * f2);
                }
                view.measure(0, 0);
                int measuredHeight = view.getMeasuredHeight();
                layoutParams = new RelativeLayout.LayoutParams(Math.min(width, view.getMeasuredWidth()), Math.min(height, measuredHeight));
            }
            layoutParams.addRule(13);
            ah2.a(view);
            viewGroup.addView(view, layoutParams);
            viewGroup.setVisibility(0);
            view.setVisibility(0);
        }
        view.getViewTreeObserver().addOnPreDrawListener(new e(dVar, view, aVar));
    }

    public final void a(final View view, final a aVar) {
        y45.j(view, "contentView");
        y45.j(aVar, "contentViewShowListener");
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                d.a(this.b, view, aVar);
            }
        });
    }
}
