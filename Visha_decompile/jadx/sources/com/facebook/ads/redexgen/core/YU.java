package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.view.View;

public class YU implements InterfaceC1312Vj {
    @Override
    public final void AHp(Throwable th, Object obj) {
        if (obj instanceof SM) {
            C1635dL adContext = ((SM) obj).A6e();
            if (adContext != null) {
                adContext.A0Q(th);
                return;
            }
            return;
        }
        if (!(obj instanceof View)) {
            return;
        }
        Context context = ((View) obj).getContext();
        if (!(context instanceof C1635dL)) {
            return;
        }
        ((C1635dL) context).A0Q(th);
    }
}
