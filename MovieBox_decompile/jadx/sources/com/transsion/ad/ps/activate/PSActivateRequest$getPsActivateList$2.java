package com.transsion.ad.ps.activate;

import android.os.SystemClock;
import com.cloud.tmc.integration.net.UrlKt;
import com.transsion.ad.ps.PSReportUtil;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
import okhttp3.RequestBody;
import org.json.JSONObject;
import rh.f;
import tg.b;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.activate.PSActivateRequest$getPsActivateList$2", f = "PSActivateRequest.kt", l = {86, 107, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE}, m = "invokeSuspend")
final class PSActivateRequest$getPsActivateList$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    PSActivateRequest$getPsActivateList$2(Continuation<? super PSActivateRequest$getPsActivateList$2> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PSActivateRequest$getPsActivateList$2(continuation);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00f1 A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:7:0x0017, B:56:0x0167, B:14:0x002b, B:34:0x00e7, B:36:0x00f1, B:38:0x00fb, B:40:0x0101, B:42:0x010b, B:43:0x012c, B:45:0x0132, B:47:0x0138, B:49:0x0145, B:51:0x0156, B:53:0x015c, B:17:0x003f, B:24:0x0070, B:28:0x0080, B:30:0x0086, B:31:0x00b0, B:20:0x004a), top: B:65:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:41:0x010a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0143  */
    /* JADX WARN: Code duplicated, block: B:51:0x0156 A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:7:0x0017, B:56:0x0167, B:14:0x002b, B:34:0x00e7, B:36:0x00f1, B:38:0x00fb, B:40:0x0101, B:42:0x010b, B:43:0x012c, B:45:0x0132, B:47:0x0138, B:49:0x0145, B:51:0x0156, B:53:0x015c, B:17:0x003f, B:24:0x0070, B:28:0x0080, B:30:0x0086, B:31:0x00b0, B:20:0x004a), top: B:65:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:52:0x015b  */
    /* JADX WARN: Code duplicated, block: B:55:0x0166 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:62:0x0186  */
    /* JADX WARN: Instruction removed from duplicated block: B:62:0x0186, please report this as an issue */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        JSONObject jSONObject;
        String str;
        Object objC;
        JSONObject jSONObject2;
        String str2;
        Object objA;
        PsActivateDto psActivateDto;
        Integer numD;
        PSActivateManager pSActivateManager;
        List<PsActivateBean> data;
        List<PsActivateBean> data2;
        Integer numD2;
        List<PsActivateBean> data3;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    jSONObject = (JSONObject) this.L$2;
                    String str3 = (String) this.L$1;
                    JSONObject jSONObject3 = (JSONObject) this.L$0;
                    ResultKt.b(obj);
                    jSONObject2 = jSONObject3;
                    str = str3;
                    objC = obj;
                } else if (i10 == 2) {
                    String str4 = (String) this.L$0;
                    ResultKt.b(obj);
                    str2 = str4;
                    objA = obj;
                    psActivateDto = (PsActivateDto) objA;
                    if (f.f71235a.a()) {
                        xh.a aVar = xh.a.f75336a;
                        String strF = PSActivateRequest.f41124a.f();
                        if (psActivateDto != null || (data3 = psActivateDto.getData()) == null) {
                            numD2 = null;
                        } else {
                            numD2 = Boxing.d(data3.size());
                        }
                        xh.a.k(aVar, strF + " --> getPsActivateList() --> url = " + str2 + " --> postPsRecommendList = " + numD2, 0, false, 6, null);
                    }
                    PSReportUtil pSReportUtil = PSReportUtil.f41121a;
                    PSReportUtil.PSRequestState pSRequestState = PSReportUtil.PSRequestState.REQUEST_SUCCESS;
                    if (psActivateDto != null || (data2 = psActivateDto.getData()) == null) {
                        numD = null;
                    } else {
                        numD = Boxing.d(data2.size());
                    }
                    pSReportUtil.d(pSRequestState, numD, null, "", PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_ACTIVATE.getValue());
                    pSActivateManager = PSActivateManager.f41122a;
                    if (psActivateDto != null) {
                        data = psActivateDto.getData();
                    } else {
                        data = null;
                    }
                    this.L$0 = null;
                    this.label = 3;
                    if (pSActivateManager.f(data, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                PSActivateRequest.f41126c.set(false);
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    xh.a.k(xh.a.f75336a, PSActivateRequest.f41124a.f() + " --> getPsActivateList() --> it = " + thM456exceptionOrNullimpl, 6, false, 4, null);
                    PSActivateRequest.f41126c.set(false);
                    PSActivateRequest.f41127d = SystemClock.elapsedRealtime() - 6900000;
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            Result.Companion companion = Result.INSTANCE;
            jSONObject = new JSONObject();
            jSONObject.put(UrlKt.KEY_MINI_GAID, b.f72740a.i());
            str = "pkgList";
            PSActivateManager pSActivateManager2 = PSActivateManager.f41122a;
            this.L$0 = jSONObject;
            this.L$1 = "pkgList";
            this.L$2 = jSONObject;
            this.label = 1;
            objC = pSActivateManager2.c(this);
            if (objC == objF) {
                return objF;
            }
            jSONObject2 = jSONObject;
            jSONObject.put(str, objC);
            f fVar = f.f71235a;
            str2 = fVar.d() ? "https://feature-api.palmplaystore.com" : "https://test-feature-api.palmplaystore.com";
            if (fVar.a()) {
                xh.a.k(xh.a.f75336a, PSActivateRequest.f41124a.f() + " --> getPsActivateList() --> url = " + str2 + " --> jsonObject = " + jSONObject2, 0, false, 6, null);
            }
            PSReportUtil.f41121a.d(PSReportUtil.PSRequestState.REQUEST_TRIGGER, null, null, "", PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_ACTIVATE.getValue());
            zh.a aVarH = PSActivateRequest.f41124a.h();
            mg.b.a aVar2 = mg.b.f66404a;
            String string = jSONObject2.toString();
            Intrinsics.g(string, "toString(...)");
            RequestBody requestBodyA = aVar2.a(string);
            this.L$0 = str2;
            this.L$1 = null;
            this.L$2 = null;
            this.label = 2;
            objA = aVarH.a(requestBodyA, str2, this);
            if (objA == objF) {
                return objF;
            }
            psActivateDto = (PsActivateDto) objA;
            if (f.f71235a.a()) {
                xh.a aVar3 = xh.a.f75336a;
                String strF2 = PSActivateRequest.f41124a.f();
                if (psActivateDto != null) {
                    numD2 = null;
                } else {
                    numD2 = null;
                }
                xh.a.k(aVar3, strF2 + " --> getPsActivateList() --> url = " + str2 + " --> postPsRecommendList = " + numD2, 0, false, 6, null);
            }
            PSReportUtil pSReportUtil2 = PSReportUtil.f41121a;
            PSReportUtil.PSRequestState pSRequestState2 = PSReportUtil.PSRequestState.REQUEST_SUCCESS;
            if (psActivateDto != null) {
                numD = null;
            } else {
                numD = null;
            }
            pSReportUtil2.d(pSRequestState2, numD, null, "", PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_ACTIVATE.getValue());
            pSActivateManager = PSActivateManager.f41122a;
            if (psActivateDto != null) {
                data = psActivateDto.getData();
            } else {
                data = null;
            }
            this.L$0 = null;
            this.label = 3;
            if (pSActivateManager.f(data, this) == objF) {
                return objF;
            }
            PSActivateRequest.f41126c.set(false);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            xh.a.k(xh.a.f75336a, PSActivateRequest.f41124a.f() + " --> getPsActivateList() --> it = " + thM456exceptionOrNullimpl, 6, false, 4, null);
            PSActivateRequest.f41126c.set(false);
            PSActivateRequest.f41127d = SystemClock.elapsedRealtime() - 6900000;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PSActivateRequest$getPsActivateList$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
