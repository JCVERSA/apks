package com.transsion.ad.monopoly.plan;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.plan.MbAdDbPlans;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;
import vh.l;

public final class AdPlanMaterialManager {

    public static final AdPlanMaterialManager f41115a = new AdPlanMaterialManager();

    private static final Lazy f41116b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return AdPlanMaterialManager.e();
        }
    });

    private AdPlanMaterialManager() {
    }

    public final l c() {
        return (l) f41116b.getValue();
    }

    public static final l e() {
        MbAdDatabase.Companion mVar = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return mVar.b(applicationA).z0();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(MbAdDbPlans mbAdDbPlans, Continuation continuation) {
        AdPlanMaterialManager$hasPsOffer$1 adPlanMaterialManager$hasPsOffer$1;
        Ref.BooleanRef booleanRef;
        if (continuation instanceof AdPlanMaterialManager$hasPsOffer$1) {
            adPlanMaterialManager$hasPsOffer$1 = (AdPlanMaterialManager$hasPsOffer$1) continuation;
            int i10 = adPlanMaterialManager$hasPsOffer$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                adPlanMaterialManager$hasPsOffer$1.label = i10 - Integer.MIN_VALUE;
            } else {
                adPlanMaterialManager$hasPsOffer$1 = new AdPlanMaterialManager$hasPsOffer$1(this, continuation);
            }
        } else {
            adPlanMaterialManager$hasPsOffer$1 = new AdPlanMaterialManager$hasPsOffer$1(this, continuation);
        }
        Object obj = adPlanMaterialManager$hasPsOffer$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = adPlanMaterialManager$hasPsOffer$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            i0 i0VarB = y0.b();
            AdPlanMaterialManager$hasPsOffer$2 adPlanMaterialManager$hasPsOffer$2 = new AdPlanMaterialManager$hasPsOffer$2(mbAdDbPlans, booleanRef2, null);
            adPlanMaterialManager$hasPsOffer$1.L$0 = booleanRef2;
            adPlanMaterialManager$hasPsOffer$1.label = 1;
            if (i.g(i0VarB, adPlanMaterialManager$hasPsOffer$2, adPlanMaterialManager$hasPsOffer$1) == objF) {
                return objF;
            }
            booleanRef = booleanRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            booleanRef = (Ref.BooleanRef) adPlanMaterialManager$hasPsOffer$1.L$0;
            ResultKt.b(obj);
        }
        return Boxing.a(booleanRef.element);
    }
}
