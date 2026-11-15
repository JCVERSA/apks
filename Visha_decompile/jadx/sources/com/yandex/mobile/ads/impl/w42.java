package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;
import defpackage.g1a;
import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class w42 extends vg2<TextView, String> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w42(TextView textView) {
        super(textView);
        y45.j(textView, "view");
    }

    @Override
    public final void a(View view) {
        TextView textView = (TextView) view;
        y45.j(textView, "view");
        textView.setText("");
        super.a(textView);
    }

    @Override
    public final void b(View view, String str) {
        TextView textView = (TextView) view;
        String str2 = str;
        y45.j(textView, "view");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        textView.setText(str2);
    }

    @Override
    public final boolean a(View view, String str) {
        TextView textView = (TextView) view;
        String str2 = str;
        y45.j(textView, "view");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        CharSequence text = textView.getText();
        if (text != null) {
            return g1a.E(String.valueOf(text), str2, true);
        }
        return false;
    }
}
