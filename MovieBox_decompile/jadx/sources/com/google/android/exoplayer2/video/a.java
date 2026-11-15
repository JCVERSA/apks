package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import java.util.ArrayList;
import java.util.List;

public final class a {

    public final List f26950a;

    public final int f26951b;

    public final int f26952c;

    public final int f26953d;

    public final float f26954e;

    public final String f26955f;

    private a(List list, int i10, int i11, int i12, float f10, String str) {
        this.f26950a = list;
        this.f26951b = i10;
        this.f26952c = i11;
        this.f26953d = i12;
        this.f26954e = f10;
        this.f26955f = str;
    }

    private static byte[] a(d0 d0Var) {
        int iJ = d0Var.J();
        int iE = d0Var.e();
        d0Var.Q(iJ);
        return com.google.android.exoplayer2.util.f.d(d0Var.d(), iE, iJ);
    }

    public static a b(d0 d0Var) throws ParserException {
        int i10;
        int i11;
        float f10;
        String strA;
        try {
            d0Var.Q(4);
            int iD = (d0Var.D() & 3) + 1;
            if (iD == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iD2 = d0Var.D() & 31;
            for (int i12 = 0; i12 < iD2; i12++) {
                arrayList.add(a(d0Var));
            }
            int iD3 = d0Var.D();
            for (int i13 = 0; i13 < iD3; i13++) {
                arrayList.add(a(d0Var));
            }
            if (iD2 > 0) {
                com.google.android.exoplayer2.util.x.c cVarL = com.google.android.exoplayer2.util.x.l((byte[]) arrayList.get(0), iD, ((byte[]) arrayList.get(0)).length);
                int i14 = cVarL.f26914f;
                int i15 = cVarL.f26915g;
                float f11 = cVarL.f26916h;
                strA = com.google.android.exoplayer2.util.f.a(cVarL.f26909a, cVarL.f26910b, cVarL.f26911c);
                i10 = i14;
                i11 = i15;
                f10 = f11;
            } else {
                i10 = -1;
                i11 = -1;
                f10 = 1.0f;
                strA = null;
            }
            return new a(arrayList, iD, i10, i11, f10, strA);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw ParserException.createForMalformedContainer("Error parsing AVC config", e10);
        }
    }
}
