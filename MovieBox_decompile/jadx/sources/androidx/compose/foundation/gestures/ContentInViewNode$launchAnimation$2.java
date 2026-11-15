package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.v1;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2", f = "ContentInViewNode.kt", l = {196}, m = "invokeSuspend")
final class ContentInViewNode$launchAnimation$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final UpdatableAnimationState $animationState;
    final d $bringIntoViewSpec;
    private Object L$0;
    int label;
    final ContentInViewNode this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/h;", "", "<anonymous>", "(Landroidx/compose/foundation/gestures/h;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2$1", f = "ContentInViewNode.kt", l = {201}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<h, Continuation<? super Unit>, Object> {
        final t1 $animationJob;
        final UpdatableAnimationState $animationState;
        final d $bringIntoViewSpec;
        private Object L$0;
        int label;
        final ContentInViewNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UpdatableAnimationState updatableAnimationState, ContentInViewNode contentInViewNode, d dVar, t1 t1Var, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$animationState = updatableAnimationState;
            this.this$0 = contentInViewNode;
            this.$bringIntoViewSpec = dVar;
            this.$animationJob = t1Var;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$animationState, this.this$0, this.$bringIntoViewSpec, this.$animationJob, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(h hVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(hVar, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                final h hVar = (h) this.L$0;
                this.$animationState.j(this.this$0.M1(this.$bringIntoViewSpec));
                final UpdatableAnimationState updatableAnimationState = this.$animationState;
                final ContentInViewNode contentInViewNode = this.this$0;
                final t1 t1Var = this.$animationJob;
                Function1<Float, Unit> function1 = new Function1<Float, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj2) {
                        invoke(((Number) obj2).floatValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(float f10) {
                        float f11 = contentInViewNode.f2328p ? 1.0f : -1.0f;
                        ScrollingLogic scrollingLogic = contentInViewNode.f2327o;
                        float fA = f11 * scrollingLogic.A(scrollingLogic.u(hVar.b(scrollingLogic.u(scrollingLogic.B(f11 * f10)), androidx.compose.ui.input.nestedscroll.e.f4630a.b())));
                        if (Math.abs(fA) < Math.abs(f10)) {
                            JobKt__JobKt.f(t1Var, "Scroll animation cancelled because scroll was not consumed (" + fA + " < " + f10 + ')', null, 2, null);
                        }
                    }
                };
                final ContentInViewNode contentInViewNode2 = this.this$0;
                final UpdatableAnimationState updatableAnimationState2 = this.$animationState;
                final d dVar = this.$bringIntoViewSpec;
                Function0<Unit> function0 = new Function0<Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m28invoke();
                        return Unit.f64096a;
                    }

                    public final void m28invoke() {
                        BringIntoViewRequestPriorityQueue bringIntoViewRequestPriorityQueue = contentInViewNode2.f2331s;
                        ContentInViewNode contentInViewNode3 = contentInViewNode2;
                        while (true) {
                            if (!bringIntoViewRequestPriorityQueue.f2320a.q()) {
                                break;
                            }
                            y.i iVar = (y.i) ((ContentInViewNode.a) bringIntoViewRequestPriorityQueue.f2320a.r()).b().invoke();
                            if (!(iVar == null ? true : ContentInViewNode.U1(contentInViewNode3, iVar, 0L, 1, null))) {
                                break;
                            } else {
                                ((ContentInViewNode.a) bringIntoViewRequestPriorityQueue.f2320a.v(bringIntoViewRequestPriorityQueue.f2320a.n() - 1)).a().resumeWith(Result.m453constructorimpl(Unit.f64096a));
                            }
                        }
                        if (contentInViewNode2.f2334v) {
                            y.i iVarR1 = contentInViewNode2.R1();
                            if (iVarR1 != null && ContentInViewNode.U1(contentInViewNode2, iVarR1, 0L, 1, null)) {
                                contentInViewNode2.f2334v = false;
                            }
                        }
                        updatableAnimationState2.j(contentInViewNode2.M1(dVar));
                    }
                };
                this.label = 1;
                if (updatableAnimationState.h(function1, function0, this) == objF) {
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
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ContentInViewNode$launchAnimation$2(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, d dVar, Continuation<? super ContentInViewNode$launchAnimation$2> continuation) {
        super(2, continuation);
        this.this$0 = contentInViewNode;
        this.$animationState = updatableAnimationState;
        this.$bringIntoViewSpec = dVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ContentInViewNode$launchAnimation$2 contentInViewNode$launchAnimation$2 = new ContentInViewNode$launchAnimation$2(this.this$0, this.$animationState, this.$bringIntoViewSpec, continuation);
        contentInViewNode$launchAnimation$2.L$0 = obj;
        return contentInViewNode$launchAnimation$2;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            try {
                if (i10 == 0) {
                    ResultKt.b(obj);
                    t1 t1VarK = v1.k(((n0) this.L$0).getCoroutineContext());
                    this.this$0.f2336x = true;
                    ScrollingLogic scrollingLogic = this.this$0.f2327o;
                    MutatePriority mutatePriority = MutatePriority.Default;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$animationState, this.this$0, this.$bringIntoViewSpec, t1VarK, null);
                    this.label = 1;
                    if (scrollingLogic.v(mutatePriority, anonymousClass1, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                this.this$0.f2331s.d();
                this.this$0.f2336x = false;
                this.this$0.f2331s.b(null);
                this.this$0.f2334v = false;
                return Unit.f64096a;
            } catch (CancellationException e10) {
                throw e10;
            }
        } catch (Throwable th2) {
            this.this$0.f2336x = false;
            this.this$0.f2331s.b(null);
            this.this$0.f2334v = false;
            throw th2;
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ContentInViewNode$launchAnimation$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
