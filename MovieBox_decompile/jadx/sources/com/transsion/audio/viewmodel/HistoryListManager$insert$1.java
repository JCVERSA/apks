package com.transsion.audio.viewmodel;

import com.transsion.baselib.db.audio.AudioBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$insert$1", f = "HistoryListManager.kt", l = {Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class HistoryListManager$insert$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final AudioBean $audioBean;
    int label;
    final HistoryListManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoryListManager$insert$1(AudioBean audioBean, HistoryListManager historyListManager, Continuation<? super HistoryListManager$insert$1> continuation) {
        super(2, continuation);
        this.$audioBean = audioBean;
        this.this$0 = historyListManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoryListManager$insert$1(this.$audioBean, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            wf.a.C0922a.g(wf.a.f74274a, "audio insert ok", false, 2, null);
            yw.e eVar = new yw.e(true, false);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = yw.e.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, eVar, 0L);
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        this.$audioBean.setUpdateTimeStamp(Boxing.e(System.currentTimeMillis()));
        si.a aVarQ = this.this$0.q();
        if (aVarQ != null) {
            AudioBean audioBean = this.$audioBean;
            this.label = 1;
            if (aVarQ.h(audioBean, this) == objF) {
                return objF;
            }
        }
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String resourceId = this.$audioBean.getResourceId();
        if (resourceId == null) {
            resourceId = this.$audioBean.getAudioUrl();
        }
        Long readProcess = this.$audioBean.getReadProcess();
        long jLongValue = readProcess != null ? readProcess.longValue() : 0L;
        this.label = 2;
        if (downloadEsHelperA.e0(resourceId, jLongValue, this) == objF) {
            return objF;
        }
        wf.a.C0922a.g(wf.a.f74274a, "audio insert ok", false, 2, null);
        yw.e eVar2 = new yw.e(true, false);
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = yw.e.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, eVar2, 0L);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HistoryListManager$insert$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
