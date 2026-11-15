package com.transsion.ad.monopoly;

import com.transsion.ad.monopoly.manager.AdPlansAssetsManager;
import com.transsion.ad.monopoly.manager.AdPlansRequestManager;
import com.transsion.ad.monopoly.manager.AdSceneAssetsManager;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.ad.ps.attribution.AttributionConsumeManager;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;

public final class MonopolyAdManager {

    public static final MonopolyAdManager f41096a = new MonopolyAdManager();

    private MonopolyAdManager() {
    }

    public static Object b(MonopolyAdManager monopolyAdManager, String str, Function1 function1, Continuation continuation, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        return monopolyAdManager.a(str, function1, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, Function1 function1, Continuation continuation) {
        MonopolyAdManager$init$1 monopolyAdManager$init$1;
        String str2;
        Function1 function2;
        AdPlansRequestManager adPlansRequestManager;
        if (continuation instanceof MonopolyAdManager$init$1) {
            monopolyAdManager$init$1 = (MonopolyAdManager$init$1) continuation;
            int i10 = monopolyAdManager$init$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                monopolyAdManager$init$1.label = i10 - Integer.MIN_VALUE;
            } else {
                monopolyAdManager$init$1 = new MonopolyAdManager$init$1(this, continuation);
            }
        } else {
            monopolyAdManager$init$1 = new MonopolyAdManager$init$1(this, continuation);
        }
        Object obj = monopolyAdManager$init$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = monopolyAdManager$init$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                function1 = (Function1) monopolyAdManager$init$1.L$1;
                str = (String) monopolyAdManager$init$1.L$0;
                ResultKt.b(obj);
            } else if (i11 == 2) {
                function2 = (Function1) monopolyAdManager$init$1.L$1;
                str2 = (String) monopolyAdManager$init$1.L$0;
                ResultKt.b(obj);
                AttributionConsumeManager.f41128c.n();
                adPlansRequestManager = AdPlansRequestManager.f41104a;
                monopolyAdManager$init$1.L$0 = null;
                monopolyAdManager$init$1.L$1 = null;
                monopolyAdManager$init$1.label = 3;
                if (adPlansRequestManager.t(str2, function2, monopolyAdManager$init$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            PSActivateManager.f41122a.e();
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        AdPlansAssetsManager adPlansAssetsManager = AdPlansAssetsManager.f41103b;
        monopolyAdManager$init$1.L$0 = str;
        monopolyAdManager$init$1.L$1 = function1;
        monopolyAdManager$init$1.label = 1;
        if (adPlansAssetsManager.a(monopolyAdManager$init$1) == objF) {
            return objF;
        }
        AdSceneAssetsManager adSceneAssetsManager = AdSceneAssetsManager.f41109b;
        monopolyAdManager$init$1.L$0 = str;
        monopolyAdManager$init$1.L$1 = function1;
        monopolyAdManager$init$1.label = 2;
        if (adSceneAssetsManager.a(monopolyAdManager$init$1) == objF) {
            return objF;
        }
        Function1 function3 = function1;
        str2 = str;
        function2 = function3;
        AttributionConsumeManager.f41128c.n();
        adPlansRequestManager = AdPlansRequestManager.f41104a;
        monopolyAdManager$init$1.L$0 = null;
        monopolyAdManager$init$1.L$1 = null;
        monopolyAdManager$init$1.label = 3;
        if (adPlansRequestManager.t(str2, function2, monopolyAdManager$init$1) == objF) {
            return objF;
        }
        PSActivateManager.f41122a.e();
        return Unit.f64096a;
    }
}
