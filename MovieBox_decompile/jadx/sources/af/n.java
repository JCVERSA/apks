package af;

import android.graphics.Rect;

public class n {

    private byte[] f328a;

    private int f329b;

    private int f330c;

    public n(byte[] bArr, int i10, int i11) {
        this.f328a = bArr;
        this.f329b = i10;
        this.f330c = i11;
    }

    public static byte[] e(byte[] bArr, int i10, int i11) {
        int i12 = i10 * i11;
        byte[] bArr2 = new byte[i12];
        int i13 = i12 - 1;
        for (int i14 = 0; i14 < i12; i14++) {
            bArr2[i13] = bArr[i14];
            i13--;
        }
        return bArr2;
    }

    public static byte[] f(byte[] bArr, int i10, int i11) {
        int i12 = i10 * i11;
        byte[] bArr2 = new byte[i12];
        int i13 = i12 - 1;
        for (int i14 = 0; i14 < i10; i14++) {
            for (int i15 = i11 - 1; i15 >= 0; i15--) {
                bArr2[i13] = bArr[(i15 * i10) + i14];
                i13--;
            }
        }
        return bArr2;
    }

    public static byte[] g(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i10 * i11];
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            for (int i14 = i11 - 1; i14 >= 0; i14--) {
                bArr2[i12] = bArr[(i14 * i10) + i13];
                i12++;
            }
        }
        return bArr2;
    }

    public n a(Rect rect, int i10) {
        int iWidth = rect.width() / i10;
        int iHeight = rect.height() / i10;
        int i11 = rect.top;
        byte[] bArr = new byte[iWidth * iHeight];
        if (i10 == 1) {
            int i12 = (i11 * this.f329b) + rect.left;
            for (int i13 = 0; i13 < iHeight; i13++) {
                System.arraycopy(this.f328a, i12, bArr, i13 * iWidth, iWidth);
                i12 += this.f329b;
            }
        } else {
            int i14 = (i11 * this.f329b) + rect.left;
            for (int i15 = 0; i15 < iHeight; i15++) {
                int i16 = i15 * iWidth;
                int i17 = i14;
                for (int i18 = 0; i18 < iWidth; i18++) {
                    bArr[i16] = this.f328a[i17];
                    i17 += i10;
                    i16++;
                }
                i14 += this.f329b * i10;
            }
        }
        return new n(bArr, iWidth, iHeight);
    }

    public byte[] b() {
        return this.f328a;
    }

    public int c() {
        return this.f330c;
    }

    public int d() {
        return this.f329b;
    }

    public n h(int i10) {
        if (i10 == 90) {
            return new n(g(this.f328a, this.f329b, this.f330c), this.f330c, this.f329b);
        }
        if (i10 != 180) {
            return i10 != 270 ? this : new n(f(this.f328a, this.f329b, this.f330c), this.f330c, this.f329b);
        }
        return new n(e(this.f328a, this.f329b, this.f330c), this.f329b, this.f330c);
    }
}
