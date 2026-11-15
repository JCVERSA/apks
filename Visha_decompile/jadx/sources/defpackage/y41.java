package defpackage;

import org.apache.commons.io.IOUtils;

public class y41 {
    public String a = System.lineSeparator();
    public int b = 4;
    public int c = 8;
    public char[] d = new char[4096];
    public int e;

    public static char c(int i) {
        return (char) (i < 10 ? i + 48 : i + 55);
    }

    public final int a(int i) {
        int iD = d(i);
        this.e = i + iD;
        return iD;
    }

    public void b() {
        this.e = 0;
    }

    public final int d(int i) {
        int i2 = this.e;
        int i3 = i + i2;
        char[] cArr = this.d;
        if (i3 > cArr.length) {
            int length = cArr.length * 2;
            if (i3 <= length) {
                i3 = length;
            }
            char[] cArr2 = new char[i3];
            System.arraycopy(cArr, 0, cArr2, 0, i2);
            this.d = cArr2;
        }
        return i2;
    }

    public void e(int i, int i2) {
        char[] cArr = this.d;
        System.arraycopy(cArr, i2, cArr, i, this.e - i2);
        this.e -= i2 - i;
    }

    public String f() {
        return this.a;
    }

    public int g() {
        return this.e;
    }

    public void h(int i) {
        int i2;
        int i3 = this.b * i;
        int i4 = this.c;
        if (i4 <= 0) {
            i2 = 0;
        } else {
            int i5 = i3 / i4;
            i3 = (i3 % i4) + i5;
            i2 = i5;
        }
        int iA = a(i3);
        int i6 = i2 + iA;
        int i7 = i3 + iA;
        while (iA != i6) {
            this.d[iA] = '\t';
            iA++;
        }
        while (iA != i7) {
            this.d[iA] = ' ';
            iA++;
        }
    }

    public void i(int i, String str) {
        h(i);
        m(str);
        j();
    }

    public void j() {
        m(f());
    }

    public void k(char c) {
        this.d[a(1)] = c;
    }

    public void l(int i) {
        m(Integer.toString(i));
    }

    public void m(String str) {
        int length = str.length();
        str.getChars(0, length, this.d, a(length));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0039  */
    public final int n(int i, int i2, boolean z) {
        if (i2 == 12) {
            i2 = 102;
        } else {
            if (i2 != 13) {
                if (i2 != 34) {
                    if (i2 != 39) {
                        switch (i2) {
                            case 8:
                                i2 = 98;
                                break;
                            case 9:
                                i2 = 116;
                                break;
                            case 10:
                                i2 = 110;
                                break;
                            default:
                                z = false;
                                break;
                        }
                    } else {
                        z = !z;
                    }
                }
                if (z) {
                    char[] cArr = this.d;
                    cArr[i] = IOUtils.DIR_SEPARATOR_WINDOWS;
                    cArr[i + 1] = (char) i2;
                    return i + 2;
                }
                if (32 > i2 && i2 <= 126) {
                    this.d[i] = (char) i2;
                    return i + 1;
                }
                char[] cArr2 = this.d;
                cArr2[i] = IOUtils.DIR_SEPARATOR_WINDOWS;
                cArr2[i + 1] = 'u';
                cArr2[i + 2] = c((i2 >> 12) & 15);
                this.d[i + 3] = c((i2 >> 8) & 15);
                this.d[i + 4] = c((i2 >> 4) & 15);
                this.d[i + 5] = c(i2 & 15);
                return i + 6;
            }
            i2 = 114;
        }
        z = true;
        if (z) {
            char[] cArr3 = this.d;
            cArr3[i] = IOUtils.DIR_SEPARATOR_WINDOWS;
            cArr3[i + 1] = (char) i2;
            return i + 2;
        }
        if (32 > i2) {
        }
        char[] cArr4 = this.d;
        cArr4[i] = IOUtils.DIR_SEPARATOR_WINDOWS;
        cArr4[i + 1] = 'u';
        cArr4[i + 2] = c((i2 >> 12) & 15);
        this.d[i + 3] = c((i2 >> 8) & 15);
        this.d[i + 4] = c((i2 >> 4) & 15);
        this.d[i + 5] = c(i2 & 15);
        return i + 6;
    }

    public void o(int i) {
        int iD = d(8);
        this.d[iD] = '\'';
        int iN = n(iD + 1, i, false);
        this.d[iN] = '\'';
        this.e = iN + 1;
    }

    public void p(String str) {
        int length = str.length();
        int iD = d((length * 6) + 2);
        this.d[iD] = '\"';
        int iN = iD + 1;
        for (int i = 0; i != length; i++) {
            iN = n(iN, str.charAt(i), true);
        }
        this.d[iN] = '\"';
        this.e = iN + 1;
    }

    public void q(int i) {
        this.b = i;
    }

    public void r(int i) {
        this.c = i;
    }

    public String toString() {
        return new String(this.d, 0, this.e);
    }
}
