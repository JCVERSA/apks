package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ek0 {
    private final wa0 a;
    private final ch b;
    private final y02 c;

    public ek0() {
        this(new wa0(), new ch(), new y02());
    }

    public final Set<xj0> a(List<? extends ig<?>> list, vr0 vr0Var) {
        Object next;
        List listK;
        x xVar;
        List<xj0> listK2;
        b30 b30VarC;
        List<x> listA;
        Object next2;
        y45.j(list, "assets");
        this.b.getClass();
        Set<xj0> setF1 = defpackage.i81.f1(ch.a(list));
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!y45.e(((ig) next).b(), "feedback"));
        ig igVar = (ig) next;
        this.a.getClass();
        if (igVar == null || !(igVar.d() instanceof za0)) {
            listK = defpackage.y71.k();
        } else {
            List listO = defpackage.y71.o(((za0) igVar.d()).a());
            vr0 vr0VarA = igVar.a();
            if (vr0VarA == null || (listA = vr0VarA.a()) == null) {
                xVar = null;
            } else {
                Iterator<T> it2 = listA.iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it2.next();
                } while (!y45.e(((x) next2).a(), "divkit_adtune"));
                xVar = (x) next2;
            }
            n20 n20Var = xVar instanceof n20 ? (n20) xVar : null;
            if (n20Var == null || (b30VarC = n20Var.c()) == null || (listK2 = b30VarC.d()) == null) {
                listK2 = defpackage.y71.k();
            }
            listK = defpackage.i81.J0(listO, listK2);
        }
        setF1.addAll(listK);
        this.c.getClass();
        setF1.addAll(y02.a(list, vr0Var));
        return setF1;
    }

    public ek0(wa0 wa0Var, ch chVar, y02 y02Var) {
        y45.j(wa0Var, "feedbackImageProvider");
        y45.j(chVar, "assetsImagesProvider");
        y45.j(y02Var, "socialActionImageProvider");
        this.a = wa0Var;
        this.b = chVar;
        this.c = y02Var;
    }
}
