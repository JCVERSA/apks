package com.facebook.ads.redexgen.core;

import android.view.View;

public class FI implements InterfaceC1526bZ {
    public final FH A00;

    public FI(FH fh) {
        this.A00 = fh;
    }

    @Override
    public final void AFm(View view) {
        if (this.A00.A09) {
            this.A00.A07 = false;
        }
    }

    @Override
    public final void AFo(View view) {
        AbstractC0988Ir abstractC0988Ir = (AbstractC0988Ir) view;
        abstractC0988Ir.A1R();
        if (this.A00.A09) {
            this.A00.A07 = true;
        }
        if (this.A00.A04.A0Z() && ((Integer) abstractC0988Ir.getTag(-1593835536)).intValue() == 0) {
            this.A00.A04.A0U();
        }
    }
}
