package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.R;
import defpackage.y45;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

public final class nn1<V extends ViewGroup> implements b10<V> {
    private final rt a;
    private final on1 b;
    private final h41 c;
    private final a51 d;

    public nn1(rt rtVar, on1 on1Var, h41 h41Var, a51 a51Var) {
        y45.j(rtVar, "nativeAdAssets");
        y45.j(on1Var, "ratingFormatter");
        y45.j(h41Var, "nativeAdAdditionalViewProvider");
        y45.j(a51Var, "nativeAdContainerViewProvider");
        this.a = rtVar;
        this.b = on1Var;
        this.c = h41Var;
        this.d = a51Var;
    }

    @Override
    public final void a(V v) {
        String strValueOf;
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        this.d.getClass();
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        ViewGroup viewGroup = (ViewGroup) v.findViewById(R.id.rating_container);
        Float fK = this.a.k();
        if (fK == null) {
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
                return;
            }
            return;
        }
        this.c.getClass();
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        TextView textView = (TextView) v.findViewById(R.id.rating_text);
        if (textView != null) {
            on1 on1Var = this.b;
            float fFloatValue = fK.floatValue();
            on1Var.getClass();
            try {
                DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
                decimalFormatSymbols.setDecimalSeparator(',');
                strValueOf = new DecimalFormat("0.0", decimalFormatSymbols).format(fFloatValue);
                y45.g(strValueOf);
            } catch (RuntimeException unused) {
                strValueOf = String.valueOf(fFloatValue);
            }
            textView.setText(strValueOf);
        }
    }

    @Override
    public final void c() {
    }
}
