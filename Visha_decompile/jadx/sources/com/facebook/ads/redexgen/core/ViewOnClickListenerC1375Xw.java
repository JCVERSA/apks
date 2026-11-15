package com.facebook.ads.redexgen.core;

import android.view.View;
import com.facebook.ads.internal.view.FullScreenAdToolbar;

public class ViewOnClickListenerC1375Xw implements View.OnClickListener {
    public final FullScreenAdToolbar A00;

    public ViewOnClickListenerC1375Xw(FullScreenAdToolbar fullScreenAdToolbar) {
        this.A00 = fullScreenAdToolbar;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A02 != null && this.A00.A09.A06()) {
                this.A00.A02.ACC(this.A00);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
