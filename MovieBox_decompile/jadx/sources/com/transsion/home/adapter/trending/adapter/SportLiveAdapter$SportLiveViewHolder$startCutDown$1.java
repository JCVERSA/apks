package com.transsion.home.adapter.trending.adapter;

import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.RepeatOnLifecycleKt;
import androidx.p009lifecycle.u;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.trending.adapter.SportLiveAdapter$SportLiveViewHolder$startCutDown$1", f = "SportLiveAdapter.kt", l = {193}, m = "invokeSuspend")
final class SportLiveAdapter$SportLiveViewHolder$startCutDown$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final u $lifecycleOwner;
    int label;
    final SportLiveAdapter.SportLiveViewHolder this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.adapter.trending.adapter.SportLiveAdapter$SportLiveViewHolder$startCutDown$1$1", f = "SportLiveAdapter.kt", l = {194}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;
        final SportLiveAdapter.SportLiveViewHolder this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SportLiveAdapter.SportLiveViewHolder sportLiveViewHolder, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = sportLiveViewHolder;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                this.label = 1;
                if (u0.a(1000L, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            SportLiveAdapter.SportLiveViewHolder sportLiveViewHolder = this.this$0;
            sportLiveViewHolder.j(sportLiveViewHolder.info);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SportLiveAdapter$SportLiveViewHolder$startCutDown$1(u uVar, SportLiveAdapter.SportLiveViewHolder sportLiveViewHolder, Continuation<? super SportLiveAdapter$SportLiveViewHolder$startCutDown$1> continuation) {
        super(2, continuation);
        this.$lifecycleOwner = uVar;
        this.this$0 = sportLiveViewHolder;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SportLiveAdapter$SportLiveViewHolder$startCutDown$1(this.$lifecycleOwner, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            u uVar = this.$lifecycleOwner;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.b(uVar, state, anonymousClass1, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SportLiveAdapter$SportLiveViewHolder$startCutDown$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
