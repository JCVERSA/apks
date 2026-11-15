package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.z45;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class le0 {
    private final vx a;

    @defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.domain.GetAdUnitsDataUseCase", f = "GetAdUnitsDataUseCase.kt", l = {12}, m = "invoke")
    public static final class a extends ContinuationImpl {
        Object b;
        int d;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.d |= Integer.MIN_VALUE;
            return le0.this.a(false, this);
        }
    }

    public le0(vx vxVar) {
        y45.j(vxVar, "repo");
        this.a = vxVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(boolean z, defpackage.wh1<? super pw> wh1Var) {
        a aVar;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.d = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object objA = aVar.b;
        Object objF = z45.f();
        int i2 = aVar.d;
        if (i2 == 0) {
            kotlin.c.b(objA);
            vx vxVar = this.a;
            aVar.d = 1;
            objA = vxVar.a(z, aVar);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(objA);
        }
        List<hw> listA = ((bx) objA).a();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listA, 10));
        for (hw hwVar : listA) {
            arrayList.add(new jw(hwVar.d(), hwVar.b(), hwVar.a()));
        }
        return new pw(arrayList);
    }
}
