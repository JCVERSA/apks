package com.monetization.ads.mediation.banner;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import com.monetization.ads.mediation.banner.e;
import com.yandex.mobile.ads.impl.sp0;
import com.yandex.mobile.ads.impl.zg2;
import defpackage.y45;

public final class e implements ViewTreeObserver.OnPreDrawListener {
    final View a;
    final d.a b;
    final d c;

    public e(d dVar, View view, d.a aVar) {
        this.a = view;
        this.b = aVar;
        this.c = dVar;
    }

    public static final void a(d dVar) {
        y45.j(dVar, "this$0");
        zg2.a(d.a(dVar), false);
    }

    @Override
    public final boolean onPreDraw() {
        sp0.d(new Object[0]);
        if (!this.a.isShown()) {
            return true;
        }
        this.a.getViewTreeObserver().removeOnPreDrawListener(this);
        this.b.a();
        Handler handler = this.c.b;
        final d dVar = this.c;
        handler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                e.a(dVar);
            }
        }, 50L);
        return true;
    }
}
