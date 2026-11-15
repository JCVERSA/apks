package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

public final class g62 {
    public final int a;
    public final ap1[] b;
    public final h70[] c;
    public final b72 d;

    @Nullable
    public final Object e;

    public g62(ap1[] ap1VarArr, h70[] h70VarArr, b72 b72Var, @Nullable cu0.a aVar) {
        this.b = ap1VarArr;
        this.c = (h70[]) h70VarArr.clone();
        this.d = b72Var;
        this.e = aVar;
        this.a = ap1VarArr.length;
    }

    public final boolean a(int i) {
        return this.b[i] != null;
    }
}
