package defpackage;

import com.google.android.gms.internal.ads.zzaz;
import java.util.ArrayList;
import java.util.List;

public final class b8e {
    public final List a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final float k;
    public final String l;

    public b8e(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, String str) {
        this.a = list;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = i6;
        this.h = i7;
        this.i = i8;
        this.j = i9;
        this.k = f;
        this.l = str;
    }

    public static b8e a(u4h u4hVar) throws zzaz {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        String strC;
        float f;
        try {
            u4hVar.m(4);
            int iG = (u4hVar.G() & 3) + 1;
            if (iG == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iG2 = u4hVar.G() & 31;
            for (int i9 = 0; i9 < iG2; i9++) {
                arrayList.add(b(u4hVar));
            }
            int iG3 = u4hVar.G();
            for (int i10 = 0; i10 < iG3; i10++) {
                arrayList.add(b(u4hVar));
            }
            if (iG2 > 0) {
                byte[] bArr = (byte[]) arrayList.get(0);
                byte[] bArr2 = (byte[]) arrayList.get(0);
                byte[] bArr3 = jzh.a;
                oyh oyhVarG = jzh.g(bArr2, 5, bArr.length);
                int i11 = oyhVarG.e;
                int i12 = oyhVarG.f;
                int i13 = oyhVarG.h + 8;
                int i14 = oyhVarG.i + 8;
                int i15 = oyhVarG.j;
                int i16 = oyhVarG.k;
                int i17 = oyhVarG.l;
                int i18 = oyhVarG.m;
                float f2 = oyhVarG.g;
                strC = vcg.c(oyhVarG.a, oyhVarG.b, oyhVarG.c);
                i7 = i17;
                i8 = i18;
                f = f2;
                i4 = i14;
                i5 = i15;
                i6 = i16;
                i = i11;
                i2 = i12;
                i3 = i13;
            } else {
                i = -1;
                i2 = -1;
                i3 = -1;
                i4 = -1;
                i5 = -1;
                i6 = -1;
                i7 = -1;
                i8 = 16;
                strC = null;
                f = 1.0f;
            }
            return new b8e(arrayList, iG, i, i2, i3, i4, i5, i6, i7, i8, f, strC);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaz.zza("Error parsing AVC config", e);
        }
    }

    public static byte[] b(u4h u4hVar) {
        int iK = u4hVar.K();
        int iW = u4hVar.w();
        u4hVar.m(iK);
        return vcg.e(u4hVar.n(), iW, iK);
    }
}
