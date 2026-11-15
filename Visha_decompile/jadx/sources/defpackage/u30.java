package defpackage;

import androidx.media3.extractor.avi.AviExtractor;

public final class u30 implements s30 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public u30(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public static u30 b(qw7 qw7Var) {
        int iP = qw7Var.p();
        qw7Var.P(8);
        int iP2 = qw7Var.p();
        int iP3 = qw7Var.p();
        qw7Var.P(4);
        int iP4 = qw7Var.p();
        qw7Var.P(12);
        return new u30(iP, iP2, iP3, iP4);
    }

    public boolean a() {
        return (this.b & 16) == 16;
    }

    @Override
    public int getType() {
        return AviExtractor.FOURCC_avih;
    }
}
