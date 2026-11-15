package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.z45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public final class pc1 {
    private final dc2<kb1> a;
    private final be2 b;

    public pc1(Context context, o3 o3Var) {
        this(context, o3Var, new dc2(context, new lb1()), new be2(context, o3Var, new ya1(o3Var), new qf1()));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(pc1 pc1Var, List list, defpackage.wh1 wh1Var) {
        nc1 nc1Var;
        pc1Var.getClass();
        if (wh1Var instanceof nc1) {
            nc1Var = (nc1) wh1Var;
            int i = nc1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                nc1Var.e = i - Integer.MIN_VALUE;
            } else {
                nc1Var = new nc1(pc1Var, wh1Var);
            }
        } else {
            nc1Var = new nc1(pc1Var, wh1Var);
        }
        Object objA = nc1Var.c;
        Object objF = z45.f();
        int i2 = nc1Var.e;
        if (i2 == 0) {
            kotlin.c.b(objA);
            be2 be2Var = pc1Var.b;
            ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((zb2) it.next()).g());
            }
            nc1Var.b = pc1Var;
            nc1Var.e = 1;
            objA = be2Var.a(arrayList, nc1Var);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pc1Var = nc1Var.b;
            kotlin.c.b(objA);
        }
        zd2 zd2Var = (zd2) objA;
        if (zd2Var instanceof zd2.a) {
            return defpackage.y71.k();
        }
        if (zd2Var instanceof zd2.b) {
            return pc1Var.a.a(((zd2.b) zd2Var).a());
        }
        throw new NoWhenBranchMatchedException();
    }

    public pc1(Context context, o3 o3Var, dc2<kb1> dc2Var, be2 be2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(dc2Var, "videoAdInfoListCreator");
        y45.j(be2Var, "videoAdsResponseHandler");
        this.a = dc2Var;
        this.b = be2Var;
    }
}
