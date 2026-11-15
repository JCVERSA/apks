package com.yandex.mobile.ads.impl;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.muxer.MuxerUtil;
import java.lang.reflect.Method;

final class zh {
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;
    private final a a;
    private final long[] b;

    @Nullable
    private AudioTrack c;
    private int d;
    private int e;

    @Nullable
    private yh f;
    private int g;
    private boolean h;
    private long i;
    private float j;
    private boolean k;
    private long l;
    private long m;

    @Nullable
    private Method n;
    private long o;
    private boolean p;
    private boolean q;
    private long r;
    private long s;
    private long t;
    private long u;
    private int v;
    private int w;
    private long x;
    private long y;
    private long z;

    public interface a {
        void a(int i, long j);

        void a(long j);

        void a(long j, long j2, long j3, long j4);

        void b(long j);

        void b(long j, long j2, long j3, long j4);
    }

    public zh(a aVar) {
        this.a = (a) hg.a(aVar);
        if (f92.a >= 18) {
            try {
                this.n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.b = new long[10];
    }

    private long a(long j) {
        return (j * 1000000) / ((long) this.g);
    }

    public final int b(long j) {
        return this.e - ((int) (j - (a() * ((long) this.d))));
    }

    public final void c(long j) {
        this.z = a();
        this.x = SystemClock.elapsedRealtime() * 1000;
        this.A = j;
    }

    public final boolean d(long j) {
        if (j <= a()) {
            if (this.h) {
                AudioTrack audioTrack = this.c;
                audioTrack.getClass();
                if (audioTrack.getPlayState() != 2 || a() != 0) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean e(long j) {
        return this.y != C.TIME_UNSET && j > 0 && SystemClock.elapsedRealtime() - this.y >= 200;
    }

    public final boolean f(long j) {
        AudioTrack audioTrack = this.c;
        audioTrack.getClass();
        int playState = audioTrack.getPlayState();
        if (this.h) {
            if (playState == 2) {
                this.p = false;
                return false;
            }
            if (playState == 1 && a() == 0) {
                return false;
            }
        }
        boolean z = this.p;
        boolean zD = d(j);
        this.p = zD;
        if (z && !zD && playState != 1) {
            this.a.a(this.e, f92.b(this.i));
        }
        return true;
    }

    public final long a(boolean z) {
        long jA;
        Method method;
        AudioTrack audioTrack = this.c;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 3) {
            long jA2 = a(a());
            if (jA2 != 0) {
                long jNanoTime = System.nanoTime() / 1000;
                if (jNanoTime - this.m >= 30000) {
                    long[] jArr = this.b;
                    int i = this.v;
                    jArr[i] = jA2 - jNanoTime;
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
                        this.l = (this.b[i3] / ((long) i4)) + this.l;
                        i3++;
                    }
                }
                if (!this.h) {
                    yh yhVar = this.f;
                    yhVar.getClass();
                    if (yhVar.a(jNanoTime)) {
                        long jC = yhVar.c();
                        long jB = yhVar.b();
                        if (Math.abs(jC - jNanoTime) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                            this.a.b(jB, jC, jNanoTime, jA2);
                            yhVar.e();
                        } else if (Math.abs(a(jB) - jA2) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                            this.a.a(jB, jC, jNanoTime, jA2);
                            yhVar.e();
                        } else {
                            yhVar.a();
                        }
                    }
                    if (this.q && (method = this.n) != null && jNanoTime - this.r >= 500000) {
                        try {
                            AudioTrack audioTrack2 = this.c;
                            audioTrack2.getClass();
                            Integer num = (Integer) method.invoke(audioTrack2, null);
                            int i5 = f92.a;
                            long jIntValue = (((long) num.intValue()) * 1000) - this.i;
                            this.o = jIntValue;
                            long jMax = Math.max(jIntValue, 0L);
                            this.o = jMax;
                            if (jMax > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                                this.a.b(jMax);
                                this.o = 0L;
                            }
                        } catch (Exception unused) {
                            this.n = null;
                        }
                        this.r = jNanoTime;
                    }
                }
            }
        }
        long jNanoTime2 = System.nanoTime() / 1000;
        yh yhVar2 = this.f;
        yhVar2.getClass();
        boolean zD = yhVar2.d();
        if (zD) {
            long jA3 = a(yhVar2.b());
            long jC2 = jNanoTime2 - yhVar2.c();
            float f = this.j;
            int i6 = f92.a;
            if (f != 1.0f) {
                jC2 = Math.round(jC2 * ((double) f));
            }
            jA = jC2 + jA3;
        } else {
            jA = this.w == 0 ? a(a()) : this.l + jNanoTime2;
            if (!z) {
                jA = Math.max(0L, jA - this.o);
            }
        }
        if (this.D != zD) {
            this.F = this.C;
            this.E = this.B;
        }
        long j = jNanoTime2 - this.F;
        if (j < 1000000) {
            long j2 = this.E;
            float f2 = this.j;
            int i7 = f92.a;
            long jRound = f2 == 1.0f ? j : Math.round(j * ((double) f2));
            long j3 = (j * 1000) / 1000000;
            jA = (((1000 - j3) * (jRound + j2)) + (jA * j3)) / 1000;
        }
        if (!this.k) {
            long j4 = this.B;
            if (jA > j4) {
                this.k = true;
                long jB2 = f92.b(jA - j4);
                float f3 = this.j;
                if (f3 != 1.0f) {
                    jB2 = Math.round(jB2 / ((double) f3));
                }
                this.a.a(System.currentTimeMillis() - f92.b(jB2));
            }
        }
        this.C = jNanoTime2;
        this.B = jA;
        this.D = zD;
        return jA;
    }

    public final boolean b() {
        AudioTrack audioTrack = this.c;
        audioTrack.getClass();
        return audioTrack.getPlayState() == 3;
    }

    public final void e() {
        yh yhVar = this.f;
        yhVar.getClass();
        yhVar.f();
    }

    public final boolean c() {
        this.l = 0L;
        this.w = 0;
        this.v = 0;
        this.m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.k = false;
        if (this.x != C.TIME_UNSET) {
            return false;
        }
        yh yhVar = this.f;
        yhVar.getClass();
        yhVar.f();
        return true;
    }

    public final void d() {
        this.l = 0L;
        this.w = 0;
        this.v = 0;
        this.m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.k = false;
        this.c = null;
        this.f = null;
    }

    private long a() {
        AudioTrack audioTrack = this.c;
        audioTrack.getClass();
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
        if (f92.a <= 29) {
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

    public final void a(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.c = audioTrack;
        this.d = i2;
        this.e = i3;
        this.f = new yh(audioTrack);
        this.g = audioTrack.getSampleRate();
        this.h = z && f92.a < 23 && (i == 5 || i == 6);
        boolean zE = f92.e(i);
        this.q = zE;
        this.i = zE ? a(i3 / i2) : -9223372036854775807L;
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

    public final void a(float f) {
        this.j = f;
        yh yhVar = this.f;
        if (yhVar != null) {
            yhVar.f();
        }
    }
}
