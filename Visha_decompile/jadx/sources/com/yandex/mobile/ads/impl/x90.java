package com.yandex.mobile.ads.impl;

import defpackage.ky5;
import defpackage.w09;
import defpackage.y45;
import defpackage.z45;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

public final class x90 {
    private final w90 a;
    private final f90 b;

    public x90(w90 w90Var, f90 f90Var) {
        y45.j(w90Var, "feedItemLoadControllerCreator");
        y45.j(f90Var, "feedAdRequestDataProvider");
        this.a = w90Var;
        this.b = f90Var;
    }

    public final Object a(v7 v7Var, List<n90> list, defpackage.wh1<? super aa0> wh1Var) {
        List<g41> listE;
        o8<String> o8VarA;
        w09 w09Var = new w09(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var));
        a aVar = new a(w09Var);
        n90 n90Var = (n90) defpackage.i81.C0(list);
        ka0 ka0VarA = (n90Var == null || (o8VarA = n90Var.a()) == null) ? null : o8VarA.A();
        this.b.getClass();
        y45.j(v7Var, "adRequestData");
        y45.j(list, "feedItemList");
        int size = list.size() + 1;
        Iterator<T> it = list.iterator();
        int size2 = 0;
        while (it.hasNext()) {
            y61 y61VarA = ((n90) it.next()).c().a();
            size2 += (y61VarA == null || (listE = y61VarA.e()) == null) ? 0 : listE.size();
        }
        Map mapE = ky5.e();
        Map<String, String> mapH = v7Var.h();
        if (mapH == null) {
            mapH = kotlin.collections.a.l();
        }
        mapE.putAll(mapH);
        mapE.put("feed-page", String.valueOf(size));
        mapE.put("feed-ads-count", String.valueOf(size2));
        this.a.a(aVar, v7.a(v7Var, ky5.d(mapE), null, 4031), ka0VarA).y();
        Object objA = w09Var.a();
        if (objA == z45.f()) {
            defpackage.pt1.c(wh1Var);
        }
        return objA;
    }

    public static final class a implements z90 {
        private final defpackage.wh1<aa0> a;

        public a(w09 w09Var) {
            y45.j(w09Var, "continuation");
            this.a = w09Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adRequestError");
            defpackage.wh1<aa0> wh1Var = this.a;
            Result.Companion companion = Result.INSTANCE;
            wh1Var.resumeWith(Result.m279constructorimpl(new aa0.a(w3Var)));
        }

        @Override
        public final void a(gs0 gs0Var) {
            y45.j(gs0Var, "loadedFeedItem");
            defpackage.wh1<aa0> wh1Var = this.a;
            Result.Companion companion = Result.INSTANCE;
            wh1Var.resumeWith(Result.m279constructorimpl(new aa0.b(gs0Var)));
        }
    }
}
