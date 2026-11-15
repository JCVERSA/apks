package com.alibaba.fastjson.asm;

public class g {

    private final int f17497a;

    private final int f17498b;

    protected boolean f17501e;

    private final StringBuilder f17500d = new StringBuilder();

    private int f17499c = 0;

    protected g(int i10, int i11) {
        this.f17498b = i10;
        this.f17497a = i11;
        this.f17501e = i11 == 0;
    }

    protected String a() {
        return this.f17500d.length() != 0 ? this.f17500d.substring(1) : "";
    }

    protected void b(String str, int i10) {
        int i11 = this.f17498b;
        if (i10 < i11 || i10 >= i11 + this.f17497a) {
            return;
        }
        if (!str.equals("arg" + this.f17499c)) {
            this.f17501e = true;
        }
        this.f17500d.append(',');
        this.f17500d.append(str);
        this.f17499c++;
    }
}
