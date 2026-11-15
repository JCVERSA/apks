package com.facebook.ads.redexgen.core;

import android.text.Layout;
import java.util.Comparator;

public final class JC {
    public static final Comparator<JC> A02 = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return Integer.compare(((JC) obj2).A00, ((JC) obj).A00);
        }
    };
    public final int A00;
    public final C2263o2 A01;

    public JC(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
        C3C cueBuilder = new C3C().A0G(charSequence).A0F(alignment).A07(f, i).A09(i2).A04(f2).A0A(i3).A06(f3);
        if (z) {
            cueBuilder.A0C(i4);
        }
        this.A01 = cueBuilder.A0H();
        this.A00 = i5;
    }
}
