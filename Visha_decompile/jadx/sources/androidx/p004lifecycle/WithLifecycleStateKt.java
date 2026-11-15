package androidx.p004lifecycle;

import androidx.core.app.NotificationCompat;
import com.transsion.livecaption.constant.ICode;
import defpackage.c74;
import defpackage.cr0;
import defpackage.e74;
import defpackage.j05;
import defpackage.mc2;
import defpackage.pt1;
import defpackage.rx5;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.c;

@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a5\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a-\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a-\u0010\n\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\n\u0010\t\u001a-\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\t\u001a5\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\r\u001a-\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\b\u0010\u000e\u001a-\u0010\n\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000e\u001a-\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u000e\u001a5\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0081Hø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0007\u001aC\u0010\u0014\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0081@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"R", "Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", ICode.CALL.CALL_KEY_STATE, "Lkotlin/Function0;", "block", "withStateAtLeast", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lc74;Lwh1;)Ljava/lang/Object;", "withCreated", "(Landroidx/lifecycle/Lifecycle;Lc74;Lwh1;)Ljava/lang/Object;", "withStarted", "withResumed", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lc74;Lwh1;)Ljava/lang/Object;", "(Landroidx/lifecycle/LifecycleOwner;Lc74;Lwh1;)Ljava/lang/Object;", "withStateAtLeastUnchecked", "", "dispatchNeeded", "Lkotlinx/coroutines/c;", "lifecycleDispatcher", "suspendWithStateAtLeastUnchecked", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/c;Lc74;Lwh1;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class WithLifecycleStateKt {

    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "R", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 176)
    public static final class AnonymousClass2 extends Lambda implements c74 {
        final c74 $block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(c74 c74Var) {
            super(0);
            this.$block = c74Var;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [R, java.lang.Object] */
        @Override
        public final R invoke() {
            return this.$block.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.LifecycleObserver, androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1] */
    public static final <R> Object suspendWithStateAtLeastUnchecked(final Lifecycle lifecycle, final Lifecycle.State state, boolean z, final c cVar, final c74 c74Var, wh1<? super R> wh1Var) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        final ?? r1 = new LifecycleEventObserver() {
            @Override
            public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                Object objM279constructorimpl;
                y45.j(source, "source");
                y45.j(event, NotificationCompat.CATEGORY_EVENT);
                if (event != Lifecycle.Event.INSTANCE.upTo(state)) {
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        lifecycle.removeObserver(this);
                        cr0 cr0Var = cancellableContinuationImpl;
                        Result.Companion companion = Result.INSTANCE;
                        cr0Var.resumeWith(Result.m279constructorimpl(kotlin.c.a(new LifecycleDestroyedException())));
                        return;
                    }
                    return;
                }
                lifecycle.removeObserver(this);
                cr0 cr0Var2 = cancellableContinuationImpl;
                c74 c74Var2 = c74Var;
                try {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM279constructorimpl = Result.m279constructorimpl(c74Var2.invoke());
                } catch (Throwable th) {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
                }
                cr0Var2.resumeWith(objM279constructorimpl);
            }
        };
        if (z) {
            cVar.dispatch(EmptyCoroutineContext.INSTANCE, new Runnable() {
                @Override
                public final void run() {
                    lifecycle.addObserver(r1);
                }
            });
        } else {
            lifecycle.addObserver(r1);
        }
        cancellableContinuationImpl.invokeOnCancellation(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return zfb.a;
            }

            public final void invoke(Throwable th) {
                c cVar2 = cVar;
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                if (!cVar2.isDispatchNeeded(emptyCoroutineContext)) {
                    lifecycle.removeObserver(r1);
                    return;
                }
                c cVar3 = cVar;
                final Lifecycle lifecycle2 = lifecycle;
                final WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 = r1;
                cVar3.dispatch(emptyCoroutineContext, new Runnable() {
                    @Override
                    public final void run() {
                        lifecycle2.removeObserver(withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1);
                    }
                });
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public static final <R> Object withCreated(Lifecycle lifecycle, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle.State state = Lifecycle.State.CREATED;
        rx5 rx5VarB = mc2.c().b();
        boolean zIsDispatchNeeded = rx5VarB.isDispatchNeeded(wh1Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return c74Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, rx5VarB, new AnonymousClass2(c74Var), wh1Var);
    }

    private static final <R> Object withCreated$$forInline(Lifecycle lifecycle, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        mc2.c().b();
        j05.c(3);
        throw null;
    }

    public static final <R> Object withResumed(Lifecycle lifecycle, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle.State state = Lifecycle.State.RESUMED;
        rx5 rx5VarB = mc2.c().b();
        boolean zIsDispatchNeeded = rx5VarB.isDispatchNeeded(wh1Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return c74Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, rx5VarB, new AnonymousClass2(c74Var), wh1Var);
    }

    private static final <R> Object withResumed$$forInline(Lifecycle lifecycle, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        mc2.c().b();
        j05.c(3);
        throw null;
    }

    public static final <R> Object withStarted(Lifecycle lifecycle, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle.State state = Lifecycle.State.STARTED;
        rx5 rx5VarB = mc2.c().b();
        boolean zIsDispatchNeeded = rx5VarB.isDispatchNeeded(wh1Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return c74Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, rx5VarB, new AnonymousClass2(c74Var), wh1Var);
    }

    private static final <R> Object withStarted$$forInline(Lifecycle lifecycle, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        mc2.c().b();
        j05.c(3);
        throw null;
    }

    public static final <R> Object withStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, c74 c74Var, wh1<? super R> wh1Var) {
        if (state.compareTo(Lifecycle.State.CREATED) < 0) {
            throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
        }
        rx5 rx5VarB = mc2.c().b();
        boolean zIsDispatchNeeded = rx5VarB.isDispatchNeeded(wh1Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return c74Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, rx5VarB, new AnonymousClass2(c74Var), wh1Var);
    }

    private static final <R> Object withStateAtLeast$$forInline(Lifecycle lifecycle, Lifecycle.State state, c74 c74Var, wh1<? super R> wh1Var) {
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            mc2.c().b();
            j05.c(3);
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }

    public static final <R> Object withStateAtLeastUnchecked(Lifecycle lifecycle, Lifecycle.State state, c74 c74Var, wh1<? super R> wh1Var) {
        rx5 rx5VarB = mc2.c().b();
        boolean zIsDispatchNeeded = rx5VarB.isDispatchNeeded(wh1Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(state) >= 0) {
                return c74Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, rx5VarB, new AnonymousClass2(c74Var), wh1Var);
    }

    private static final <R> Object withStateAtLeastUnchecked$$forInline(Lifecycle lifecycle, Lifecycle.State state, c74 c74Var, wh1<? super R> wh1Var) {
        mc2.c().b();
        j05.c(3);
        throw null;
    }

    private static final <R> Object withCreated$$forInline(LifecycleOwner lifecycleOwner, c74 c74Var, wh1<? super R> wh1Var) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        mc2.c().b();
        j05.c(3);
        throw null;
    }

    private static final <R> Object withResumed$$forInline(LifecycleOwner lifecycleOwner, c74 c74Var, wh1<? super R> wh1Var) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        mc2.c().b();
        j05.c(3);
        throw null;
    }

    private static final <R> Object withStarted$$forInline(LifecycleOwner lifecycleOwner, c74 c74Var, wh1<? super R> wh1Var) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        mc2.c().b();
        j05.c(3);
        throw null;
    }

    private static final <R> Object withStateAtLeast$$forInline(LifecycleOwner lifecycleOwner, Lifecycle.State state, c74 c74Var, wh1<? super R> wh1Var) {
        lifecycleOwner.getLifecycle();
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            mc2.c().b();
            j05.c(3);
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }

    public static final <R> Object withCreated(LifecycleOwner lifecycleOwner, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.CREATED;
        rx5 rx5VarB = mc2.c().b();
        boolean zIsDispatchNeeded = rx5VarB.isDispatchNeeded(wh1Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getState().compareTo(state) >= 0) {
                    return c74Var.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, rx5VarB, new AnonymousClass2(c74Var), wh1Var);
    }

    public static final <R> Object withResumed(LifecycleOwner lifecycleOwner, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.RESUMED;
        rx5 rx5VarB = mc2.c().b();
        boolean zIsDispatchNeeded = rx5VarB.isDispatchNeeded(wh1Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getState().compareTo(state) >= 0) {
                    return c74Var.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, rx5VarB, new AnonymousClass2(c74Var), wh1Var);
    }

    public static final <R> Object withStarted(LifecycleOwner lifecycleOwner, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.STARTED;
        rx5 rx5VarB = mc2.c().b();
        boolean zIsDispatchNeeded = rx5VarB.isDispatchNeeded(wh1Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getState().compareTo(state) >= 0) {
                    return c74Var.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, rx5VarB, new AnonymousClass2(c74Var), wh1Var);
    }

    public static final <R> Object withStateAtLeast(LifecycleOwner lifecycleOwner, Lifecycle.State state, c74 c74Var, wh1<? super R> wh1Var) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            rx5 rx5VarB = mc2.c().b();
            boolean zIsDispatchNeeded = rx5VarB.isDispatchNeeded(wh1Var.getContext());
            if (!zIsDispatchNeeded) {
                if (lifecycle.getState() != Lifecycle.State.DESTROYED) {
                    if (lifecycle.getState().compareTo(state) >= 0) {
                        return c74Var.invoke();
                    }
                } else {
                    throw new LifecycleDestroyedException();
                }
            }
            return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, rx5VarB, new AnonymousClass2(c74Var), wh1Var);
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }
}
