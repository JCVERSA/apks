package com.transsnet.downloader.viewmodel;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadViewModel$saveTransferData2DB$2$1", f = "DownloadViewModel.kt", l = {175, 176, 177}, m = "invokeSuspend")
final class DownloadViewModel$saveTransferData2DB$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function0<Unit> $callback;
    final DownloadBean $this_apply;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadViewModel$saveTransferData2DB$2$1$1", f = "DownloadViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final Function0<Unit> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function0;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$callback.invoke();
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadViewModel$saveTransferData2DB$2$1(DownloadBean downloadBean, Function0<Unit> function0, Continuation<? super DownloadViewModel$saveTransferData2DB$2$1> continuation) {
        super(2, continuation);
        this.$this_apply = downloadBean;
        this.$callback = function0;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadViewModel$saveTransferData2DB$2$1(this.$this_apply, this.$callback, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0076 A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        a2 a2VarC;
        AnonymousClass1 anonymousClass1;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else if (i10 == 2) {
                ResultKt.b(obj);
                a2VarC = y0.c();
                anonymousClass1 = new AnonymousClass1(this.$callback, null);
                this.label = 3;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        wf.a.f74274a.p(TransferBottomToolsView.TAG, new String[]{"保存到数据库, data:" + this.$this_apply}, true);
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        DownloadBean downloadBean = this.$this_apply;
        this.label = 1;
        if (downloadEsHelperA.T(downloadBean, this) == objF) {
            return objF;
        }
        this.label = 2;
        if (u0.a(500L, this) == objF) {
            return objF;
        }
        a2VarC = y0.c();
        anonymousClass1 = new AnonymousClass1(this.$callback, null);
        this.label = 3;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadViewModel$saveTransferData2DB$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
