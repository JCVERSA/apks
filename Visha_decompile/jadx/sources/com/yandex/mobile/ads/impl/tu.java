package com.yandex.mobile.ads.impl;

import android.widget.TextView;
import defpackage.y45;

public final class tu {
    private final tl1 a;

    public tu() {
        this(new tl1());
    }

    public final void a(TextView textView, long j, long j2) {
        y45.j(textView, "countDownProgress");
        this.a.getClass();
        textView.setText(tl1.a(j - j2));
    }

    public tu(tl1 tl1Var) {
        y45.j(tl1Var, "progressDisplayTimeFormatter");
        this.a = tl1Var;
    }
}
