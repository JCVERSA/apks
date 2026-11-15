package androidx.media3.exoplayer.audio;

import android.media.AudioTrack;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.lang.reflect.Method;

final class b0 {
    private long A;
    private long B;
    private long C;
    private long D;
    private boolean E;
    private long F;
    private long G;
    private boolean H;
    private long I;
    private androidx.media3.common.util.i J;

    private final a f10793a;

    private final long[] f10794b;

    private AudioTrack f10795c;

    private int f10796d;

    private int f10797e;

    private a0 f10798f;

    private int f10799g;

    private boolean f10800h;

    private long f10801i;

    private float f10802j;

    private boolean f10803k;

    private long f10804l;

    private long f10805m;

    private Method f10806n;

    private long f10807o;

    private boolean f10808p;

    private boolean f10809q;

    private long f10810r;

    private long f10811s;

    private long f10812t;

    private long f10813u;

    private long f10814v;

    private int f10815w;

    private int f10816x;

    private long f10817y;

    private long f10818z;

    public interface a {
        void b(long j10);

        void onInvalidLatency(long j10);

        void onPositionFramesMismatch(long j10, long j11, long j12, long j13);

        void onSystemTimeUsMismatch(long j10, long j11, long j12, long j13);

        void onUnderrun(int i10, long j10);
    }

    public b0(a aVar) {
        this.f10793a = (a) androidx.media3.common.util.a.e(aVar);
        try {
            this.f10806n = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f10794b = new long[10];
        this.J = androidx.media3.common.util.i.f10075a;
    }

    private boolean b() {
        return this.f10800h && ((AudioTrack) androidx.media3.common.util.a.e(this.f10795c)).getPlayState() == 2 && d() == 0;
    }

    private long d() {
        if (this.f10817y != C.TIME_UNSET) {
            return Math.min(this.B, f());
        }
        long jElapsedRealtime = this.J.elapsedRealtime();
        if (jElapsedRealtime - this.f10811s >= 5) {
            w(jElapsedRealtime);
            this.f10811s = jElapsedRealtime;
        }
        return this.f10812t + this.I + (this.f10813u << 32);
    }

    private long e() {
        return androidx.media3.common.util.a1.d1(d(), this.f10799g);
    }

    private long f() {
        if (((AudioTrack) androidx.media3.common.util.a.e(this.f10795c)).getPlayState() == 2) {
            return this.A;
        }
        return this.A + androidx.media3.common.util.a1.F(androidx.media3.common.util.a1.g0(androidx.media3.common.util.a1.R0(this.J.elapsedRealtime()) - this.f10817y, this.f10802j), this.f10799g);
    }

    private void l(long j10) {
        a0 a0Var = (a0) androidx.media3.common.util.a.e(this.f10798f);
        if (a0Var.f(j10)) {
            long jD = a0Var.d();
            long jC = a0Var.c();
            long jE = e();
            if (Math.abs(jD - j10) > 5000000) {
                this.f10793a.onSystemTimeUsMismatch(jC, jD, j10, jE);
                a0Var.g();
            } else if (Math.abs(androidx.media3.common.util.a1.d1(jC, this.f10799g) - jE) <= 5000000) {
                a0Var.a();
            } else {
                this.f10793a.onPositionFramesMismatch(jC, jD, j10, jE);
                a0Var.g();
            }
        }
    }

    private void m() {
        long jNanoTime = this.J.nanoTime() / 1000;
        if (jNanoTime - this.f10805m >= 30000) {
            long jE = e();
            if (jE != 0) {
                this.f10794b[this.f10815w] = androidx.media3.common.util.a1.l0(jE, this.f10802j) - jNanoTime;
                this.f10815w = (this.f10815w + 1) % 10;
                int i10 = this.f10816x;
                if (i10 < 10) {
                    this.f10816x = i10 + 1;
                }
                this.f10805m = jNanoTime;
                this.f10804l = 0L;
                int i11 = 0;
                while (true) {
                    int i12 = this.f10816x;
                    if (i11 >= i12) {
                        break;
                    }
                    this.f10804l += this.f10794b[i11] / ((long) i12);
                    i11++;
                }
            } else {
                return;
            }
        }
        if (this.f10800h) {
            return;
        }
        l(jNanoTime);
        n(jNanoTime);
    }

    private void n(long j10) {
        Method method;
        if (!this.f10809q || (method = this.f10806n) == null || j10 - this.f10810r < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) androidx.media3.common.util.a1.i((Integer) method.invoke(androidx.media3.common.util.a.e(this.f10795c), null))).intValue()) * 1000) - this.f10801i;
            this.f10807o = jIntValue;
            long jMax = Math.max(jIntValue, 0L);
            this.f10807o = jMax;
            if (jMax > 5000000) {
                this.f10793a.onInvalidLatency(jMax);
                this.f10807o = 0L;
            }
        } catch (Exception unused) {
            this.f10806n = null;
        }
        this.f10810r = j10;
    }

    private static boolean o(int i10) {
        return androidx.media3.common.util.a1.f10038a < 23 && (i10 == 5 || i10 == 6);
    }

    private void r() {
        this.f10804l = 0L;
        this.f10816x = 0;
        this.f10815w = 0;
        this.f10805m = 0L;
        this.D = 0L;
        this.G = 0L;
        this.f10803k = false;
    }

    private void w(long j10) {
        AudioTrack audioTrack = (AudioTrack) androidx.media3.common.util.a.e(this.f10795c);
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.f10800h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f10814v = this.f10812t;
            }
            playbackHeadPosition += this.f10814v;
        }
        if (androidx.media3.common.util.a1.f10038a <= 29) {
            if (playbackHeadPosition == 0 && this.f10812t > 0 && playState == 3) {
                if (this.f10818z == C.TIME_UNSET) {
                    this.f10818z = j10;
                    return;
                }
                return;
            }
            this.f10818z = C.TIME_UNSET;
        }
        long j11 = this.f10812t;
        if (j11 > playbackHeadPosition) {
            if (this.H) {
                this.I += j11;
                this.H = false;
            } else {
                this.f10813u++;
            }
        }
        this.f10812t = playbackHeadPosition;
    }

    public void a() {
        this.H = true;
        a0 a0Var = this.f10798f;
        if (a0Var != null) {
            a0Var.b();
        }
    }

    public long c() {
        long jG0;
        long jMin;
        AudioTrack audioTrack = (AudioTrack) androidx.media3.common.util.a.e(this.f10795c);
        if (audioTrack.getPlayState() == 3) {
            m();
        }
        long jNanoTime = this.J.nanoTime() / 1000;
        a0 a0Var = (a0) androidx.media3.common.util.a.e(this.f10798f);
        boolean zE = a0Var.e();
        if (zE) {
            jMin = androidx.media3.common.util.a1.d1(a0Var.c(), this.f10799g) + androidx.media3.common.util.a1.g0(jNanoTime - a0Var.d(), this.f10802j);
        } else {
            if (this.f10816x == 0) {
                jG0 = this.f10817y != C.TIME_UNSET ? androidx.media3.common.util.a1.d1(f(), this.f10799g) : e();
            } else {
                jG0 = androidx.media3.common.util.a1.g0(this.f10804l + jNanoTime, this.f10802j);
            }
            long jMax = Math.max(0L, jG0 - this.f10807o);
            jMin = this.f10817y != C.TIME_UNSET ? Math.min(androidx.media3.common.util.a1.d1(this.B, this.f10799g), jMax) : jMax;
        }
        if (this.E != zE) {
            this.G = this.D;
            this.F = this.C;
        }
        long j10 = jNanoTime - this.G;
        if (j10 < 1000000) {
            long jG1 = this.F + androidx.media3.common.util.a1.g0(j10, this.f10802j);
            long j11 = (j10 * 1000) / 1000000;
            jMin = ((jMin * j11) + ((1000 - j11) * jG1)) / 1000;
        }
        if (!this.f10803k && jMin > this.C && audioTrack.getPlayState() == 3) {
            this.f10803k = true;
            this.f10793a.b(this.J.currentTimeMillis() - androidx.media3.common.util.a1.y1(androidx.media3.common.util.a1.l0(androidx.media3.common.util.a1.y1(jMin - this.C), this.f10802j)));
        }
        this.D = jNanoTime;
        this.C = jMin;
        this.E = zE;
        return jMin;
    }

    public void g(long j10) {
        this.A = d();
        this.f10817y = androidx.media3.common.util.a1.R0(this.J.elapsedRealtime());
        this.B = j10;
    }

    public boolean h(long j10) {
        return j10 > androidx.media3.common.util.a1.F(c(), this.f10799g) || b();
    }

    public boolean i() {
        return ((AudioTrack) androidx.media3.common.util.a.e(this.f10795c)).getPlayState() == 3;
    }

    public boolean j(long j10) {
        return this.f10818z != C.TIME_UNSET && j10 > 0 && this.J.elapsedRealtime() - this.f10818z >= 200;
    }

    public boolean k(long j10) {
        int playState = ((AudioTrack) androidx.media3.common.util.a.e(this.f10795c)).getPlayState();
        if (this.f10800h) {
            if (playState == 2) {
                this.f10808p = false;
                return false;
            }
            if (playState == 1 && d() == 0) {
                return false;
            }
        }
        boolean z10 = this.f10808p;
        boolean zH = h(j10);
        this.f10808p = zH;
        if (z10 && !zH && playState != 1) {
            this.f10793a.onUnderrun(this.f10797e, androidx.media3.common.util.a1.y1(this.f10801i));
        }
        return true;
    }

    public boolean p() {
        r();
        if (this.f10817y == C.TIME_UNSET) {
            ((a0) androidx.media3.common.util.a.e(this.f10798f)).h();
            return true;
        }
        this.A = d();
        return false;
    }

    public void q() {
        r();
        this.f10795c = null;
        this.f10798f = null;
    }

    public void s(AudioTrack audioTrack, boolean z10, int i10, int i11, int i12) {
        this.f10795c = audioTrack;
        this.f10796d = i11;
        this.f10797e = i12;
        this.f10798f = new a0(audioTrack);
        this.f10799g = audioTrack.getSampleRate();
        this.f10800h = z10 && o(i10);
        boolean zG0 = androidx.media3.common.util.a1.G0(i10);
        this.f10809q = zG0;
        this.f10801i = zG0 ? androidx.media3.common.util.a1.d1(i12 / i11, this.f10799g) : -9223372036854775807L;
        this.f10812t = 0L;
        this.f10813u = 0L;
        this.H = false;
        this.I = 0L;
        this.f10814v = 0L;
        this.f10808p = false;
        this.f10817y = C.TIME_UNSET;
        this.f10818z = C.TIME_UNSET;
        this.f10810r = 0L;
        this.f10807o = 0L;
        this.f10802j = 1.0f;
    }

    public void t(float f10) {
        this.f10802j = f10;
        a0 a0Var = this.f10798f;
        if (a0Var != null) {
            a0Var.h();
        }
        r();
    }

    public void u(androidx.media3.common.util.i iVar) {
        this.J = iVar;
    }

    public void v() {
        if (this.f10817y != C.TIME_UNSET) {
            this.f10817y = androidx.media3.common.util.a1.R0(this.J.elapsedRealtime());
        }
        ((a0) androidx.media3.common.util.a.e(this.f10798f)).h();
    }
}
