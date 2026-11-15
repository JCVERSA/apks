package kotlin.coroutines.intrinsics;

import defpackage.ccb;
import defpackage.pt1;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.y45;
import kotlin.c;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;

public abstract class IntrinsicsKt__IntrinsicsJvmKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static wh1 a(final s74 s74Var, final Object obj, wh1 wh1Var) {
        y45.j(s74Var, "<this>");
        y45.j(wh1Var, "completion");
        final wh1<?> wh1VarA = pt1.a(wh1Var);
        if (s74Var instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) s74Var).create(obj, wh1VarA);
        }
        final d context = wh1VarA.getContext();
        return context == EmptyCoroutineContext.INSTANCE ? new RestrictedContinuationImpl(wh1VarA, s74Var, obj) {
            final Object $receiver$inlined;
            final s74 $this_createCoroutineUnintercepted$inlined;
            private int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(wh1VarA);
                this.$this_createCoroutineUnintercepted$inlined = s74Var;
                this.$receiver$inlined = obj;
                y45.h(wh1VarA, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override
            public Object invokeSuspend(Object result) {
                int i = this.label;
                if (i == 0) {
                    this.label = 1;
                    c.b(result);
                    y45.h(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                    return ((s74) ccb.f(this.$this_createCoroutineUnintercepted$inlined, 2)).invoke(this.$receiver$inlined, this);
                }
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed");
                }
                this.label = 2;
                c.b(result);
                return result;
            }
        } : new ContinuationImpl(wh1VarA, context, s74Var, obj) {
            final Object $receiver$inlined;
            final s74 $this_createCoroutineUnintercepted$inlined;
            private int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(wh1VarA, context);
                this.$this_createCoroutineUnintercepted$inlined = s74Var;
                this.$receiver$inlined = obj;
                y45.h(wh1VarA, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override
            public Object invokeSuspend(Object result) {
                int i = this.label;
                if (i == 0) {
                    this.label = 1;
                    c.b(result);
                    y45.h(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                    return ((s74) ccb.f(this.$this_createCoroutineUnintercepted$inlined, 2)).invoke(this.$receiver$inlined, this);
                }
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed");
                }
                this.label = 2;
                c.b(result);
                return result;
            }
        };
    }

    public static final wh1 b(final wh1 wh1Var) {
        final d context = wh1Var.getContext();
        return context == EmptyCoroutineContext.INSTANCE ? new RestrictedContinuationImpl(wh1Var) {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(wh1Var);
                y45.h(wh1Var, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override
            public Object invokeSuspend(Object result) {
                c.b(result);
                return result;
            }
        } : new ContinuationImpl(wh1Var, context) {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(wh1Var, context);
                y45.h(wh1Var, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override
            public Object invokeSuspend(Object result) {
                c.b(result);
                return result;
            }
        };
    }

    public static wh1 c(wh1 wh1Var) {
        wh1<Object> wh1VarIntercepted;
        y45.j(wh1Var, "<this>");
        ContinuationImpl continuationImpl = wh1Var instanceof ContinuationImpl ? (ContinuationImpl) wh1Var : null;
        return (continuationImpl == null || (wh1VarIntercepted = continuationImpl.intercepted()) == null) ? wh1Var : wh1VarIntercepted;
    }

    public static Object d(s74 s74Var, Object obj, wh1 wh1Var) {
        y45.j(s74Var, "<this>");
        y45.j(wh1Var, "completion");
        return ((s74) ccb.f(s74Var, 2)).invoke(obj, b(pt1.a(wh1Var)));
    }

    public static Object e(u74 u74Var, Object obj, Object obj2, wh1 wh1Var) {
        y45.j(u74Var, "<this>");
        y45.j(wh1Var, "completion");
        return ((u74) ccb.f(u74Var, 3)).invoke(obj, obj2, b(pt1.a(wh1Var)));
    }
}
