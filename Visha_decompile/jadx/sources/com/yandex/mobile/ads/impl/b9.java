package com.yandex.mobile.ads.impl;

import android.view.View;
import androidx.annotation.Nullable;

public abstract class b9 {
    public static vn2 a(c9 c9Var, d9 d9Var) {
        if (ye1.a()) {
            return new vn2(c9Var, d9Var);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    public abstract void a();

    public abstract void a(View view);

    public abstract void a(View view, uc0 uc0Var, @Nullable String str);

    public abstract void b();
}
