package org.mvel2.util;

import java.io.UnsupportedEncodingException;

public class s implements CharSequence {

    private char[] f68932a;

    private int f68933b;

    private int f68934c;

    private byte[] f68935d;

    private String f68936e;

    public s() {
        this.f68934c = 0;
        this.f68933b = 15;
        this.f68932a = new char[15];
    }

    private void f(int i10) {
        if (this.f68933b == 0) {
            this.f68933b = 15;
        }
        int i11 = this.f68933b + (i10 * 2);
        this.f68933b = i11;
        char[] cArr = new char[i11];
        System.arraycopy(this.f68932a, 0, cArr, 0, this.f68934c);
        this.f68932a = cArr;
    }

    public s a(char c10) {
        int i10 = this.f68934c;
        if (i10 >= this.f68933b) {
            f(i10);
        }
        char[] cArr = this.f68932a;
        int i11 = this.f68934c;
        this.f68934c = i11 + 1;
        cArr[i11] = c10;
        return this;
    }

    public s b(CharSequence charSequence) {
        if (charSequence.length() > this.f68933b - this.f68934c) {
            f(charSequence.length());
        }
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            this.f68932a[this.f68934c] = charSequence.charAt(i10);
            this.f68934c++;
        }
        return this;
    }

    public s c(Object obj) {
        return d(String.valueOf(obj));
    }

    @Override
    public char charAt(int i10) {
        return this.f68932a[i10];
    }

    public s d(String str) {
        if (str == null) {
            return this;
        }
        int length = str.length();
        if (length > this.f68933b - this.f68934c) {
            f(length);
        }
        str.getChars(0, length, this.f68932a, this.f68934c);
        this.f68934c += length;
        return this;
    }

    public s e(char[] cArr, int i10, int i11) {
        if (i11 > this.f68933b - this.f68934c) {
            f(i11);
        }
        int i12 = i11 + i10;
        while (i10 < i12) {
            char[] cArr2 = this.f68932a;
            int i13 = this.f68934c;
            this.f68934c = i13 + 1;
            cArr2[i13] = cArr[i10];
            i10++;
        }
        return this;
    }

    public CharSequence g(int i10, int i11) {
        return new String(this.f68932a, i10, i11 - i10);
    }

    public char[] h() {
        String str;
        if (this.f68935d == null) {
            int i10 = this.f68934c;
            char[] cArr = new char[i10];
            System.arraycopy(this.f68932a, 0, cArr, 0, i10);
            return cArr;
        }
        if (this.f68936e == null) {
            this.f68936e = System.getProperty("file.encoding");
        }
        try {
            str = new String(this.f68935d, this.f68936e);
        } catch (UnsupportedEncodingException unused) {
            str = new String(this.f68935d);
        }
        return str.toCharArray();
    }

    @Override
    public int length() {
        return this.f68934c;
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        return g(i10, i11);
    }

    @Override
    public String toString() {
        if (this.f68935d == null) {
            int i10 = this.f68934c;
            return i10 == this.f68933b ? new String(this.f68932a) : new String(this.f68932a, 0, i10);
        }
        if (this.f68936e == null) {
            this.f68936e = System.getProperty("file.encoding");
        }
        try {
            return new String(this.f68935d, 0, this.f68934c, this.f68936e);
        } catch (UnsupportedEncodingException unused) {
            return new String(this.f68935d, 0, this.f68934c);
        }
    }

    public s(String str) {
        this.f68934c = 0;
        char[] charArray = str.toCharArray();
        this.f68932a = charArray;
        int length = charArray.length;
        this.f68934c = length;
        this.f68933b = length;
    }
}
