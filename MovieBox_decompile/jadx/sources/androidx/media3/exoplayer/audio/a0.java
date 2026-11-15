package androidx.media3.exoplayer.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class a0 {

    private final a f10779a;

    private int f10780b;

    private long f10781c;

    private long f10782d;

    private long f10783e;

    private long f10784f;

    private static final class a {

        private final AudioTrack f10785a;

        private final AudioTimestamp f10786b = new AudioTimestamp();

        private long f10787c;

        private long f10788d;

        private long f10789e;

        private boolean f10790f;

        private long f10791g;

        public a(AudioTrack audioTrack) {
            this.f10785a = audioTrack;
        }

        public void a() {
            this.f10790f = true;
        }

        public long b() {
            return this.f10789e;
        }

        public long c() {
            return this.f10786b.nanoTime / 1000;
        }

        public boolean d() {
            boolean timestamp = this.f10785a.getTimestamp(this.f10786b);
            if (timestamp) {
                long j10 = this.f10786b.framePosition;
                long j11 = this.f10788d;
                if (j11 > j10) {
                    if (this.f10790f) {
                        this.f10791g += j11;
                        this.f10790f = false;
                    } else {
                        this.f10787c++;
                    }
                }
                this.f10788d = j10;
                this.f10789e = j10 + this.f10791g + (this.f10787c << 32);
            }
            return timestamp;
        }
    }

    public a0(AudioTrack audioTrack) {
        this.f10779a = new a(audioTrack);
        h();
    }

    private void i(int i10) {
        this.f10780b = i10;
        if (i10 == 0) {
            this.f10783e = 0L;
            this.f10784f = -1L;
            this.f10781c = System.nanoTime() / 1000;
            this.f10782d = 10000L;
            return;
        }
        if (i10 == 1) {
            this.f10782d = 10000L;
            return;
        }
        if (i10 == 2 || i10 == 3) {
            this.f10782d = 10000000L;
        } else {
            if (i10 != 4) {
                throw new IllegalStateException();
            }
            this.f10782d = 500000L;
        }
    }

    public void a() {
        if (this.f10780b == 4) {
            h();
        }
    }

    public void b() {
        a aVar = this.f10779a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public long c() {
        a aVar = this.f10779a;
        if (aVar != null) {
            return aVar.b();
        }
        return -1L;
    }

    public long d() {
        a aVar = this.f10779a;
        return aVar != null ? aVar.c() : C.TIME_UNSET;
    }

    public boolean e() {
        return this.f10780b == 2;
    }

    public boolean f(long j10) {
        a aVar = this.f10779a;
        if (aVar == null || j10 - this.f10783e < this.f10782d) {
            return false;
        }
        this.f10783e = j10;
        boolean zD = aVar.d();
        int i10 = this.f10780b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (zD) {
                        h();
                    }
                } else if (!zD) {
                    h();
                }
            } else if (!zD) {
                h();
            } else if (this.f10779a.b() > this.f10784f) {
                i(2);
            }
        } else if (zD) {
            if (this.f10779a.c() < this.f10781c) {
                return false;
            }
            this.f10784f = this.f10779a.b();
            i(1);
        } else if (j10 - this.f10781c > 500000) {
            i(3);
        }
        return zD;
    }

    public void g() {
        i(4);
    }

    public void h() {
        if (this.f10779a != null) {
            i(0);
        }
    }
}
