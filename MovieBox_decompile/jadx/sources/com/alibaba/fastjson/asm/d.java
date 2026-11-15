package com.alibaba.fastjson.asm;

public final class d {

    d f17480a;

    private final int f17481b;

    private final int f17482c;

    private final int f17483d;

    public d(c cVar, int i10, String str, String str2) {
        if (cVar.f17476o == null) {
            cVar.f17476o = this;
        } else {
            cVar.f17477p.f17480a = this;
        }
        cVar.f17477p = this;
        this.f17481b = i10;
        this.f17482c = cVar.h(str);
        this.f17483d = cVar.h(str2);
    }

    int a() {
        return 8;
    }

    void b(a aVar) {
        aVar.g(this.f17481b & (-393217)).g(this.f17482c).g(this.f17483d);
        aVar.g(0);
    }

    public void c() {
    }
}
