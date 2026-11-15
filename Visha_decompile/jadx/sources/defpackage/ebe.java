package defpackage;

import androidx.media3.extractor.avi.AviExtractor;

public final class ebe implements zae {
    public final int a;
    public final int b;
    public final int c;

    public ebe(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public static ebe a(u4h u4hVar) {
        int iC = u4hVar.C();
        u4hVar.m(8);
        int iC2 = u4hVar.C();
        int iC3 = u4hVar.C();
        u4hVar.m(4);
        int iC4 = u4hVar.C();
        u4hVar.m(12);
        return new ebe(iC, iC2, iC3, iC4);
    }

    @Override
    public final int zza() {
        return AviExtractor.FOURCC_avih;
    }
}
