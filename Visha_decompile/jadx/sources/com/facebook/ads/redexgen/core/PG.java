package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Comparator;

public class PG implements Comparator<View> {
    @Override
    public final int compare(View view, View view2) {
        PA pa = (PA) view.getLayoutParams();
        PA pa2 = (PA) view2.getLayoutParams();
        if (pa.A05 != pa2.A05) {
            return pa.A05 ? 1 : -1;
        }
        return pa.A02 - pa2.A02;
    }
}
