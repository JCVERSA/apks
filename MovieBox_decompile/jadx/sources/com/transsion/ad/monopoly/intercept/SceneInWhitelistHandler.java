package com.transsion.ad.monopoly.intercept;

import android.text.TextUtils;
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

public final class SceneInWhitelistHandler extends a {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        SceneInWhitelistHandler$doHandle$1 sceneInWhitelistHandler$doHandle$1;
        if (continuation instanceof SceneInWhitelistHandler$doHandle$1) {
            sceneInWhitelistHandler$doHandle$1 = (SceneInWhitelistHandler$doHandle$1) continuation;
            int i10 = sceneInWhitelistHandler$doHandle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                sceneInWhitelistHandler$doHandle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                sceneInWhitelistHandler$doHandle$1 = new SceneInWhitelistHandler$doHandle$1(this, continuation);
            }
        } else {
            sceneInWhitelistHandler$doHandle$1 = new SceneInWhitelistHandler$doHandle$1(this, continuation);
        }
        Object objB = sceneInWhitelistHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = sceneInWhitelistHandler$doHandle$1.label;
        if (i11 == 0) {
            ResultKt.b(objB);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            String[] strArr = (String[]) o.d(mbAdDbPlans != null ? mbAdDbPlans.getScenes() : null, String[].class);
            if (strArr == null || strArr.length == 0) {
                booleanRef.element = true;
            } else {
                for (String str2 : strArr) {
                    Locale locale = Locale.ROOT;
                    String lowerCase = str2.toLowerCase(locale);
                    Intrinsics.g(lowerCase, "toLowerCase(...)");
                    String lowerCase2 = str.toLowerCase(locale);
                    Intrinsics.g(lowerCase2, "toLowerCase(...)");
                    if (TextUtils.equals(lowerCase, lowerCase2)) {
                        booleanRef.element = true;
                    }
                }
            }
            if (!booleanRef.element) {
                return new AdPlansHitResponse(false, "当前场景不在白名单中");
            }
            a aVarC = c();
            if (aVarC != null) {
                sceneInWhitelistHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, sceneInWhitelistHandler$doHandle$1);
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
