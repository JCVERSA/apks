package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import java.util.Collections;
import java.util.List;

public final class f {

    public final List f26979a;

    public final int f26980b;

    public final int f26981c;

    public final int f26982d;

    public final float f26983e;

    public final String f26984f;

    private f(List list, int i10, int i11, int i12, float f10, String str) {
        this.f26979a = list;
        this.f26980b = i10;
        this.f26981c = i11;
        this.f26982d = i12;
        this.f26983e = f10;
        this.f26984f = str;
    }

    public static f a(d0 d0Var) throws ParserException {
        try {
            d0Var.Q(21);
            int iD = d0Var.D() & 3;
            int iD2 = d0Var.D();
            int iE = d0Var.e();
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < iD2; i12++) {
                d0Var.Q(1);
                int iJ = d0Var.J();
                for (int i13 = 0; i13 < iJ; i13++) {
                    int iJ2 = d0Var.J();
                    i11 += iJ2 + 4;
                    d0Var.Q(iJ2);
                }
            }
            d0Var.P(iE);
            byte[] bArr = new byte[i11];
            int i14 = -1;
            int i15 = -1;
            float f10 = 1.0f;
            String strC = null;
            int i16 = 0;
            int i17 = 0;
            while (i16 < iD2) {
                int iD3 = d0Var.D() & 127;
                int iJ3 = d0Var.J();
                int i18 = i10;
                while (i18 < iJ3) {
                    int iJ4 = d0Var.J();
                    byte[] bArr2 = com.google.android.exoplayer2.util.x.f26892a;
                    int i19 = iD2;
                    System.arraycopy(bArr2, i10, bArr, i17, bArr2.length);
                    int length = i17 + bArr2.length;
                    System.arraycopy(d0Var.d(), d0Var.e(), bArr, length, iJ4);
                    if (iD3 == 33 && i18 == 0) {
                        com.google.android.exoplayer2.util.x.a aVarH = com.google.android.exoplayer2.util.x.h(bArr, length, length + iJ4);
                        int i20 = aVarH.f26903h;
                        i15 = aVarH.f26904i;
                        f10 = aVarH.f26905j;
                        i14 = i20;
                        strC = com.google.android.exoplayer2.util.f.c(aVarH.f26896a, aVarH.f26897b, aVarH.f26898c, aVarH.f26899d, aVarH.f26900e, aVarH.f26901f);
                    }
                    i17 = length + iJ4;
                    d0Var.Q(iJ4);
                    i18++;
                    iD2 = i19;
                    iD3 = iD3;
                    iJ3 = iJ3;
                    i10 = 0;
                }
                i16++;
                i10 = 0;
            }
            return new f(i11 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iD + 1, i14, i15, f10, strC);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw ParserException.createForMalformedContainer("Error parsing HEVC config", e10);
        }
    }
}
