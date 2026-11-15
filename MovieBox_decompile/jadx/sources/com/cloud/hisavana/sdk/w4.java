package com.cloud.hisavana.sdk;

import android.view.View;

public class w4 extends com.cloud.hisavana.sdk.common.tranmeasure.h {
    @Override
    protected int d(r4 r4Var, View view) {
        if (view == null || r4Var == null || !view.getGlobalVisibleRect(this.f21551a)) {
            return 2;
        }
        long jHeight = ((long) this.f21551a.height()) * ((long) this.f21551a.width());
        long height = ((long) view.getHeight()) * ((long) view.getWidth());
        this.f21552b = this.f21551a.width() + "*" + this.f21551a.height();
        return (height > 0 && jHeight >= ((long) r4Var.f22240b)) ? 1 : 2;
    }
}
