package com.facebook.ads.redexgen.core;

import android.graphics.drawable.Drawable;

public class C1835ge implements OF {
    public Drawable A00;
    public final OE A01;

    public C1835ge(OE oe) {
        this.A01 = oe;
    }

    @Override
    public final Drawable A76() {
        return this.A00;
    }

    @Override
    public final OE A77() {
        return this.A01;
    }

    @Override
    public final boolean A8i() {
        return this.A01.getPreventCornerOverlap();
    }

    @Override
    public final boolean A9J() {
        return this.A01.getUseCompatPadding();
    }

    @Override
    public final void AIa(Drawable drawable) {
        this.A00 = drawable;
        this.A01.setBackgroundDrawable(drawable);
    }

    @Override
    public final void AJ1(int i, int i2, int i3, int i4) {
        this.A01.A05.set(i, i2, i3, i4);
        super/*android.widget.FrameLayout*/.setPadding(this.A01.A04.left + i, this.A01.A04.top + i2, this.A01.A04.right + i3, this.A01.A04.bottom + i4);
    }
}
