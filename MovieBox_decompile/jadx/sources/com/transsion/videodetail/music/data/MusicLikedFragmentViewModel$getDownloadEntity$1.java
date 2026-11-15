package com.transsion.videodetail.music.data;

import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$getDownloadEntity$1", f = "MusicLikedFragmentViewModel.kt", l = {254}, m = "invokeSuspend")
final class MusicLikedFragmentViewModel$getDownloadEntity$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<DownloadBean, Unit> $callback;
    final String $subjectId;
    int label;
    final MusicLikedFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MusicLikedFragmentViewModel$getDownloadEntity$1(MusicLikedFragmentViewModel musicLikedFragmentViewModel, String str, Function1<? super DownloadBean, Unit> function1, Continuation<? super MusicLikedFragmentViewModel$getDownloadEntity$1> continuation) {
        super(2, continuation);
        this.this$0 = musicLikedFragmentViewModel;
        this.$subjectId = str;
        this.$callback = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MusicLikedFragmentViewModel$getDownloadEntity$1(this.this$0, this.$subjectId, this.$callback, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            ui.c cVarU = this.this$0.u();
            String str = this.$subjectId;
            if (str == null) {
                str = "";
            }
            this.label = 1;
            obj = cVarU.D(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        this.$callback.invoke((DownloadBean) obj);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicLikedFragmentViewModel$getDownloadEntity$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
