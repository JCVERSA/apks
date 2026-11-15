package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.muxer.MuxerUtil;
import defpackage.blb;
import defpackage.o10;
import defpackage.zi;
import java.lang.reflect.Method;

public final class c {
    public long A;
    public long B;
    public long C;
    public boolean D;
    public long E;
    public long F;
    public final a a;
    public final long[] b;
    public AudioTrack c;
    public int d;
    public int e;
    public o10 f;
    public int g;
    public boolean h;
    public long i;
    public float j;
    public boolean k;
    public long l;
    public long m;
    public Method n;
    public long o;
    public boolean p;
    public boolean q;
    public long r;
    public long s;
    public long t;
    public long u;
    public int v;
    public int w;
    public long x;
    public long y;
    public long z;

    public interface a {
        void onInvalidLatency(long j);

        void onPositionAdvancing(long j);

        void onPositionFramesMismatch(long j, long j2, long j3, long j4);

        void onSystemTimeUsMismatch(long j, long j2, long j3, long j4);

        void onUnderrun(int i, long j);
    }

    public c(a aVar) {
        this.a = (a) zi.e(aVar);
        if (blb.a >= 18) {
            try {
                this.n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.b = new long[10];
    }

    public static boolean o(int i) {
        return blb.a < 23 && (i == 5 || i == 6);
    }

    public final boolean a() {
        return this.h && ((AudioTrack) zi.e(this.c)).getPlayState() == 2 && e() == 0;
    }

    public final long b(long j) {
        return (j * 1000000) / ((long) this.g);
    }

    public int c(long j) {
        return this.e - ((int) (j - (e() * ((long) this.d))));
    }

    public long d(boolean z) {
        long jF;
        if (((AudioTrack) zi.e(this.c)).getPlayState() == 3) {
            m();
        }
        long jNanoTime = System.nanoTime() / 1000;
        o10 o10Var = (o10) zi.e(this.f);
        boolean zD = o10Var.d();
        if (zD) {
            jF = b(o10Var.b()) + blb.T(jNanoTime - o10Var.c(), this.j);
        } else {
            jF = this.w == 0 ? f() : this.l + jNanoTime;
            if (!z) {
                jF = Math.max(0L, jF - this.o);
            }
        }
        if (this.D != zD) {
            this.F = this.C;
            this.E = this.B;
        }
        long j = jNanoTime - this.F;
        if (j < 1000000) {
            long jT = this.E + blb.T(j, this.j);
            long j2 = (j * 1000) / 1000000;
            jF = ((jF * j2) + ((1000 - j2) * jT)) / 1000;
        }
        if (!this.k) {
            long j3 = this.B;
            if (jF > j3) {
                this.k = true;
                this.a.onPositionAdvancing(System.currentTimeMillis() - blb.P0(blb.Y(blb.P0(jF - j3), this.j)));
            }
        }
        this.C = jNanoTime;
        this.B = jF;
        this.D = zD;
        return jF;
    }

    public final long e() {
        AudioTrack audioTrack = (AudioTrack) zi.e(this.c);
        if (this.x != C.TIME_UNSET) {
            return Math.min(this.A, this.z + ((((SystemClock.elapsedRealtime() * 1000) - this.x) * ((long) this.g)) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        if (this.h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.u = this.s;
            }
            playbackHeadPosition += this.u;
        }
        if (blb.a <= 29) {
            if (playbackHeadPosition == 0 && this.s > 0 && playState == 3) {
                if (this.y == C.TIME_UNSET) {
                    this.y = SystemClock.elapsedRealtime();
                }
                return this.s;
            }
            this.y = C.TIME_UNSET;
        }
        if (this.s > playbackHeadPosition) {
            this.t++;
        }
        this.s = playbackHeadPosition;
        return playbackHeadPosition + (this.t << 32);
    }

    public final long f() {
        return b(e());
    }

    public void g(long j) {
        this.z = e();
        this.x = SystemClock.elapsedRealtime() * 1000;
        this.A = j;
    }

    public boolean h(long j) {
        return j > e() || a();
    }

    public boolean i() {
        return ((AudioTrack) zi.e(this.c)).getPlayState() == 3;
    }

    public boolean j(long j) {
        return this.y != C.TIME_UNSET && j > 0 && SystemClock.elapsedRealtime() - this.y >= 200;
    }

    public boolean k(long j) {
        int playState = ((AudioTrack) zi.e(this.c)).getPlayState();
        if (this.h) {
            if (playState == 2) {
                this.p = false;
                return false;
            }
            if (playState == 1 && e() == 0) {
                return false;
            }
        }
        boolean z = this.p;
        boolean zH = h(j);
        this.p = zH;
        if (z && !zH && playState != 1) {
            this.a.onUnderrun(this.e, blb.P0(this.i));
        }
        return true;
    }

    public final void l(long j, long j2) {
        o10 o10Var = (o10) zi.e(this.f);
        if (o10Var.e(j)) {
            long jC = o10Var.c();
            long jB = o10Var.b();
            if (Math.abs(jC - j) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                this.a.onSystemTimeUsMismatch(jB, jC, j, j2);
                o10Var.f();
            } else if (Math.abs(b(jB) - j2) <= DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                o10Var.a();
            } else {
                this.a.onPositionFramesMismatch(jB, jC, j, j2);
                o10Var.f();
            }
        }
    }

    public final void m() {
        long jF = f();
        if (jF == 0) {
            return;
        }
        long jNanoTime = System.nanoTime() / 1000;
        if (jNanoTime - this.m >= 30000) {
            long[] jArr = this.b;
            int i = this.v;
            jArr[i] = jF - jNanoTime;
            this.v = (i + 1) % 10;
            int i2 = this.w;
            if (i2 < 10) {
                this.w = i2 + 1;
            }
            this.m = jNanoTime;
            this.l = 0L;
            int i3 = 0;
            while (true) {
                int i4 = this.w;
                if (i3 >= i4) {
                    break;
                }
                this.l += this.b[i3] / ((long) i4);
                i3++;
            }
        }
        if (this.h) {
            return;
        }
        l(jNanoTime, jF);
        n(jNanoTime);
    }

    public final void n(long j) {
        Method method;
        if (!this.q || (method = this.n) == null || j - this.r < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) blb.j((Integer) method.invoke(zi.e(this.c), null))).intValue()) * 1000) - this.i;
            this.o = jIntValue;
            long jMax = Math.max(jIntValue, 0L);
            this.o = jMax;
            if (jMax > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                this.a.onInvalidLatency(jMax);
                this.o = 0L;
            }
        } catch (Exception unused) {
            this.n = null;
        }
        this.r = j;
    }

    public boolean p() {
        r();
        if (this.x != C.TIME_UNSET) {
            return false;
        }
        ((o10) zi.e(this.f)).g();
        return true;
    }

    public void q() {
        r();
        this.c = null;
        this.f = null;
    }

    public final void r() {
        this.l = 0L;
        this.w = 0;
        this.v = 0;
        this.m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.k = false;
    }

    public void s(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.c = audioTrack;
        this.d = i2;
        this.e = i3;
        this.f = new o10(audioTrack);
        this.g = audioTrack.getSampleRate();
        this.h = z && o(i);
        boolean zM0 = blb.m0(i);
        this.q = zM0;
        this.i = zM0 ? b(i3 / i2) : -9223372036854775807L;
        this.s = 0L;
        this.t = 0L;
        this.u = 0L;
        this.p = false;
        this.x = C.TIME_UNSET;
        this.y = C.TIME_UNSET;
        this.r = 0L;
        this.o = 0L;
        this.j = 1.0f;
    }

    public void t(float f) {
        this.j = f;
        o10 o10Var = this.f;
        if (o10Var != null) {
            o10Var.g();
        }
    }

    public void u() {
        ((o10) zi.e(this.f)).g();
    }
}
