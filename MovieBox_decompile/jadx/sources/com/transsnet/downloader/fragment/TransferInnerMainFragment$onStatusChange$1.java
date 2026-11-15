package com.transsnet.downloader.fragment;

import com.transsnet.downloader.widget.TransferBottomToolsView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.TransferInnerMainFragment$onStatusChange$1", f = "TransferInnerMainFragment.kt", l = {}, m = "invokeSuspend")
final class TransferInnerMainFragment$onStatusChange$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final int $failCount;
    final int $transmittingCount;
    int label;
    final TransferInnerMainFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransferInnerMainFragment$onStatusChange$1(TransferInnerMainFragment transferInnerMainFragment, int i10, int i11, Continuation<? super TransferInnerMainFragment$onStatusChange$1> continuation) {
        super(2, continuation);
        this.this$0 = transferInnerMainFragment;
        this.$transmittingCount = i10;
        this.$failCount = i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void d(TransferInnerMainFragment transferInnerMainFragment, int i10, int i11) {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        bx.l0 l0Var = (bx.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var != null && (transferBottomToolsView2 = l0Var.f16162d) != null) {
            transferBottomToolsView2.changeStatus(TransferBottomToolsView.STATUS_SEND);
        }
        bx.l0 l0Var2 = (bx.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView = l0Var2.f16162d) != null) {
            transferBottomToolsView.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_SEND);
        }
        wf.a.C0922a.v(wf.a.f74274a, TransferBottomToolsView.TAG, transferInnerMainFragment.logMsgTag + " ====== onStatusChange ,连接成功onTaskStateChange, transmittingCount：" + i10 + ",failCount:" + i11 + " ", false, 4, null);
        transferInnerMainFragment.g1(i10, i11);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TransferInnerMainFragment$onStatusChange$1(this.this$0, this.$transmittingCount, this.$failCount, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object invokeSuspend(Object obj) {
        TransferBottomToolsView transferBottomToolsView;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        bx.l0 l0Var = (bx.l0) this.this$0.getMViewBinding();
        if (l0Var != null && (transferBottomToolsView = l0Var.f16162d) != null) {
            final TransferInnerMainFragment transferInnerMainFragment = this.this$0;
            final int i10 = this.$transmittingCount;
            final int i11 = this.$failCount;
            Boxing.a(transferBottomToolsView.post(new Runnable() {
                @Override
                public final void run() {
                    TransferInnerMainFragment$onStatusChange$1.d(transferInnerMainFragment, i10, i11);
                }
            }));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TransferInnerMainFragment$onStatusChange$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
