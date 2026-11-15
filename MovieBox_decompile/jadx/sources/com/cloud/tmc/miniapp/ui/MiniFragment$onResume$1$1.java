package com.cloud.tmc.miniapp.ui;

import android.view.View;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;

@DebugMetadata(c = "com.cloud.tmc.miniapp.ui.MiniFragment$onResume$1$1", f = "MiniFragment.kt", l = {242, 243}, m = "invokeSuspend")
public final class MiniFragment$onResume$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    public int label;
    public final MiniFragment this$0;

    @DebugMetadata(c = "com.cloud.tmc.miniapp.ui.MiniFragment$onResume$1$1$1", f = "MiniFragment.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        public int label;
        public final MiniFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MiniFragment miniFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = miniFragment;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            if (this.this$0.contextView == null) {
                Intrinsics.y("contextView");
            }
            View view = this.this$0.contextView;
            if (view == null) {
                Intrinsics.y("contextView");
                view = null;
            }
            view.scrollTo(0, this.this$0.mScrollY);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MiniFragment$onResume$1$1(MiniFragment miniFragment, Continuation<? super MiniFragment$onResume$1$1> continuation) {
        super(2, continuation);
        this.this$0 = miniFragment;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MiniFragment$onResume$1$1(this.this$0, continuation);
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
        this.label = 1;
        if (kotlinx.coroutines.u0.a(300L, this) == objF) {
            return objF;
        }
        a2 a2VarC = kotlinx.coroutines.y0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
        this.label = 2;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MiniFragment$onResume$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
