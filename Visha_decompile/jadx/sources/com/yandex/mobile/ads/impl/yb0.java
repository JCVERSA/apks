package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.Arrays;

final class yb0 extends y22 {

    @Nullable
    private ac0 n;

    @Nullable
    private a o;

    public static final class a implements de1 {
        private ac0 a;
        private ac0.a b;
        private long c = -1;
        private long d = -1;

        public a(ac0 ac0Var, ac0.a aVar) {
            this.a = ac0Var;
            this.b = aVar;
        }

        @Override
        public final ex1 a() {
            long j = this.c;
            if (j != -1) {
                return new zb0(this.a, j);
            }
            throw new IllegalStateException();
        }

        @Override
        public final long a(wz wzVar) {
            long j = this.d;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.d = -1L;
            return j2;
        }

        @Override
        public final void a(long j) {
            long[] jArr = this.b.a;
            this.d = jArr[f92.b(jArr, j, true)];
        }
    }

    @Override
    public final long a(ag1 ag1Var) {
        int i;
        int i2;
        int iT;
        int i3 = -1;
        if (ag1Var.c()[0] != -1) {
            return -1L;
        }
        int i4 = (ag1Var.c()[2] & 255) >> 4;
        if (i4 == 6 || i4 == 7) {
            ag1Var.f(4);
            ag1Var.A();
        }
        switch (i4) {
            case 1:
                i3 = 192;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                i = i4 - 2;
                i2 = 576;
                i3 = i2 << i;
                break;
            case 6:
                iT = ag1Var.t();
                i3 = iT + 1;
                break;
            case 7:
                iT = ag1Var.z();
                i3 = iT + 1;
                break;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i = i4 - 8;
                i2 = 256;
                i3 = i2 << i;
                break;
        }
        ag1Var.e(0);
        return i3;
    }

    @Override
    public final boolean a(ag1 ag1Var, long j, y22.a aVar) {
        byte[] bArrC = ag1Var.c();
        ac0 ac0Var = this.n;
        if (ac0Var == null) {
            ac0 ac0Var2 = new ac0(17, bArrC);
            this.n = ac0Var2;
            aVar.a = ac0Var2.a(Arrays.copyOfRange(bArrC, 9, ag1Var.e()), null);
            return true;
        }
        byte b = bArrC[0];
        if ((b & 127) == 3) {
            ac0.a aVarA = xb0.a(ag1Var);
            ac0 ac0VarA = ac0Var.a(aVarA);
            this.n = ac0VarA;
            this.o = new a(ac0VarA, aVarA);
            return true;
        }
        if (b != -1) {
            return true;
        }
        a aVar2 = this.o;
        if (aVar2 != null) {
            aVar2.c = j;
            aVar.b = aVar2;
        }
        aVar.a.getClass();
        return false;
    }

    @Override
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }
}
