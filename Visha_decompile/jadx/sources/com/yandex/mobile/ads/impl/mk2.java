package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class mk2 {
    private final mb2 a;
    private final kk2 b;
    private final lk2 c;
    private final nk2 d;
    private final Context e;

    public mk2(Context context, mb2 mb2Var) {
        this(context, mb2Var, new kk2(mb2Var), new lk2(), new nk2());
    }

    public final ArrayList a(List list) {
        y45.j(list, "videoAds");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            mb2 mb2Var = (mb2) it.next();
            ArrayList arrayListA = this.b.a(mb2Var);
            lk2 lk2Var = this.c;
            mb2 mb2Var2 = this.a;
            lk2Var.getClass();
            y45.j(mb2Var, "videoAd");
            y45.j(mb2Var2, "wrapperVideoAd");
            ub2 ub2VarL = mb2Var.l();
            ub2 ub2VarL2 = mb2Var2.l();
            ub2 ub2VarA = new ub2.a().a(defpackage.i81.J0(ub2VarL.a(), ub2VarL2.a())).b(defpackage.i81.J0(ub2VarL.b(), ub2VarL2.b())).a();
            nk2 nk2Var = this.d;
            mb2 mb2Var3 = this.a;
            nk2Var.getClass();
            y45.j(mb2Var, "inlineVideoAd");
            y45.j(mb2Var3, "wrapperVideoAd");
            List listN = defpackage.y71.n(mb2Var, mb2Var3);
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = listN.iterator();
            while (it2.hasNext()) {
                zh2 zh2VarM = ((mb2) it2.next()).m();
                List<String> listA = zh2VarM != null ? zh2VarM.a() : null;
                if (listA == null) {
                    listA = defpackage.y71.k();
                }
                defpackage.d81.C(arrayList2, listA);
            }
            zh2 zh2Var = new zh2(arrayList2);
            Map<String, List<String>> mapH = mb2Var.h();
            Map<String, List<String>> mapH2 = this.a.h();
            List listJ0 = defpackage.i81.J0(mb2Var.d(), this.a.d());
            Context context = this.e;
            y45.i(context, "context");
            arrayList.add(new mb2.a(context, mb2Var.o()).f(mb2Var.g()).a(arrayListA).a(mapH).c(mb2Var.b()).d(mb2Var.c()).e(mb2Var.f()).g(mb2Var.j()).h(mb2Var.k()).a(ub2VarA).a(zh2Var).a(mb2Var.n()).a(mapH2).a(listJ0).a());
        }
        return arrayList;
    }

    public mk2(Context context, mb2 mb2Var, kk2 kk2Var, lk2 lk2Var, nk2 nk2Var) {
        y45.j(context, "context");
        y45.j(mb2Var, "wrapperVideoAd");
        y45.j(kk2Var, "wrappedAdCreativesCreator");
        y45.j(lk2Var, "wrappedAdExtensionsCreator");
        y45.j(nk2Var, "wrappedViewableImpressionCreator");
        this.a = mb2Var;
        this.b = kk2Var;
        this.c = lk2Var;
        this.d = nk2Var;
        this.e = context.getApplicationContext();
    }
}
