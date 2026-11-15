package com.transsion.ad.monopoly.intercept;

import ci.h;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.model.MbAdVideo;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.monopoly.plan.AdPlansTransform;
import com.transsion.ad.strategy.e;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class AdResourceDownloadedHandler extends a {
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code duplicated, block: B:95:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:? A[RETURN, SYNTHETIC] */
    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        AdResourceDownloadedHandler$doHandle$1 adResourceDownloadedHandler$doHandle$1;
        List<AdMaterialList> adMaterialList;
        String path;
        boolean zC;
        String path2;
        AdPlansHitResponse adPlansHitResponse;
        AdPlansHitResponse adPlansHitResponse2;
        AdPlansHitResponse adPlansHitResponse3;
        AdPlansHitResponse adPlansHitResponse4;
        if (continuation instanceof AdResourceDownloadedHandler$doHandle$1) {
            adResourceDownloadedHandler$doHandle$1 = (AdResourceDownloadedHandler$doHandle$1) continuation;
            int i10 = adResourceDownloadedHandler$doHandle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                adResourceDownloadedHandler$doHandle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                adResourceDownloadedHandler$doHandle$1 = new AdResourceDownloadedHandler$doHandle$1(this, continuation);
            }
        } else {
            adResourceDownloadedHandler$doHandle$1 = new AdResourceDownloadedHandler$doHandle$1(this, continuation);
        }
        Object objB = adResourceDownloadedHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = adResourceDownloadedHandler$doHandle$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(objB);
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
                return e();
            }
            if (i11 == 2) {
                ResultKt.b(objB);
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
                return e();
            }
            if (i11 == 3) {
                ResultKt.b(objB);
                adPlansHitResponse3 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse3 != null) {
                    return adPlansHitResponse3;
                }
                return e();
            }
            if (i11 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objB);
            adPlansHitResponse4 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse4 != null) {
                return adPlansHitResponse4;
            }
            return e();
        }
        ResultKt.b(objB);
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f41117a;
        if (adPlanSourceManager.c(mbAdDbPlans)) {
            a aVarC = c();
            if (aVarC != null) {
                adResourceDownloadedHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, adResourceDownloadedHandler$doHandle$1);
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
        if (adPlanSourceManager.h(mbAdDbPlans)) {
            a aVarC2 = c();
            if (aVarC2 != null) {
                adResourceDownloadedHandler$doHandle$1.label = 2;
                objB = aVarC2.b(str, mbAdDbPlans, map, adResourceDownloadedHandler$doHandle$1);
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
        if (adPlanSourceManager.e(mbAdDbPlans)) {
            a aVarC3 = c();
            if (aVarC3 != null) {
                adResourceDownloadedHandler$doHandle$1.label = 3;
                objB = aVarC3.b(str, mbAdDbPlans, map, adResourceDownloadedHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse3 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse3 != null) {
                    return adPlansHitResponse3;
                }
            }
            return e();
        }
        AdPlans adPlansB = AdPlansTransform.f41118a.b(mbAdDbPlans);
        if (adPlansB != null && (adMaterialList = adPlansB.getAdMaterialList()) != null) {
            for (AdMaterialList adMaterialList2 : adMaterialList) {
                if (Intrinsics.c(adMaterialList2.getType(), AdMaterialList.NON_AD_TYPE_TEXT)) {
                    h hVar = h.f16940a;
                    MbAdImage image = adMaterialList2.getImage();
                    if (image == null || (path2 = image.getPath()) == null) {
                        path2 = "";
                    }
                    zC = hVar.c(path2);
                } else {
                    h hVar2 = h.f16940a;
                    MbAdVideo video = adMaterialList2.getVideo();
                    if (video == null || (path = video.getPath()) == null) {
                        path = "";
                    }
                    zC = hVar2.c(path);
                }
                booleanRef.element = zC;
            }
        }
        if (!booleanRef.element && AdPlanSourceManager.f41117a.a(mbAdDbPlans)) {
            e.f41179a.c().putString("non_ad_plan_version", "");
            xh.a.e(xh.a.f75336a, null, d() + " --> hasResource() --> 用户可能手动将文件删除了，这个时候需要重新请求。 --> 包断广告版本号 重置", 0, false, 13, null);
        }
        if (!booleanRef.element) {
            return new AdPlansHitResponse(false, "广告资源未下载完成");
        }
        a aVarC4 = c();
        if (aVarC4 != null) {
            adResourceDownloadedHandler$doHandle$1.label = 4;
            objB = aVarC4.b(str, mbAdDbPlans, map, adResourceDownloadedHandler$doHandle$1);
            if (objB == objF) {
                return objF;
            }
            adPlansHitResponse4 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse4 != null) {
                return adPlansHitResponse4;
            }
        }
        return e();
    }
}
