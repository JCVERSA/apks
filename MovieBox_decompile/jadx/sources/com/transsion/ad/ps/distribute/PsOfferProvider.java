package com.transsion.ad.ps.distribute;

import android.text.TextUtils;
import ci.p;
import com.blankj.utilcode.util.o;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.ps.model.PsLinkAdInfo;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class PsOfferProvider {

    public static final PsOfferProvider f41145a = new PsOfferProvider();

    private PsOfferProvider() {
    }

    private final void b(AdPlans adPlans, AdMaterialList adMaterialList, PsLinkAdPlan psLinkAdPlan) {
        if (psLinkAdPlan != null) {
            PsLinkAdInfo psLinkAdInfo = (PsLinkAdInfo) o.d(psLinkAdPlan.getPsLinkAdInfoStr(), PsLinkAdInfo.class);
            RecommendInfo recommendInfo = (RecommendInfo) o.d(psLinkAdPlan.getPsInfoJson(), RecommendInfo.class);
            adMaterialList.setPsLinkAdPlan(psLinkAdPlan);
            adMaterialList.setDownloadMaterialSuccess(true);
            adMaterialList.setType(AdMaterialList.NON_AD_TYPE_TEXT);
            adMaterialList.setTitle(psLinkAdInfo != null ? psLinkAdInfo.getTitle() : null);
            adMaterialList.setDesc(psLinkAdInfo != null ? psLinkAdInfo.getDesc() : null);
            adMaterialList.setPsRecommendInfo(recommendInfo);
            adMaterialList.setImage(new MbAdImage(null, psLinkAdInfo != null ? psLinkAdInfo.getUrl() : null, null, null, null, null, null, null, null, psLinkAdInfo.getPath(), null, null, 3581, null));
            adMaterialList.setButtonText(psLinkAdInfo.getButtonText());
            if (adPlans != null) {
                adPlans.setAdvertiserName(psLinkAdInfo.getAdvertiserName());
                adPlans.setAdvertiserAvatar(psLinkAdInfo.getAdvertiserAvatar());
                adPlans.setAdvertiserAvatarPath(psLinkAdInfo.getAdvertiserAvatarPath());
            }
            if (adPlans != null) {
                adPlans.setExtImage(new MbAdImage(null, adPlans.getAdvertiserAvatar(), null, null, null, null, null, null, null, adPlans.getAdvertiserAvatarPath(), null, null, 3581, null));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d4 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:53:0x010c  */
    /* JADX WARN: Code duplicated, block: B:59:0x011c  */
    /* JADX WARN: Code duplicated, block: B:63:0x0132 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:67:0x014d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x0156  */
    /* JADX WARN: Code duplicated, block: B:72:0x0179  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x014b -> B:15:0x0041). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object c(com.transsion.ad.monopoly.model.AdPlans r22, kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instruction units count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.ps.distribute.PsOfferProvider.c(com.transsion.ad.monopoly.model.AdPlans, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final String d() {
        String simpleName = PsOfferProvider.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final boolean f(String str) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str != null && !StringsKt.q0(str)) {
                List listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null);
                ArrayList arrayList = new ArrayList();
                Iterator it = listS0.iterator();
                while (it.hasNext()) {
                    Integer numV = StringsKt.v(StringsKt.n1((String) it.next()).toString());
                    if (numV != null) {
                        arrayList.add(numV);
                    }
                }
                return CollectionsKt.W0(arrayList).contains(Integer.valueOf(Calendar.getInstance().get(11)));
            }
            return true;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Object objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                objM453constructorimpl = Boolean.FALSE;
            }
            return ((Boolean) objM453constructorimpl).booleanValue();
        }
    }

    private final boolean g(PsLinkAdPlan psLinkAdPlan) {
        Integer showMax = psLinkAdPlan.getShowMax();
        if (showMax == null || showMax.intValue() != 0) {
            int showedTimes = psLinkAdPlan.getShowedTimes();
            Integer showMax2 = psLinkAdPlan.getShowMax();
            if (showedTimes >= (showMax2 != null ? showMax2.intValue() : 0)) {
                xh.a.i(xh.a.f75336a, d() + " --> isTimesAvailable() --> 不符合展示条件 --> id = " + psLinkAdPlan.getId() + " --> showedTimes = " + psLinkAdPlan.getShowedTimes() + " --> showMax = " + psLinkAdPlan.getShowMax(), 5, false, 4, null);
                return false;
            }
        }
        Integer clickMax = psLinkAdPlan.getClickMax();
        if (clickMax == null || clickMax.intValue() != 0) {
            int clickedTimes = psLinkAdPlan.getClickedTimes();
            Integer clickMax2 = psLinkAdPlan.getClickMax();
            if (clickedTimes >= (clickMax2 != null ? clickMax2.intValue() : 0)) {
                xh.a.i(xh.a.f75336a, d() + " --> isTimesAvailable() --> 不符合展示条件 --> id = " + psLinkAdPlan.getId() + " --> clickedTimes = " + psLinkAdPlan.getClickedTimes() + " --> clickMax = " + psLinkAdPlan.getClickMax(), 5, false, 4, null);
                return false;
            }
        }
        if (f(psLinkAdPlan.getShowHours())) {
            return true;
        }
        int i10 = Calendar.getInstance().get(11);
        xh.a.i(xh.a.f75336a, d() + " --> isTimesAvailable() --> 不符合展示条件 --> id = " + psLinkAdPlan.getId() + " --> showHours = " + psLinkAdPlan.getShowHours() + " --> currentHour = " + i10, 5, false, 4, null);
        return false;
    }

    private final Object h(PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        if (!TextUtils.equals(psLinkAdPlan != null ? psLinkAdPlan.getShowDate() : null, p.f16947a.c())) {
            if (psLinkAdPlan != null) {
                psLinkAdPlan.setShowedTimes(0);
            }
            if (psLinkAdPlan != null) {
                psLinkAdPlan.setClickedTimes(0);
            }
        }
        if (psLinkAdPlan != null) {
            psLinkAdPlan.setUpdateTimestamp(Boxing.e(System.currentTimeMillis()));
        }
        Object objN = PsDbManager.f41140a.n(psLinkAdPlan, continuation);
        return objN == IntrinsicsKt.f() ? objN : Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object e(AdPlans adPlans, Continuation continuation) {
        PsOfferProvider$getPsAdPlans$1 psOfferProvider$getPsAdPlans$1;
        AdPlans adPlans2 = adPlans;
        if (continuation instanceof PsOfferProvider$getPsAdPlans$1) {
            psOfferProvider$getPsAdPlans$1 = (PsOfferProvider$getPsAdPlans$1) continuation;
            int i10 = psOfferProvider$getPsAdPlans$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                psOfferProvider$getPsAdPlans$1.label = i10 - Integer.MIN_VALUE;
            } else {
                psOfferProvider$getPsAdPlans$1 = new PsOfferProvider$getPsAdPlans$1(this, continuation);
            }
        } else {
            psOfferProvider$getPsAdPlans$1 = new PsOfferProvider$getPsAdPlans$1(this, continuation);
        }
        Object objC = psOfferProvider$getPsAdPlans$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = psOfferProvider$getPsAdPlans$1.label;
        if (i11 == 0) {
            ResultKt.b(objC);
            psOfferProvider$getPsAdPlans$1.L$0 = adPlans2;
            psOfferProvider$getPsAdPlans$1.label = 1;
            objC = c(adPlans2, psOfferProvider$getPsAdPlans$1);
            if (objC == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            adPlans2 = (AdPlans) psOfferProvider$getPsAdPlans$1.L$0;
            ResultKt.b(objC);
        }
        PsLinkAdPlan psLinkAdPlan = (PsLinkAdPlan) objC;
        if (psLinkAdPlan == null) {
            return Boxing.a(false);
        }
        AdMaterialList adMaterialList = new AdMaterialList(null, null, null, null, null, null, null, null, null, false, null, null, null, 8191, null);
        if (adPlans2 != null) {
            adPlans2.setAdMaterialList(CollectionsKt.e(adMaterialList));
        }
        b(adPlans2, adMaterialList, psLinkAdPlan);
        return Boxing.a(true);
    }
}
