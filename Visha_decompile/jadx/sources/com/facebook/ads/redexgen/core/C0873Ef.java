package com.facebook.ads.redexgen.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import java.util.List;

public final class C0873Ef extends QC<EY> {
    public int A01;
    public final int A02;
    public final C06826g A05;
    public final C1635dL A06;
    public final KE A07;
    public final List<String> A09;
    public int A00 = 0;
    public final Application.ActivityLifecycleCallbacks A03 = new Application.ActivityLifecycleCallbacks() {
        @Override
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override
        public final void onActivityPaused(Activity activity) {
            if (activity == this.A00.A06.A0E()) {
                this.A00.A04.removeCallbacks(this.A00.A08);
            }
        }

        @Override
        public final void onActivityResumed(Activity activity) {
            this.A00.A04.post(this.A00.A08);
        }

        @Override
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override
        public final void onActivityStarted(Activity activity) {
        }

        @Override
        public final void onActivityStopped(Activity activity) {
        }
    };
    public final Handler A04 = new Handler(Looper.getMainLooper());
    public final Runnable A08 = new RunnableC1629dF(this);

    public C0873Ef(C1635dL c1635dL, List<String> screenshotUrls, int i, C06826g c06826g, KE ke, int i2) {
        this.A09 = screenshotUrls;
        this.A02 = i;
        this.A06 = c1635dL;
        this.A05 = c06826g;
        this.A07 = ke;
        this.A01 = i2;
        this.A04.post(this.A08);
        if (Build.VERSION.SDK_INT >= 29 && this.A06.A0E() != null) {
            this.A06.A0E().registerActivityLifecycleCallbacks(this.A03);
        }
    }

    @Override
    public final EY A0F(ViewGroup viewGroup, int i) {
        EW ew = new EW(this.A06);
        if (U7.A1C(this.A06)) {
            ew.setOnClickListener(new ViewOnClickListenerC1630dG(this));
        }
        return new EY(ew);
    }

    @Override
    public final void A0K(EY ey, int i) {
        String str = this.A09.get(i % this.A09.size());
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(400, -1);
        int i2 = this.A02;
        int actualPosition = this.A02;
        marginLayoutParams.setMargins(i2, 0, actualPosition, 0);
        ey.A0p().setLayoutParams(marginLayoutParams);
        ey.A0p().setUrl(str);
    }

    @Override
    public final int A0B() {
        return this.A09.size() * 1000;
    }

    @Override
    public final void A0L(C06826g c06826g) {
        super.A0L(c06826g);
        this.A04.removeCallbacks(this.A08);
        if (Build.VERSION.SDK_INT >= 29 && this.A06.A0E() != null) {
            this.A06.A0E().unregisterActivityLifecycleCallbacks(this.A03);
        }
    }

    public final void A0O(int i) {
        this.A01 = i;
    }
}
