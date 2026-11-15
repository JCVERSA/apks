package defpackage;

import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzaz;
import java.math.RoundingMode;

public final class kle implements hle {
    public final f9e a;
    public final rae b;
    public final mle c;
    public final erj d;
    public final int e;
    public long f;
    public int g;
    public long h;

    public kle(f9e f9eVar, rae raeVar, mle mleVar, String str, int i) throws zzaz {
        this.a = f9eVar;
        this.b = raeVar;
        this.c = mleVar;
        int i2 = mleVar.b * mleVar.e;
        int i3 = mleVar.d;
        int i4 = i2 / 8;
        if (i3 != i4) {
            throw zzaz.zza("Expected block size: " + i4 + "; got: " + i3, null);
        }
        int i5 = mleVar.c * i4;
        int i6 = i5 * 8;
        int iMax = Math.max(i4, i5 / 10);
        this.e = iMax;
        gpj gpjVar = new gpj();
        gpjVar.e(MimeTypes.AUDIO_WAV);
        gpjVar.E(str);
        gpjVar.a(i6);
        gpjVar.y(i6);
        gpjVar.t(iMax);
        gpjVar.b(mleVar.b);
        gpjVar.F(mleVar.c);
        gpjVar.x(i);
        this.d = gpjVar.K();
    }

    @Override
    public final void a(long j) {
        this.f = j;
        this.g = 0;
        this.h = 0L;
    }

    @Override
    public final void b(int i, long j) {
        ple pleVar = new ple(this.c, 1, i, j);
        this.a.i(pleVar);
        rae raeVar = this.b;
        raeVar.f(this.d);
        raeVar.c(pleVar.zza());
    }

    @Override
    public final boolean c(d9e d9eVar, long j) {
        int i;
        int i2;
        long j2 = j;
        while (j2 > 0 && (i = this.g) < (i2 = this.e)) {
            int iA = this.b.a(d9eVar, (int) Math.min(i2 - i, j2), true);
            if (iA == -1) {
                j2 = 0;
            } else {
                this.g += iA;
                j2 -= (long) iA;
            }
        }
        mle mleVar = this.c;
        int i3 = this.g;
        int i4 = mleVar.d;
        int i5 = i3 / i4;
        if (i5 > 0) {
            long jP = this.f + kfh.P(this.h, 1000000L, mleVar.c, RoundingMode.DOWN);
            int i6 = i5 * i4;
            int i7 = this.g - i6;
            this.b.g(jP, 1, i6, i7, null);
            this.h += (long) i5;
            this.g = i7;
        }
        return j2 <= 0;
    }
}
