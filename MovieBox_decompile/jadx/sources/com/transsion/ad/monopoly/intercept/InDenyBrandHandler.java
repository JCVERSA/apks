package com.transsion.ad.monopoly.intercept;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.tencent.mmkv.MMKV;
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

public final class InDenyBrandHandler extends a {
    /* JADX WARN: Code duplicated, block: B:38:0x00be  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        InDenyBrandHandler$doHandle$1 inDenyBrandHandler$doHandle$1;
        String str2;
        String string;
        if (continuation instanceof InDenyBrandHandler$doHandle$1) {
            inDenyBrandHandler$doHandle$1 = (InDenyBrandHandler$doHandle$1) continuation;
            int i10 = inDenyBrandHandler$doHandle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                inDenyBrandHandler$doHandle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                inDenyBrandHandler$doHandle$1 = new InDenyBrandHandler$doHandle$1(this, continuation);
            }
        } else {
            inDenyBrandHandler$doHandle$1 = new InDenyBrandHandler$doHandle$1(this, continuation);
        }
        Object objB = inDenyBrandHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = inDenyBrandHandler$doHandle$1.label;
        if (i11 == 0) {
            ResultKt.b(objB);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            String str3 = "";
            objectRef.element = "";
            String[] strArr = (String[]) o.d(mbAdDbPlans != null ? mbAdDbPlans.getDenyBrand() : null, String[].class);
            if (strArr == null || strArr.length == 0) {
                booleanRef.element = false;
            } else {
                MMKV mmkvC = mg.a.f66402a.c();
                if (mmkvC != null && (string = mmkvC.getString("phone_brand", "")) != null) {
                    str2 = str3;
                    str2 = str3;
                    str2 = string;
                }
                str2 = str3;
                str2 = str3;
                str2 = str3;
                boolean zIsEmpty = TextUtils.isEmpty(str2);
                T tD = str2;
                if (zIsEmpty) {
                    tD = tg.b.f72740a.d();
                }
                objectRef.element = tD;
                for (String str4 : strArr) {
                    Locale locale = Locale.ROOT;
                    String lowerCase = str4.toLowerCase(locale);
                    Intrinsics.g(lowerCase, "toLowerCase(...)");
                    String lowerCase2 = ((String) objectRef.element).toLowerCase(locale);
                    Intrinsics.g(lowerCase2, "toLowerCase(...)");
                    if (StringsKt.c0(lowerCase, lowerCase2, false, 2, null)) {
                        booleanRef.element = true;
                    } else {
                        String lowerCase3 = ((String) objectRef.element).toLowerCase(locale);
                        Intrinsics.g(lowerCase3, "toLowerCase(...)");
                        String lowerCase4 = str4.toLowerCase(locale);
                        Intrinsics.g(lowerCase4, "toLowerCase(...)");
                        if (StringsKt.c0(lowerCase3, lowerCase4, false, 2, null)) {
                            booleanRef.element = true;
                        }
                    }
                }
            }
            if (booleanRef.element) {
                return new AdPlansHitResponse(false, "当前手机品牌在黑名单中");
            }
            a aVarC = c();
            if (aVarC != null) {
                inDenyBrandHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, inDenyBrandHandler$doHandle$1);
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
