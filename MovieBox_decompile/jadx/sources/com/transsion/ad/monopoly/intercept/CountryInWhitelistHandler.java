package com.transsion.ad.monopoly.intercept;

import com.blankj.utilcode.util.o;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public final class CountryInWhitelistHandler extends a {
    /* JADX WARN: Code duplicated, block: B:16:0x0058  */
    /* JADX WARN: Code duplicated, block: B:18:0x0079 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x007a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0084  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x007a -> B:20:0x0080). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(java.lang.String[] r11, java.lang.String r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.monopoly.intercept.CountryInWhitelistHandler.h(java.lang.String[], java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x007f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0085  */
    /* JADX WARN: Code duplicated, block: B:37:0x0093 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x009d  */
    /* JADX WARN: Code duplicated, block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        CountryInWhitelistHandler$doHandle$1 countryInWhitelistHandler$doHandle$1;
        a aVarC;
        AdPlansHitResponse adPlansHitResponse;
        if (continuation instanceof CountryInWhitelistHandler$doHandle$1) {
            countryInWhitelistHandler$doHandle$1 = (CountryInWhitelistHandler$doHandle$1) continuation;
            int i10 = countryInWhitelistHandler$doHandle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                countryInWhitelistHandler$doHandle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                countryInWhitelistHandler$doHandle$1 = new CountryInWhitelistHandler$doHandle$1(this, continuation);
            }
        } else {
            countryInWhitelistHandler$doHandle$1 = new CountryInWhitelistHandler$doHandle$1(this, continuation);
        }
        Object objH = countryInWhitelistHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = countryInWhitelistHandler$doHandle$1.label;
        boolean zBooleanValue = true;
        if (i11 != 0) {
            if (i11 == 1) {
                map = (Map) countryInWhitelistHandler$doHandle$1.L$2;
                mbAdDbPlans = (MbAdDbPlans) countryInWhitelistHandler$doHandle$1.L$1;
                str = (String) countryInWhitelistHandler$doHandle$1.L$0;
                ResultKt.b(objH);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objH);
            }
            adPlansHitResponse = (AdPlansHitResponse) objH;
            if (adPlansHitResponse != null) {
                return adPlansHitResponse;
            }
            return e();
        }
        ResultKt.b(objH);
        String[] strArr = (String[]) o.d(mbAdDbPlans != null ? mbAdDbPlans.getCountry() : null, String[].class);
        if (strArr != null && strArr.length != 0) {
            String countryCode = mbAdDbPlans != null ? mbAdDbPlans.getCountryCode() : null;
            countryInWhitelistHandler$doHandle$1.L$0 = str;
            countryInWhitelistHandler$doHandle$1.L$1 = mbAdDbPlans;
            countryInWhitelistHandler$doHandle$1.L$2 = map;
            countryInWhitelistHandler$doHandle$1.label = 1;
            objH = h(strArr, countryCode, countryInWhitelistHandler$doHandle$1);
            if (objH == objF) {
                return objF;
            }
        } else {
            if (zBooleanValue) {
                return new AdPlansHitResponse(false, "当前国家不在白名单中");
            }
            aVarC = c();
            if (aVarC != null) {
                countryInWhitelistHandler$doHandle$1.L$0 = null;
                countryInWhitelistHandler$doHandle$1.L$1 = null;
                countryInWhitelistHandler$doHandle$1.L$2 = null;
                countryInWhitelistHandler$doHandle$1.label = 2;
                objH = aVarC.b(str, mbAdDbPlans, map, countryInWhitelistHandler$doHandle$1);
                if (objH == objF) {
                    return objF;
                }
                adPlansHitResponse = (AdPlansHitResponse) objH;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
            }
        }
        return e();
        zBooleanValue = ((Boolean) objH).booleanValue();
        if (zBooleanValue) {
            return new AdPlansHitResponse(false, "当前国家不在白名单中");
        }
        aVarC = c();
        if (aVarC != null) {
            countryInWhitelistHandler$doHandle$1.L$0 = null;
            countryInWhitelistHandler$doHandle$1.L$1 = null;
            countryInWhitelistHandler$doHandle$1.L$2 = null;
            countryInWhitelistHandler$doHandle$1.label = 2;
            objH = aVarC.b(str, mbAdDbPlans, map, countryInWhitelistHandler$doHandle$1);
            if (objH == objF) {
                return objF;
            }
            adPlansHitResponse = (AdPlansHitResponse) objH;
            if (adPlansHitResponse != null) {
                return adPlansHitResponse;
            }
        }
        return e();
    }
}
