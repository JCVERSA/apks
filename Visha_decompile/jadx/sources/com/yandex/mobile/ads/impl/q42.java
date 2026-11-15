package com.yandex.mobile.ads.impl;

import android.widget.TextView;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class q42 {
    private static final long a = TimeUnit.SECONDS.toMillis(1);

    public static void a(TextView textView, long j, long j2) {
        y45.j(textView, "rewardDelayTextView");
        textView.setText(String.valueOf((int) Math.ceil((j - j2) / a)));
    }
}
