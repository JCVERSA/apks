package defpackage;

import com.google.android.exoplayer2.ParserException;
import java.util.Collections;
import java.util.List;

public final class ip4 {
    public final List a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;
    public final String f;

    public ip4(List list, int i, int i2, int i3, float f, String str) {
        this.a = list;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f;
        this.f = str;
    }

    public static ip4 a(qw7 qw7Var) throws ParserException {
        try {
            qw7Var.P(21);
            int iC = qw7Var.C() & 3;
            int iC2 = qw7Var.C();
            int iE = qw7Var.e();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < iC2; i3++) {
                qw7Var.P(1);
                int I = qw7Var.I();
                for (int i4 = 0; i4 < I; i4++) {
                    int I2 = qw7Var.I();
                    i2 += I2 + 4;
                    qw7Var.P(I2);
                }
            }
            qw7Var.O(iE);
            byte[] bArr = new byte[i2];
            int i5 = -1;
            int i6 = -1;
            float f = 1.0f;
            String strC = null;
            int i7 = 0;
            int i8 = 0;
            while (i7 < iC2) {
                int iC3 = qw7Var.C() & 127;
                int I3 = qw7Var.I();
                int i9 = i;
                while (i9 < I3) {
                    int I4 = qw7Var.I();
                    byte[] bArr2 = ay6.a;
                    int i10 = iC2;
                    System.arraycopy(bArr2, i, bArr, i8, bArr2.length);
                    int length = i8 + bArr2.length;
                    System.arraycopy(qw7Var.d(), qw7Var.e(), bArr, length, I4);
                    if (iC3 == 33 && i9 == 0) {
                        ay6.a aVarH = ay6.h(bArr, length, length + I4);
                        int i11 = aVarH.h;
                        i6 = aVarH.i;
                        f = aVarH.j;
                        i5 = i11;
                        strC = b51.c(aVarH.a, aVarH.b, aVarH.c, aVarH.d, aVarH.e, aVarH.f);
                    }
                    i8 = length + I4;
                    qw7Var.P(I4);
                    i9++;
                    iC2 = i10;
                    iC3 = iC3;
                    I3 = I3;
                    i = 0;
                }
                i7++;
                i = 0;
            }
            return new ip4(i2 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iC + 1, i5, i6, f, strC);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.createForMalformedContainer("Error parsing HEVC config", e);
        }
    }
}
