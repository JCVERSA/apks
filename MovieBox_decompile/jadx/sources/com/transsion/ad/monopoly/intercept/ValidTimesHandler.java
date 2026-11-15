package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public final class ValidTimesHandler extends a {
    /* JADX WARN: Code duplicated, block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        ValidTimesHandler$doHandle$1 validTimesHandler$doHandle$1;
        String str2;
        int i10;
        Integer displayTimes;
        AdPlansHitResponse adPlansHitResponse;
        if (continuation instanceof ValidTimesHandler$doHandle$1) {
            validTimesHandler$doHandle$1 = (ValidTimesHandler$doHandle$1) continuation;
            int i11 = validTimesHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                validTimesHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                validTimesHandler$doHandle$1 = new ValidTimesHandler$doHandle$1(this, continuation);
            }
        } else {
            validTimesHandler$doHandle$1 = new ValidTimesHandler$doHandle$1(this, continuation);
        }
        Object objB = validTimesHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = validTimesHandler$doHandle$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                i10 = validTimesHandler$doHandle$1.I$0;
                map = (Map) validTimesHandler$doHandle$1.L$2;
                mbAdDbPlans = (MbAdDbPlans) validTimesHandler$doHandle$1.L$1;
                str2 = (String) validTimesHandler$doHandle$1.L$0;
                ResultKt.b(objB);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objB);
            }
            adPlansHitResponse = (AdPlansHitResponse) objB;
            if (adPlansHitResponse != null) {
                return adPlansHitResponse;
            }
            return e();
        }
        ResultKt.b(objB);
        int iIntValue = (mbAdDbPlans == null || (displayTimes = mbAdDbPlans.getDisplayTimes()) == null) ? 0 : displayTimes.intValue();
        NonAdShowedTimesManager nonAdShowedTimesManager = NonAdShowedTimesManager.f41098a;
        validTimesHandler$doHandle$1.L$0 = str;
        validTimesHandler$doHandle$1.L$1 = mbAdDbPlans;
        validTimesHandler$doHandle$1.L$2 = map;
        validTimesHandler$doHandle$1.I$0 = iIntValue;
        validTimesHandler$doHandle$1.label = 1;
        Object objB2 = nonAdShowedTimesManager.b(mbAdDbPlans, validTimesHandler$doHandle$1);
        if (objB2 == objF) {
            return objF;
        }
        str2 = str;
        i10 = iIntValue;
        objB = objB2;
        if (((Number) objB).intValue() >= i10) {
            return new AdPlansHitResponse(false, "展示次数已经达到上限");
        }
        a aVarC = c();
        if (aVarC != null) {
            validTimesHandler$doHandle$1.L$0 = null;
            validTimesHandler$doHandle$1.L$1 = null;
            validTimesHandler$doHandle$1.L$2 = null;
            validTimesHandler$doHandle$1.label = 2;
            objB = aVarC.b(str2, mbAdDbPlans, map, validTimesHandler$doHandle$1);
            if (objB == objF) {
                return objF;
            }
            adPlansHitResponse = (AdPlansHitResponse) objB;
            if (adPlansHitResponse != null) {
                return adPlansHitResponse;
            }
        }
        return e();
    }
}
