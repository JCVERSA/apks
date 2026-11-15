package com.transsion.ad.monopoly.intercept;

import com.blankj.utilcode.util.o;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Locale;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

public final class InDenyModelHandler extends a {
    /* JADX WARN: Code duplicated, block: B:29:0x0093  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        InDenyModelHandler$doHandle$1 inDenyModelHandler$doHandle$1;
        if (continuation instanceof InDenyModelHandler$doHandle$1) {
            inDenyModelHandler$doHandle$1 = (InDenyModelHandler$doHandle$1) continuation;
            int i10 = inDenyModelHandler$doHandle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                inDenyModelHandler$doHandle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                inDenyModelHandler$doHandle$1 = new InDenyModelHandler$doHandle$1(this, continuation);
            }
        } else {
            inDenyModelHandler$doHandle$1 = new InDenyModelHandler$doHandle$1(this, continuation);
        }
        Object objB = inDenyModelHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = inDenyModelHandler$doHandle$1.label;
        if (i11 == 0) {
            ResultKt.b(objB);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            String strL = tg.b.f72740a.l();
            String[] strArr = (String[]) o.d(mbAdDbPlans != null ? mbAdDbPlans.getDenyModel() : null, String[].class);
            if (strArr == null || strArr.length == 0) {
                booleanRef.element = false;
            } else {
                for (String str2 : strArr) {
                    Locale locale = Locale.ROOT;
                    String lowerCase = str2.toLowerCase(locale);
                    Intrinsics.g(lowerCase, "toLowerCase(...)");
                    String lowerCase2 = strL.toLowerCase(locale);
                    Intrinsics.g(lowerCase2, "toLowerCase(...)");
                    if (StringsKt.c0(lowerCase, lowerCase2, false, 2, null)) {
                        booleanRef.element = true;
                    } else {
                        String lowerCase3 = strL.toLowerCase(locale);
                        Intrinsics.g(lowerCase3, "toLowerCase(...)");
                        String lowerCase4 = str2.toLowerCase(locale);
                        Intrinsics.g(lowerCase4, "toLowerCase(...)");
                        if (StringsKt.c0(lowerCase3, lowerCase4, false, 2, null)) {
                            booleanRef.element = true;
                        }
                    }
                }
            }
            if (booleanRef.element) {
                return new AdPlansHitResponse(false, "当前手机机型在黑名单中");
            }
            a aVarC = c();
            if (aVarC != null) {
                inDenyModelHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, inDenyModelHandler$doHandle$1);
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
