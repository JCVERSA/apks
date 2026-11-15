package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.util.List;

public final class do1 {
    private final zn1 a;
    private final List<mp0> b;
    private final int c;
    private final b60 d;
    private final vp1 e;
    private final int f;
    private final int g;
    private final int h;
    private int i;

    /* JADX WARN: Multi-variable type inference failed */
    public do1(zn1 zn1Var, List<? extends mp0> list, int i, b60 b60Var, vp1 vp1Var, int i2, int i3, int i4) {
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        y45.j(list, "interceptors");
        y45.j(vp1Var, Progress.REQUEST);
        this.a = zn1Var;
        this.b = list;
        this.c = i;
        this.d = b60Var;
        this.e = vp1Var;
        this.f = i2;
        this.g = i3;
        this.h = i4;
    }

    public final zn1 a() {
        return this.a;
    }

    public final zn1 b() {
        return this.a;
    }

    public final int c() {
        return this.f;
    }

    public final b60 d() {
        return this.d;
    }

    public final int e() {
        return this.g;
    }

    public final vp1 f() {
        return this.e;
    }

    public final int g() {
        return this.h;
    }

    public final int h() {
        return this.g;
    }

    public final vp1 i() {
        return this.e;
    }

    public static do1 a(do1 do1Var, int i, b60 b60Var, vp1 vp1Var, int i2) {
        if ((i2 & 1) != 0) {
            i = do1Var.c;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            b60Var = do1Var.d;
        }
        b60 b60Var2 = b60Var;
        if ((i2 & 4) != 0) {
            vp1Var = do1Var.e;
        }
        vp1 vp1Var2 = vp1Var;
        int i4 = do1Var.f;
        int i5 = do1Var.g;
        int i6 = do1Var.h;
        y45.j(vp1Var2, Progress.REQUEST);
        return new do1(do1Var.a, do1Var.b, i3, b60Var2, vp1Var2, i4, i5, i6);
    }

    public final vq1 a(vp1 vp1Var) throws IOException {
        y45.j(vp1Var, Progress.REQUEST);
        if (this.c < this.b.size()) {
            this.i++;
            b60 b60Var = this.d;
            if (b60Var != null) {
                if (b60Var.h().a(vp1Var.g())) {
                    if (this.i != 1) {
                        throw new IllegalStateException(("network interceptor " + this.b.get(this.c - 1) + " must call proceed() exactly once").toString());
                    }
                } else {
                    throw new IllegalStateException(("network interceptor " + this.b.get(this.c - 1) + " must retain the same host and port").toString());
                }
            }
            do1 do1VarA = a(this, this.c + 1, null, vp1Var, 58);
            mp0 mp0Var = this.b.get(this.c);
            vq1 vq1VarA = mp0Var.a(do1VarA);
            if (vq1VarA != null) {
                if (this.d != null && this.c + 1 < this.b.size() && do1VarA.i != 1) {
                    throw new IllegalStateException(("network interceptor " + mp0Var + " must call proceed() exactly once").toString());
                }
                if (vq1VarA.a() != null) {
                    return vq1VarA;
                }
                throw new IllegalStateException(("interceptor " + mp0Var + " returned a response with no body").toString());
            }
            throw new NullPointerException("interceptor " + mp0Var + " returned null");
        }
        throw new IllegalStateException("Check failed.");
    }
}
