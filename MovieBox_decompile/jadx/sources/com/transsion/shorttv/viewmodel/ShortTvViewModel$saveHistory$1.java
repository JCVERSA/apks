package com.transsion.shorttv.viewmodel;

import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.Subject;
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
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$saveHistory$1", f = "ShortTvViewModel.kt", l = {741, 742}, m = "invokeSuspend")
final class ShortTvViewModel$saveHistory$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final long $progress;
    final ShortTVItem $shortTVItem;
    final Subject $subject;
    int label;
    final ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$saveHistory$1(ShortTvViewModel shortTvViewModel, Subject subject, ShortTVItem shortTVItem, long j10, Continuation<? super ShortTvViewModel$saveHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$subject = subject;
        this.$shortTVItem = shortTVItem;
        this.$progress = j10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$saveHistory$1(this.this$0, this.$subject, this.$shortTVItem, this.$progress, continuation);
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
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        ur.h hVarA0 = this.this$0.A0();
        if (hVarA0 != null) {
            Subject subject = this.$subject;
            ShortTVItem shortTVItem = this.$shortTVItem;
            long j10 = this.$progress;
            this.label = 1;
            if (hVarA0.a(subject, shortTVItem, j10, this) == objF) {
                return objF;
            }
        }
        ur.d dVarS0 = this.this$0.s0();
        if (dVarS0 != null) {
            String subjectId = this.$subject.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            String str = subjectId;
            int ep2 = this.$shortTVItem.getEp();
            long j11 = this.$progress;
            this.label = 2;
            if (dVarS0.d(str, ep2, j11, this) == objF) {
                return objF;
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$saveHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
