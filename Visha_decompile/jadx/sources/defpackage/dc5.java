package defpackage;

import java.util.Arrays;
import org.apache.commons.io.IOUtils;

public final class dc5 implements sc5 {
    public char[] a = wu0.c.d();
    public int b;

    private final int f(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = this.a;
        if (cArr.length <= i3) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, wn8.d(i3, i * 2));
            y45.i(cArrCopyOf, "copyOf(this, newSize)");
            this.a = cArrCopyOf;
        }
        return i;
    }

    @Override
    public void a(char c) {
        e(1);
        char[] cArr = this.a;
        int i = this.b;
        this.b = i + 1;
        cArr[i] = c;
    }

    @Override
    public void b(String str) {
        y45.j(str, "text");
        e(str.length() + 2);
        char[] cArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        cArr[i] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, i2);
        int i3 = length + i2;
        for (int i4 = i2; i4 < i3; i4++) {
            char c = cArr[i4];
            if (c < zz9.a().length && zz9.a()[c] != 0) {
                d(i4 - i2, i4, str);
                return;
            }
        }
        cArr[i3] = '\"';
        this.b = i3 + 1;
    }

    @Override
    public void c(String str) {
        y45.j(str, "text");
        int length = str.length();
        if (length == 0) {
            return;
        }
        e(length);
        str.getChars(0, str.length(), this.a, this.b);
        this.b += length;
    }

    public final void d(int i, int i2, String str) {
        byte b;
        int length = str.length();
        while (i < length) {
            int iF = f(i2, 2);
            char cCharAt = str.charAt(i);
            if (cCharAt >= zz9.a().length || (b = zz9.a()[cCharAt]) == 0) {
                int i3 = iF + 1;
                this.a[iF] = cCharAt;
                i2 = i3;
            } else if (b == 1) {
                String str2 = zz9.b()[cCharAt];
                y45.g(str2);
                int iF2 = f(iF, str2.length());
                str2.getChars(0, str2.length(), this.a, iF2);
                i2 = iF2 + str2.length();
                this.b = i2;
            } else {
                char[] cArr = this.a;
                cArr[iF] = IOUtils.DIR_SEPARATOR_WINDOWS;
                cArr[iF + 1] = (char) b;
                i2 = iF + 2;
                this.b = i2;
            }
            i++;
        }
        int iF3 = f(i2, 1);
        this.a[iF3] = '\"';
        this.b = iF3 + 1;
    }

    public final void e(int i) {
        f(this.b, i);
    }

    public void g() {
        wu0.c.c(this.a);
    }

    public String toString() {
        return new String(this.a, 0, this.b);
    }

    @Override
    public void writeLong(long j) {
        c(String.valueOf(j));
    }
}
