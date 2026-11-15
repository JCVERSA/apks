package com.yandex.mobile.ads.impl;

public final class q22 implements b80 {
    private final long b;
    private final b80 c;

    public q22(long j, b80 b80Var) {
        this.b = j;
        this.c = b80Var;
    }

    public class a implements ex1 {
        final ex1 a;

        public a(ex1 ex1Var) {
            this.a = ex1Var;
        }

        @Override
        public final ex1.a b(long j) {
            ex1.a aVarB = this.a.b(j);
            gx1 gx1Var = aVarB.a;
            long j2 = gx1Var.a;
            long j3 = gx1Var.b;
            long j4 = q22.this.b;
            gx1 gx1Var2 = new gx1(j2, j3 + j4);
            gx1 gx1Var3 = aVarB.b;
            return new ex1.a(gx1Var2, new gx1(gx1Var3.a, gx1Var3.b + j4));
        }

        @Override
        public final long c() {
            return this.a.c();
        }

        @Override
        public final boolean b() {
            return this.a.b();
        }
    }

    @Override
    public final void a() {
        this.c.a();
    }

    @Override
    public final void a(ex1 ex1Var) {
        this.c.a(new a(ex1Var));
    }

    @Override
    public final a62 a(int i, int i2) {
        return this.c.a(i, i2);
    }
}
