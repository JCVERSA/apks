package com.transsnet.downloader.viewmodel;

import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.TransferReceivedViewModel$getTransferReceivedList$1", f = "TransferReceivedViewModel.kt", l = {27}, m = "invokeSuspend")
final class TransferReceivedViewModel$getTransferReceivedList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $fromDb;
    int label;
    final TransferReceivedViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransferReceivedViewModel$getTransferReceivedList$1(boolean z10, TransferReceivedViewModel transferReceivedViewModel, Continuation<? super TransferReceivedViewModel$getTransferReceivedList$1> continuation) {
        super(2, continuation);
        this.$fromDb = z10;
        this.this$0 = transferReceivedViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TransferReceivedViewModel$getTransferReceivedList$1(this.$fromDb, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            boolean z10 = this.$fromDb;
            this.label = 1;
            obj = downloadEsHelperA.N(z10, this);
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
        this.this$0.j().n(list != null ? CollectionsKt.U0(list) : null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TransferReceivedViewModel$getTransferReceivedList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
