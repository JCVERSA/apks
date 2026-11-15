package com.facebook.ads.redexgen.core;

import android.database.DataSetObserver;

public class PE extends DataSetObserver {
    public final PH A00;

    public PE(PH ph) {
        this.A00 = ph;
    }

    @Override
    public final void onChanged() {
        this.A00.A0e();
    }

    @Override
    public final void onInvalidated() {
        this.A00.A0e();
    }
}
