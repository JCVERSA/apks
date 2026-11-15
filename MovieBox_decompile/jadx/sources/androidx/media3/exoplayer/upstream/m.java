package androidx.media3.exoplayer.upstream;

import java.io.IOException;

public interface m {

    public static final class a {

        public final int f12692a;

        public final int f12693b;

        public final int f12694c;

        public final int f12695d;

        public a(int i10, int i11, int i12, int i13) {
            this.f12692a = i10;
            this.f12693b = i11;
            this.f12694c = i12;
            this.f12695d = i13;
        }

        public boolean a(int i10) {
            if (i10 == 1) {
                if (this.f12692a - this.f12693b <= 1) {
                    return false;
                }
            } else if (this.f12694c - this.f12695d <= 1) {
                return false;
            }
            return true;
        }
    }

    public static final class b {

        public final int f12696a;

        public final long f12697b;

        public b(int i10, long j10) {
            androidx.media3.common.util.a.a(j10 >= 0);
            this.f12696a = i10;
            this.f12697b = j10;
        }
    }

    public static final class c {

        public final f2.i f12698a;

        public final f2.j f12699b;

        public final IOException f12700c;

        public final int f12701d;

        public c(f2.i iVar, f2.j jVar, IOException iOException, int i10) {
            this.f12698a = iVar;
            this.f12699b = jVar;
            this.f12700c = iOException;
            this.f12701d = i10;
        }
    }

    int a(int i10);

    void b(long j10);

    long c(c cVar);

    b d(a aVar, c cVar);
}
