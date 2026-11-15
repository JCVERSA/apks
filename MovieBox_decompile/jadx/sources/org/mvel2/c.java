package org.mvel2;

public class c {

    private char[] f68793a;

    private int f68794b;

    private boolean f68795c;

    private String f68796d;

    private int f68797e;

    private int f68798f;

    public c(char[] cArr, int i10, boolean z10, String str) {
        this.f68793a = cArr;
        this.f68794b = i10;
        this.f68795c = z10;
        this.f68796d = str;
        a();
    }

    public void a() {
        char[] cArr;
        if ((this.f68797e != 0 && this.f68798f != 0) || (cArr = this.f68793a) == null || cArr.length == 0) {
            return;
        }
        int i10 = 1;
        int i11 = 1;
        for (int i12 = 0; i12 < this.f68794b; i12++) {
            char c10 = this.f68793a[i12];
            if (c10 == '\n') {
                i10++;
                i11 = 0;
            } else if (c10 != '\r') {
                i11++;
            }
        }
        this.f68797e = i10;
        this.f68798f = i11;
    }

    public int b() {
        return this.f68798f;
    }

    public int c() {
        return this.f68794b;
    }

    public char[] d() {
        return this.f68793a;
    }

    public int e() {
        return this.f68797e;
    }

    public String f() {
        return this.f68796d;
    }

    public boolean g() {
        return this.f68795c;
    }

    public void h(int i10) {
        this.f68798f = i10;
    }

    public void i(int i10) {
        this.f68794b = i10;
    }

    public void j(char[] cArr) {
        this.f68793a = cArr;
    }

    public void k(int i10) {
        this.f68797e = i10;
    }

    public String toString() {
        if (this.f68795c) {
            return "(" + this.f68797e + "," + this.f68798f + ") " + this.f68796d;
        }
        return "(" + this.f68797e + "," + this.f68798f + ") WARNING: " + this.f68796d;
    }
}
