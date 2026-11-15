package com.transsion.ad.monopoly.manager;

import android.text.TextUtils;
import ci.f;
import com.blankj.utilcode.util.o;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdPlansBean;
import com.transsion.ad.monopoly.model.MbAdPlansDto;
import com.transsion.ad.strategy.e;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.monopoly.manager.AdPlansAssetsManager$innerCopy$2", f = "AdPlansAssetsManager.kt", l = {Sdk$SDKMetric.SDKMetricType.TEMPLATE_HTML_SIZE_VALUE, 45}, m = "invokeSuspend")
final class AdPlansAssetsManager$innerCopy$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;

    AdPlansAssetsManager$innerCopy$2(Continuation<? super AdPlansAssetsManager$innerCopy$2> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AdPlansAssetsManager$innerCopy$2(continuation);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008b A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:7:0x0012, B:31:0x007c, B:33:0x008b, B:35:0x0091, B:37:0x009c, B:39:0x00a2, B:41:0x00ac, B:43:0x00b2, B:44:0x00b6, B:46:0x00e6, B:13:0x0021, B:19:0x0035, B:21:0x003b, B:24:0x0042, B:25:0x0051, B:27:0x005f, B:45:0x00d9, B:16:0x0028), top: B:55:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0090  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b2 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:7:0x0012, B:31:0x007c, B:33:0x008b, B:35:0x0091, B:37:0x009c, B:39:0x00a2, B:41:0x00ac, B:43:0x00b2, B:44:0x00b6, B:46:0x00e6, B:13:0x0021, B:19:0x0035, B:21:0x003b, B:24:0x0042, B:25:0x0051, B:27:0x005f, B:45:0x00d9, B:16:0x0028), top: B:55:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00fe  */
    /* JADX WARN: Instruction removed from duplicated block: B:52:0x00fe, please report this as an issue */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        MbAdPlansDto mbAdPlansDto;
        MbAdPlansBean data;
        String version;
        MbAdPlansBean data2;
        Integer numD;
        List<AdPlans> adPlans;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mbAdPlansDto = (MbAdPlansDto) this.L$0;
                    ResultKt.b(obj);
                }
                MMKV mmkvC = e.f41179a.c();
                data = mbAdPlansDto.getData();
                if (data != null) {
                    version = data.getVersion();
                } else {
                    version = null;
                }
                mmkvC.putString("non_ad_plan_version", version);
                AdPlansAssetsManager adPlansAssetsManager = AdPlansAssetsManager.f41103b;
                data2 = mbAdPlansDto.getData();
                if (data2 != null || (adPlans = data2.getAdPlans()) == null) {
                    numD = null;
                } else {
                    numD = Boxing.d(adPlans.size());
                }
                MbAdPlansBean data3 = mbAdPlansDto.getData();
                xh.b.a.c(adPlansAssetsManager, 4, "innerCopy() --> success --> adPlans?.size -- " + numD + " --> adPlans = " + (data3 != null ? data3.getAdPlans() : null), null, false, 12, null);
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    xh.b.a.c(AdPlansAssetsManager.f41103b, 6, "innerCopy() --> 保存本地数据异常 -- error error error --> it = " + thM456exceptionOrNullimpl, null, false, 12, null);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            Result.Companion companion = Result.INSTANCE;
            AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f41107a;
            this.label = 1;
            obj = adPlansStorageManager.g(this);
            if (obj == objF) {
                return objF;
            }
            List list = (List) obj;
            if (list == null || list.isEmpty()) {
                String strB = f.f16936a.b("local_non_ad_plan.json");
                if (TextUtils.isEmpty(strB)) {
                    xh.b.a.c(AdPlansAssetsManager.f41103b, 6, "innerCopy() --> assets数据 -- 保存数据库失败 -- fail fail fail -- readAssets = null", null, false, 12, null);
                } else {
                    MbAdPlansDto mbAdPlansDto2 = (MbAdPlansDto) o.d(strB, MbAdPlansDto.class);
                    AdPlansAssetsManager adPlansAssetsManager2 = AdPlansAssetsManager.f41103b;
                    Intrinsics.e(mbAdPlansDto2);
                    MbAdPlansDto mbAdPlansDtoE = adPlansAssetsManager2.e(mbAdPlansDto2);
                    this.L$0 = mbAdPlansDtoE;
                    this.label = 2;
                    if (adPlansAssetsManager2.f(mbAdPlansDtoE, this) == objF) {
                        return objF;
                    }
                    mbAdPlansDto = mbAdPlansDtoE;
                    MMKV mmkvC2 = e.f41179a.c();
                    data = mbAdPlansDto.getData();
                    if (data != null) {
                        version = data.getVersion();
                    } else {
                        version = null;
                    }
                    mmkvC2.putString("non_ad_plan_version", version);
                    AdPlansAssetsManager adPlansAssetsManager3 = AdPlansAssetsManager.f41103b;
                    data2 = mbAdPlansDto.getData();
                    if (data2 != null) {
                        numD = null;
                    } else {
                        numD = null;
                    }
                    MbAdPlansBean data4 = mbAdPlansDto.getData();
                    if (data4 != null) {
                    }
                    xh.b.a.c(adPlansAssetsManager3, 4, "innerCopy() --> success --> adPlans?.size -- " + numD + " --> adPlans = " + (data4 != null ? data4.getAdPlans() : null), null, false, 12, null);
                }
            } else {
                xh.b.a.c(AdPlansAssetsManager.f41103b, 4, "innerCopy() --> 本地存在非标广告计划，不需要从assets下载", null, false, 12, null);
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            xh.b.a.c(AdPlansAssetsManager.f41103b, 6, "innerCopy() --> 保存本地数据异常 -- error error error --> it = " + thM456exceptionOrNullimpl, null, false, 12, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AdPlansAssetsManager$innerCopy$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
