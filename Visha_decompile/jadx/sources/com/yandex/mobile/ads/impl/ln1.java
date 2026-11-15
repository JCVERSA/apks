package com.yandex.mobile.ads.impl;

import android.view.View;
import com.yandex.mobile.ads.impl.mn1;
import defpackage.hz9;
import defpackage.wn8;
import defpackage.y45;
import java.util.Arrays;
import org.mozilla.javascript.ES6Iterator;

public final class ln1<V extends View & mn1> extends vg2<V, String> {
    private final sp1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ln1(V v, sp1 sp1Var) {
        super(v);
        y45.j(v, "ratingView");
        y45.j(sp1Var, "reporter");
        this.c = sp1Var;
    }

    @Override
    public final void a(V v) {
        y45.j(v, "view");
        v.setRating(0.0f);
        super.a(v);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void b(View view, String str) {
        String str2 = str;
        y45.j(view, "view");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        try {
            ((mn1) view).setRating(wn8.c(Float.parseFloat(str2), 0.0f));
        } catch (NumberFormatException e) {
            hz9 hz9Var = hz9.a;
            y45.i(String.format("Could not parse rating value. Rating value is %s", Arrays.copyOf(new Object[]{str2}, 1)), "format(...)");
            int i = sp0.b;
            y45.j(new Object[0], "args");
            this.c.reportError("Could not parse rating value", e);
        }
    }

    @Override
    public final boolean a(View view, String str) {
        y45.j(view, "view");
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        return true;
    }
}
