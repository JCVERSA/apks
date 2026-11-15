package defpackage;

import androidx.media3.extractor.avi.AviExtractor;

public final class v30 implements s30 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;

    public v30(int i, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    public static v30 c(qw7 qw7Var) {
        int iP = qw7Var.p();
        qw7Var.P(12);
        int iP2 = qw7Var.p();
        int iP3 = qw7Var.p();
        int iP4 = qw7Var.p();
        qw7Var.P(4);
        int iP5 = qw7Var.p();
        int iP6 = qw7Var.p();
        qw7Var.P(8);
        return new v30(iP, iP2, iP3, iP4, iP5, iP6);
    }

    public long a() {
        return blb.B0(this.e, ((long) this.c) * 1000000, this.d);
    }

    public int b() {
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
        op5.i("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(this.a));
        return -1;
    }

    @Override
    public int getType() {
        return AviExtractor.FOURCC_strh;
    }
}
