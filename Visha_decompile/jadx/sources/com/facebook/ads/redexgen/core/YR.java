package com.facebook.ads.redexgen.core;

import android.view.View;

public class YR implements View.OnClickListener {
    public final LZ A00;

    public YR(LZ lz) {
        this.A00 = lz;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A07.ADH();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
