package kd;

import androidx.core.view.InputDeviceCompat;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;

public class m implements h {

    private final int[] f63956a;

    private final int f63957b;

    private static final class b {

        private final char f63958a;

        private final int f63959b;

        private final b f63960c;

        private final int f63961d;

        boolean e() {
            return this.f63958a == 1000;
        }

        private b(char c10, g gVar, int i10, b bVar, int i11) {
            char c11 = c10 == i11 ? (char) 1000 : c10;
            this.f63958a = c11;
            this.f63959b = i10;
            this.f63960c = bVar;
            int length = c11 == 1000 ? 1 : gVar.b(c10, i10).length;
            length = (bVar == null ? 0 : bVar.f63959b) != i10 ? length + 3 : length;
            this.f63961d = bVar != null ? length + bVar.f63961d : length;
        }
    }

    public m(String str, Charset charset, int i10) {
        this.f63957b = i10;
        g gVar = new g(str, charset, i10);
        if (gVar.g() != 1) {
            this.f63956a = e(str, gVar, i10);
            return;
        }
        this.f63956a = new int[str.length()];
        for (int i11 = 0; i11 < this.f63956a.length; i11++) {
            char cCharAt = str.charAt(i11);
            int[] iArr = this.f63956a;
            if (cCharAt == i10) {
                cCharAt = 1000;
            }
            iArr[i11] = cCharAt;
        }
    }

    static void c(b[][] bVarArr, int i10, b bVar) {
        if (bVarArr[i10][bVar.f63959b] == null || bVarArr[i10][bVar.f63959b].f63961d > bVar.f63961d) {
            bVarArr[i10][bVar.f63959b] = bVar;
        }
    }

    static void d(String str, g gVar, b[][] bVarArr, int i10, b bVar, int i11) {
        int i12;
        int iF;
        char cCharAt = str.charAt(i10);
        int iG = gVar.g();
        if (gVar.f() < 0 || !(cCharAt == i11 || gVar.a(cCharAt, gVar.f()))) {
            i12 = iG;
            iF = 0;
        } else {
            iF = gVar.f();
            i12 = iF + 1;
        }
        for (int i13 = iF; i13 < i12; i13++) {
            if (cCharAt == i11 || gVar.a(cCharAt, i13)) {
                c(bVarArr, i10 + 1, new b(cCharAt, gVar, i13, bVar, i11));
            }
        }
    }

    static int[] e(String str, g gVar, int i10) {
        int length = str.length();
        b[][] bVarArr = (b[][]) Array.newInstance((Class<?>) b.class, length + 1, gVar.g());
        d(str, gVar, bVarArr, 0, null, i10);
        for (int i11 = 1; i11 <= length; i11++) {
            for (int i12 = 0; i12 < gVar.g(); i12++) {
                b bVar = bVarArr[i11][i12];
                if (bVar != null && i11 < length) {
                    d(str, gVar, bVarArr, i11, bVar, i10);
                }
            }
            for (int i13 = 0; i13 < gVar.g(); i13++) {
                bVarArr[i11 - 1][i13] = null;
            }
        }
        int i14 = -1;
        int i15 = Integer.MAX_VALUE;
        for (int i16 = 0; i16 < gVar.g(); i16++) {
            b bVar2 = bVarArr[length][i16];
            if (bVar2 != null && bVar2.f63961d < i15) {
                i15 = bVar2.f63961d;
                i14 = i16;
            }
        }
        if (i14 < 0) {
            throw new IllegalStateException("Failed to encode \"" + str + "\"");
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar3 = bVarArr[length][i14]; bVar3 != null; bVar3 = bVar3.f63960c) {
            if (bVar3.e()) {
                arrayList.add(0, 1000);
            } else {
                byte[] bArrB = gVar.b(bVar3.f63958a, bVar3.f63959b);
                for (int length2 = bArrB.length - 1; length2 >= 0; length2--) {
                    arrayList.add(0, Integer.valueOf(bArrB[length2] & 255));
                }
            }
            if ((bVar3.f63960c == null ? 0 : bVar3.f63960c.f63959b) != bVar3.f63959b) {
                arrayList.add(0, Integer.valueOf(gVar.e(bVar3.f63959b) + 256));
            }
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i17 = 0; i17 < size; i17++) {
            iArr[i17] = ((Integer) arrayList.get(i17)).intValue();
        }
        return iArr;
    }

    @Override
    public boolean a(int i10) {
        if (i10 >= 0 && i10 < length()) {
            int i11 = this.f63956a[i10];
            return i11 > 255 && i11 <= 999;
        }
        throw new IndexOutOfBoundsException("" + i10);
    }

    @Override
    public int b(int i10) {
        if (i10 < 0 || i10 >= length()) {
            throw new IndexOutOfBoundsException("" + i10);
        }
        if (a(i10)) {
            return this.f63956a[i10] + InputDeviceCompat.SOURCE_ANY;
        }
        throw new IllegalArgumentException("value at " + i10 + " is not an ECI but a character");
    }

    @Override
    public char charAt(int i10) {
        if (i10 < 0 || i10 >= length()) {
            throw new IndexOutOfBoundsException("" + i10);
        }
        if (!a(i10)) {
            return (char) (h(i10) ? this.f63957b : this.f63956a[i10]);
        }
        throw new IllegalArgumentException("value at " + i10 + " is not a character but an ECI");
    }

    public int f() {
        return this.f63957b;
    }

    public boolean g(int i10, int i11) {
        if ((i10 + i11) - 1 >= this.f63956a.length) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (a(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    public boolean h(int i10) {
        if (i10 >= 0 && i10 < length()) {
            return this.f63956a[i10] == 1000;
        }
        throw new IndexOutOfBoundsException("" + i10);
    }

    @Override
    public int length() {
        return this.f63956a.length;
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        if (i10 < 0 || i10 > i11 || i11 > length()) {
            throw new IndexOutOfBoundsException("" + i10);
        }
        StringBuilder sb2 = new StringBuilder();
        while (i10 < i11) {
            if (a(i10)) {
                throw new IllegalArgumentException("value at " + i10 + " is not a character but an ECI");
            }
            sb2.append(charAt(i10));
            i10++;
        }
        return sb2;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < length(); i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            if (a(i10)) {
                sb2.append("ECI(");
                sb2.append(b(i10));
                sb2.append(')');
            } else if (charAt(i10) < 128) {
                sb2.append('\'');
                sb2.append(charAt(i10));
                sb2.append('\'');
            } else {
                sb2.append((int) charAt(i10));
            }
        }
        return sb2.toString();
    }
}
