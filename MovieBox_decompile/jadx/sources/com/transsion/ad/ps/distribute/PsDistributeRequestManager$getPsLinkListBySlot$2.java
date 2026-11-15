package com.transsion.ad.ps.distribute;

import com.transsion.ad.ps.PSReportUtil;
import com.transsion.ad.ps.model.PsLinkDto;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.List;
import kotlin.Metadata;
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
import okhttp3.RequestBody;
import org.json.JSONObject;
import rh.f;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.distribute.PsDistributeRequestManager$getPsLinkListBySlot$2", f = "PsDistributeRequestManager.kt", l = {92, 106}, m = "invokeSuspend")
final class PsDistributeRequestManager$getPsLinkListBySlot$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $nonId;
    final int $pageIndex;
    final int $pageSize;
    final Integer $psScene;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PsDistributeRequestManager$getPsLinkListBySlot$2(int i10, int i11, Integer num, String str, Continuation<? super PsDistributeRequestManager$getPsLinkListBySlot$2> continuation) {
        super(2, continuation);
        this.$pageIndex = i10;
        this.$pageSize = i11;
        this.$psScene = num;
        this.$nonId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsDistributeRequestManager$getPsLinkListBySlot$2(this.$pageIndex, this.$pageSize, this.$psScene, this.$nonId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<RecommendInfo> data;
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
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            PsDistributeRequestManager psDistributeRequestManager = PsDistributeRequestManager.f41142a;
            JSONObject jSONObjectL = psDistributeRequestManager.l(this.$pageIndex, this.$pageSize, this.$psScene);
            f fVar = f.f71235a;
            String str = fVar.d() ? "https://feature-api.palmplaystore.com" : "https://test-feature-api.palmplaystore.com";
            if (fVar.a()) {
                xh.a.i(xh.a.f75336a, psDistributeRequestManager.k() + " --> getPsLinkListBySlot() --> psScene = " + this.$psScene + " --> url = " + str + " --> jsonObject = " + jSONObjectL, 0, false, 6, null);
            }
            zh.a aVarO = psDistributeRequestManager.o();
            mg.b.a aVar = mg.b.f66404a;
            String string = jSONObjectL.toString();
            Intrinsics.g(string, "toString(...)");
            RequestBody requestBodyA = aVar.a(string);
            this.label = 1;
            obj = aVarO.b(requestBodyA, str, this);
            if (obj == objF) {
                return objF;
            }
            PsLinkDto psLinkDto = (PsLinkDto) obj;
            PSReportUtil.f41121a.d(PSReportUtil.PSRequestState.REQUEST_SUCCESS, (psLinkDto == null || (data = psLinkDto.getData()) == null) ? null : Boxing.d(data.size()), "", String.valueOf(this.$psScene), PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_AD_PLAN.getValue());
            PsDistributeRequestManager psDistributeRequestManager2 = PsDistributeRequestManager.f41142a;
            String strValueOf = String.valueOf(this.$psScene);
            String str2 = this.$nonId;
            this.label = 2;
            if (psDistributeRequestManager2.h(strValueOf, str2, psLinkDto, this) == objF) {
                return objF;
            }
        } catch (Exception e10) {
            xh.a.i(xh.a.f75336a, PsDistributeRequestManager.f41142a.k() + " --> getPsLinkList() --> psScene = " + this.$psScene + " --> it = " + e10, 6, false, 4, null);
            PSReportUtil.f41121a.d(PSReportUtil.PSRequestState.REQUEST_FAIL, null, String.valueOf(e10.getMessage()), PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_AD_PLAN.getValue(), String.valueOf(this.$psScene));
        } finally {
            PsDistributeRequestManager.f41144c.remove(this.$psScene);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PsDistributeRequestManager$getPsLinkListBySlot$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
