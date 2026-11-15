package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class er implements su0 {
    private final su0.a a;
    private final su0[] b;

    public er(su0... su0VarArr) {
        y45.j(su0VarArr, "measureSpecProviders");
        this.a = new su0.a();
        this.b = su0VarArr;
    }

    @Override
    public final su0.a a(int i, int i2) {
        su0[] su0VarArr = this.b;
        int length = su0VarArr.length;
        int i3 = 0;
        while (i3 < length) {
            su0.a aVarA = su0VarArr[i3].a(i, i2);
            int i4 = aVarA.a;
            i3++;
            i2 = aVarA.b;
            i = i4;
        }
        su0.a aVar = this.a;
        aVar.a = i;
        aVar.b = i2;
        return aVar;
    }
}
