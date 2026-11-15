package defpackage;

import com.google.android.exoplayer2.ParserException;
import java.util.ArrayList;
import java.util.List;

public final class r30 {
    public final List a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;
    public final String f;

    public r30(List list, int i, int i2, int i3, float f, String str) {
        this.a = list;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f;
        this.f = str;
    }

    public static byte[] a(qw7 qw7Var) {
        int I = qw7Var.I();
        int iE = qw7Var.e();
        qw7Var.P(I);
        return b51.d(qw7Var.d(), iE, I);
    }

    public static r30 b(qw7 qw7Var) throws ParserException {
        int i;
        int i2;
        float f;
        String strA;
        try {
            qw7Var.P(4);
            int iC = (qw7Var.C() & 3) + 1;
            if (iC == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iC2 = qw7Var.C() & 31;
            for (int i3 = 0; i3 < iC2; i3++) {
                arrayList.add(a(qw7Var));
            }
            int iC3 = qw7Var.C();
            for (int i4 = 0; i4 < iC3; i4++) {
                arrayList.add(a(qw7Var));
            }
            if (iC2 > 0) {
                ay6.c cVarL = ay6.l((byte[]) arrayList.get(0), iC, ((byte[]) arrayList.get(0)).length);
                int i5 = cVarL.f;
                int i6 = cVarL.g;
                float f2 = cVarL.h;
                strA = b51.a(cVarL.a, cVarL.b, cVarL.c);
                i = i5;
                i2 = i6;
                f = f2;
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
                strA = null;
            }
            return new r30(arrayList, iC, i, i2, f, strA);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.createForMalformedContainer("Error parsing AVC config", e);
        }
    }
}
