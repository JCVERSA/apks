package androidx.p004lifecycle;

import androidx.core.app.NotificationCompat;
import com.transsion.livecaption.constant.ICode;
import defpackage.cl0;
import defpackage.cr0;
import defpackage.el0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nw6;
import defpackage.pt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.sw6;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.d;
import kotlinx.coroutines.j;
import org.mozilla.classfile.ByteCode;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aC\u0010\t\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001aC\u0010\t\u001a\u00020\u0006*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00012\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", ICode.CALL.CALL_KEY_STATE, "Lkotlin/Function2;", "Lnk1;", "Lwh1;", "Lzfb;", "", "block", "repeatOnLifecycle", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Ls74;Lwh1;)Ljava/lang/Object;", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Ls74;Lwh1;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class RepeatOnLifecycleKt {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", l = {84}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements s74 {
        final s74 $block;
        final Lifecycle.State $state;
        final Lifecycle $this_repeatOnLifecycle;
        private Object L$0;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
        @nt1(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", l = {166}, m = "invokeSuspend")
        public static final class AnonymousClass1 extends SuspendLambda implements s74 {
            final nk1 $$this$coroutineScope;
            final s74 $block;
            final Lifecycle.State $state;
            final Lifecycle $this_repeatOnLifecycle;
            Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            Object L$5;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, nk1 nk1Var, s74 s74Var, wh1<? super AnonymousClass1> wh1Var) {
                super(2, wh1Var);
                this.$this_repeatOnLifecycle = lifecycle;
                this.$state = state;
                this.$$this$coroutineScope = nk1Var;
                this.$block = s74Var;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            /* JADX WARN: Code duplicated, block: B:28:0x00b7  */
            /* JADX WARN: Code duplicated, block: B:31:0x00c1  */
            /* JADX WARN: Code duplicated, block: B:36:0x00cf  */
            /* JADX WARN: Code duplicated, block: B:39:0x00d9  */
            /* JADX WARN: Type inference failed for: r10v0, types: [T, androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1, java.lang.Object] */
            @Override
            public final Object invokeSuspend(Object obj) throws Throwable {
                Ref$ObjectRef ref$ObjectRef;
                Ref$ObjectRef ref$ObjectRef2;
                j jVar;
                LifecycleEventObserver lifecycleEventObserver;
                j jVar2;
                LifecycleEventObserver lifecycleEventObserver2;
                Object objF = z45.f();
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ref$ObjectRef2 = (Ref$ObjectRef) this.L$1;
                    ref$ObjectRef = (Ref$ObjectRef) this.L$0;
                    try {
                        c.b(obj);
                        jVar2 = (j) ref$ObjectRef.element;
                        if (jVar2 != null) {
                            j.a.b(jVar2, null, 1, null);
                        }
                        lifecycleEventObserver2 = (LifecycleEventObserver) ref$ObjectRef2.element;
                        if (lifecycleEventObserver2 != null) {
                            this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver2);
                        }
                        return zfb.a;
                    } catch (Throwable th) {
                        th = th;
                        jVar = (j) ref$ObjectRef.element;
                        if (jVar != null) {
                            j.a.b(jVar, null, 1, null);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) ref$ObjectRef2.element;
                        if (lifecycleEventObserver != null) {
                            this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver);
                        }
                        throw th;
                    }
                }
                c.b(obj);
                if (this.$this_repeatOnLifecycle.getState() == Lifecycle.State.DESTROYED) {
                    return zfb.a;
                }
                final Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
                Ref$ObjectRef ref$ObjectRef4 = new Ref$ObjectRef();
                try {
                    Lifecycle.State state = this.$state;
                    Lifecycle lifecycle = this.$this_repeatOnLifecycle;
                    final nk1 nk1Var = this.$$this$coroutineScope;
                    final s74 s74Var = this.$block;
                    this.L$0 = ref$ObjectRef3;
                    this.L$1 = ref$ObjectRef4;
                    this.L$2 = state;
                    this.L$3 = lifecycle;
                    this.L$4 = nk1Var;
                    this.L$5 = s74Var;
                    this.label = 1;
                    final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(this), 1);
                    cancellableContinuationImpl.initCancellability();
                    Lifecycle.Event.Companion companion = Lifecycle.Event.INSTANCE;
                    final Lifecycle.Event eventUpTo = companion.upTo(state);
                    final Lifecycle.Event eventDownFrom = companion.downFrom(state);
                    final nw6 nw6VarB = sw6.b(false, 1, null);
                    ?? r10 = new LifecycleEventObserver() {

                        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
                        @nt1(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {ByteCode.LOOKUPSWITCH, 110}, m = "invokeSuspend")
                        public static final class AnonymousClass1 extends SuspendLambda implements s74 {
                            final s74 $block;
                            final nw6 $mutex;
                            Object L$0;
                            Object L$1;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass1(nw6 nw6Var, s74 s74Var, wh1<? super AnonymousClass1> wh1Var) {
                                super(2, wh1Var);
                                this.$mutex = nw6Var;
                                this.$block = s74Var;
                            }

                            @Override
                            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                                return new AnonymousClass1(this.$mutex, this.$block, wh1Var);
                            }

                            @Override
                            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                                return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
                            }

                            @Override
                            public final Object invokeSuspend(Object obj) throws Throwable {
                                nw6 nw6Var;
                                s74 s74Var;
                                Throwable th;
                                nw6 nw6Var2;
                                Object objF = z45.f();
                                int i = this.label;
                                try {
                                    if (i == 0) {
                                        c.b(obj);
                                        nw6Var = this.$mutex;
                                        s74Var = this.$block;
                                        this.L$0 = nw6Var;
                                        this.L$1 = s74Var;
                                        this.label = 1;
                                        if (nw6Var.c(null, this) == objF) {
                                            return objF;
                                        }
                                    } else {
                                        if (i != 1) {
                                            if (i != 2) {
                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                            }
                                            nw6Var2 = (nw6) this.L$0;
                                            try {
                                                c.b(obj);
                                                zfb zfbVar = zfb.a;
                                                nw6Var2.b(null);
                                                return zfb.a;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                nw6Var2.b(null);
                                                throw th;
                                            }
                                        }
                                        s74Var = (s74) this.L$1;
                                        nw6 nw6Var3 = (nw6) this.L$0;
                                        c.b(obj);
                                        nw6Var = nw6Var3;
                                    }
                                    RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(s74Var, null);
                                    this.L$0 = nw6Var;
                                    this.L$1 = null;
                                    this.label = 2;
                                    if (d.g(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) == objF) {
                                        return objF;
                                    }
                                    nw6Var2 = nw6Var;
                                    zfb zfbVar2 = zfb.a;
                                    nw6Var2.b(null);
                                    return zfb.a;
                                } catch (Throwable th3) {
                                    nw6 nw6Var4 = nw6Var;
                                    th = th3;
                                    nw6Var2 = nw6Var4;
                                    nw6Var2.b(null);
                                    throw th;
                                }
                            }
                        }

                        /* JADX WARN: Type inference failed for: r7v3, types: [T, kotlinx.coroutines.j] */
                        @Override
                        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                            y45.j(lifecycleOwner, "<anonymous parameter 0>");
                            y45.j(event, NotificationCompat.CATEGORY_EVENT);
                            if (event == eventUpTo) {
                                ref$ObjectRef3.element = el0.d(nk1Var, null, null, new AnonymousClass1(nw6VarB, s74Var, null), 3, null);
                                return;
                            }
                            if (event == eventDownFrom) {
                                j jVar3 = ref$ObjectRef3.element;
                                if (jVar3 != null) {
                                    j.a.b(jVar3, null, 1, null);
                                }
                                ref$ObjectRef3.element = null;
                            }
                            if (event == Lifecycle.Event.ON_DESTROY) {
                                cr0 cr0Var = cancellableContinuationImpl;
                                Result.Companion companion2 = Result.INSTANCE;
                                cr0Var.resumeWith(Result.m279constructorimpl(zfb.a));
                            }
                        }
                    };
                    ref$ObjectRef4.element = r10;
                    y45.h(r10, "null cannot be cast to non-null type androidx.lifecycle.LifecycleEventObserver");
                    lifecycle.addObserver((LifecycleEventObserver) r10);
                    Object result = cancellableContinuationImpl.getResult();
                    if (result == z45.f()) {
                        pt1.c(this);
                    }
                    if (result == objF) {
                        return objF;
                    }
                    ref$ObjectRef = ref$ObjectRef3;
                    ref$ObjectRef2 = ref$ObjectRef4;
                    jVar2 = (j) ref$ObjectRef.element;
                    if (jVar2 != null) {
                        j.a.b(jVar2, null, 1, null);
                    }
                    lifecycleEventObserver2 = (LifecycleEventObserver) ref$ObjectRef2.element;
                    if (lifecycleEventObserver2 != null) {
                        this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver2);
                    }
                    return zfb.a;
                } catch (Throwable th2) {
                    th = th2;
                    ref$ObjectRef = ref$ObjectRef3;
                    ref$ObjectRef2 = ref$ObjectRef4;
                    jVar = (j) ref$ObjectRef.element;
                    if (jVar != null) {
                        j.a.b(jVar, null, 1, null);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) ref$ObjectRef2.element;
                    if (lifecycleEventObserver != null) {
                        this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver);
                    }
                    throw th;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Lifecycle lifecycle, Lifecycle.State state, s74 s74Var, wh1<? super AnonymousClass3> wh1Var) {
            super(2, wh1Var);
            this.$this_repeatOnLifecycle = lifecycle;
            this.$state = state;
            this.$block = s74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$this_repeatOnLifecycle, this.$state, this.$block, wh1Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass3) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                nk1 nk1Var = (nk1) this.L$0;
                rx5 rx5VarB = mc2.c().b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, nk1Var, this.$block, null);
                this.label = 1;
                if (cl0.g(rx5VarB, anonymousClass1, this) == objF) {
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

    public static final Object repeatOnLifecycle(Lifecycle lifecycle, Lifecycle.State state, s74 s74Var, wh1<? super zfb> wh1Var) {
        if (state == Lifecycle.State.INITIALIZED) {
            throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
        }
        if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
            return zfb.a;
        }
        Object objG = d.g(new AnonymousClass3(lifecycle, state, s74Var, null), wh1Var);
        return objG == z45.f() ? objG : zfb.a;
    }

    public static final Object repeatOnLifecycle(LifecycleOwner lifecycleOwner, Lifecycle.State state, s74 s74Var, wh1<? super zfb> wh1Var) {
        Object objRepeatOnLifecycle = repeatOnLifecycle(lifecycleOwner.getLifecycle(), state, s74Var, wh1Var);
        return objRepeatOnLifecycle == z45.f() ? objRepeatOnLifecycle : zfb.a;
    }
}
