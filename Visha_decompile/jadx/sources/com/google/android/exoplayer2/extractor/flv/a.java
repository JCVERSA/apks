package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.k;
import defpackage.fva;
import defpackage.i2;
import defpackage.qw7;
import java.util.Collections;

public final class a extends TagPayloadReader {
    public static final int[] e = {5512, 11025, 22050, 44100};
    public boolean b;
    public boolean c;
    public int d;

    public a(fva fvaVar) {
        super(fvaVar);
    }

    @Override
    public boolean b(qw7 qw7Var) throws TagPayloadReader.UnsupportedFormatException {
        if (this.b) {
            qw7Var.P(1);
        } else {
            int iC = qw7Var.C();
            int i = (iC >> 4) & 15;
            this.d = i;
            if (i == 2) {
                this.a.b(new k.b().e0("audio/mpeg").H(1).f0(e[(iC >> 2) & 3]).E());
                this.c = true;
            } else if (i == 7 || i == 8) {
                this.a.b(new k.b().e0(i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw").H(1).f0(8000).E());
                this.c = true;
            } else if (i != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.d);
            }
            this.b = true;
        }
        return true;
    }

    @Override
    public boolean c(qw7 qw7Var, long j) {
        if (this.d == 2) {
            int iA = qw7Var.a();
            this.a.d(qw7Var, iA);
            this.a.e(j, 1, iA, 0, null);
            return true;
        }
        int iC = qw7Var.C();
        if (iC != 0 || this.c) {
            if (this.d == 10 && iC != 1) {
                return false;
            }
            int iA2 = qw7Var.a();
            this.a.d(qw7Var, iA2);
            this.a.e(j, 1, iA2, 0, null);
            return true;
        }
        int iA3 = qw7Var.a();
        byte[] bArr = new byte[iA3];
        qw7Var.j(bArr, 0, iA3);
        i2.b bVarE = i2.e(bArr);
        this.a.b(new k.b().e0("audio/mp4a-latm").I(bVarE.c).H(bVarE.b).f0(bVarE.a).T(Collections.singletonList(bArr)).E());
        this.c = true;
        return false;
    }
}
