package defpackage;

import androidx.media3.common.C;
import java.util.Arrays;

public final class bx3 {
    public boolean c;
    public boolean d;
    public int f;
    public a a = new a();
    public a b = new a();
    public long e = C.TIME_UNSET;

    public static final class a {
        public long a;
        public long b;
        public long c;
        public long d;
        public long e;
        public long f;
        public final boolean[] g = new boolean[15];
        public int h;

        public static int c(long j) {
            return (int) (j % 15);
        }

        public long a() {
            long j = this.e;
            if (j == 0) {
                return 0L;
            }
            return this.f / j;
        }

        public long b() {
            return this.f;
        }

        public boolean d() {
            long j = this.d;
            if (j == 0) {
                return false;
            }
            return this.g[c(j - 1)];
        }

        public boolean e() {
            return this.d > 15 && this.h == 0;
        }

        public void f(long j) {
            long j2 = this.d;
            if (j2 == 0) {
                this.a = j;
            } else if (j2 == 1) {
                long j3 = j - this.a;
                this.b = j3;
                this.f = j3;
                this.e = 1L;
            } else {
                long j4 = j - this.c;
                int iC = c(j2);
                if (Math.abs(j4 - this.b) <= 1000000) {
                    this.e++;
                    this.f += j4;
                    boolean[] zArr = this.g;
                    if (zArr[iC]) {
                        zArr[iC] = false;
                        this.h--;
                    }
                } else {
                    boolean[] zArr2 = this.g;
                    if (!zArr2[iC]) {
                        zArr2[iC] = true;
                        this.h++;
                    }
                }
            }
            this.d++;
            this.c = j;
        }

        public void g() {
            this.d = 0L;
            this.e = 0L;
            this.f = 0L;
            this.h = 0;
            Arrays.fill(this.g, false);
        }
    }

    public long a() {
        return e() ? this.a.a() : C.TIME_UNSET;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f;
    }

    public long d() {
        return e() ? this.a.b() : C.TIME_UNSET;
    }

    public boolean e() {
        return this.a.e();
    }

    public void f(long j) {
        this.a.f(j);
        if (this.a.e() && !this.d) {
            this.c = false;
        } else if (this.e != C.TIME_UNSET) {
            if (!this.c || this.b.d()) {
                this.b.g();
                this.b.f(this.e);
            }
            this.c = true;
            this.b.f(j);
        }
        if (this.c && this.b.e()) {
            a aVar = this.a;
            this.a = this.b;
            this.b = aVar;
            this.c = false;
            this.d = false;
        }
        this.e = j;
        this.f = this.a.e() ? 0 : this.f + 1;
    }

    public void g() {
        this.a.g();
        this.b.g();
        this.c = false;
        this.e = C.TIME_UNSET;
        this.f = 0;
    }
}
