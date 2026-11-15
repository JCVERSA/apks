package defpackage;

import android.media.AudioTrack;

public final class rhj {
    public final qhj a;
    public int b;
    public long c;
    public long d;
    public long e;
    public long f;

    public rhj(AudioTrack audioTrack) {
        this.a = new qhj(audioTrack);
        h(0);
    }

    public final long a() {
        return this.a.a();
    }

    public final long b() {
        return this.a.b();
    }

    public final void c() {
        if (this.b == 4) {
            h(0);
        }
    }

    public final void d() {
        h(4);
    }

    public final void e() {
        h(0);
    }

    public final boolean f() {
        return this.b == 2;
    }

    public final boolean g(long j) {
        if (j - this.e < this.d) {
            return false;
        }
        this.e = j;
        qhj qhjVar = this.a;
        boolean zC = qhjVar.c();
        int i = this.b;
        if (i == 0) {
            if (!zC) {
                if (j - this.c <= 500000) {
                    return false;
                }
                h(3);
                return false;
            }
            if (qhjVar.b() < this.c) {
                return false;
            }
            this.f = qhjVar.a();
            h(1);
            return true;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return zC;
                }
                if (!zC) {
                    return false;
                }
                h(0);
                return true;
            }
            if (!zC) {
                h(0);
                return false;
            }
        } else {
            if (!zC) {
                h(0);
                return false;
            }
            if (qhjVar.a() > this.f) {
                h(2);
                return true;
            }
        }
        return true;
    }

    public final void h(int i) {
        this.b = i;
        long j = 10000;
        if (i == 0) {
            this.e = 0L;
            this.f = -1L;
            this.c = System.nanoTime() / 1000;
        } else {
            if (i == 1) {
                this.d = 10000L;
                return;
            }
            j = (i == 2 || i == 3) ? 10000000L : 500000L;
        }
        this.d = j;
    }
}
