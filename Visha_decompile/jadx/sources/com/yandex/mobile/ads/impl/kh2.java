package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;

public final class kh2 implements View.OnClickListener {
    private final View a;

    public kh2(TextView textView) {
        this.a = textView;
    }

    @Override
    public final void onClick(View view) {
        View view2 = this.a;
        if (view2 != null) {
            view2.performClick();
        }
    }
}
