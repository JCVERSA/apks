package com.transsion.ad.ps.distribute;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import vh.l;

public final class PsDbManager {

    public static final PsDbManager f41140a = new PsDbManager();

    private static final Lazy f41141b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PsDbManager.m();
        }
    });

    private PsDbManager() {
    }

    public final String e() {
        String simpleName = PsDbManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final l i() {
        return (l) f41141b.getValue();
    }

    public static final l m() {
        MbAdDatabase.Companion mVar = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return mVar.b(applicationA).z0();
    }

    public final Object c(String str, List list, Continuation continuation) {
        Object objD = i().d(str, list, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f64096a;
    }

    public final Object d(Continuation continuation) {
        return i().a(continuation);
    }

    public final Object f(String str, Continuation continuation) {
        return i().c(String.valueOf(str), continuation);
    }

    public final Object g(int i10, Continuation continuation) {
        return i().f(i10, continuation);
    }

    public final Object h(String str, Continuation continuation) {
        return i().g(str, continuation);
    }

    public final Object j(PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        Object objB = i().b(psLinkAdPlan, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f64096a;
    }

    public final void k(AdPlans adPlans) {
        AdMaterialList adMaterialListA;
        PsLinkAdPlan psLinkAdPlan;
        if (!AdPlanSourceManager.f41117a.i(adPlans) || (adMaterialListA = com.transsion.ad.monopoly.plan.b.f41119a.a(adPlans)) == null || (psLinkAdPlan = adMaterialListA.getPsLinkAdPlan()) == null) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new PsDbManager$onBiddingBuyOutClick$1(psLinkAdPlan, null), 3, null);
    }

    public final void l(AdPlans adPlans) {
        AdMaterialList adMaterialListA;
        PsLinkAdPlan psLinkAdPlan;
        if (!AdPlanSourceManager.f41117a.i(adPlans) || (adMaterialListA = com.transsion.ad.monopoly.plan.b.f41119a.a(adPlans)) == null || (psLinkAdPlan = adMaterialListA.getPsLinkAdPlan()) == null) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new PsDbManager$onBiddingBuyOutDisplay$1(psLinkAdPlan, null), 3, null);
    }

    public final Object n(PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        Object objE;
        return (psLinkAdPlan == null || (objE = f41140a.i().e(psLinkAdPlan, continuation)) != IntrinsicsKt.f()) ? Unit.f64096a : objE;
    }
}
