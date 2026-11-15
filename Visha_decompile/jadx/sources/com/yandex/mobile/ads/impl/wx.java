package com.yandex.mobile.ads.impl;

import defpackage.nw6;
import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.data.repo.DebugPanelRepositoryImpl$getAllData$2", f = "DebugPanelRepositoryImpl.kt", l = {46, 25}, m = "invokeSuspend")
final class wx extends SuspendLambda implements s74 {
    nw6 b;
    xx c;
    xx d;
    boolean e;
    int f;
    final xx g;
    final boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wx(xx xxVar, boolean z, defpackage.wh1<? super wx> wh1Var) {
        super(2, wh1Var);
        this.g = xxVar;
        this.h = z;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        return new wx(this.g, this.h, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return new wx(this.g, this.h, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        nw6 nw6Var;
        xx xxVar;
        boolean z;
        Throwable th;
        nw6 nw6Var2;
        xx xxVar2;
        Object value;
        Object objF = z45.f();
        int i = this.f;
        try {
            if (i == 0) {
                kotlin.c.b(obj);
                nw6Var = this.g.f;
                xxVar = this.g;
                z = this.h;
                this.b = nw6Var;
                this.c = xxVar;
                this.e = z;
                this.f = 1;
                if (nw6Var.c(null, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    xxVar2 = this.d;
                    xxVar = this.c;
                    nw6Var2 = this.b;
                    try {
                        kotlin.c.b(obj);
                        value = ((Result) obj).getValue();
                        if (Result.m285isFailureimpl(value)) {
                            value = null;
                        }
                        xxVar2.e = (rx) value;
                        bx bxVarA = xxVar.c.a(xxVar.a.a(), xxVar.e);
                        nw6Var2.b(null);
                        return bxVarA;
                    } catch (Throwable th2) {
                        th = th2;
                        nw6Var2.b(null);
                        throw th;
                    }
                }
                boolean z2 = this.e;
                xx xxVar3 = this.c;
                nw6 nw6Var3 = this.b;
                kotlin.c.b(obj);
                nw6Var = nw6Var3;
                z = z2;
                xxVar = xxVar3;
            }
            if (xxVar.e == null || z) {
                oo1 oo1Var = xxVar.b;
                this.b = nw6Var;
                this.c = xxVar;
                this.d = xxVar;
                this.f = 2;
                Object objA = oo1Var.a(this);
                if (objA == objF) {
                    return objF;
                }
                xxVar2 = xxVar;
                nw6 nw6Var4 = nw6Var;
                value = objA;
                nw6Var2 = nw6Var4;
                if (Result.m285isFailureimpl(value)) {
                    value = null;
                }
                xxVar2.e = (rx) value;
            } else {
                nw6Var2 = nw6Var;
            }
            bx bxVarA2 = xxVar.c.a(xxVar.a.a(), xxVar.e);
            nw6Var2.b(null);
            return bxVarA2;
        } catch (Throwable th3) {
            nw6 nw6Var5 = nw6Var;
            th = th3;
            nw6Var2 = nw6Var5;
            nw6Var2.b(null);
            throw th;
        }
    }
}
