package com.alibaba.fastjson.asm;

public class c {

    int f17462a;

    int f17463b;

    final a f17464c;

    e[] f17465d;

    int f17466e;

    final e f17467f;

    final e f17468g;

    final e f17469h;

    private int f17470i;

    private int f17471j;

    String f17472k;

    private int f17473l;

    private int f17474m;

    private int[] f17475n;

    d f17476o;

    d f17477p;

    i f17478q;

    i f17479r;

    public c() {
        this(0);
    }

    private e a(e eVar) {
        e[] eVarArr = this.f17465d;
        e eVar2 = eVarArr[eVar.f17491h % eVarArr.length];
        while (eVar2 != null && (eVar2.f17485b != eVar.f17485b || !eVar.a(eVar2))) {
            eVar2 = eVar2.f17492i;
        }
        return eVar2;
    }

    private e g(String str) {
        this.f17468g.c(8, str, null, null);
        e eVarA = a(this.f17468g);
        if (eVarA != null) {
            return eVarA;
        }
        this.f17464c.c(8, h(str));
        int i10 = this.f17463b;
        this.f17463b = i10 + 1;
        e eVar = new e(i10, this.f17468g);
        i(eVar);
        return eVar;
    }

    private void i(e eVar) {
        if (this.f17463b > this.f17466e) {
            int length = this.f17465d.length;
            int i10 = (length * 2) + 1;
            e[] eVarArr = new e[i10];
            for (int i11 = length - 1; i11 >= 0; i11--) {
                e eVar2 = this.f17465d[i11];
                while (eVar2 != null) {
                    int i12 = eVar2.f17491h % i10;
                    e eVar3 = eVar2.f17492i;
                    eVar2.f17492i = eVarArr[i12];
                    eVarArr[i12] = eVar2;
                    eVar2 = eVar3;
                }
            }
            this.f17465d = eVarArr;
            this.f17466e = (int) (((double) i10) * 0.75d);
        }
        int i13 = eVar.f17491h;
        e[] eVarArr2 = this.f17465d;
        int length2 = i13 % eVarArr2.length;
        eVar.f17492i = eVarArr2[length2];
        eVarArr2[length2] = eVar;
    }

    public e b(String str) {
        this.f17468g.c(7, str, null, null);
        e eVarA = a(this.f17468g);
        if (eVarA != null) {
            return eVarA;
        }
        this.f17464c.c(7, h(str));
        int i10 = this.f17463b;
        this.f17463b = i10 + 1;
        e eVar = new e(i10, this.f17468g);
        i(eVar);
        return eVar;
    }

    e c(Object obj) {
        if (!(obj instanceof Integer)) {
            if (obj instanceof String) {
                return g((String) obj);
            }
            if (obj instanceof j) {
                j jVar = (j) obj;
                return b(jVar.f17521a == 10 ? jVar.f() : jVar.d());
            }
            throw new IllegalArgumentException("value " + obj);
        }
        int iIntValue = ((Integer) obj).intValue();
        this.f17467f.b(iIntValue);
        e eVarA = a(this.f17467f);
        if (eVarA != null) {
            return eVarA;
        }
        this.f17464c.d(3).f(iIntValue);
        int i10 = this.f17463b;
        this.f17463b = i10 + 1;
        e eVar = new e(i10, this.f17467f);
        i(eVar);
        return eVar;
    }

    e d(String str, String str2, String str3) {
        this.f17469h.c(9, str, str2, str3);
        e eVarA = a(this.f17469h);
        if (eVarA != null) {
            return eVarA;
        }
        int i10 = b(str).f17484a;
        this.f17464c.c(9, i10).g(f(str2, str3).f17484a);
        int i11 = this.f17463b;
        this.f17463b = i11 + 1;
        e eVar = new e(i11, this.f17469h);
        i(eVar);
        return eVar;
    }

    e e(String str, String str2, String str3, boolean z10) {
        int i10 = z10 ? 11 : 10;
        this.f17469h.c(i10, str, str2, str3);
        e eVarA = a(this.f17469h);
        if (eVarA != null) {
            return eVarA;
        }
        this.f17464c.c(i10, b(str).f17484a).g(f(str2, str3).f17484a);
        int i11 = this.f17463b;
        this.f17463b = i11 + 1;
        e eVar = new e(i11, this.f17469h);
        i(eVar);
        return eVar;
    }

    public e f(String str, String str2) {
        this.f17468g.c(12, str, str2, null);
        e eVarA = a(this.f17468g);
        if (eVarA != null) {
            return eVarA;
        }
        int iH = h(str);
        this.f17464c.c(12, iH).g(h(str2));
        int i10 = this.f17463b;
        this.f17463b = i10 + 1;
        e eVar = new e(i10, this.f17468g);
        i(eVar);
        return eVar;
    }

    public int h(String str) {
        this.f17467f.c(1, str, null, null);
        e eVarA = a(this.f17467f);
        if (eVarA == null) {
            this.f17464c.d(1).h(str);
            int i10 = this.f17463b;
            this.f17463b = i10 + 1;
            eVarA = new e(i10, this.f17467f);
            i(eVarA);
        }
        return eVarA.f17484a;
    }

    public byte[] j() {
        int iM = (this.f17474m * 2) + 24;
        int i10 = 0;
        for (d dVar = this.f17476o; dVar != null; dVar = dVar.f17480a) {
            i10++;
            iM += dVar.a();
        }
        int i11 = 0;
        for (i iVar = this.f17478q; iVar != null; iVar = iVar.f17502a) {
            i11++;
            iM += iVar.m();
        }
        a aVar = new a(iM + this.f17464c.f17455b);
        aVar.f(-889275714).f(this.f17462a);
        a aVarG = aVar.g(this.f17463b);
        a aVar2 = this.f17464c;
        aVarG.e(aVar2.f17454a, 0, aVar2.f17455b);
        aVar.g(this.f17470i & (-393217)).g(this.f17471j).g(this.f17473l);
        aVar.g(this.f17474m);
        for (int i12 = 0; i12 < this.f17474m; i12++) {
            aVar.g(this.f17475n[i12]);
        }
        aVar.g(i10);
        for (d dVar2 = this.f17476o; dVar2 != null; dVar2 = dVar2.f17480a) {
            dVar2.b(aVar);
        }
        aVar.g(i11);
        for (i iVar2 = this.f17478q; iVar2 != null; iVar2 = iVar2.f17502a) {
            iVar2.n(aVar);
        }
        aVar.g(0);
        return aVar.f17454a;
    }

    public void k(int i10, int i11, String str, String str2, String[] strArr) {
        this.f17462a = i10;
        this.f17470i = i11;
        this.f17471j = b(str).f17484a;
        this.f17472k = str;
        this.f17473l = str2 == null ? 0 : b(str2).f17484a;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.f17474m = length;
        this.f17475n = new int[length];
        for (int i12 = 0; i12 < this.f17474m; i12++) {
            this.f17475n[i12] = b(strArr[i12]).f17484a;
        }
    }

    private c(int i10) {
        this.f17463b = 1;
        this.f17464c = new a();
        e[] eVarArr = new e[256];
        this.f17465d = eVarArr;
        this.f17466e = (int) (((double) eVarArr.length) * 0.75d);
        this.f17467f = new e();
        this.f17468g = new e();
        this.f17469h = new e();
    }
}
