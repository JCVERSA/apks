package androidx.p004lifecycle;

import defpackage.cl0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.j;

@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aA\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001aA\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\t2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\n\u001aA\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\b\u001aA\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\t2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\n\u001aA\u0010\f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0087@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\b\u001aA\u0010\f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\t2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0087@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\n\u001aI\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"T", "Landroidx/lifecycle/LifecycleOwner;", "Lkotlin/Function2;", "Lnk1;", "Lwh1;", "", "block", "whenCreated", "(Landroidx/lifecycle/LifecycleOwner;Ls74;Lwh1;)Ljava/lang/Object;", "Landroidx/lifecycle/Lifecycle;", "(Landroidx/lifecycle/Lifecycle;Ls74;Lwh1;)Ljava/lang/Object;", "whenStarted", "whenResumed", "Landroidx/lifecycle/Lifecycle$State;", "minState", "whenStateAtLeast", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Ls74;Lwh1;)Ljava/lang/Object;", "lifecycle-common"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class PausingDispatcherKt {

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lnk1;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.kt", l = {203}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final s74 $block;
        final Lifecycle.State $minState;
        final Lifecycle $this_whenStateAtLeast;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Lifecycle lifecycle, Lifecycle.State state, s74 s74Var, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$this_whenStateAtLeast = lifecycle;
            this.$minState = state;
            this.$block = s74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_whenStateAtLeast, this.$minState, this.$block, wh1Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super T> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            LifecycleController lifecycleController;
            Object objF = z45.f();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                lifecycleController = (LifecycleController) this.L$0;
                try {
                    c.b(obj);
                    lifecycleController.finish();
                    return obj;
                } catch (Throwable th) {
                    th = th;
                    lifecycleController.finish();
                    throw th;
                }
            }
            c.b(obj);
            j jVar = (j) ((nk1) this.L$0).getCoroutineContext().get(j.B6);
            if (jVar == null) {
                throw new IllegalStateException("when[State] methods should have a parent job");
            }
            PausingDispatcher pausingDispatcher = new PausingDispatcher();
            LifecycleController lifecycleController2 = new LifecycleController(this.$this_whenStateAtLeast, this.$minState, pausingDispatcher.dispatchQueue, jVar);
            try {
                s74 s74Var = this.$block;
                this.L$0 = lifecycleController2;
                this.label = 1;
                obj = cl0.g(pausingDispatcher, s74Var, this);
                if (obj == objF) {
                    return objF;
                }
                lifecycleController = lifecycleController2;
                lifecycleController.finish();
                return obj;
            } catch (Throwable th2) {
                th = th2;
                lifecycleController = lifecycleController2;
                lifecycleController.finish();
                throw th;
            }
        }
    }

    public static final <T> Object whenCreated(LifecycleOwner lifecycleOwner, s74 s74Var, wh1<? super T> wh1Var) {
        return whenCreated(lifecycleOwner.getLifecycle(), s74Var, wh1Var);
    }

    public static final <T> Object whenResumed(LifecycleOwner lifecycleOwner, s74 s74Var, wh1<? super T> wh1Var) {
        return whenResumed(lifecycleOwner.getLifecycle(), s74Var, wh1Var);
    }

    public static final <T> Object whenStarted(LifecycleOwner lifecycleOwner, s74 s74Var, wh1<? super T> wh1Var) {
        return whenStarted(lifecycleOwner.getLifecycle(), s74Var, wh1Var);
    }

    public static final <T> Object whenStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, s74 s74Var, wh1<? super T> wh1Var) {
        return cl0.g(mc2.c().b(), new AnonymousClass2(lifecycle, state, s74Var, null), wh1Var);
    }

    public static final <T> Object whenCreated(Lifecycle lifecycle, s74 s74Var, wh1<? super T> wh1Var) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.CREATED, s74Var, wh1Var);
    }

    public static final <T> Object whenResumed(Lifecycle lifecycle, s74 s74Var, wh1<? super T> wh1Var) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.RESUMED, s74Var, wh1Var);
    }

    public static final <T> Object whenStarted(Lifecycle lifecycle, s74 s74Var, wh1<? super T> wh1Var) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.STARTED, s74Var, wh1Var);
    }
}
