package defpackage;

import java.util.Objects;

public final class sbe extends i8e {
    public sbe(final n9e n9eVar, int i, long j, long j2) {
        long j3;
        Objects.requireNonNull(n9eVar);
        f8e f8eVar = new f8e() {
            @Override
            public final long b(long j4) {
                return n9eVar.b(j4);
            }
        };
        qbe qbeVar = new qbe(n9eVar, i, null);
        long jA = n9eVar.a();
        long j4 = n9eVar.j;
        int i2 = n9eVar.d;
        if (i2 > 0) {
            j3 = ((((long) i2) + ((long) n9eVar.c)) / 2) + 1;
        } else {
            int i3 = n9eVar.a;
            long j5 = 4096;
            if (i3 == n9eVar.b && i3 > 0) {
                j5 = i3;
            }
            j3 = (((j5 * ((long) n9eVar.g)) * ((long) n9eVar.h)) / 8) + 64;
        }
        super(f8eVar, qbeVar, jA, 0L, j4, j, j2, j3, Math.max(6, n9eVar.c));
    }
}
