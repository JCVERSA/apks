package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.ArrayList;

public abstract class jk implements tv {
    private final boolean a;
    private final ArrayList<d72> b = new ArrayList<>(1);
    private int c;

    @Nullable
    private xv d;

    public jk(boolean z) {
        this.a = z;
    }

    @Override
    public final void a(d72 d72Var) {
        d72Var.getClass();
        if (this.b.contains(d72Var)) {
            return;
        }
        this.b.add(d72Var);
        this.c++;
    }

    public final void b(xv xvVar) {
        for (int i = 0; i < this.c; i++) {
            this.b.get(i).getClass();
        }
    }

    public final void c(int i) {
        xv xvVar = this.d;
        int i2 = f92.a;
        for (int i3 = 0; i3 < this.c; i3++) {
            this.b.get(i3).a(xvVar, this.a, i);
        }
    }

    public final void e() {
        xv xvVar = this.d;
        int i = f92.a;
        for (int i2 = 0; i2 < this.c; i2++) {
            this.b.get(i2).a(xvVar, this.a);
        }
        this.d = null;
    }

    public final void c(xv xvVar) {
        this.d = xvVar;
        for (int i = 0; i < this.c; i++) {
            this.b.get(i).b(xvVar, this.a);
        }
    }
}
