package com.transsion.shorttv._channel.ui.viewmodel;

import com.tn.lib.net.bean.BaseDto;
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
@DebugMetadata(c = "com.transsion.shorttv._channel.ui.viewmodel.ShortTvMovieViewModel$getFilterItems$1", f = "ShortTvMovieViewModel.kt", l = {47}, m = "invokeSuspend")
final class ShortTvMovieViewModel$getFilterItems$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $version;
    int label;
    final ShortTvMovieViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvMovieViewModel$getFilterItems$1(ShortTvMovieViewModel shortTvMovieViewModel, String str, Continuation<? super ShortTvMovieViewModel$getFilterItems$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvMovieViewModel;
        this.$version = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvMovieViewModel$getFilterItems$1(this.this$0, this.$version, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                rq.a aVar = this.this$0.f50632e;
                String strA = gg.a.f61067a.a();
                String str = this.$version;
                this.label = 1;
                obj = aVar.b(strA, 7, str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            this.this$0.j().n((BaseDto) obj);
        } catch (Exception e10) {
            e10.printStackTrace();
            this.this$0.j().n(new BaseDto());
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvMovieViewModel$getFilterItems$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
