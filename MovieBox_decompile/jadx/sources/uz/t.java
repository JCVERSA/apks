package uz;

public abstract class t {

    y[] f73378a;

    l[] f73379b;

    k f73380c;

    byte[] f73381d;

    int[] f73382e;

    int f73383f;

    int f73384g;

    boolean f73385h;

    boolean f73386i;

    boolean f73387j;

    public t() {
        this.f73380c = new k();
        this.f73381d = new byte[16];
        this.f73382e = new int[16];
        h(0);
        d();
    }

    public void a() {
        y yVar;
        if (this.f73385h) {
            return;
        }
        if (this.f73383f == 2) {
            if (this.f73378a[this.f73382e[0]].b().equals("GB18030")) {
                yVar = this.f73378a[this.f73382e[1]];
            } else if (this.f73378a[this.f73382e[1]].b().equals("GB18030")) {
                yVar = this.f73378a[this.f73382e[0]];
            }
            c(yVar.b());
            this.f73385h = true;
        }
        if (this.f73386i) {
            f(null, 0, true);
        }
    }

    public boolean b(byte[] bArr, int i10) {
        int i11;
        y yVar;
        for (int i12 = 0; i12 < i10; i12++) {
            byte b10 = bArr[i12];
            int i13 = 0;
            while (true) {
                i11 = this.f73383f;
                if (i13 >= i11) {
                    break;
                }
                byte bC = y.c(this.f73378a[this.f73382e[i13]], b10, this.f73381d[i13]);
                if (bC == 2) {
                    yVar = this.f73378a[this.f73382e[i13]];
                } else if (bC == 1) {
                    int i14 = this.f73383f - 1;
                    this.f73383f = i14;
                    if (i13 < i14) {
                        int[] iArr = this.f73382e;
                        iArr[i13] = iArr[i14];
                        byte[] bArr2 = this.f73381d;
                        bArr2[i13] = bArr2[i14];
                    }
                } else {
                    this.f73381d[i13] = bC;
                    i13++;
                }
                c(yVar.b());
                this.f73385h = true;
                return true;
            }
            if (i11 <= 1) {
                if (1 == i11) {
                    c(this.f73378a[this.f73382e[0]].b());
                }
                this.f73385h = true;
                return true;
            }
            int i15 = 0;
            int i16 = 0;
            for (int i17 = 0; i17 < this.f73383f; i17++) {
                if (!this.f73378a[this.f73382e[i17]].d() && !this.f73378a[this.f73382e[i17]].d()) {
                    i15++;
                    i16 = i17;
                }
            }
            if (1 == i15) {
                yVar = this.f73378a[this.f73382e[i16]];
                c(yVar.b());
                this.f73385h = true;
                return true;
            }
        }
        if (this.f73386i) {
            e(bArr, i10);
        }
        return this.f73385h;
    }

    public abstract void c(String str);

    public void d() {
        this.f73386i = this.f73387j;
        this.f73385h = false;
        this.f73383f = this.f73384g;
        for (int i10 = 0; i10 < this.f73383f; i10++) {
            this.f73381d[i10] = 0;
            this.f73382e[i10] = i10;
        }
        this.f73380c.f();
    }

    public void e(byte[] bArr, int i10) {
        f(bArr, i10, false);
    }

    public void f(byte[] bArr, int i10, boolean z10) {
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f73383f; i13++) {
            l[] lVarArr = this.f73379b;
            int i14 = this.f73382e[i13];
            if (lVarArr[i14] != null) {
                i11++;
            }
            if (!this.f73378a[i14].d() && !this.f73378a[this.f73382e[i13]].b().equals("GB18030")) {
                i12++;
            }
        }
        boolean z11 = i11 > 1;
        this.f73386i = z11;
        if (z11) {
            this.f73386i = this.f73380c.g(bArr, i10);
            if (((z10 && this.f73380c.e()) || this.f73380c.b()) && i11 == i12) {
                this.f73380c.a();
                int i15 = -1;
                float f10 = 0.0f;
                int i16 = 0;
                for (int i17 = 0; i17 < this.f73383f; i17++) {
                    l[] lVarArr2 = this.f73379b;
                    int i18 = this.f73382e[i17];
                    if (lVarArr2[i18] != null && !this.f73378a[i18].b().equals("Big5")) {
                        float fC = this.f73380c.c(this.f73379b[this.f73382e[i17]].a(), this.f73379b[this.f73382e[i17]].b(), this.f73379b[this.f73382e[i17]].c(), this.f73379b[this.f73382e[i17]].d());
                        int i19 = i16 + 1;
                        if (i16 == 0 || f10 > fC) {
                            i15 = i17;
                            f10 = fC;
                        }
                        i16 = i19;
                    }
                }
                if (i15 >= 0) {
                    c(this.f73378a[this.f73382e[i15]].b());
                    this.f73385h = true;
                }
            }
        }
    }

    public String[] g() {
        int i10 = this.f73383f;
        if (i10 <= 0) {
            return new String[]{"nomatch"};
        }
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < this.f73383f; i11++) {
            strArr[i11] = this.f73378a[this.f73382e[i11]].b();
        }
        return strArr;
    }

    protected void h(int i10) {
        int i11 = i10;
        if (i11 < 0 || i11 >= 6) {
            i11 = 0;
        }
        this.f73378a = null;
        this.f73379b = null;
        if (i11 == 4) {
            this.f73378a = new y[]{new x(), new f(), new q(), new m(), new g(), new v(), new w()};
            this.f73379b = new l[]{null, new a(), null, new d(), null, null, null};
        } else if (i11 == 5) {
            this.f73378a = new y[]{new x(), new j(), new s(), new g(), new v(), new w()};
        } else if (i11 == 3) {
            this.f73378a = new y[]{new x(), new o(), new n(), new q(), new p(), new g(), new v(), new w()};
        } else if (i11 == 1) {
            this.f73378a = new y[]{new x(), new u(), new i(), new r(), new g(), new v(), new w()};
        } else if (i11 == 2) {
            this.f73378a = new y[]{new x(), new o(), new n(), new f(), new q(), new p(), new m(), new g(), new v(), new w()};
            this.f73379b = new l[]{null, new e(), null, new a(), null, null, new d(), null, null, null};
        } else if (i11 == 0) {
            this.f73378a = new y[]{new x(), new u(), new i(), new r(), new j(), new s(), new f(), new m(), new o(), new n(), new q(), new p(), new g(), new v(), new w()};
            this.f73379b = new l[]{null, null, new b(), null, new c(), null, new a(), new d(), new e(), null, null, null, null, null, null};
        }
        this.f73387j = this.f73379b != null;
        this.f73384g = this.f73378a.length;
    }

    public t(int i10) {
        this.f73380c = new k();
        this.f73381d = new byte[16];
        this.f73382e = new int[16];
        h(i10);
        d();
    }
}
