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

public final class BrandInWhitelistHandler extends a {
    /* JADX WARN: Code duplicated, block: B:31:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        BrandInWhitelistHandler$doHandle$1 brandInWhitelistHandler$doHandle$1;
        AdPlansHitResponse adPlansHitResponse;
        AdPlansHitResponse adPlansHitResponse2;
        if (continuation instanceof BrandInWhitelistHandler$doHandle$1) {
            brandInWhitelistHandler$doHandle$1 = (BrandInWhitelistHandler$doHandle$1) continuation;
            int i10 = brandInWhitelistHandler$doHandle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                brandInWhitelistHandler$doHandle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                brandInWhitelistHandler$doHandle$1 = new BrandInWhitelistHandler$doHandle$1(this, continuation);
            }
        } else {
            brandInWhitelistHandler$doHandle$1 = new BrandInWhitelistHandler$doHandle$1(this, continuation);
        }
        Object objB = brandInWhitelistHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = brandInWhitelistHandler$doHandle$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(objB);
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
                return e();
            }
            if (i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objB);
            adPlansHitResponse2 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse2 != null) {
                return adPlansHitResponse2;
            }
            return e();
        }
        ResultKt.b(objB);
        String[] strArr = (String[]) o.d(mbAdDbPlans != null ? mbAdDbPlans.getBrand() : null, String[].class);
        if (strArr == null || strArr.length == 0) {
            a aVarC = c();
            if (aVarC != null) {
                brandInWhitelistHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, brandInWhitelistHandler$doHandle$1);
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
        String strD = tg.b.f72740a.d();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        int length = strArr.length;
        int i12 = 0;
        while (i12 < length) {
            String str2 = strArr[i12];
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            String lowerCase2 = strD.toLowerCase(locale);
            Intrinsics.g(lowerCase2, "toLowerCase(...)");
            String[] strArr2 = strArr;
            int i13 = length;
            if (StringsKt.c0(lowerCase, lowerCase2, false, 2, null)) {
                booleanRef.element = true;
            } else {
                String lowerCase3 = strD.toLowerCase(locale);
                Intrinsics.g(lowerCase3, "toLowerCase(...)");
                String lowerCase4 = str2.toLowerCase(locale);
                Intrinsics.g(lowerCase4, "toLowerCase(...)");
                if (StringsKt.c0(lowerCase3, lowerCase4, false, 2, null)) {
                    booleanRef.element = true;
                }
            }
            i12++;
            length = i13;
            strArr = strArr2;
        }
        if (!booleanRef.element) {
            return new AdPlansHitResponse(false, "当前手机品牌不在白名单中");
        }
        a aVarC2 = c();
        if (aVarC2 != null) {
            brandInWhitelistHandler$doHandle$1.label = 2;
            objB = aVarC2.b(str, mbAdDbPlans, map, brandInWhitelistHandler$doHandle$1);
            if (objB == objF) {
                return objF;
            }
            adPlansHitResponse2 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse2 != null) {
                return adPlansHitResponse2;
            }
        }
        return e();
    }
}
