package com.facebook.ads.redexgen.core;

import android.view.View;

public class R7 implements View.OnLongClickListener {
    public final C1788fq A00;
    public final C1417Zm A01;

    public R7(C1788fq c1788fq, C1417Zm c1417Zm) {
        this.A00 = c1788fq;
        this.A01 = c1417Zm;
    }

    @Override
    public final boolean onLongClick(View view) {
        if (this.A00.A00 != null) {
            this.A01.setBounds(0, 0, this.A00.A00.getWidth(), this.A00.A00.getHeight());
            this.A01.A0D(!this.A01.A0E());
        }
        return true;
    }
}
