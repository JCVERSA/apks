package k2;

import androidx.media3.common.ParserException;
import java.util.ArrayList;
import java.util.List;

public final class d {

    public final List f63535a;

    public final int f63536b;

    public final int f63537c;

    public final int f63538d;

    public final int f63539e;

    public final int f63540f;

    public final int f63541g;

    public final int f63542h;

    public final int f63543i;

    public final int f63544j;

    public final float f63545k;

    public final String f63546l;

    private d(List list, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, float f10, String str) {
        this.f63535a = list;
        this.f63536b = i10;
        this.f63537c = i11;
        this.f63538d = i12;
        this.f63539e = i13;
        this.f63540f = i14;
        this.f63541g = i15;
        this.f63542h = i16;
        this.f63543i = i17;
        this.f63544j = i18;
        this.f63545k = f10;
        this.f63546l = str;
    }

    private static byte[] a(androidx.media3.common.util.j0 j0Var) {
        int iP = j0Var.P();
        int iF = j0Var.f();
        j0Var.X(iP);
        return androidx.media3.common.util.j.g(j0Var.e(), iF, iP);
    }

    public static d b(androidx.media3.common.util.j0 j0Var) throws ParserException {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        float f10;
        String strD;
        int i17;
        try {
            j0Var.X(4);
            int iH = (j0Var.H() & 3) + 1;
            if (iH == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iH2 = j0Var.H() & 31;
            for (int i18 = 0; i18 < iH2; i18++) {
                arrayList.add(a(j0Var));
            }
            int iH3 = j0Var.H();
            for (int i19 = 0; i19 < iH3; i19++) {
                arrayList.add(a(j0Var));
            }
            if (iH2 > 0) {
                androidx.media3.container.g.m mVarC = androidx.media3.container.g.C((byte[]) arrayList.get(0), androidx.media3.container.g.f10281a.length, ((byte[]) arrayList.get(0)).length);
                int i20 = mVarC.f10346f;
                int i21 = mVarC.f10347g;
                int i22 = mVarC.f10349i + 8;
                int i23 = mVarC.f10350j + 8;
                int i24 = mVarC.f10357q;
                int i25 = mVarC.f10358r;
                int i26 = mVarC.f10359s;
                int i27 = mVarC.f10360t;
                float f11 = mVarC.f10348h;
                strD = androidx.media3.common.util.j.d(mVarC.f10341a, mVarC.f10342b, mVarC.f10343c);
                i16 = i26;
                i17 = i27;
                f10 = f11;
                i13 = i23;
                i14 = i24;
                i15 = i25;
                i10 = i20;
                i11 = i21;
                i12 = i22;
            } else {
                i10 = -1;
                i11 = -1;
                i12 = -1;
                i13 = -1;
                i14 = -1;
                i15 = -1;
                i16 = -1;
                f10 = 1.0f;
                strD = null;
                i17 = 16;
            }
            return new d(arrayList, iH, i10, i11, i12, i13, i14, i15, i16, i17, f10, strD);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw ParserException.createForMalformedContainer("Error parsing AVC config", e10);
        }
    }
}
