package com.transsion.player.longvideo.member;

import com.therouter.TheRouter;
import com.transsion.memberapi.MemberSource;
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
@DebugMetadata(c = "com.transsion.player.longvideo.member.ResolutionUnlockFragment$typeMember$1$1$2$1", f = "ResolutionUnlockFragment.kt", l = {}, m = "invokeSuspend")
final class ResolutionUnlockFragment$typeMember$1$1$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final ResolutionUnlockFragment this$0;

    public static final class a implements im.c {

        final ResolutionUnlockFragment f46193a;

        a(ResolutionUnlockFragment resolutionUnlockFragment) {
            this.f46193a = resolutionUnlockFragment;
        }

        @Override
        public void a() {
            wj.h.f74282a.a(this.f46193a.getClassTag() + " --> typeMember() --> onFailed() --> 开通会员失败");
        }

        @Override
        public void onSuccess() {
            this.f46193a.i0();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ResolutionUnlockFragment$typeMember$1$1$2$1(ResolutionUnlockFragment resolutionUnlockFragment, Continuation<? super ResolutionUnlockFragment$typeMember$1$1$2$1> continuation) {
        super(2, continuation);
        this.this$0 = resolutionUnlockFragment;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ResolutionUnlockFragment$typeMember$1$1$2$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            im.b.a.c(bVar, this.this$0.getActivity(), MemberSource.THREE_IN_ONE_POPUP, new a(this.this$0), false, null, 24, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ResolutionUnlockFragment$typeMember$1$1$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
