package com.yandex.mobile.ads.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class y12 {
    private final ko a;
    private final b b;

    public static abstract class a extends l<String> {
        final CharSequence d;
        final ko e;
        int g = 0;
        final boolean f = false;
        int h = Integer.MAX_VALUE;

        public a(y12 y12Var, CharSequence charSequence) {
            this.e = y12Var.a;
            this.d = charSequence;
        }
    }

    public interface b {
    }

    private y12(x12 x12Var, ko koVar) {
        this.b = x12Var;
        this.a = koVar;
    }

    public final List<String> a(CharSequence charSequence) {
        charSequence.getClass();
        x12 x12Var = (x12) this.b;
        x12Var.getClass();
        w12 w12Var = new w12(x12Var, this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (w12Var.hasNext()) {
            arrayList.add(w12Var.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static y12 a(char c) {
        return new y12(new x12(new ko.b(c)), ko.d.c);
    }
}
