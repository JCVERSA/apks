package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1672dx implements View.OnClickListener {
    public final C2R A00;

    public ViewOnClickListenerC1672dx(C2R c2r) {
        this.A00 = c2r;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
        }
        try {
            if (this.A00.getVideoView() != null) {
                if (this.A00.A02 != null) {
                    this.A00.A02.A04(UZ.A0x, null);
                }
                this.A00.A01.A0F().A3Y();
                switch (this.A00.getVideoView().getState()) {
                    case A07:
                    case A04:
                    case A05:
                    case A06:
                        this.A00.getVideoView().A0h(EnumC1651db.A04, 12);
                        break;
                    case A0A:
                        this.A00.getVideoView().A0l(true, 8);
                        break;
                    default:
                        break;
                }
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
