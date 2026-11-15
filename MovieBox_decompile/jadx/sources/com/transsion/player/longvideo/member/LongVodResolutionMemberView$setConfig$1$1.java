package com.transsion.player.longvideo.member;

import android.widget.ImageView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.member.LongVodResolutionMemberView$setConfig$1$1", f = "LongVodResolutionMemberView.kt", l = {67, 71}, m = "invokeSuspend")
final class LongVodResolutionMemberView$setConfig$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final ln.b $config;
    final ln.a $longVdPlayerBean;
    int label;
    final LongVodResolutionMemberView this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.member.LongVodResolutionMemberView$setConfig$1$1$1", f = "LongVodResolutionMemberView.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final boolean $isShow;
        int label;
        final LongVodResolutionMemberView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LongVodResolutionMemberView longVodResolutionMemberView, boolean z10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = longVodResolutionMemberView;
            this.$isShow = z10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$isShow, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ImageView imageView = this.this$0.ivMember;
            if (imageView != null) {
                uf.c.j(imageView, this.$isShow);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodResolutionMemberView$setConfig$1$1(ln.a aVar, ln.b bVar, LongVodResolutionMemberView longVodResolutionMemberView, Continuation<? super LongVodResolutionMemberView$setConfig$1$1> continuation) {
        super(2, continuation);
        this.$longVdPlayerBean = aVar;
        this.$config = bVar;
        this.this$0 = longVodResolutionMemberView;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodResolutionMemberView$setConfig$1$1(this.$longVdPlayerBean, this.$config, this.this$0, continuation);
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
        ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f46182a;
        ln.a aVar = this.$longVdPlayerBean;
        this.label = 1;
        obj = resolutionMemberManager.f(aVar, this);
        if (obj == objF) {
            return objF;
        }
        boolean z10 = !((Boolean) obj).booleanValue() && r.f46212a.q(this.$config.d());
        a2 a2VarC = y0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, z10, null);
        this.label = 2;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodResolutionMemberView$setConfig$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
