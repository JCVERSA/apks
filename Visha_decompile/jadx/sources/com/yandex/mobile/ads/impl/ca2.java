package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public final class ca2 {
    private final vi2 a;
    private final ua2 b;

    public ca2(Context context, sp1 sp1Var) {
        this(context, sp1Var, wc1.a(), new ua2(context, sp1Var));
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004a  */
    public final z92 a(xc1 xc1Var) {
        y45.j(xc1Var, "networkResponse");
        String strA = this.a.a(xc1Var);
        Map<String, String> mapL = xc1Var.c;
        if (mapL == null) {
            mapL = kotlin.collections.a.l();
        }
        wj wjVar = new wj(mapL);
        if (strA != null && strA.length() != 0) {
            try {
                u92 u92VarA = this.b.a(strA, wjVar);
                if (u92VarA != null) {
                    Map<String, String> map = xc1Var.c;
                    if (map != null) {
                        vh0 vh0Var = vh0.J;
                        int i = nf0.b;
                        y45.j(map, "responseHeaders");
                        y45.j(vh0Var, "httpHeader");
                        String strA2 = nf0.a(map, vh0Var);
                        if (strA2 == null || !Boolean.parseBoolean(strA2)) {
                            strA = null;
                        }
                    } else {
                        strA = null;
                    }
                    return new z92(u92VarA, strA);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public ca2(Context context, sp1 sp1Var, vi2 vi2Var, ua2 ua2Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(vi2Var, "volleyNetworkResponseDecoder");
        y45.j(ua2Var, "vastXmlParser");
        this.a = vi2Var;
        this.b = ua2Var;
    }
}
