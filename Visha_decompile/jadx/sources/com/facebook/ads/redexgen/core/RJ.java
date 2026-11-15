package com.facebook.ads.redexgen.core;

import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Window;
import com.facebook.ads.AudienceNetworkActivity;

public final class RJ {
    public final AudienceNetworkActivity A00;
    public final C1635dL A01;

    public RJ(C1635dL c1635dL, AudienceNetworkActivity audienceNetworkActivity) {
        this.A01 = c1635dL;
        this.A00 = audienceNetworkActivity;
    }

    private int A00() {
        Rect rect = new Rect();
        Window window = this.A00.getWindow();
        if (window == null) {
            return 2;
        }
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        if (rect.top < 200 && rect.left < 200) {
            return 1;
        }
        return 0;
    }

    public final void A01() {
        if ((this.A01.A0H().A01() || U7.A1z(this.A01)) && Build.VERSION.SDK_INT >= 24) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.A00.A02();
                }
            }, 1000L);
        }
    }

    public final void A02() {
        if (this.A00.isInMultiWindowMode()) {
            this.A01.A0F().ABU(A00());
        }
    }
}
