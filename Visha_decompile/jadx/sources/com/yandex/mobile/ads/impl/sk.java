package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.IOException;

public abstract class sk implements yo1, zo1 {
    private final int b;

    @Nullable
    private ap1 d;
    private int e;
    private mi1 f;
    private int g;

    @Nullable
    private lt1 h;

    @Nullable
    private jc0[] i;
    private long j;
    private boolean l;
    private boolean m;
    private final kc0 c = new kc0();
    private long k = Long.MIN_VALUE;

    public sk(int i) {
        this.b = i;
    }

    @Override
    public void a(int i, @Nullable Object obj) throws m60 {
    }

    public abstract void a(long j, boolean z) throws m60;

    public abstract void a(jc0[] jc0VarArr, long j, long j2) throws m60;

    @Override
    public final void b() {
        if (this.g != 0) {
            throw new IllegalStateException();
        }
        kc0 kc0Var = this.c;
        kc0Var.a = null;
        kc0Var.b = null;
        v();
    }

    @Override
    public final void c() {
        if (this.g != 1) {
            throw new IllegalStateException();
        }
        kc0 kc0Var = this.c;
        kc0Var.a = null;
        kc0Var.b = null;
        this.g = 0;
        this.h = null;
        this.i = null;
        this.l = false;
        u();
    }

    @Override
    public final boolean e() {
        return this.k == Long.MIN_VALUE;
    }

    public int f() throws m60 {
        return 0;
    }

    @Override
    @Nullable
    public final lt1 g() {
        return this.h;
    }

    @Override
    public final int getState() {
        return this.g;
    }

    @Override
    public final void h() {
        this.l = true;
    }

    @Override
    public final void i() throws IOException {
        lt1 lt1Var = this.h;
        lt1Var.getClass();
        lt1Var.a();
    }

    @Override
    public final long j() {
        return this.k;
    }

    @Override
    public final boolean k() {
        return this.l;
    }

    @Override
    @Nullable
    public fv0 l() {
        return null;
    }

    @Override
    public final int m() {
        return this.b;
    }

    @Override
    public final sk n() {
        return this;
    }

    public final ap1 p() {
        ap1 ap1Var = this.d;
        ap1Var.getClass();
        return ap1Var;
    }

    public final kc0 q() {
        kc0 kc0Var = this.c;
        kc0Var.a = null;
        kc0Var.b = null;
        return kc0Var;
    }

    public final mi1 r() {
        mi1 mi1Var = this.f;
        mi1Var.getClass();
        return mi1Var;
    }

    public final jc0[] s() {
        jc0[] jc0VarArr = this.i;
        jc0VarArr.getClass();
        return jc0VarArr;
    }

    @Override
    public final void start() throws m60 {
        if (this.g != 1) {
            throw new IllegalStateException();
        }
        this.g = 2;
        w();
    }

    @Override
    public final void stop() {
        if (this.g != 2) {
            throw new IllegalStateException();
        }
        this.g = 1;
        x();
    }

    public final boolean t() {
        if (e()) {
            return this.l;
        }
        lt1 lt1Var = this.h;
        lt1Var.getClass();
        return lt1Var.d();
    }

    public abstract void u();

    public void v() {
    }

    public void w() throws m60 {
    }

    public void x() {
    }

    public void a(boolean z, boolean z2) throws m60 {
    }

    public final m60 a(int i, @Nullable jc0 jc0Var, Exception exc, boolean z) {
        int iA;
        if (jc0Var == null || this.m) {
            iA = 4;
        } else {
            this.m = true;
            try {
                iA = a(jc0Var) & 7;
                this.m = false;
            } catch (m60 unused) {
                this.m = false;
                iA = 4;
            } catch (Throwable th) {
                this.m = false;
                throw th;
            }
        }
        return m60.a(exc, getName(), this.e, jc0Var, iA, z, i);
    }

    public final int b(long j) {
        lt1 lt1Var = this.h;
        lt1Var.getClass();
        return lt1Var.a(j - this.j);
    }

    public final m60 a(Exception exc, @Nullable jc0 jc0Var, int i) {
        return a(i, jc0Var, exc, false);
    }

    @Override
    public final void a(ap1 ap1Var, jc0[] jc0VarArr, lt1 lt1Var, long j, boolean z, boolean z2, long j2, long j3) throws m60 {
        if (this.g == 0) {
            this.d = ap1Var;
            this.g = 1;
            a(z, z2);
            a(jc0VarArr, lt1Var, j2, j3);
            this.l = false;
            this.k = j;
            a(j, z);
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(int i, mi1 mi1Var) {
        this.e = i;
        this.f = mi1Var;
    }

    @Override
    public boolean a() {
        return e();
    }

    public final int a(kc0 kc0Var, ry ryVar, int i) {
        lt1 lt1Var = this.h;
        lt1Var.getClass();
        int iA = lt1Var.a(kc0Var, ryVar, i);
        if (iA == -4) {
            if (ryVar.f()) {
                this.k = Long.MIN_VALUE;
                return this.l ? -4 : -3;
            }
            long j = ryVar.f + this.j;
            ryVar.f = j;
            this.k = Math.max(this.k, j);
        } else if (iA == -5) {
            jc0 jc0Var = kc0Var.b;
            jc0Var.getClass();
            if (jc0Var.q != Long.MAX_VALUE) {
                kc0Var.b = jc0Var.a().a(jc0Var.q + this.j).a();
            }
        }
        return iA;
    }

    @Override
    public final void a(jc0[] jc0VarArr, lt1 lt1Var, long j, long j2) throws m60 {
        if (!this.l) {
            this.h = lt1Var;
            if (this.k == Long.MIN_VALUE) {
                this.k = j;
            }
            this.i = jc0VarArr;
            this.j = j2;
            a(jc0VarArr, j, j2);
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(long j) throws m60 {
        this.l = false;
        this.k = j;
        a(j, false);
    }
}
