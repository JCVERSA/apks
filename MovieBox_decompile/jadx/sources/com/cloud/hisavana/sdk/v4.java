package com.cloud.hisavana.sdk;

import android.view.View;

public class v4 extends com.cloud.hisavana.sdk.common.tranmeasure.h {
    @Override
    protected int d(r4 r4Var, View view) {
        if (view == null || r4Var == null || !view.getGlobalVisibleRect(this.f21551a)) {
            return 0;
        }
        long jHeight = ((long) this.f21551a.height()) * ((long) this.f21551a.width());
        long height = ((long) view.getHeight()) * ((long) view.getWidth());
        this.f21552b = this.f21551a.width() + "*" + this.f21551a.height();
        if (height <= 0) {
            return 0;
        }
        return (int) ((jHeight * 100) / height);
    }
}
