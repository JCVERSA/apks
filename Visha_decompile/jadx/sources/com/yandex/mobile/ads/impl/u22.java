package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class u22 {
    public static final zs a(Context context, int i) {
        jj vrVar;
        jj vrVar2;
        y45.j(context, "context");
        int i2 = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        pj.a aVar = pj.c;
        pj pjVar = null;
        String strM = ju1VarA != null ? ju1VarA.m() : null;
        aVar.getClass();
        for (pj pjVar2 : pj.values()) {
            if (y45.e(pjVar2.a(), strM)) {
                pjVar = pjVar2;
                break;
            }
        }
        if (pjVar == null) {
            pjVar = pj.d;
        }
        kf1 kf1Var = kf1.d;
        y45.j(pjVar, "bannerSizeCalculationType");
        int iOrdinal = pjVar.ordinal();
        if (iOrdinal == 0) {
            vrVar = new vr();
        } else if (iOrdinal == 1) {
            vrVar = new rn1();
        } else if (iOrdinal == 2) {
            vrVar = new pt1();
        } else if (iOrdinal == 3) {
            vrVar = new qt1();
        } else {
            if (iOrdinal != 4) {
                throw new NoWhenBranchMatchedException();
            }
            vrVar = new gz0();
        }
        int iA = vrVar.a(context, i, kf1Var);
        gz1.a aVar2 = gz1.a.e;
        rb0 rb0Var = new rb0(i, iA, aVar2);
        kf1 kf1Var2 = kf1.c;
        y45.j(pjVar, "bannerSizeCalculationType");
        int iOrdinal2 = pjVar.ordinal();
        if (iOrdinal2 == 0) {
            vrVar2 = new vr();
        } else if (iOrdinal2 == 1) {
            vrVar2 = new rn1();
        } else if (iOrdinal2 == 2) {
            vrVar2 = new pt1();
        } else if (iOrdinal2 == 3) {
            vrVar2 = new qt1();
        } else {
            if (iOrdinal2 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            vrVar2 = new gz0();
        }
        rb0 rb0Var2 = new rb0(i, vrVar2.a(context, i, kf1Var2), aVar2);
        Context applicationContext = context.getApplicationContext();
        y45.g(applicationContext);
        return new zs(new pf1(applicationContext, rb0Var, rb0Var2));
    }
}
