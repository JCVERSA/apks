package com.transsnet.downloader.util;

import com.transsion.baselib.db.download.DownloadBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.DownloadUtil$initSetDownloadInfoAndRanges$1", f = "DownloadUtil.kt", l = {75}, m = "invokeSuspend")
final class DownloadUtil$initSetDownloadInfoAndRanges$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadBean $bean;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadUtil$initSetDownloadInfoAndRanges$1(DownloadBean downloadBean, Continuation<? super DownloadUtil$initSetDownloadInfoAndRanges$1> continuation) {
        super(2, continuation);
        this.$bean = downloadBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadUtil$initSetDownloadInfoAndRanges$1(this.$bean, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        DownloadBean downloadBean;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            String resourceId = this.$bean.getResourceId();
            if (resourceId != null) {
                DownloadBean downloadBean2 = this.$bean;
                ui.n0 n0VarQ = DownloadUtil.f57680a.q();
                this.L$0 = downloadBean2;
                this.label = 1;
                obj = n0VarQ.a(resourceId, this);
                if (obj == objF) {
                    return objF;
                }
                downloadBean = downloadBean2;
            }
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        downloadBean = (DownloadBean) this.L$0;
        ResultKt.b(obj);
        List list = (List) obj;
        if (list != null && (!list.isEmpty())) {
            downloadBean.getDownloadRanges().addAll(list);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadUtil$initSetDownloadInfoAndRanges$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
