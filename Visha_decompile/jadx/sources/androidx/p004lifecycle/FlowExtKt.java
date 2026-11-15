package androidx.p004lifecycle;

import defpackage.bc9;
import defpackage.gh8;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a5\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"T", "Lnz3;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle$State;", "minActiveState", "flowWithLifecycle", "(Lnz3;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Lnz3;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class FlowExtKt {

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lgh8;", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1", f = "FlowExt.kt", l = {91}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final Lifecycle $lifecycle;
        final Lifecycle.State $minActiveState;
        final nz3 $this_flowWithLifecycle;
        private Object L$0;
        int label;

        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
        @nt1(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1", f = "FlowExt.kt", l = {92}, m = "invokeSuspend")
        public static final class C00071 extends SuspendLambda implements s74 {
            final gh8 $$this$callbackFlow;
            final nz3 $this_flowWithLifecycle;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00071(nz3 nz3Var, gh8 gh8Var, wh1<? super C00071> wh1Var) {
                super(2, wh1Var);
                this.$this_flowWithLifecycle = nz3Var;
                this.$$this$callbackFlow = gh8Var;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C00071(this.$this_flowWithLifecycle, this.$$this$callbackFlow, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C00071) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = z45.f();
                int i = this.label;
                if (i == 0) {
                    c.b(obj);
                    nz3 nz3Var = this.$this_flowWithLifecycle;
                    final gh8 gh8Var = this.$$this$callbackFlow;
                    oz3 oz3Var = new oz3() {
                        @Override
                        public final Object emit(T t, wh1<? super zfb> wh1Var) {
                            Object objL = gh8Var.l(t, wh1Var);
                            return objL == z45.f() ? objL : zfb.a;
                        }
                    };
                    this.label = 1;
                    if (nz3Var.collect(oz3Var, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c.b(obj);
                }
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, nz3 nz3Var, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$lifecycle = lifecycle;
            this.$minActiveState = state;
            this.$this_flowWithLifecycle = nz3Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$lifecycle, this.$minActiveState, this.$this_flowWithLifecycle, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            gh8 gh8Var;
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                gh8 gh8Var2 = (gh8) this.L$0;
                Lifecycle lifecycle = this.$lifecycle;
                Lifecycle.State state = this.$minActiveState;
                C00071 c00071 = new C00071(this.$this_flowWithLifecycle, gh8Var2, null);
                this.L$0 = gh8Var2;
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, c00071, this) == objF) {
                    return objF;
                }
                gh8Var = gh8Var2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                gh8Var = (gh8) this.L$0;
                c.b(obj);
            }
            bc9.a.a(gh8Var, null, 1, null);
            return zfb.a;
        }
    }

    public static final <T> nz3 flowWithLifecycle(nz3 nz3Var, Lifecycle lifecycle, Lifecycle.State state) {
        y45.j(nz3Var, "<this>");
        y45.j(lifecycle, "lifecycle");
        y45.j(state, "minActiveState");
        return sz3.d(new AnonymousClass1(lifecycle, state, nz3Var, null));
    }

    public static nz3 flowWithLifecycle$default(nz3 nz3Var, Lifecycle lifecycle, Lifecycle.State state, int i, Object obj) {
        if ((i & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        return flowWithLifecycle(nz3Var, lifecycle, state);
    }
}
