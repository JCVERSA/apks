package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;

public abstract class AbstractC1456aR {
    public static final int A00 = XP.A00();

    public static void A00(C1635dL c1635dL, ViewGroup viewGroup, String str) {
        new KZ(viewGroup, c1635dL).A07(str);
        View view = new View(c1635dL);
        view.setId(A00);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        XP.A0P(view, c1635dL);
        viewGroup.addView(view, 0);
    }
}
