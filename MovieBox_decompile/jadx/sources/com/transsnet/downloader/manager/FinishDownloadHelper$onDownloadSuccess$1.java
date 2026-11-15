package com.transsnet.downloader.manager;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.bean.StartRequestBean;
import com.transsnet.downloader.bean.StartlDownloadBean;
import java.util.Collections;
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

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.FinishDownloadHelper$onDownloadSuccess$1", f = "FinishDownloadHelper.kt", l = {57, 68}, m = "invokeSuspend")
final class FinishDownloadHelper$onDownloadSuccess$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadBean $bean;
    int label;
    final FinishDownloadHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FinishDownloadHelper$onDownloadSuccess$1(DownloadBean downloadBean, FinishDownloadHelper finishDownloadHelper, Continuation<? super FinishDownloadHelper$onDownloadSuccess$1> continuation) {
        super(2, continuation);
        this.$bean = downloadBean;
        this.this$0 = finishDownloadHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FinishDownloadHelper$onDownloadSuccess$1(this.$bean, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String resourceId;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                if (this.$bean.isUGCVideo()) {
                    String ugcVideoId = this.$bean.getUgcVideoId();
                    if (ugcVideoId != null && ugcVideoId.length() != 0 && (resourceId = this.$bean.getResourceId()) != null && resourceId.length() != 0) {
                        List listSingletonList = Collections.singletonList(new UGCStartDownloadBean(this.$bean.getUgcVideoId(), this.$bean.getResourceId(), this.$bean.getSubtitleIdType()));
                        wf.a.C0922a.f(wf.a.f74274a, this.this$0.f57253a, "onDownloadSuccess UGC, name = " + this.$bean.getName() + ", ugcVideoId = " + this.$bean.getUgcVideoId() + ", resourceId = " + this.$bean.getResourceId() + ", idType = " + this.$bean.getSubtitleIdType(), false, 4, null);
                        cx.a aVarN = this.this$0.n();
                        String strA = gg.a.f61067a.a();
                        mg.b.a aVar = mg.b.f66404a;
                        String strJ = com.blankj.utilcode.util.o.j(new UGCStartRequestBean(listSingletonList));
                        Intrinsics.g(strJ, "toJson(...)");
                        RequestBody requestBodyA = aVar.a(strJ);
                        this.label = 1;
                        obj = aVarN.j(strA, requestBodyA, this);
                        if (obj == objF) {
                            return objF;
                        }
                    }
                    wf.a.C0922a.f(wf.a.f74274a, this.this$0.f57253a, "onDownloadSuccess UGC fail, has no ugcVideoId or resourceId, name = " + this.$bean.getName(), false, 4, null);
                    return Unit.f64096a;
                }
                List listSingletonList2 = Collections.singletonList(new StartlDownloadBean(this.$bean.getSubjectId(), this.$bean.getResourceId(), Boxing.d(this.$bean.getEpse())));
                wf.a.C0922a.f(wf.a.f74274a, this.this$0.f57253a, "onDownloadSuccess, name = " + this.$bean.getName() + ", subjectId = " + this.$bean.getSubjectId() + ", resourceId = " + this.$bean.getResourceId() + ", episode = " + this.$bean.getEpse(), false, 4, null);
                cx.a aVarN2 = this.this$0.n();
                mg.b.a aVar2 = mg.b.f66404a;
                String strJ2 = com.blankj.utilcode.util.o.j(new StartRequestBean(listSingletonList2));
                Intrinsics.g(strJ2, "toJson(...)");
                RequestBody requestBodyA2 = aVar2.a(strJ2);
                this.label = 2;
                obj = cx.a.C0695a.b(aVarN2, null, requestBodyA2, this, 1, null);
                if (obj == objF) {
                    return objF;
                }
            } else if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, this.this$0.f57253a, "onDownloadSuccess error", e10, false, 8, null);
            e10.printStackTrace();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FinishDownloadHelper$onDownloadSuccess$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
