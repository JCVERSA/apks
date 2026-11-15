package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.z45;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class me0 {
    private final vx a;

    @defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.domain.GetDebugPanelFeedDataUseCase", f = "GetDebugPanelFeedDataUseCase.kt", l = {15}, m = "invoke")
    public static final class a extends ContinuationImpl {
        me0 b;
        Object c;
        int e;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return me0.this.a(false, this);
        }
    }

    public me0(vx vxVar) {
        y45.j(vxVar, "repo");
        this.a = vxVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(boolean z, defpackage.wh1<? super ix> wh1Var) {
        a aVar;
        ay.a aVar2;
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
            aVar.b = this;
            aVar.e = 1;
            objA = vxVar.a(z, aVar);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this = aVar.b;
            kotlin.c.b(objA);
        }
        bx bxVar = (bx) objA;
        List<vw> listC = bxVar.c();
        xw xwVarD = bxVar.d();
        yx yxVarH = bxVar.h();
        this.getClass();
        if (yxVarH.d()) {
            aVar2 = yxVarH.b().isEmpty() ? ay.a.b : ay.a.c;
        } else {
            aVar2 = ay.a.d;
        }
        return new ix(listC, xwVarD, new zx(yxVarH.c(), new ay(aVar2, yxVarH.b())), bxVar.g(), bxVar.b(), bxVar.e(), bxVar.f());
    }
}
