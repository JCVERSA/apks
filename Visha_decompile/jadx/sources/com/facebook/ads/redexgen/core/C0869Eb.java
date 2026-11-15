package com.facebook.ads.redexgen.core;

import android.view.ViewGroup;
import java.util.List;

public final class C0869Eb extends QC<EZ> {
    public final int A00;
    public final C1635dL A01;
    public final KE A02;
    public final List<String> A03;

    public C0869Eb(C1635dL c1635dL, List<String> screenshotUrls, int i, KE ke) {
        this.A03 = screenshotUrls;
        this.A00 = i;
        this.A01 = c1635dL;
        this.A02 = ke;
    }

    @Override
    public final EZ A0F(ViewGroup viewGroup, int i) {
        C0868Ea c0868Ea = new C0868Ea(this.A01);
        if (U7.A1C(this.A01)) {
            c0868Ea.setOnClickListener(new ViewOnClickListenerC1631dH(this));
        }
        return new EZ(c0868Ea);
    }

    @Override
    public final void A0K(EZ ez, int i) {
        String str = this.A03.get(i);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int startSpacing = this.A00 * 4;
        if (i != 0) {
            startSpacing = this.A00;
        }
        marginLayoutParams.setMargins(startSpacing, 0, i >= A0B() + (-1) ? this.A00 * 4 : this.A00, 0);
        ez.A0p().setLayoutParams(marginLayoutParams);
        ez.A0p().A00(str);
    }

    @Override
    public final int A0B() {
        return this.A03.size();
    }
}
