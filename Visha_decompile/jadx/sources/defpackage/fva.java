package defpackage;

import com.google.android.exoplayer2.k;
import java.util.Arrays;

public interface fva {

    public static final class a {
        public final int a;
        public final byte[] b;
        public final int c;
        public final int d;

        public a(int i, byte[] bArr, int i2, int i3) {
            this.a = i;
            this.b = bArr;
            this.c = i2;
            this.d = i3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.c == aVar.c && this.d == aVar.d && Arrays.equals(this.b, aVar.b);
        }

        public int hashCode() {
            return (((((this.a * 31) + Arrays.hashCode(this.b)) * 31) + this.c) * 31) + this.d;
        }
    }

    void a(qw7 qw7Var, int i, int i2);

    void b(k kVar);

    default int c(ms1 ms1Var, int i, boolean z) {
        return f(ms1Var, i, z, 0);
    }

    default void d(qw7 qw7Var, int i) {
        a(qw7Var, i, 0);
    }

    void e(long j, int i, int i2, int i3, a aVar);

    int f(ms1 ms1Var, int i, boolean z, int i2);
}
