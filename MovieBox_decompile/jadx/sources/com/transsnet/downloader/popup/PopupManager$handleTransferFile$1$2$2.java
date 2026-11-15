package com.transsnet.downloader.popup;

import com.transsnet.downloader.dialog.DownloadReDetectorSaveDialog;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1$2$2", f = "PopupManager.kt", l = {}, m = "invokeSuspend")
final class PopupManager$handleTransferFile$1$2$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadReDetectorSaveDialog $loadingDialog;
    final Ref.LongRef $savedSize;
    final Ref.LongRef $totalAllSize;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PopupManager$handleTransferFile$1$2$2(Ref.LongRef longRef, Ref.LongRef longRef2, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, Continuation<? super PopupManager$handleTransferFile$1$2$2> continuation) {
        super(2, continuation);
        this.$savedSize = longRef;
        this.$totalAllSize = longRef2;
        this.$loadingDialog = downloadReDetectorSaveDialog;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PopupManager$handleTransferFile$1$2$2(this.$savedSize, this.$totalAllSize, this.$loadingDialog, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Ref.LongRef longRef = this.$savedSize;
        long j10 = longRef.element;
        Ref.LongRef longRef2 = this.$totalAllSize;
        long j11 = longRef2.element;
        if (j10 > j11) {
            longRef.element = j11;
        }
        this.$loadingDialog.J0((int) ((longRef.element * 100.0f) / longRef2.element));
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PopupManager$handleTransferFile$1$2$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
