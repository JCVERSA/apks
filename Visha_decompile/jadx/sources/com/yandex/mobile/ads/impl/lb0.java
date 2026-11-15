package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import java.util.Arrays;

final class lb0 {
    private boolean c;
    private int e;
    private a a = new a();
    private a b = new a();
    private long d = C.TIME_UNSET;

    public static final class a {
        private long a;
        private long b;
        private long c;
        private long d;
        private long e;
        private long f;
        private final boolean[] g = new boolean[15];
        private int h;

        public final boolean a() {
            return this.d > 15 && this.h == 0;
        }

        public final void a(long j) {
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
                int i = (int) (j2 % 15);
                if (Math.abs(j4 - this.b) <= 1000000) {
                    this.e++;
                    this.f += j4;
                    boolean[] zArr = this.g;
                    if (zArr[i]) {
                        zArr[i] = false;
                        this.h--;
                    }
                } else {
                    boolean[] zArr2 = this.g;
                    if (!zArr2[i]) {
                        zArr2[i] = true;
                        this.h++;
                    }
                }
            }
            this.d++;
            this.c = j;
        }
    }

    public final long a() {
        if (!this.a.a()) {
            return C.TIME_UNSET;
        }
        a aVar = this.a;
        long j = aVar.e;
        if (j == 0) {
            return 0L;
        }
        return aVar.f / j;
    }

    public final float b() {
        if (!this.a.a()) {
            return -1.0f;
        }
        a aVar = this.a;
        long j = aVar.e;
        return (float) (1.0E9d / (j != 0 ? aVar.f / j : 0L));
    }

    public final int c() {
        return this.e;
    }

    public final long d() {
        return this.a.a() ? this.a.f : C.TIME_UNSET;
    }

    public final boolean e() {
        return this.a.a();
    }

    public final void f() {
        a aVar = this.a;
        aVar.d = 0L;
        aVar.e = 0L;
        aVar.f = 0L;
        aVar.h = 0;
        Arrays.fill(aVar.g, false);
        a aVar2 = this.b;
        aVar2.d = 0L;
        aVar2.e = 0L;
        aVar2.f = 0L;
        aVar2.h = 0;
        Arrays.fill(aVar2.g, false);
        this.c = false;
        this.d = C.TIME_UNSET;
        this.e = 0;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003d  */
    public final void a(long j) {
        this.a.a(j);
        if (this.a.a()) {
            this.c = false;
        } else if (this.d != C.TIME_UNSET) {
            if (this.c) {
                a aVar = this.b;
                long j2 = aVar.d;
                if (j2 != 0 && aVar.g[(int) ((j2 - 1) % 15)]) {
                    a aVar2 = this.b;
                    aVar2.d = 0L;
                    aVar2.e = 0L;
                    aVar2.f = 0L;
                    aVar2.h = 0;
                    Arrays.fill(aVar2.g, false);
                    this.b.a(this.d);
                }
            } else {
                a aVar3 = this.b;
                aVar3.d = 0L;
                aVar3.e = 0L;
                aVar3.f = 0L;
                aVar3.h = 0;
                Arrays.fill(aVar3.g, false);
                this.b.a(this.d);
            }
            this.c = true;
            this.b.a(j);
        }
        if (this.c && this.b.a()) {
            a aVar4 = this.a;
            this.a = this.b;
            this.b = aVar4;
            this.c = false;
        }
        this.d = j;
        this.e = this.a.a() ? 0 : this.e + 1;
    }
}
