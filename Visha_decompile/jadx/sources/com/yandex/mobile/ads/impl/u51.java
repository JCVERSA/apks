package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class u51 extends ak<y61> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u51(Context context, hq1<y61> hq1Var, o3 o3Var, String str, String str2, eq1 eq1Var, qk.a<o8<y61>> aVar, o61 o61Var, x61 x61Var) {
        super(context, o3Var, str, str2, o61Var, eq1Var, aVar, x61Var, null, 1792);
        y45.j(context, "context");
        y45.j(hq1Var, "requestPolicy");
        y45.j(o3Var, "adConfiguration");
        y45.j(str, "url");
        y45.j(str2, "query");
        y45.j(eq1Var, "requestListener");
        y45.j(aVar, "listener");
        y45.j(o61Var, "responseParserCreator");
        y45.j(x61Var, "nativeAdRequestReporter");
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001c  */
    /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
    @Override
    public final boolean b(xc1 xc1Var, int i) {
        y45.j(xc1Var, "networkResponse");
        if (200 == i) {
            y45.j(xc1Var, "networkResponse");
            byte[] bArr = xc1Var.b;
            if (bArr != null) {
                if (!(!(bArr.length == 0))) {
                    if (204 != i) {
                        return false;
                    }
                }
            } else if (204 != i) {
                return false;
            }
        } else if (204 != i) {
            return false;
        }
        return true;
    }
}
