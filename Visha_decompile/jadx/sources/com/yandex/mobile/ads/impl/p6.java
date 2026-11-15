package com.yandex.mobile.ads.impl;

import android.widget.TextView;
import com.yandex.mobile.ads.R;
import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;

public final class p6 implements fn0 {
    private static final int c = R.string.monetization_ads_internal_instream_ad_position;
    private final int a;
    private final int b;

    public p6(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        TextView textViewB = ob2Var.b();
        if (textViewB != null) {
            String string = textViewB.getContext().getResources().getString(c);
            y45.i(string, "getString(...)");
            hz9 hz9Var = hz9.a;
            String str = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(this.a), Integer.valueOf(this.b)}, 2));
            y45.i(str, "format(...)");
            textViewB.setText(str);
        }
    }
}
