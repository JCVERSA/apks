package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k;
import defpackage.ay6;
import defpackage.fva;
import defpackage.qw7;
import defpackage.r30;

public final class b extends TagPayloadReader {
    public final qw7 b;
    public final qw7 c;
    public int d;
    public boolean e;
    public boolean f;
    public int g;

    public b(fva fvaVar) {
        super(fvaVar);
        this.b = new qw7(ay6.a);
        this.c = new qw7(4);
    }

    @Override
    public boolean b(qw7 qw7Var) throws TagPayloadReader.UnsupportedFormatException {
        int iC = qw7Var.C();
        int i = (iC >> 4) & 15;
        int i2 = iC & 15;
        if (i2 == 7) {
            this.g = i;
            return i != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i2);
    }

    @Override
    public boolean c(qw7 qw7Var, long j) throws ParserException {
        int iC = qw7Var.C();
        long jO = j + (((long) qw7Var.o()) * 1000);
        if (iC == 0 && !this.e) {
            qw7 qw7Var2 = new qw7(new byte[qw7Var.a()]);
            qw7Var.j(qw7Var2.d(), 0, qw7Var.a());
            r30 r30VarB = r30.b(qw7Var2);
            this.d = r30VarB.b;
            this.a.b(new k.b().e0("video/avc").I(r30VarB.f).j0(r30VarB.c).Q(r30VarB.d).a0(r30VarB.e).T(r30VarB.a).E());
            this.e = true;
            return false;
        }
        if (iC != 1 || !this.e) {
            return false;
        }
        int i = this.g == 1 ? 1 : 0;
        if (!this.f && i == 0) {
            return false;
        }
        byte[] bArrD = this.c.d();
        bArrD[0] = 0;
        bArrD[1] = 0;
        bArrD[2] = 0;
        int i2 = 4 - this.d;
        int i3 = 0;
        while (qw7Var.a() > 0) {
            qw7Var.j(this.c.d(), i2, this.d);
            this.c.O(0);
            int iG = this.c.G();
            this.b.O(0);
            this.a.d(this.b, 4);
            this.a.d(qw7Var, iG);
            i3 = i3 + 4 + iG;
        }
        this.a.e(jO, i, i3, 0, null);
        this.f = true;
        return true;
    }
}
