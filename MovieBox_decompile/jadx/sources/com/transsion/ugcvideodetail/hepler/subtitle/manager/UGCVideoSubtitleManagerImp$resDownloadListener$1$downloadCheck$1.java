package com.transsion.ugcvideodetail.hepler.subtitle.manager;

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
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.subtitle.manager.UGCVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1", f = "UGCVideoSubtitleManagerImp.kt", l = {78}, m = "invokeSuspend")
final class UGCVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadBean $bean;
    final boolean $isSuccess;
    int label;
    final UGCVideoSubtitleManagerImp this$0;
    final UGCVideoSubtitleManagerImp$resDownloadListener$1 this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1(UGCVideoSubtitleManagerImp uGCVideoSubtitleManagerImp, DownloadBean downloadBean, boolean z10, UGCVideoSubtitleManagerImp$resDownloadListener$1 uGCVideoSubtitleManagerImp$resDownloadListener$1, Continuation<? super UGCVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoSubtitleManagerImp;
        this.$bean = downloadBean;
        this.$isSuccess = z10;
        this.this$1 = uGCVideoSubtitleManagerImp$resDownloadListener$1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1(this.this$0, this.$bean, this.$isSuccess, this.this$1, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            UGCVideoSubtitleManagerImp uGCVideoSubtitleManagerImp = this.this$0;
            String subtitleResId = this.$bean.getSubtitleResId();
            this.label = 1;
            obj = uGCVideoSubtitleManagerImp.a(subtitleResId, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        String str = this.$isSuccess ? "下载完成" : "资源继续下载";
        if (list.isEmpty()) {
            wf.a.f74274a.u(com.transsion.baselib.report.a.f42192a.a(), this.this$0.f54325c + " " + str + "，数据库为空，执行检测 titleName:" + this.$bean.getTitleName() + ", ep:" + this.$bean.getEp() + " se:" + this.$bean.getSe(), true);
            UGCVideoSubtitleManagerImp.l(this.this$0, this.$bean, null, 2, null);
        } else if (this.this$1.f(list)) {
            wf.a.f74274a.u(com.transsion.baselib.report.a.f42192a.a(), this.this$0.f54325c + " " + str + "，有失败，执行检测 titleName:" + this.$bean.getTitleName() + ", ep:" + this.$bean.getEp() + " se:" + this.$bean.getSe(), true);
            UGCVideoSubtitleManagerImp.l(this.this$0, this.$bean, null, 2, null);
        } else {
            wf.a.f74274a.u(com.transsion.baselib.report.a.f42192a.a(), this.this$0.f54325c + " " + str + "，有字幕无需检测 titleName:" + this.$bean.getTitleName() + ", ep:" + this.$bean.getEp() + " se:" + this.$bean.getSe(), true);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
