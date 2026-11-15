package com.yandex.mobile.ads.impl;

import java.io.IOException;
import java.util.Objects;

final class ub0 extends jl {

    public static final class a implements jl.f {
        private final ac0 a;
        private final int b;
        private final wb0.a c;

        private long a(wz wzVar) throws IOException {
            int iC;
            while (wzVar.d() < wzVar.b() - 6) {
                ac0 ac0Var = this.a;
                int i = this.b;
                wb0.a aVar = this.c;
                long jD = wzVar.d();
                byte[] bArr = new byte[2];
                wzVar.b(bArr, 0, 2, false);
                if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) == i) {
                    ag1 ag1Var = new ag1(16);
                    System.arraycopy(bArr, 0, ag1Var.c(), 0, 2);
                    byte[] bArrC = ag1Var.c();
                    int i2 = 0;
                    for (int i3 = 2; i2 < 14 && (iC = wzVar.c(bArrC, i3 + i2, 14 - i2)) != -1; i3 = 2) {
                        i2 += iC;
                    }
                    ag1Var.d(i2);
                    wzVar.c();
                    wzVar.a(false, (int) (jD - wzVar.a()));
                    if (wb0.a(ag1Var, ac0Var, i, aVar)) {
                        break;
                    }
                } else {
                    wzVar.c();
                    wzVar.a(false, (int) (jD - wzVar.a()));
                }
                wzVar.a(false, 1);
            }
            if (wzVar.d() < wzVar.b() - 6) {
                return this.c.a;
            }
            wzVar.a(false, (int) (wzVar.b() - wzVar.d()));
            return this.a.j;
        }

        private a(int i, ac0 ac0Var) {
            this.a = ac0Var;
            this.b = i;
            this.c = new wb0.a();
        }

        @Override
        public final jl.e a(wz wzVar, long j) throws IOException {
            long jA = wzVar.a();
            long jA2 = a(wzVar);
            long jD = wzVar.d();
            wzVar.a(false, Math.max(6, this.a.c));
            long jA3 = a(wzVar);
            long jD2 = wzVar.d();
            if (jA2 <= j && jA3 > j) {
                return jl.e.a(jD);
            }
            if (jA3 <= j) {
                return jl.e.b(jA3, jD2);
            }
            return jl.e.a(jA2, jA);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ub0(final ac0 ac0Var, int i, long j, long j2) {
        super(new jl.d() {
            @Override
            public final long a(long j3) {
                return ac0Var.a(j3);
            }
        }, new a(i, ac0Var), ac0Var.b(), ac0Var.j, j, j2, ac0Var.a(), Math.max(6, ac0Var.c));
        Objects.requireNonNull(ac0Var);
    }
}
