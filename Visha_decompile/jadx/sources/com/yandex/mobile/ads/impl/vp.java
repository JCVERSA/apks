package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;
import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class vp extends vg2<TextView, tp> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vp(TextView textView) {
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
    public final void b(View view, tp tpVar) {
        TextView textView = (TextView) view;
        tp tpVar2 = tpVar;
        y45.j(textView, "view");
        y45.j(tpVar2, ES6Iterator.VALUE_PROPERTY);
        if (tp.a.b == tpVar2.b()) {
            textView.setText(tpVar2.a());
        }
    }

    @Override
    public final boolean a(View view, tp tpVar) {
        TextView textView = (TextView) view;
        tp tpVar2 = tpVar;
        y45.j(textView, "view");
        y45.j(tpVar2, ES6Iterator.VALUE_PROPERTY);
        if (tp.a.b == tpVar2.b()) {
            return y45.e(textView.getText().toString(), tpVar2.a());
        }
        return true;
    }
}
