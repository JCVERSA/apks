package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.z45;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class oe0 {
    private final vx a;

    @defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.domain.GetMediationNetworkDataUseCase", f = "GetMediationNetworkDataUseCase.kt", l = {12}, m = "invoke")
    public static final class a extends ContinuationImpl {
        String b;
        Object c;
        int e;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return oe0.this.a(null, false, this);
        }
    }

    public oe0(vx vxVar) {
        y45.j(vxVar, "repo");
        this.a = vxVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, boolean z, defpackage.wh1<? super rw> wh1Var) {
        a aVar;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.e = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object objA = aVar.c;
        Object objF = z45.f();
        int i2 = aVar.e;
        if (i2 == 0) {
            kotlin.c.b(objA);
            vx vxVar = this.a;
            aVar.b = str;
            aVar.e = 1;
            objA = vxVar.a(z, aVar);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = aVar.b;
            kotlin.c.b(objA);
        }
        for (Object obj : ((bx) objA).b().a()) {
            if (y45.e(((rw) obj).e(), str)) {
                return obj;
            }
        }
        return null;
    }
}
