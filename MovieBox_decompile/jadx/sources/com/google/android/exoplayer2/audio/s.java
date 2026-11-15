package com.google.android.exoplayer2.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class s {

    private final a f24045a;

    private int f24046b;

    private long f24047c;

    private long f24048d;

    private long f24049e;

    private long f24050f;

    private static final class a {

        private final AudioTrack f24051a;

        private final AudioTimestamp f24052b = new AudioTimestamp();

        private long f24053c;

        private long f24054d;

        private long f24055e;

        public a(AudioTrack audioTrack) {
            this.f24051a = audioTrack;
        }

        public long a() {
            return this.f24055e;
        }

        public long b() {
            return this.f24052b.nanoTime / 1000;
        }

        public boolean c() {
            boolean timestamp = this.f24051a.getTimestamp(this.f24052b);
            if (timestamp) {
                long j10 = this.f24052b.framePosition;
                if (this.f24054d > j10) {
                    this.f24053c++;
                }
                this.f24054d = j10;
                this.f24055e = j10 + (this.f24053c << 32);
            }
            return timestamp;
        }
    }

    public s(AudioTrack audioTrack) {
        if (p0.f26854a >= 19) {
            this.f24045a = new a(audioTrack);
            g();
        } else {
            this.f24045a = null;
            h(3);
        }
    }

    private void h(int i10) {
        this.f24046b = i10;
        if (i10 == 0) {
            this.f24049e = 0L;
            this.f24050f = -1L;
            this.f24047c = System.nanoTime() / 1000;
            this.f24048d = 10000L;
            return;
        }
        if (i10 == 1) {
            this.f24048d = 10000L;
            return;
        }
        if (i10 == 2 || i10 == 3) {
            this.f24048d = 10000000L;
        } else {
            if (i10 != 4) {
                throw new IllegalStateException();
            }
            this.f24048d = 500000L;
        }
    }

    public void a() {
        if (this.f24046b == 4) {
            g();
        }
    }

    public long b() {
        a aVar = this.f24045a;
        if (aVar != null) {
            return aVar.a();
        }
        return -1L;
    }

    public long c() {
        a aVar = this.f24045a;
        return aVar != null ? aVar.b() : C.TIME_UNSET;
    }

    public boolean d() {
        return this.f24046b == 2;
    }

    public boolean e(long j10) {
        a aVar = this.f24045a;
        if (aVar == null || j10 - this.f24049e < this.f24048d) {
            return false;
        }
        this.f24049e = j10;
        boolean zC = aVar.c();
        int i10 = this.f24046b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
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
            } else if (this.f24045a.a() > this.f24050f) {
                h(2);
            }
        } else if (zC) {
            if (this.f24045a.b() < this.f24047c) {
                return false;
            }
            this.f24050f = this.f24045a.a();
            h(1);
        } else if (j10 - this.f24047c > 500000) {
            h(3);
        }
        return zC;
    }

    public void f() {
        h(4);
    }

    public void g() {
        if (this.f24045a != null) {
            h(0);
        }
    }
}
