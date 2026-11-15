package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;

public final class l00 implements bp1 {
    private final Context a;
    private final f00 b = new f00();
    private ov0 c = ov0.a;

    public l00(Context context) {
        this.a = context;
    }

    @Override
    public final yo1[] a(Handler handler, vf2 vf2Var, vh vhVar, u42 u42Var, o01 o01Var) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new vv0(this.a, this.b, this.c, handler, vf2Var));
        hz hzVarA = new hz.e().a(rh.a(this.a)).c().b().d().a();
        arrayList.add(new hv0(this.a, this.b, this.c, handler, vhVar, hzVarA));
        arrayList.add(new v42(u42Var, handler.getLooper()));
        arrayList.add(new p01(o01Var, handler.getLooper()));
        arrayList.add(new xn());
        return (yo1[]) arrayList.toArray(new yo1[0]);
    }
}
