package defpackage;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.EOFException;
import java.io.IOException;

public final class bge implements hge {
    public final gge a;
    public final long b;
    public final long c;
    public final mge d;
    public int e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;

    public bge(mge mgeVar, long j, long j2, long j3, long j4, boolean z) {
        n7g.d(j >= 0 && j2 > j);
        this.d = mgeVar;
        this.b = j;
        this.c = j2;
        if (j3 == j2 - j || z) {
            this.f = j4;
            this.e = 4;
        } else {
            this.e = 0;
        }
        this.a = new gge();
    }

    @Override
    public final void a(long j) {
        long j2 = this.f - 1;
        int i = kfh.a;
        this.h = Math.max(0L, Math.min(j, j2));
        this.e = 2;
        this.i = this.b;
        this.j = this.c;
        this.k = 0L;
        this.l = this.f;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e  */
    @Override
    public final long b(d9e d9eVar) throws IOException {
        long jMax;
        int i = this.e;
        if (i == 0) {
            long jZzf = d9eVar.zzf();
            this.g = jZzf;
            this.e = 1;
            long j = this.c - 65307;
            if (j > jZzf) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long j2 = this.i;
                long j3 = this.j;
                if (j2 == j3) {
                    jMax = -1;
                } else {
                    long jZzf2 = d9eVar.zzf();
                    gge ggeVar = this.a;
                    if (ggeVar.c(d9eVar, j3)) {
                        ggeVar.b(d9eVar, false);
                        d9eVar.zzj();
                        long j4 = this.h;
                        long j5 = ggeVar.b;
                        long j6 = j4 - j5;
                        int i2 = ggeVar.d + ggeVar.e;
                        if (j6 < 0 || j6 >= 72000) {
                            if (j6 < 0) {
                                this.j = jZzf2;
                                this.l = j5;
                            } else {
                                this.i = ((long) i2) + d9eVar.zzf();
                                this.k = j5;
                            }
                            long j7 = this.j;
                            long j8 = this.i;
                            long j9 = j7 - j8;
                            if (j9 < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
                                this.j = j8;
                                jMax = j8;
                            } else {
                                long j10 = i2;
                                long j11 = j6 <= 0 ? 2L : 1L;
                                int i3 = kfh.a;
                                jMax = Math.max(j8, Math.min((d9eVar.zzf() - (j10 * j11)) + ((j6 * j9) / (this.l - this.k)), j7 - 1));
                            }
                        } else {
                            jMax = -1;
                        }
                    } else {
                        jMax = this.i;
                        if (jMax == jZzf2) {
                            throw new IOException("No ogg page can be found.");
                        }
                    }
                }
                if (jMax != -1) {
                    return jMax;
                }
                this.e = 3;
            } else if (i != 3) {
                return -1L;
            }
            while (true) {
                gge ggeVar2 = this.a;
                ggeVar2.c(d9eVar, -1L);
                ggeVar2.b(d9eVar, false);
                if (ggeVar2.b > this.h) {
                    d9eVar.zzj();
                    this.e = 4;
                    return -(this.k + 2);
                }
                d9eVar.f(ggeVar2.d + ggeVar2.e);
                this.i = d9eVar.zzf();
                this.k = ggeVar2.b;
            }
        }
        gge ggeVar3 = this.a;
        ggeVar3.a();
        if (!ggeVar3.c(d9eVar, -1L)) {
            throw new EOFException();
        }
        ggeVar3.b(d9eVar, false);
        d9eVar.f(ggeVar3.d + ggeVar3.e);
        long j12 = ggeVar3.b;
        while ((ggeVar3.a & 4) != 4 && ggeVar3.c(d9eVar, -1L) && d9eVar.zzf() < this.c && ggeVar3.b(d9eVar, true) && g9e.e(d9eVar, ggeVar3.d + ggeVar3.e)) {
            j12 = ggeVar3.b;
        }
        this.f = j12;
        this.e = 4;
        return this.g;
    }

    @Override
    public final kae zze() {
        age ageVar = null;
        if (this.f != 0) {
            return new zfe(this, ageVar);
        }
        return null;
    }
}
