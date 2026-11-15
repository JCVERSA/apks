package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public final class ni2 extends i62<oi2, ki2> {
    private final mi2 C;
    private final vi2 D;
    private final mq1 E;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ni2(Context context, o3 o3Var, String str, zi2 zi2Var, oi2 oi2Var, ri2 ri2Var, mi2 mi2Var, vi2 vi2Var) {
        super(context, o3Var, 0, str, zi2Var, oi2Var, ri2Var, null, 1920);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(str, "url");
        y45.j(zi2Var, "listener");
        y45.j(oi2Var, "configuration");
        y45.j(ri2Var, "requestReporter");
        y45.j(mi2Var, "vmapParser");
        y45.j(vi2Var, "volleyNetworkResponseDecoder");
        this.C = mi2Var;
        this.D = vi2Var;
        sp0.e(str);
        this.E = mq1.d;
    }

    @Override
    public final xq1<ki2> a(xc1 xc1Var, int i) {
        byte[] bArr;
        y45.j(xc1Var, "networkResponse");
        a(Integer.valueOf(i));
        if (200 == i && (bArr = xc1Var.b) != null) {
            y45.i(bArr, "data");
            if (bArr.length != 0) {
                String strA = this.D.a(xc1Var);
                Map<String, String> mapL = xc1Var.c;
                if (mapL == null) {
                    mapL = kotlin.collections.a.l();
                }
                wj wjVar = new wj(mapL);
                if (strA == null || strA.length() == 0) {
                    xq1<ki2> xq1VarA = xq1.a(new cg1("Can't parse VMAP response"));
                    y45.g(xq1VarA);
                    return xq1VarA;
                }
                try {
                    xq1<ki2> xq1VarA2 = xq1.a(this.C.a(strA, wjVar), null);
                    y45.i(xq1VarA2, "success(...)");
                    return xq1VarA2;
                } catch (Exception e) {
                    xq1<ki2> xq1VarA3 = xq1.a(new cg1(e));
                    y45.i(xq1VarA3, "error(...)");
                    return xq1VarA3;
                }
            }
        }
        int i2 = r3.d;
        xq1<ki2> xq1VarA4 = xq1.a(new si2(y3.a.a(null, r3.a.a(xc1Var).a()).c()));
        y45.i(xq1VarA4, "error(...)");
        return xq1VarA4;
    }

    @Override
    public final mq1 w() {
        return this.E;
    }
}
