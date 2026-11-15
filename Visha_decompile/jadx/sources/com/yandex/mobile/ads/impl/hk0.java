package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.ye9;
import defpackage.ze9;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class hk0 {
    private final ek0 a;
    private final tb1 b;

    public static final class a {
        private final Set<xj0> a;
        private final Set<xj0> b;
        private final Set<xj0> c;

        public a(HashSet hashSet, Set set, Set set2) {
            y45.j(hashSet, "imagesToLoad");
            y45.j(set, "imagesToLoadPreview");
            y45.j(set2, "imagesToLoadInBack");
            this.a = hashSet;
            this.b = set;
            this.c = set2;
        }

        public final Set<xj0> a() {
            return this.a;
        }

        public final Set<xj0> b() {
            return this.b;
        }

        public final Set<xj0> c() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b) && y45.e(this.c, aVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "Images(imagesToLoad=" + this.a + ", imagesToLoadPreview=" + this.b + ", imagesToLoadInBack=" + this.c + ")";
        }
    }

    public hk0() {
        this(new ek0(), new tb1());
    }

    public final a a(s41 s41Var) {
        y45.j(s41Var, "nativeAdBlock");
        o8<?> o8VarB = s41Var.b();
        y61 y61VarC = s41Var.c();
        List<g41> listE = y61VarC.e();
        ek0 ek0Var = this.a;
        ek0Var.getClass();
        y45.j(listE, "nativeAds");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listE, 10));
        for (g41 g41Var : listE) {
            arrayList.add(ek0Var.a(g41Var.b(), g41Var.e()));
        }
        Set setG1 = defpackage.i81.g1(defpackage.z71.x(arrayList));
        this.a.getClass();
        y45.j(y61VarC, "nativeAdResponse");
        List<b30> listC = y61VarC.c();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = listC.iterator();
        while (it.hasNext()) {
            List<xj0> listD = ((b30) it.next()).d();
            if (listD != null) {
                arrayList2.add(listD);
            }
        }
        Set setM = ze9.m(setG1, defpackage.i81.g1(defpackage.z71.x(arrayList2)));
        Set<xj0> setC = this.b.c(y61VarC);
        Set setM2 = ze9.m(setM, setC);
        if (!o8VarB.Q()) {
            setM = null;
        }
        if (setM == null) {
            setM = ye9.f();
        }
        Set setM3 = ze9.m(setC, setM);
        HashSet hashSet = new HashSet();
        for (Object obj : setM3) {
            if (((xj0) obj).b()) {
                hashSet.add(obj);
            }
        }
        return new a(hashSet, setM2, ze9.k(setM2, hashSet));
    }

    public hk0(ek0 ek0Var, tb1 tb1Var) {
        y45.j(ek0Var, "imageValuesProvider");
        y45.j(tb1Var, "nativeVideoUrlsProvider");
        this.a = ek0Var;
        this.b = tb1Var;
    }
}
