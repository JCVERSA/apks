package androidx.media3.exoplayer.video;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

final class i {

    private boolean f12811c;

    private boolean f12812d;

    private int f12814f;

    private a f12809a = new a();

    private a f12810b = new a();

    private long f12813e = C.TIME_UNSET;

    private static final class a {

        private long f12815a;

        private long f12816b;

        private long f12817c;

        private long f12818d;

        private long f12819e;

        private long f12820f;

        private final boolean[] f12821g = new boolean[15];

        private int f12822h;

        private static int c(long j10) {
            return (int) (j10 % 15);
        }

        public long a() {
            long j10 = this.f12819e;
            if (j10 == 0) {
                return 0L;
            }
            return this.f12820f / j10;
        }

        public long b() {
            return this.f12820f;
        }

        public boolean d() {
            long j10 = this.f12818d;
            if (j10 == 0) {
                return false;
            }
            return this.f12821g[c(j10 - 1)];
        }

        public boolean e() {
            return this.f12818d > 15 && this.f12822h == 0;
        }

        public void f(long j10) {
            long j11 = this.f12818d;
            if (j11 == 0) {
                this.f12815a = j10;
            } else if (j11 == 1) {
                long j12 = j10 - this.f12815a;
                this.f12816b = j12;
                this.f12820f = j12;
                this.f12819e = 1L;
            } else {
                long j13 = j10 - this.f12817c;
                int iC = c(j11);
                if (Math.abs(j13 - this.f12816b) <= 1000000) {
                    this.f12819e++;
                    this.f12820f += j13;
                    boolean[] zArr = this.f12821g;
                    if (zArr[iC]) {
                        zArr[iC] = false;
                        this.f12822h--;
                    }
                } else {
                    boolean[] zArr2 = this.f12821g;
                    if (!zArr2[iC]) {
                        zArr2[iC] = true;
                        this.f12822h++;
                    }
                }
            }
            this.f12818d++;
            this.f12817c = j10;
        }

        public void g() {
            this.f12818d = 0L;
            this.f12819e = 0L;
            this.f12820f = 0L;
            this.f12822h = 0;
            Arrays.fill(this.f12821g, false);
        }
    }

    public long a() {
        return e() ? this.f12809a.a() : C.TIME_UNSET;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.f12809a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f12814f;
    }

    public long d() {
        return e() ? this.f12809a.b() : C.TIME_UNSET;
    }

    public boolean e() {
        return this.f12809a.e();
    }

    public void f(long j10) {
        this.f12809a.f(j10);
        if (this.f12809a.e() && !this.f12812d) {
            this.f12811c = false;
        } else if (this.f12813e != C.TIME_UNSET) {
            if (!this.f12811c || this.f12810b.d()) {
                this.f12810b.g();
                this.f12810b.f(this.f12813e);
            }
            this.f12811c = true;
            this.f12810b.f(j10);
        }
        if (this.f12811c && this.f12810b.e()) {
            a aVar = this.f12809a;
            this.f12809a = this.f12810b;
            this.f12810b = aVar;
            this.f12811c = false;
            this.f12812d = false;
        }
        this.f12813e = j10;
        this.f12814f = this.f12809a.e() ? 0 : this.f12814f + 1;
    }

    public void g() {
        this.f12809a.g();
        this.f12810b.g();
        this.f12811c = false;
        this.f12813e = C.TIME_UNSET;
        this.f12814f = 0;
    }
}
