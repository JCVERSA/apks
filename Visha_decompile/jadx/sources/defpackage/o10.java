package defpackage;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.media3.common.C;

public final class o10 {
    public final a a;
    public int b;
    public long c;
    public long d;
    public long e;
    public long f;

    public static final class a {
        public final AudioTrack a;
        public final AudioTimestamp b = new AudioTimestamp();
        public long c;
        public long d;
        public long e;

        public a(AudioTrack audioTrack) {
            this.a = audioTrack;
        }

        public long a() {
            return this.e;
        }

        public long b() {
            return this.b.nanoTime / 1000;
        }

        public boolean c() {
            boolean timestamp = this.a.getTimestamp(this.b);
            if (timestamp) {
                long j = this.b.framePosition;
                if (this.d > j) {
                    this.c++;
                }
                this.d = j;
                this.e = j + (this.c << 32);
            }
            return timestamp;
        }
    }

    public o10(AudioTrack audioTrack) {
        if (blb.a >= 19) {
            this.a = new a(audioTrack);
            g();
        } else {
            this.a = null;
            h(3);
        }
    }

    public void a() {
        if (this.b == 4) {
            g();
        }
    }

    public long b() {
        a aVar = this.a;
        if (aVar != null) {
            return aVar.a();
        }
        return -1L;
    }

    public long c() {
        a aVar = this.a;
        return aVar != null ? aVar.b() : C.TIME_UNSET;
    }

    public boolean d() {
        return this.b == 2;
    }

    public boolean e(long j) {
        a aVar = this.a;
        if (aVar == null || j - this.e < this.d) {
            return false;
        }
        this.e = j;
        boolean zC = aVar.c();
        int i = this.b;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (zC) {
                        g();
                    }
                } else if (!zC) {
                    g();
                }
            } else if (!zC) {
                g();
            } else if (this.a.a() > this.f) {
                h(2);
            }
        } else if (zC) {
            if (this.a.b() < this.c) {
                return false;
            }
            this.f = this.a.a();
            h(1);
        } else if (j - this.c > 500000) {
            h(3);
        }
        return zC;
    }

    public void f() {
        h(4);
    }

    public void g() {
        if (this.a != null) {
            h(0);
        }
    }

    public final void h(int i) {
        this.b = i;
        if (i == 0) {
            this.e = 0L;
            this.f = -1L;
            this.c = System.nanoTime() / 1000;
            this.d = 10000L;
            return;
        }
        if (i == 1) {
            this.d = 10000L;
            return;
        }
        if (i == 2 || i == 3) {
            this.d = 10000000L;
        } else {
            if (i != 4) {
                throw new IllegalStateException();
            }
            this.d = 500000L;
        }
    }
}
