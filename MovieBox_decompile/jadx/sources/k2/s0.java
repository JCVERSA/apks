package k2;

import java.util.Arrays;

public interface s0 {

    public static final class a {

        public final int f63686a;

        public final byte[] f63687b;

        public final int f63688c;

        public final int f63689d;

        public a(int i10, byte[] bArr, int i11, int i12) {
            this.f63686a = i10;
            this.f63687b = bArr;
            this.f63688c = i11;
            this.f63689d = i12;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f63686a == aVar.f63686a && this.f63688c == aVar.f63688c && this.f63689d == aVar.f63689d && Arrays.equals(this.f63687b, aVar.f63687b);
        }

        public int hashCode() {
            return (((((this.f63686a * 31) + Arrays.hashCode(this.f63687b)) * 31) + this.f63688c) * 31) + this.f63689d;
        }
    }

    void a(androidx.media3.common.util.j0 j0Var, int i10, int i11);

    void b(long j10, int i10, int i11, int i12, a aVar);

    void c(androidx.media3.common.util.j0 j0Var, int i10);

    void d(androidx.media3.common.r rVar);

    int e(androidx.media3.common.j jVar, int i10, boolean z10);

    void f(long j10);

    int g(androidx.media3.common.j jVar, int i10, boolean z10, int i11);
}
