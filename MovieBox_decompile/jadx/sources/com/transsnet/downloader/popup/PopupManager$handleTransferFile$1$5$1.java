package com.transsnet.downloader.popup;

import com.blankj.utilcode.util.Utils;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.dialog.DownloadReDetectorSaveDialog;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1$5$1", f = "PopupManager.kt", l = {}, m = "invokeSuspend")
final class PopupManager$handleTransferFile$1$5$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $checkTransferFailed;
    final yw.b $info;
    final DownloadReDetectorSaveDialog $loadingDialog;
    final Function2<Boolean, Integer, Unit> $resultCallback;
    final boolean $success;
    int label;
    final PopupManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PopupManager$handleTransferFile$1$5$1(Function2<? super Boolean, ? super Integer, Unit> function2, boolean z10, yw.b bVar, PopupManager popupManager, boolean z11, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, Continuation<? super PopupManager$handleTransferFile$1$5$1> continuation) {
        super(2, continuation);
        this.$resultCallback = function2;
        this.$success = z10;
        this.$info = bVar;
        this.this$0 = popupManager;
        this.$checkTransferFailed = z11;
        this.$loadingDialog = downloadReDetectorSaveDialog;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PopupManager$handleTransferFile$1$5$1(this.$resultCallback, this.$success, this.$info, this.this$0, this.$checkTransferFailed, this.$loadingDialog, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Function2<Boolean, Integer, Unit> function2 = this.$resultCallback;
        if (function2 != null) {
            function2.invoke(Boxing.a(this.$success), Boxing.d(this.$info.e()));
        }
        if (this.$success) {
            fh.b.f60176a.e(this.this$0.y(this.$checkTransferFailed));
        } else {
            fh.b.f60176a.e(Utils.a().getString(this.$checkTransferFailed ? R$string.download_move_failed : R$string.download_save_failed));
        }
        if (this.$loadingDialog.isAdded()) {
            this.$loadingDialog.dismissAllowingStateLoss();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PopupManager$handleTransferFile$1$5$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
