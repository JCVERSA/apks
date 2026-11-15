package com.yandex.mobile.ads.impl;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import defpackage.y45;

public final class x42 extends Spannable.Factory {
    private final Drawable a;
    private final int b;
    private final int c;

    public x42(Drawable drawable, int i, int i2) {
        this.a = drawable;
        this.b = i;
        this.c = i2;
    }

    @Override
    public final Spannable newSpannable(CharSequence charSequence) {
        y45.j(charSequence, "source");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (this.a != null && this.b > 0) {
            spannableStringBuilder.append((CharSequence) "  ");
            Drawable drawable = this.a;
            int i = this.b;
            drawable.setBounds(0, 0, i, i);
            ad adVar = new ad(drawable);
            ColorDrawable colorDrawable = new ColorDrawable(0);
            int i2 = this.c;
            colorDrawable.setBounds(0, 0, i2, i2);
            ad adVar2 = new ad(colorDrawable);
            spannableStringBuilder.setSpan(adVar, 0, 1, 33);
            spannableStringBuilder.setSpan(adVar2, 1, 2, 33);
        }
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }
}
