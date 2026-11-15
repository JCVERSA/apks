package defpackage;

import androidx.media3.extractor.avi.AviExtractor;
import java.math.RoundingMode;

public final class fbe implements zae {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;

    public fbe(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.a = i;
        this.b = i3;
        this.c = i4;
        this.d = i5;
        this.e = i6;
        this.f = i7;
    }

    public static fbe c(u4h u4hVar) {
        int iC = u4hVar.C();
        u4hVar.m(12);
        int iC2 = u4hVar.C();
        int iC3 = u4hVar.C();
        int iC4 = u4hVar.C();
        u4hVar.m(4);
        int iC5 = u4hVar.C();
        int iC6 = u4hVar.C();
        u4hVar.m(4);
        return new fbe(iC, iC2, iC3, iC4, iC5, iC6, u4hVar.C());
    }

    public final int a() {
        int i = this.a;
        if (i == 1935960438) {
            return 2;
        }
        if (i == 1935963489) {
            return 1;
        }
        if (i == 1937012852) {
            return 3;
        }
        zrg.f("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(Integer.toHexString(i))));
        return -1;
    }

    public final long b() {
        long j = this.b;
        return kfh.P(this.d, j * 1000000, this.c, RoundingMode.DOWN);
    }

    @Override
    public final int zza() {
        return AviExtractor.FOURCC_strh;
    }
}
