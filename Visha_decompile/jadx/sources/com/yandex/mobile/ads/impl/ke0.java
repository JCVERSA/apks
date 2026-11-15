package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.z45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class ke0 {
    private final vx a;

    @defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.domain.GetAdUnitDataUseCase", f = "GetAdUnitDataUseCase.kt", l = {17}, m = "invoke")
    public static final class a extends ContinuationImpl {
        ke0 b;
        String c;
        Object d;
        int f;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.d = obj;
            this.f |= Integer.MIN_VALUE;
            return ke0.this.a(null, false, this);
        }
    }

    public ke0(vx vxVar) {
        y45.j(vxVar, "repo");
        this.a = vxVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(String str, boolean z, defpackage.wh1<? super kw> wh1Var) {
        a aVar;
        String str2;
        Object next;
        nw nwVar;
        Object next2;
        Object next3;
        String strD;
        ke0 ke0Var = this;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.f = i - Integer.MIN_VALUE;
            } else {
                aVar = ke0Var.new a(wh1Var);
            }
        } else {
            aVar = ke0Var.new a(wh1Var);
        }
        Object objA = aVar.d;
        Object objF = z45.f();
        int i2 = aVar.f;
        if (i2 == 0) {
            kotlin.c.b(objA);
            vx vxVar = ke0Var.a;
            aVar.b = ke0Var;
            str2 = str;
            aVar.c = str2;
            aVar.f = 1;
            objA = vxVar.a(z, aVar);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            String str3 = aVar.c;
            ke0 ke0Var2 = aVar.b;
            kotlin.c.b(objA);
            str2 = str3;
            ke0Var = ke0Var2;
        }
        bx bxVar = (bx) objA;
        Iterator<T> it = bxVar.a().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!y45.e(((hw) next).a(), str2));
        hw hwVar = (hw) next;
        if (hwVar == null) {
            return null;
        }
        List<rw> listA = bxVar.b().a();
        lw lwVarC = hwVar.c();
        ke0Var.getClass();
        if (lwVarC == null) {
            nwVar = new nw(defpackage.y71.k());
        } else {
            List<iw> listB = lwVarC.b();
            ArrayList arrayList = new ArrayList(defpackage.z71.v(listB, 10));
            for (iw iwVar : listB) {
                Iterator<T> it2 = listA.iterator();
                do {
                    if (!it2.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it2.next();
                } while (!y45.e(((rw) next3).e(), iwVar.e()));
                rw rwVar = (rw) next3;
                String str4 = (rwVar == null || (strD = rwVar.d()) == null) ? "" : strD;
                List<yw> listC = iwVar.c();
                ArrayList arrayList2 = new ArrayList(defpackage.z71.v(listC, 10));
                for (yw ywVar : listC) {
                    arrayList2.add(new px(ywVar.a(), ywVar.b()));
                }
                arrayList.add(new mw(str4, iwVar.e(), arrayList2, iwVar.b(), iwVar.d(), mw.a.C0323a.a));
            }
            List<ow> listC2 = lwVarC.c();
            ArrayList arrayList3 = new ArrayList(defpackage.z71.v(listC2, 10));
            for (ow owVar : listC2) {
                Iterator<T> it3 = listA.iterator();
                do {
                    if (!it3.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it3.next();
                } while (!y45.e(((rw) next2).e(), owVar.e()));
                rw rwVar2 = (rw) next2;
                String strD2 = rwVar2 != null ? rwVar2.d() : null;
                String str5 = strD2 == null ? "" : strD2;
                List<ny> listF = owVar.f();
                ArrayList arrayList4 = new ArrayList(defpackage.z71.v(listF, 10));
                for (ny nyVar : listF) {
                    arrayList4.add(new px(nyVar.a(), nyVar.b()));
                }
                arrayList3.add(new mw(str5, owVar.e(), arrayList4, null, owVar.d(), new mw.a.b(owVar.c(), owVar.b())));
            }
            nwVar = new nw(defpackage.i81.J0(arrayList, arrayList3));
        }
        return new kw(hwVar.d(), hwVar.b(), str2, nwVar);
    }
}
