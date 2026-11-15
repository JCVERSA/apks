package defpackage;

import java.io.IOException;
import java.io.Reader;

public class xl9 {
    public int a;
    public int b;
    public int c;
    public int d;
    public int[] e;
    public int[] f;
    public int g;
    public int h;
    public boolean i;
    public boolean j;
    public Reader k;
    public char[] l;
    public int m;
    public int n;

    public xl9(Reader reader, int i, int i2, int i3) {
        this.d = -1;
        this.i = false;
        this.j = false;
        this.m = 0;
        this.n = 0;
        this.k = reader;
        this.h = i;
        this.g = i2 - 1;
        this.a = i3;
        this.b = i3;
        this.l = new char[i3];
        this.e = new int[i3];
        this.f = new int[i3];
    }

    public char a() throws IOException {
        this.c = -1;
        char cL = l();
        this.c = this.d;
        return cL;
    }

    public void b(boolean z) {
        int i = this.a;
        char[] cArr = new char[i + 2048];
        int[] iArr = new int[i + 2048];
        int[] iArr2 = new int[i + 2048];
        try {
            if (z) {
                char[] cArr2 = this.l;
                int i2 = this.c;
                System.arraycopy(cArr2, i2, cArr, 0, i - i2);
                System.arraycopy(this.l, 0, cArr, this.a - this.c, this.d);
                this.l = cArr;
                int[] iArr3 = this.e;
                int i3 = this.c;
                System.arraycopy(iArr3, i3, iArr, 0, this.a - i3);
                System.arraycopy(this.e, 0, iArr, this.a - this.c, this.d);
                this.e = iArr;
                int[] iArr4 = this.f;
                int i4 = this.c;
                System.arraycopy(iArr4, i4, iArr2, 0, this.a - i4);
                System.arraycopy(this.f, 0, iArr2, this.a - this.c, this.d);
                this.f = iArr2;
                int i5 = this.d + (this.a - this.c);
                this.d = i5;
                this.m = i5;
            } else {
                char[] cArr3 = this.l;
                int i6 = this.c;
                System.arraycopy(cArr3, i6, cArr, 0, i - i6);
                this.l = cArr;
                int[] iArr5 = this.e;
                int i7 = this.c;
                System.arraycopy(iArr5, i7, iArr, 0, this.a - i7);
                this.e = iArr;
                int[] iArr6 = this.f;
                int i8 = this.c;
                System.arraycopy(iArr6, i8, iArr2, 0, this.a - i8);
                this.f = iArr2;
                int i9 = this.d - this.c;
                this.d = i9;
                this.m = i9;
            }
            int i10 = this.a + 2048;
            this.a = i10;
            this.b = i10;
            this.c = 0;
        } catch (Throwable th) {
            throw new Error(th.getMessage());
        }
    }

    public void c() throws IOException {
        int i = this.m;
        int i2 = this.b;
        if (i == i2) {
            int i3 = this.a;
            if (i2 == i3) {
                int i4 = this.c;
                if (i4 > 2048) {
                    this.m = 0;
                    this.d = 0;
                    this.b = i4;
                } else if (i4 < 0) {
                    this.m = 0;
                    this.d = 0;
                } else {
                    b(false);
                }
            } else {
                int i5 = this.c;
                if (i2 > i5) {
                    this.b = i3;
                } else if (i5 - i2 < 2048) {
                    b(true);
                } else {
                    this.b = i5;
                }
            }
        }
        try {
            Reader reader = this.k;
            char[] cArr = this.l;
            int i6 = this.m;
            int i7 = reader.read(cArr, i6, this.b - i6);
            if (i7 != -1) {
                this.m += i7;
            } else {
                this.k.close();
                throw new IOException();
            }
        } catch (IOException e) {
            this.d--;
            g(0);
            if (this.c == -1) {
                this.c = this.d;
            }
            throw e;
        }
    }

    public String d() {
        int i = this.d;
        int i2 = this.c;
        if (i >= i2) {
            return new String(this.l, i2, (i - i2) + 1);
        }
        StringBuffer stringBuffer = new StringBuffer();
        char[] cArr = this.l;
        int i3 = this.c;
        stringBuffer.append(new String(cArr, i3, this.a - i3));
        stringBuffer.append(new String(this.l, 0, this.d + 1));
        return stringBuffer.toString();
    }

    public char[] e(int i) {
        char[] cArr = new char[i];
        int i2 = this.d;
        if (i2 + 1 >= i) {
            System.arraycopy(this.l, (i2 - i) + 1, cArr, 0, i);
        } else {
            System.arraycopy(this.l, this.a - ((i - i2) - 1), cArr, 0, (i - i2) - 1);
            char[] cArr2 = this.l;
            int i3 = this.d;
            System.arraycopy(cArr2, 0, cArr, (i - i3) - 1, i3 + 1);
        }
        return cArr;
    }

    public void f(char c) {
        this.g++;
        if (this.j) {
            this.j = false;
            int i = this.h;
            this.g = 1;
            this.h = i + 1;
        } else if (this.i) {
            this.i = false;
            if (c == '\n') {
                this.j = true;
            } else {
                int i2 = this.h;
                this.g = 1;
                this.h = i2 + 1;
            }
        }
        if (c == '\t') {
            int i3 = this.g - 1;
            this.g = i3 + (8 - (i3 & 7));
        } else if (c == '\n') {
            this.j = true;
        } else if (c == '\r') {
            this.i = true;
        }
        int[] iArr = this.e;
        int i4 = this.d;
        iArr[i4] = this.h;
        this.f[i4] = this.g;
    }

    public void g(int i) {
        this.n += i;
        int i2 = this.d - i;
        this.d = i2;
        if (i2 < 0) {
            this.d = i2 + this.a;
        }
    }

    public int h() {
        return this.f[this.c];
    }

    public int i() {
        return this.e[this.c];
    }

    public int j() {
        return this.f[this.d];
    }

    public int k() {
        return this.e[this.d];
    }

    public char l() throws IOException {
        int i = this.n;
        if (i > 0) {
            this.n = i - 1;
            int i2 = this.d + 1;
            this.d = i2;
            if (i2 == this.a) {
                this.d = 0;
            }
            return this.l[this.d];
        }
        int i3 = this.d + 1;
        this.d = i3;
        if (i3 >= this.m) {
            c();
        }
        char c = this.l[this.d];
        f(c);
        return c;
    }

    public xl9(Reader reader, int i, int i2) {
        this(reader, i, i2, 4096);
    }
}
