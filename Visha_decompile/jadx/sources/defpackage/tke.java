package defpackage;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;

public final class tke implements h8e {
    public final fch a;
    public final u4h b = new u4h();
    public final int c;

    public tke(int i, fch fchVar, int i2) {
        this.c = i;
        this.a = fchVar;
    }

    @Override
    public final g8e a(d9e d9eVar, long j) {
        int iA;
        int iA2;
        long jZzf = d9eVar.zzf();
        int iMin = (int) Math.min(112800L, d9eVar.zzd() - jZzf);
        u4h u4hVar = this.b;
        u4hVar.i(iMin);
        d9eVar.i(u4hVar.n(), 0, iMin);
        int iX = u4hVar.x();
        long j2 = -1;
        long j3 = -9223372036854775807L;
        long j4 = -1;
        while (u4hVar.u() >= 188 && (iA2 = (iA = ele.a(u4hVar.n(), u4hVar.w(), iX)) + 188) <= iX) {
            long jB = ele.b(u4hVar, iA, this.c);
            if (jB != C.TIME_UNSET) {
                long jB2 = this.a.b(jB);
                if (jB2 <= j) {
                    j4 = iA;
                    if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + jB2 <= j) {
                        j3 = jB2;
                    }
                } else if (j3 == C.TIME_UNSET) {
                    return g8e.d(jB2, jZzf);
                }
                return g8e.e(jZzf + j4);
            }
            u4hVar.l(iA2);
            j2 = iA2;
        }
        return j3 != C.TIME_UNSET ? g8e.f(j3, jZzf + j2) : g8e.d;
    }

    @Override
    public final void zzb() {
        byte[] bArr = kfh.c;
        int length = bArr.length;
        this.b.j(bArr, 0);
    }
}
