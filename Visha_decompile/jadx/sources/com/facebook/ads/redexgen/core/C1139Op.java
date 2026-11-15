package com.facebook.ads.redexgen.core;

import android.content.DialogInterface;

public class C1139Op extends AbstractRunnableC1322Vt {
    public final DialogInterface A00;
    public final DialogInterfaceOnClickListenerC1355Xc A01;

    public C1139Op(DialogInterfaceOnClickListenerC1355Xc dialogInterfaceOnClickListenerC1355Xc, DialogInterface dialogInterface) {
        this.A01 = dialogInterfaceOnClickListenerC1355Xc;
        this.A00 = dialogInterface;
    }

    @Override
    public final void A07() {
        if (this.A01.A01.A02 != null) {
            this.A01.A01.A02.AGD(VZ.A03(this.A01.A01.A00), new C1728er().A05(this.A01.A01.A02(this.A01.A00.getText().toString())).A08());
        }
        this.A00.cancel();
    }
}
