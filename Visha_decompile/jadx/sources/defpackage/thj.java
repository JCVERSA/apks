package defpackage;

import android.media.AudioTrack;
import androidx.media3.common.C;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.muxer.MuxerUtil;
import java.lang.reflect.Method;

public final class thj {
    public long A;
    public boolean B;
    public long C;
    public long D;
    public boolean E;
    public long F;
    public tbg G;
    public final shj a;
    public final long[] b;
    public AudioTrack c;
    public int d;
    public rhj e;
    public int f;
    public long g;
    public float h;
    public boolean i;
    public long j;
    public long k;
    public Method l;
    public long m;
    public boolean n;
    public boolean o;
    public long p;
    public long q;
    public long r;
    public long s;
    public int t;
    public int u;
    public long v;
    public long w;
    public long x;
    public long y;
    public long z;

    public thj(shj shjVar) {
        this.a = shjVar;
        try {
            this.l = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.b = new long[10];
        this.G = tbg.a;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0070  */
    /* JADX WARN: Code duplicated, block: B:21:0x0086  */
    /* JADX WARN: Code duplicated, block: B:22:0x0091  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:25:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c7 A[Catch: Exception -> 0x00ef, TryCatch #0 {Exception -> 0x00ef, blocks: (B:33:0x00c3, B:35:0x00c7, B:37:0x00e6, B:38:0x00ee), top: B:71:0x00c3 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00e6 A[Catch: Exception -> 0x00ef, TryCatch #0 {Exception -> 0x00ef, blocks: (B:33:0x00c3, B:35:0x00c7, B:37:0x00e6, B:38:0x00ee), top: B:71:0x00c3 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ee A[Catch: Exception -> 0x00ef, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ef, blocks: (B:33:0x00c3, B:35:0x00c7, B:37:0x00e6, B:38:0x00ee), top: B:71:0x00c3 }] */
    public final long a() {
        long jL;
        long jMin;
        rhj rhjVar;
        Method method;
        AudioTrack audioTrack;
        long jMax;
        long jB;
        long jA;
        long jM;
        AudioTrack audioTrack2 = this.c;
        audioTrack2.getClass();
        if (audioTrack2.getPlayState() == 3) {
            long jZzc = this.G.zzc() / 1000;
            if (jZzc - this.k >= 30000) {
                long jM2 = m();
                if (jM2 != 0) {
                    long[] jArr = this.b;
                    jArr[this.t] = kfh.M(jM2, this.h) - jZzc;
                    this.t = (this.t + 1) % 10;
                    int i = this.u;
                    if (i < 10) {
                        this.u = i + 1;
                    }
                    this.k = jZzc;
                    this.j = 0L;
                    int i2 = 0;
                    while (true) {
                        int i3 = this.u;
                        if (i2 >= i3) {
                            break;
                        }
                        this.j += jArr[i2] / ((long) i3);
                        i2++;
                    }
                    rhjVar = this.e;
                    rhjVar.getClass();
                    if (rhjVar.g(jZzc)) {
                        jB = rhjVar.b();
                        jA = rhjVar.a();
                        jM = m();
                        if (Math.abs(jB - jZzc) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                            this.a.e(jA, jB, jZzc, jM);
                            rhjVar.d();
                        } else if (Math.abs(kfh.O(jA, this.f) - jM) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                            this.a.d(jA, jB, jZzc, jM);
                            rhjVar.d();
                        } else {
                            rhjVar.c();
                        }
                    }
                    if (this.o && (method = this.l) != null && jZzc - this.p >= 500000) {
                        try {
                            audioTrack = this.c;
                            if (audioTrack != null) {
                                throw null;
                            }
                            Integer num = (Integer) method.invoke(audioTrack, null);
                            int i4 = kfh.a;
                            long jIntValue = (((long) num.intValue()) * 1000) - this.g;
                            this.m = jIntValue;
                            jMax = Math.max(jIntValue, 0L);
                            this.m = jMax;
                            if (jMax > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                                this.a.b(jMax);
                                this.m = 0L;
                            }
                            this.p = jZzc;
                        } catch (Exception unused) {
                            this.l = null;
                        }
                    }
                }
            } else {
                rhjVar = this.e;
                rhjVar.getClass();
                if (rhjVar.g(jZzc)) {
                    jB = rhjVar.b();
                    jA = rhjVar.a();
                    jM = m();
                    if (Math.abs(jB - jZzc) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                        this.a.e(jA, jB, jZzc, jM);
                        rhjVar.d();
                    } else if (Math.abs(kfh.O(jA, this.f) - jM) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                        this.a.d(jA, jB, jZzc, jM);
                        rhjVar.d();
                    } else {
                        rhjVar.c();
                    }
                }
                if (this.o) {
                    audioTrack = this.c;
                    if (audioTrack != null) {
                        throw null;
                    }
                    Integer num2 = (Integer) method.invoke(audioTrack, null);
                    int i5 = kfh.a;
                    long jIntValue2 = (((long) num2.intValue()) * 1000) - this.g;
                    this.m = jIntValue2;
                    jMax = Math.max(jIntValue2, 0L);
                    this.m = jMax;
                    if (jMax > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                        this.a.b(jMax);
                        this.m = 0L;
                    }
                    this.p = jZzc;
                }
            }
        }
        long jZzc2 = this.G.zzc() / 1000;
        rhj rhjVar2 = this.e;
        rhjVar2.getClass();
        boolean zF = rhjVar2.f();
        if (zF) {
            jMin = kfh.O(rhjVar2.a(), this.f) + kfh.L(jZzc2 - rhjVar2.b(), this.h);
        } else {
            if (this.u == 0) {
                jL = this.v != C.TIME_UNSET ? kfh.O(n(), this.f) : m();
            } else {
                jL = kfh.L(this.j + jZzc2, this.h);
            }
            long jMax2 = Math.max(0L, jL - this.m);
            jMin = this.v != C.TIME_UNSET ? Math.min(kfh.O(this.y, this.f), jMax2) : jMax2;
        }
        if (this.B != zF) {
            this.D = this.A;
            this.C = this.z;
        }
        long j = jZzc2 - this.D;
        if (j < 1000000) {
            long jL2 = this.C + kfh.L(j, this.h);
            long j2 = (j * 1000) / 1000000;
            jMin = ((jMin * j2) + ((1000 - j2) * jL2)) / 1000;
        }
        if (!this.i && jMin > this.z && audioTrack2.getPlayState() == 3) {
            this.i = true;
            long j3 = jMin - this.z;
            int i6 = kfh.a;
            this.a.a(this.G.zza() - kfh.Q(kfh.M(kfh.Q(j3), this.h)));
        }
        this.A = jZzc2;
        this.z = jMin;
        this.B = zF;
        return jMin;
    }

    public final void b(long j) {
        this.x = l();
        this.v = kfh.N(this.G.zzb());
        this.y = j;
    }

    public final void c() {
        o();
        this.c = null;
        this.e = null;
    }

    public final void d(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.c = audioTrack;
        this.d = i3;
        this.e = new rhj(audioTrack);
        this.f = audioTrack.getSampleRate();
        if (z) {
            int i4 = kfh.a;
        }
        boolean zK = kfh.k(i);
        this.o = zK;
        this.g = zK ? kfh.O(i3 / i2, this.f) : -9223372036854775807L;
        this.r = 0L;
        this.s = 0L;
        this.E = false;
        this.F = 0L;
        this.n = false;
        this.v = C.TIME_UNSET;
        this.w = C.TIME_UNSET;
        this.p = 0L;
        this.m = 0L;
        this.h = 1.0f;
    }

    public final void e(tbg tbgVar) {
        this.G = tbgVar;
    }

    public final void f() {
        if (this.v != C.TIME_UNSET) {
            this.v = kfh.N(this.G.zzb());
        }
        rhj rhjVar = this.e;
        rhjVar.getClass();
        rhjVar.e();
    }

    public final boolean g(long j) {
        return j > kfh.K(a(), this.f);
    }

    public final boolean h() {
        AudioTrack audioTrack = this.c;
        audioTrack.getClass();
        return audioTrack.getPlayState() == 3;
    }

    public final boolean i(long j) {
        return this.w != C.TIME_UNSET && j > 0 && this.G.zzb() - this.w >= 200;
    }

    public final boolean j(long j) {
        AudioTrack audioTrack = this.c;
        audioTrack.getClass();
        int playState = audioTrack.getPlayState();
        boolean z = this.n;
        boolean zG = g(j);
        this.n = zG;
        if (z && !zG && playState != 1) {
            this.a.c(this.d, kfh.Q(this.g));
        }
        return true;
    }

    public final boolean k() {
        o();
        if (this.v != C.TIME_UNSET) {
            this.x = l();
            return false;
        }
        rhj rhjVar = this.e;
        rhjVar.getClass();
        rhjVar.e();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0065  */
    public final long l() {
        if (this.v != C.TIME_UNSET) {
            return Math.min(this.y, n());
        }
        long jZzb = this.G.zzb();
        if (jZzb - this.q >= 5) {
            AudioTrack audioTrack = this.c;
            audioTrack.getClass();
            int playState = audioTrack.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack.getPlaybackHeadPosition();
                int i = kfh.a;
                long j = playbackHeadPosition & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                if (i > 29) {
                    if (this.r > j) {
                        this.s++;
                    }
                    this.r = j;
                } else {
                    if (j == 0) {
                        if (this.r <= 0 || playState != 3) {
                            j = 0;
                        } else if (this.w == C.TIME_UNSET) {
                            this.w = jZzb;
                        }
                    }
                    this.w = C.TIME_UNSET;
                    if (this.r > j) {
                        this.s++;
                    }
                    this.r = j;
                }
            }
            this.q = jZzb;
        }
        return this.r + this.F + (this.s << 32);
    }

    public final long m() {
        return kfh.O(l(), this.f);
    }

    public final long n() {
        AudioTrack audioTrack = this.c;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 2) {
            return this.x;
        }
        return this.x + kfh.K(kfh.L(kfh.N(this.G.zzb()) - this.v, this.h), this.f);
    }

    public final void o() {
        this.j = 0L;
        this.u = 0;
        this.t = 0;
        this.k = 0L;
        this.A = 0L;
        this.D = 0L;
        this.i = false;
    }
}
