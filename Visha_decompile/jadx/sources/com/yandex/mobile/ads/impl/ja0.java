package com.yandex.mobile.ads.impl;

import androidx.recyclerview.widget.DiffUtil;
import defpackage.y45;

public final class ja0 extends DiffUtil.ItemCallback<ia0> {
    @Override
    public final boolean areContentsTheSame(ia0 ia0Var, ia0 ia0Var2) {
        ia0 ia0Var3 = ia0Var;
        ia0 ia0Var4 = ia0Var2;
        y45.j(ia0Var3, "oldItem");
        y45.j(ia0Var4, "newItem");
        return y45.e(ia0Var3, ia0Var4);
    }

    @Override
    public final boolean areItemsTheSame(ia0 ia0Var, ia0 ia0Var2) {
        ia0 ia0Var3 = ia0Var;
        ia0 ia0Var4 = ia0Var2;
        y45.j(ia0Var3, "oldItem");
        y45.j(ia0Var4, "newItem");
        if ((ia0Var3 instanceof n90) && (ia0Var4 instanceof n90)) {
            return y45.e(((n90) ia0Var3).a(), ((n90) ia0Var4).a());
        }
        ha0 ha0Var = ha0.a;
        return y45.e(ia0Var3, ha0Var) && y45.e(ia0Var4, ha0Var);
    }
}
