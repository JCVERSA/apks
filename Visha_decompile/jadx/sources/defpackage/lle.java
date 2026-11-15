package defpackage;

import android.util.Pair;
import androidx.media3.muxer.MuxerUtil;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import java.util.List;

public final class lle implements c9e {
    public f9e a;
    public rae b;
    public hle e;
    public int c = 0;
    public long d = -1;
    public int f = -1;
    public long g = -1;

    @Override
    public final void b(long j, long j2) {
        this.c = j == 0 ? 0 : 4;
        hle hleVar = this.e;
        if (hleVar != null) {
            hleVar.a(j2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00f5  */
    @Override
    public final int d(d9e d9eVar, y9e y9eVar) throws zzaz {
        int i;
        n7g.b(this.b);
        int i2 = kfh.a;
        int i3 = this.c;
        int I = 4;
        if (i3 == 0) {
            n7g.f(d9eVar.zzf() == 0);
            int i4 = this.f;
            if (i4 != -1) {
                d9eVar.f(i4);
                this.c = 4;
            } else {
                if (!ole.c(d9eVar)) {
                    throw zzaz.zza("Unsupported or unrecognized wav file type.", null);
                }
                d9eVar.f((int) (d9eVar.zze() - d9eVar.zzf()));
                this.c = 1;
            }
            return 0;
        }
        long jL = -1;
        if (i3 == 1) {
            u4h u4hVar = new u4h(8);
            nle nleVarA = nle.a(d9eVar, u4hVar);
            if (nleVarA.a != 1685272116) {
                d9eVar.zzj();
            } else {
                d9eVar.zzg(8);
                u4hVar.l(0);
                d9eVar.i(u4hVar.n(), 0, 8);
                jL = u4hVar.L();
                d9eVar.f(((int) nleVarA.b) + 8);
            }
            this.d = jL;
            this.c = 2;
            return 0;
        }
        if (i3 == 2) {
            mle mleVarB = ole.b(d9eVar);
            int i5 = mleVarB.a;
            if (i5 == 17) {
                this.e = new gle(this.a, this.b, mleVarB);
            } else if (i5 == 6) {
                this.e = new kle(this.a, this.b, mleVarB, "audio/g711-alaw", -1);
            } else if (i5 == 7) {
                this.e = new kle(this.a, this.b, mleVarB, "audio/g711-mlaw", -1);
            } else {
                int i6 = mleVarB.e;
                if (i5 == 1) {
                    I = kfh.I(i6);
                    i = I;
                } else {
                    if (i5 != 3) {
                        if (i5 == 65534) {
                            I = kfh.I(i6);
                            i = I;
                        }
                    } else if (i6 == 32) {
                        i = I;
                    }
                    i = 0;
                }
                if (i == 0) {
                    throw zzaz.zzc("Unsupported WAV format type: " + i5);
                }
                this.e = new kle(this.a, this.b, mleVarB, "audio/raw", i);
            }
            this.c = 3;
            return 0;
        }
        if (i3 != 3) {
            n7g.f(this.g != -1);
            long jZzf = this.g - d9eVar.zzf();
            hle hleVar = this.e;
            hleVar.getClass();
            return hleVar.c(d9eVar, jZzf) ? -1 : 0;
        }
        Pair pairA = ole.a(d9eVar);
        this.f = ((Long) pairA.first).intValue();
        long jLongValue = ((Long) pairA.second).longValue();
        long j = this.d;
        if (j != -1 && jLongValue == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
            jLongValue = j;
        }
        long j2 = ((long) this.f) + jLongValue;
        this.g = j2;
        long jZzd = d9eVar.zzd();
        if (jZzd != -1 && j2 > jZzd) {
            zrg.f("WavExtractor", "Data exceeds input length: " + j2 + ", " + jZzd);
            this.g = jZzd;
            j2 = jZzd;
        }
        hle hleVar2 = this.e;
        hleVar2.getClass();
        hleVar2.b(this.f, j2);
        this.c = 4;
        return 0;
    }

    @Override
    public final boolean e(d9e d9eVar) {
        return ole.c(d9eVar);
    }

    @Override
    public final void f(f9e f9eVar) {
        this.a = f9eVar;
        this.b = f9eVar.j(0, 1);
        f9eVar.zzG();
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return zzfww.zzn();
    }
}
