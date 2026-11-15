package com.alibaba.fastjson.asm;

import com.vungle.ads.internal.protos.Sdk$SDKError;

public class i implements h {

    i f17502a;

    final c f17503b;

    private int f17504c;

    private final int f17505d;

    private final int f17506e;

    int f17507f;

    int[] f17508g;

    private a f17509h = new a();

    private int f17510i;

    private int f17511j;

    public i(c cVar, int i10, String str, String str2, String str3, String[] strArr) {
        if (cVar.f17478q == null) {
            cVar.f17478q = this;
        } else {
            cVar.f17479r.f17502a = this;
        }
        cVar.f17479r = this;
        this.f17503b = cVar;
        this.f17504c = i10;
        this.f17505d = cVar.h(str);
        this.f17506e = cVar.h(str2);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.f17507f = length;
        this.f17508g = new int[length];
        for (int i11 = 0; i11 < this.f17507f; i11++) {
            this.f17508g[i11] = cVar.b(strArr[i11]).f17484a;
        }
    }

    @Override
    public void a(int i10, f fVar) {
        if ((fVar.f17493a & 2) != 0 && fVar.f17494b - this.f17509h.f17455b < -32768) {
            throw new UnsupportedOperationException();
        }
        this.f17509h.d(i10);
        a aVar = this.f17509h;
        fVar.b(this, aVar, aVar.f17455b - 1, i10 == 200);
    }

    @Override
    public void b(int i10, String str, String str2, String str3) {
        this.f17509h.c(i10, this.f17503b.d(str, str2, str3).f17484a);
    }

    @Override
    public void c(int i10, int i11) {
        if (i11 < 4 && i10 != 169) {
            this.f17509h.d((i10 < 54 ? ((i10 - 21) << 2) + 26 : ((i10 - 54) << 2) + 59) + i11);
        } else if (i11 >= 256) {
            this.f17509h.d(196).c(i10, i11);
        } else {
            this.f17509h.b(i10, i11);
        }
    }

    @Override
    public void d(Object obj) {
        e eVarC = this.f17503b.c(obj);
        int i10 = eVarC.f17484a;
        int i11 = eVarC.f17485b;
        if (i11 == 5 || i11 == 6) {
            this.f17509h.c(20, i10);
        } else if (i10 >= 256) {
            this.f17509h.c(19, i10);
        } else {
            this.f17509h.b(18, i10);
        }
    }

    @Override
    public void e(int i10, int i11) {
        this.f17509h.d(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE).b(i10, i11);
    }

    @Override
    public void f(int i10, String str) {
        this.f17509h.c(i10, this.f17503b.b(str).f17484a);
    }

    @Override
    public void g(int i10, int i11) {
        this.f17509h.b(i10, i11);
    }

    @Override
    public void h(int i10) {
        this.f17509h.d(i10);
    }

    @Override
    public void i(int i10, int i11) {
        this.f17510i = i10;
        this.f17511j = i11;
    }

    @Override
    public void j(int i10, String str, String str2, String str3) {
        boolean z10 = i10 == 185;
        e eVarE = this.f17503b.e(str, str2, str3, z10);
        int iB = eVarE.f17486c;
        if (!z10) {
            this.f17509h.c(i10, eVarE.f17484a);
            return;
        }
        if (iB == 0) {
            iB = j.b(str3);
            eVarE.f17486c = iB;
        }
        this.f17509h.c(185, eVarE.f17484a).b(iB >> 2, 0);
    }

    @Override
    public void l(f fVar) {
        a aVar = this.f17509h;
        fVar.c(this, aVar.f17455b, aVar.f17454a);
    }

    final int m() {
        int i10;
        if (this.f17509h.f17455b > 0) {
            this.f17503b.h("Code");
            i10 = this.f17509h.f17455b + 26;
        } else {
            i10 = 8;
        }
        if (this.f17507f <= 0) {
            return i10;
        }
        this.f17503b.h("Exceptions");
        return i10 + (this.f17507f * 2) + 8;
    }

    final void n(a aVar) {
        aVar.g(this.f17504c & (-393217)).g(this.f17505d).g(this.f17506e);
        int i10 = this.f17509h.f17455b > 0 ? 1 : 0;
        if (this.f17507f > 0) {
            i10++;
        }
        aVar.g(i10);
        int i11 = this.f17509h.f17455b;
        if (i11 > 0) {
            aVar.g(this.f17503b.h("Code")).f(i11 + 12);
            aVar.g(this.f17510i).g(this.f17511j);
            a aVarF = aVar.f(this.f17509h.f17455b);
            a aVar2 = this.f17509h;
            aVarF.e(aVar2.f17454a, 0, aVar2.f17455b);
            aVar.g(0);
            aVar.g(0);
        }
        if (this.f17507f > 0) {
            aVar.g(this.f17503b.h("Exceptions")).f((this.f17507f * 2) + 2);
            aVar.g(this.f17507f);
            for (int i12 = 0; i12 < this.f17507f; i12++) {
                aVar.g(this.f17508g[i12]);
            }
        }
    }

    @Override
    public void k() {
    }
}
