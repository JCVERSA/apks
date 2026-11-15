package com.google.android.exoplayer2.video;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

final class e {

    private boolean f26967c;

    private boolean f26968d;

    private int f26970f;

    private a f26965a = new a();

    private a f26966b = new a();

    private long f26969e = C.TIME_UNSET;

    private static final class a {

        private long f26971a;

        private long f26972b;

        private long f26973c;

        private long f26974d;

        private long f26975e;

        private long f26976f;

        private final boolean[] f26977g = new boolean[15];

        private int f26978h;

        private static int c(long j10) {
            return (int) (j10 % 15);
        }

        public long a() {
            long j10 = this.f26975e;
            if (j10 == 0) {
                return 0L;
            }
            return this.f26976f / j10;
        }

        public long b() {
            return this.f26976f;
        }

        public boolean d() {
            long j10 = this.f26974d;
            if (j10 == 0) {
                return false;
            }
            return this.f26977g[c(j10 - 1)];
        }

        public boolean e() {
            return this.f26974d > 15 && this.f26978h == 0;
        }

        public void f(long j10) {
            long j11 = this.f26974d;
            if (j11 == 0) {
                this.f26971a = j10;
            } else if (j11 == 1) {
                long j12 = j10 - this.f26971a;
                this.f26972b = j12;
                this.f26976f = j12;
                this.f26975e = 1L;
            } else {
                long j13 = j10 - this.f26973c;
                int iC = c(j11);
                if (Math.abs(j13 - this.f26972b) <= 1000000) {
                    this.f26975e++;
                    this.f26976f += j13;
                    boolean[] zArr = this.f26977g;
                    if (zArr[iC]) {
                        zArr[iC] = false;
                        this.f26978h--;
                    }
                } else {
                    boolean[] zArr2 = this.f26977g;
                    if (!zArr2[iC]) {
                        zArr2[iC] = true;
                        this.f26978h++;
                    }
                }
            }
            this.f26974d++;
            this.f26973c = j10;
        }

        public void g() {
            this.f26974d = 0L;
            this.f26975e = 0L;
            this.f26976f = 0L;
            this.f26978h = 0;
            Arrays.fill(this.f26977g, false);
        }
    }

    public long a() {
        return e() ? this.f26965a.a() : C.TIME_UNSET;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.f26965a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f26970f;
    }

    public long d() {
        return e() ? this.f26965a.b() : C.TIME_UNSET;
    }

    public boolean e() {
        return this.f26965a.e();
    }

    public void f(long j10) {
        this.f26965a.f(j10);
        if (this.f26965a.e() && !this.f26968d) {
            this.f26967c = false;
        } else if (this.f26969e != C.TIME_UNSET) {
            if (!this.f26967c || this.f26966b.d()) {
                this.f26966b.g();
                this.f26966b.f(this.f26969e);
            }
            this.f26967c = true;
            this.f26966b.f(j10);
        }
        if (this.f26967c && this.f26966b.e()) {
            a aVar = this.f26965a;
            this.f26965a = this.f26966b;
            this.f26966b = aVar;
            this.f26967c = false;
            this.f26968d = false;
        }
        this.f26969e = j10;
        this.f26970f = this.f26965a.e() ? 0 : this.f26970f + 1;
    }

    public void g() {
        this.f26965a.g();
        this.f26966b.g();
        this.f26967c = false;
        this.f26969e = C.TIME_UNSET;
        this.f26970f = 0;
    }
}
