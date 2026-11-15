package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.lang.reflect.Method;

final class t {
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;

    private final a f24056a;

    private final long[] f24057b;

    private AudioTrack f24058c;

    private int f24059d;

    private int f24060e;

    private s f24061f;

    private int f24062g;

    private boolean f24063h;

    private long f24064i;

    private float f24065j;

    private boolean f24066k;

    private long f24067l;

    private long f24068m;

    private Method f24069n;

    private long f24070o;

    private boolean f24071p;

    private boolean f24072q;

    private long f24073r;

    private long f24074s;

    private long f24075t;

    private long f24076u;

    private int f24077v;

    private int f24078w;

    private long f24079x;

    private long f24080y;

    private long f24081z;

    public interface a {
        void b(long j10);

        void onInvalidLatency(long j10);

        void onPositionFramesMismatch(long j10, long j11, long j12, long j13);

        void onSystemTimeUsMismatch(long j10, long j11, long j12, long j13);

        void onUnderrun(int i10, long j10);
    }

    public t(a aVar) {
        this.f24056a = (a) com.google.android.exoplayer2.util.a.e(aVar);
        if (p0.f26854a >= 18) {
            try {
                this.f24069n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f24057b = new long[10];
    }

    private boolean a() {
        return this.f24063h && ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24058c)).getPlayState() == 2 && e() == 0;
    }

    private long b(long j10) {
        return (j10 * 1000000) / ((long) this.f24062g);
    }

    private long e() {
        AudioTrack audioTrack = (AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24058c);
        if (this.f24079x != C.TIME_UNSET) {
            return Math.min(this.A, this.f24081z + ((((SystemClock.elapsedRealtime() * 1000) - this.f24079x) * ((long) this.f24062g)) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.f24063h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f24076u = this.f24074s;
            }
            playbackHeadPosition += this.f24076u;
        }
        if (p0.f26854a <= 29) {
            if (playbackHeadPosition == 0 && this.f24074s > 0 && playState == 3) {
                if (this.f24080y == C.TIME_UNSET) {
                    this.f24080y = SystemClock.elapsedRealtime();
                }
                return this.f24074s;
            }
            this.f24080y = C.TIME_UNSET;
        }
        if (this.f24074s > playbackHeadPosition) {
            this.f24075t++;
        }
        this.f24074s = playbackHeadPosition;
        return playbackHeadPosition + (this.f24075t << 32);
    }

    private long f() {
        return b(e());
    }

    private void l(long j10, long j11) {
        s sVar = (s) com.google.android.exoplayer2.util.a.e(this.f24061f);
        if (sVar.e(j10)) {
            long jC = sVar.c();
            long jB = sVar.b();
            if (Math.abs(jC - j10) > 5000000) {
                this.f24056a.onSystemTimeUsMismatch(jB, jC, j10, j11);
                sVar.f();
            } else if (Math.abs(b(jB) - j11) <= 5000000) {
                sVar.a();
            } else {
                this.f24056a.onPositionFramesMismatch(jB, jC, j10, j11);
                sVar.f();
            }
        }
    }

    private void m() {
        long jF = f();
        if (jF == 0) {
            return;
        }
        long jNanoTime = System.nanoTime() / 1000;
        if (jNanoTime - this.f24068m >= 30000) {
            long[] jArr = this.f24057b;
            int i10 = this.f24077v;
            jArr[i10] = jF - jNanoTime;
            this.f24077v = (i10 + 1) % 10;
            int i11 = this.f24078w;
            if (i11 < 10) {
                this.f24078w = i11 + 1;
            }
            this.f24068m = jNanoTime;
            this.f24067l = 0L;
            int i12 = 0;
            while (true) {
                int i13 = this.f24078w;
                if (i12 >= i13) {
                    break;
                }
                this.f24067l += this.f24057b[i12] / ((long) i13);
                i12++;
            }
        }
        if (this.f24063h) {
            return;
        }
        l(jNanoTime, jF);
        n(jNanoTime);
    }

    private void n(long j10) {
        Method method;
        if (!this.f24072q || (method = this.f24069n) == null || j10 - this.f24073r < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) p0.j((Integer) method.invoke(com.google.android.exoplayer2.util.a.e(this.f24058c), null))).intValue()) * 1000) - this.f24064i;
            this.f24070o = jIntValue;
            long jMax = Math.max(jIntValue, 0L);
            this.f24070o = jMax;
            if (jMax > 5000000) {
                this.f24056a.onInvalidLatency(jMax);
                this.f24070o = 0L;
            }
        } catch (Exception unused) {
            this.f24069n = null;
        }
        this.f24073r = j10;
    }

    private static boolean o(int i10) {
        return p0.f26854a < 23 && (i10 == 5 || i10 == 6);
    }

    private void r() {
        this.f24067l = 0L;
        this.f24078w = 0;
        this.f24077v = 0;
        this.f24068m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.f24066k = false;
    }

    public int c(long j10) {
        return this.f24060e - ((int) (j10 - (e() * ((long) this.f24059d))));
    }

    public long d(boolean z10) {
        long jF;
        if (((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24058c)).getPlayState() == 3) {
            m();
        }
        long jNanoTime = System.nanoTime() / 1000;
        s sVar = (s) com.google.android.exoplayer2.util.a.e(this.f24061f);
        boolean zD = sVar.d();
        if (zD) {
            jF = b(sVar.b()) + p0.a0(jNanoTime - sVar.c(), this.f24065j);
        } else {
            jF = this.f24078w == 0 ? f() : this.f24067l + jNanoTime;
            if (!z10) {
                jF = Math.max(0L, jF - this.f24070o);
            }
        }
        if (this.D != zD) {
            this.F = this.C;
            this.E = this.B;
        }
        long j10 = jNanoTime - this.F;
        if (j10 < 1000000) {
            long jA0 = this.E + p0.a0(j10, this.f24065j);
            long j11 = (j10 * 1000) / 1000000;
            jF = ((jF * j11) + ((1000 - j11) * jA0)) / 1000;
        }
        if (!this.f24066k) {
            long j12 = this.B;
            if (jF > j12) {
                this.f24066k = true;
                this.f24056a.b(System.currentTimeMillis() - p0.e1(p0.f0(p0.e1(jF - j12), this.f24065j)));
            }
        }
        this.C = jNanoTime;
        this.B = jF;
        this.D = zD;
        return jF;
    }

    public void g(long j10) {
        this.f24081z = e();
        this.f24079x = SystemClock.elapsedRealtime() * 1000;
        this.A = j10;
    }

    public boolean h(long j10) {
        return j10 > e() || a();
    }

    public boolean i() {
        return ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24058c)).getPlayState() == 3;
    }

    public boolean j(long j10) {
        return this.f24080y != C.TIME_UNSET && j10 > 0 && SystemClock.elapsedRealtime() - this.f24080y >= 200;
    }

    public boolean k(long j10) {
        int playState = ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24058c)).getPlayState();
        if (this.f24063h) {
            if (playState == 2) {
                this.f24071p = false;
                return false;
            }
            if (playState == 1 && e() == 0) {
                return false;
            }
        }
        boolean z10 = this.f24071p;
        boolean zH = h(j10);
        this.f24071p = zH;
        if (z10 && !zH && playState != 1) {
            this.f24056a.onUnderrun(this.f24060e, p0.e1(this.f24064i));
        }
        return true;
    }

    public boolean p() {
        r();
        if (this.f24079x != C.TIME_UNSET) {
            return false;
        }
        ((s) com.google.android.exoplayer2.util.a.e(this.f24061f)).g();
        return true;
    }

    public void q() {
        r();
        this.f24058c = null;
        this.f24061f = null;
    }

    public void s(AudioTrack audioTrack, boolean z10, int i10, int i11, int i12) {
        this.f24058c = audioTrack;
        this.f24059d = i11;
        this.f24060e = i12;
        this.f24061f = new s(audioTrack);
        this.f24062g = audioTrack.getSampleRate();
        this.f24063h = z10 && o(i10);
        boolean zU0 = p0.u0(i10);
        this.f24072q = zU0;
        this.f24064i = zU0 ? b(i12 / i11) : -9223372036854775807L;
        this.f24074s = 0L;
        this.f24075t = 0L;
        this.f24076u = 0L;
        this.f24071p = false;
        this.f24079x = C.TIME_UNSET;
        this.f24080y = C.TIME_UNSET;
        this.f24073r = 0L;
        this.f24070o = 0L;
        this.f24065j = 1.0f;
    }

    public void t(float f10) {
        this.f24065j = f10;
        s sVar = this.f24061f;
        if (sVar != null) {
            sVar.g();
        }
    }

    public void u() {
        ((s) com.google.android.exoplayer2.util.a.e(this.f24061f)).g();
    }
}
