package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Locale;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
import yg.l;

public final class ShowOnNetworkStateHandler extends a {
    private final Boolean g(MbAdDbPlans mbAdDbPlans) {
        String extraConfig;
        if (mbAdDbPlans != null && (extraConfig = mbAdDbPlans.getExtraConfig()) != null) {
            try {
                String string = new JSONObject(extraConfig).getString("network");
                Intrinsics.e(string);
                String lowerCase = string.toLowerCase(Locale.ROOT);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
                return Boolean.valueOf(Intrinsics.c(lowerCase, "on"));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        ShowOnNetworkStateHandler$doHandle$1 showOnNetworkStateHandler$doHandle$1;
        if (continuation instanceof ShowOnNetworkStateHandler$doHandle$1) {
            showOnNetworkStateHandler$doHandle$1 = (ShowOnNetworkStateHandler$doHandle$1) continuation;
            int i10 = showOnNetworkStateHandler$doHandle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                showOnNetworkStateHandler$doHandle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                showOnNetworkStateHandler$doHandle$1 = new ShowOnNetworkStateHandler$doHandle$1(this, continuation);
            }
        } else {
            showOnNetworkStateHandler$doHandle$1 = new ShowOnNetworkStateHandler$doHandle$1(this, continuation);
        }
        Object objB = showOnNetworkStateHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = showOnNetworkStateHandler$doHandle$1.label;
        if (i11 == 0) {
            ResultKt.b(objB);
            Boolean boolG = g(mbAdDbPlans);
            boolean zE = l.f76264a.e();
            if (!zE ? boolG == null || Intrinsics.c(boolG, Boxing.a(false)) : boolG == null || Intrinsics.c(boolG, Boxing.a(true))) {
                return new AdPlansHitResponse(false, "当前网络状态 = " + zE + " -- isShowOnNetwork = " + boolG);
            }
            a aVarC = c();
            if (aVarC != null) {
                showOnNetworkStateHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, showOnNetworkStateHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
            }
            return e();
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objB);
        AdPlansHitResponse adPlansHitResponse = (AdPlansHitResponse) objB;
        if (adPlansHitResponse != null) {
            return adPlansHitResponse;
        }
        return e();
    }
}
