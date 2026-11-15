package com.transsion.ugcvideodetail.hepler;

import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsnet.downloader.manager.p;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.UGCVideoFloatManager$getPlayInfo$1", f = "UGCVideoFloatManager.kt", l = {Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, m = "invokeSuspend")
final class UGCVideoFloatManager$getPlayInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<UGCVideoPlayInfo, Unit> $callback;
    final String $ugcVideoId;
    private Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    UGCVideoFloatManager$getPlayInfo$1(String str, Function1<? super UGCVideoPlayInfo, Unit> function1, Continuation<? super UGCVideoFloatManager$getPlayInfo$1> continuation) {
        super(2, continuation);
        this.$ugcVideoId = str;
        this.$callback = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UGCVideoFloatManager$getPlayInfo$1 uGCVideoFloatManager$getPlayInfo$1 = new UGCVideoFloatManager$getPlayInfo$1(this.$ugcVideoId, this.$callback, continuation);
        uGCVideoFloatManager$getPlayInfo$1.L$0 = obj;
        return uGCVideoFloatManager$getPlayInfo$1;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00f8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:49:0x0103  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Function1<UGCVideoPlayInfo, Unit> function1;
        UGCVideoPlayStream uGCVideoPlayStream;
        BaseDto baseDto;
        Object obj2;
        UGCVideoPlayStream uGCVideoPlayStream2;
        DownloadBean downloadBean;
        a2 a2VarC;
        UGCVideoFloatManager$getPlayInfo$1$2$1$2 uGCVideoFloatManager$getPlayInfo$1$2$1$2;
        Object obj3;
        String path;
        Function1<UGCVideoPlayInfo, Unit> function2;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                } else if (i10 == 2) {
                    uGCVideoPlayStream2 = (UGCVideoPlayStream) this.L$3;
                    baseDto = (BaseDto) this.L$2;
                    function1 = (Function1) this.L$1;
                    obj2 = this.L$0;
                    ResultKt.b(obj);
                    downloadBean = (DownloadBean) obj;
                    if (downloadBean != null && (path = downloadBean.getPath()) != null && Intrinsics.c(uGCVideoPlayStream2.getFormat(), "DEFAULT") && Intrinsics.c(uGCVideoPlayStream2.getResolutions(), String.valueOf(downloadBean.getResolution()))) {
                        uGCVideoPlayStream2.setUrl(path);
                        wf.a.f74274a.c("VideoFloat", "getVideoPlayInfo 有下载地址，直接用下载地址", true);
                    }
                    a2VarC = y0.c();
                    uGCVideoFloatManager$getPlayInfo$1$2$1$2 = new UGCVideoFloatManager$getPlayInfo$1$2$1$2(function1, baseDto, null);
                    this.L$0 = obj2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 3;
                    if (kotlinx.coroutines.i.g(a2VarC, uGCVideoFloatManager$getPlayInfo$1$2$1$2, this) == objF) {
                        return objF;
                    }
                    obj3 = obj2;
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    obj3 = this.L$0;
                    ResultKt.b(obj);
                }
                objM453constructorimpl = obj3;
                function2 = this.$callback;
                if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                    function2.invoke(null);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            String str = this.$ugcVideoId;
            Result.Companion companion = Result.INSTANCE;
            ju.a aVarL = UGCVideoFloatManager.f54217b.l();
            this.label = 1;
            obj = ju.a.C0777a.i(aVarL, str, null, this, 2, null);
            if (obj == objF) {
                return objF;
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        String str2 = this.$ugcVideoId;
        function1 = this.$callback;
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            BaseDto baseDto2 = (BaseDto) objM453constructorimpl;
            UGCVideoPlayInfo uGCVideoPlayInfo = (UGCVideoPlayInfo) baseDto2.getData();
            if (uGCVideoPlayInfo != null && (uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(uGCVideoPlayInfo.getResources())) != null) {
                com.transsnet.downloader.manager.g gVarA = p.f57282a.a(Utils.a());
                this.L$0 = objM453constructorimpl;
                this.L$1 = function1;
                this.L$2 = baseDto2;
                this.L$3 = uGCVideoPlayStream;
                this.label = 2;
                Object objJ = gVarA.j(str2, this);
                if (objJ == objF) {
                    return objF;
                }
                baseDto = baseDto2;
                obj2 = objM453constructorimpl;
                obj = objJ;
                uGCVideoPlayStream2 = uGCVideoPlayStream;
                downloadBean = (DownloadBean) obj;
                if (downloadBean != null) {
                    uGCVideoPlayStream2.setUrl(path);
                    wf.a.f74274a.c("VideoFloat", "getVideoPlayInfo 有下载地址，直接用下载地址", true);
                }
                a2VarC = y0.c();
                uGCVideoFloatManager$getPlayInfo$1$2$1$2 = new UGCVideoFloatManager$getPlayInfo$1$2$1$2(function1, baseDto, null);
                this.L$0 = obj2;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 3;
                if (kotlinx.coroutines.i.g(a2VarC, uGCVideoFloatManager$getPlayInfo$1$2$1$2, this) == objF) {
                    return objF;
                }
                obj3 = obj2;
                objM453constructorimpl = obj3;
            }
        }
        function2 = this.$callback;
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            function2.invoke(null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCVideoFloatManager$getPlayInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
