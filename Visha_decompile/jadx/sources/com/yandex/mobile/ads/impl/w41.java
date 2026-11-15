package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.z45;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class w41 {
    private final pw1 a;
    private final pc1 b;
    private final lc1 c;

    @defpackage.nt1(c = "com.monetization.ads.nativeads.creator.videowrapper.NativeAdBlockVideoWrapperLoader", f = "NativeAdBlockVideoWrapperLoader.kt", l = {30}, m = "updateNativeAdBlockWithWrapperVideo")
    public static final class a extends ContinuationImpl {
        s41 b;
        Object c;
        int e;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return w41.this.a((Context) null, (s41) null, this);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w41(Context context, o3 o3Var) {
        this(context, o3Var, pw1.a.a(), new pc1(context, o3Var), new lc1());
        int i = pw1.l;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(w41 w41Var, ig igVar, defpackage.wh1 wh1Var) {
        v41 v41Var;
        ig igVar2;
        ig igVar3;
        w41Var.getClass();
        if (wh1Var instanceof v41) {
            v41Var = (v41) wh1Var;
            int i = v41Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                v41Var.e = i - Integer.MIN_VALUE;
            } else {
                v41Var = new v41(w41Var, wh1Var);
            }
        } else {
            v41Var = new v41(w41Var, wh1Var);
        }
        Object obj = v41Var.c;
        Object objF = z45.f();
        int i2 = v41Var.e;
        if (i2 == 0) {
            kotlin.c.b(obj);
            if (igVar.d() instanceof ex0) {
                y45.h(igVar, "null cannot be cast to non-null type com.monetization.ads.network.model.Asset<R of com.monetization.ads.network.model.AssetKt.castGeneric>");
                igVar2 = igVar;
            } else {
                igVar2 = null;
            }
            if (igVar2 == null) {
                return igVar;
            }
            pc1 pc1Var = w41Var.b;
            lb2 lb2VarC = ((ex0) igVar2.d()).c();
            v41Var.b = igVar2;
            v41Var.e = 1;
            pc1Var.getClass();
            Object objG = defpackage.cl0.g(qu.a(), new mc1(lb2VarC, pc1Var, null), v41Var);
            if (objG == objF) {
                return objF;
            }
            ig igVar4 = igVar2;
            obj = objG;
            igVar3 = igVar4;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            igVar3 = v41Var.b;
            kotlin.c.b(obj);
        }
        lb2 lb2Var = (lb2) obj;
        if (lb2Var == null && ((ex0) igVar3.d()).a() == null && ((ex0) igVar3.d()).b() == null) {
            return null;
        }
        return ig.a(igVar3, ex0.a((ex0) igVar3.d(), lb2Var));
    }

    public w41(Context context, o3 o3Var, pw1 pw1Var, pc1 pc1Var, lc1 lc1Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(pw1Var, "sdkSettings");
        y45.j(pc1Var, "nativeWrapperVideoLoader");
        y45.j(lc1Var, "nativeWrapperVideoAssetChecker");
        this.a = pw1Var;
        this.b = pc1Var;
        this.c = lc1Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Context context, s41 s41Var, defpackage.wh1<? super s41> wh1Var) {
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
        Object objG = aVar.c;
        Object objF = z45.f();
        int i2 = aVar.e;
        if (i2 == 0) {
            kotlin.c.b(objG);
            ju1 ju1VarA = this.a.a(context);
            if (ju1VarA == null || !ju1VarA.G()) {
                return s41Var;
            }
            List<g41> listE = s41Var.c().e();
            aVar.b = s41Var;
            aVar.e = 1;
            objG = defpackage.cl0.g(qu.a(), new x41(listE, this, null), aVar);
            if (objG == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s41Var = aVar.b;
            kotlin.c.b(objG);
        }
        List list = (List) objG;
        if (list == null) {
            return null;
        }
        return s41.a(s41Var, y61.a(s41Var.c(), list));
    }
}
