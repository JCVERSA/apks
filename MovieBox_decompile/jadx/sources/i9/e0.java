package i9;

import com.google.android.exoplayer2.p1;
import java.util.Arrays;

public interface e0 {

    public static final class a {

        public final int f61905a;

        public final byte[] f61906b;

        public final int f61907c;

        public final int f61908d;

        public a(int i10, byte[] bArr, int i11, int i12) {
            this.f61905a = i10;
            this.f61906b = bArr;
            this.f61907c = i11;
            this.f61908d = i12;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f61905a == aVar.f61905a && this.f61907c == aVar.f61907c && this.f61908d == aVar.f61908d && Arrays.equals(this.f61906b, aVar.f61906b);
        }

        public int hashCode() {
            return (((((this.f61905a * 31) + Arrays.hashCode(this.f61906b)) * 31) + this.f61907c) * 31) + this.f61908d;
        }
    }

    int a(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10, int i11);

    int b(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10);

    void c(com.google.android.exoplayer2.util.d0 d0Var, int i10);

    void d(p1 p1Var);

    void e(long j10, int i10, int i11, int i12, a aVar);

    void f(com.google.android.exoplayer2.util.d0 d0Var, int i10, int i11);
}
