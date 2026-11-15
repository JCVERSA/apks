package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2", f = "Recomposer.kt", l = {1054}, m = "invokeSuspend")
@SourceDebugExtension
final class Recomposer$recompositionRunner$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final Function3<kotlinx.coroutines.n0, u0, Continuation<? super Unit>, Object> $block;
    final u0 $parentFrameClock;
    private Object L$0;
    Object L$1;
    int label;
    final Recomposer this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2$3", f = "Recomposer.kt", l = {1055}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final Function3<kotlinx.coroutines.n0, u0, Continuation<? super Unit>, Object> $block;
        final u0 $parentFrameClock;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(Function3<? super kotlinx.coroutines.n0, ? super u0, ? super Continuation<? super Unit>, ? extends Object> function3, u0 u0Var, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$block = function3;
            this.$parentFrameClock = u0Var;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$block, this.$parentFrameClock, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.n0 n0Var = (kotlinx.coroutines.n0) this.L$0;
                Function3<kotlinx.coroutines.n0, u0, Continuation<? super Unit>, Object> function3 = this.$block;
                u0 u0Var = this.$parentFrameClock;
                this.label = 1;
                if (function3.invoke(n0Var, u0Var, this) == objF) {
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
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    Recomposer$recompositionRunner$2(Recomposer recomposer, Function3<? super kotlinx.coroutines.n0, ? super u0, ? super Continuation<? super Unit>, ? extends Object> function3, u0 u0Var, Continuation<? super Recomposer$recompositionRunner$2> continuation) {
        super(2, continuation);
        this.this$0 = recomposer;
        this.$block = function3;
        this.$parentFrameClock = u0Var;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Recomposer$recompositionRunner$2 recomposer$recompositionRunner$2 = new Recomposer$recompositionRunner$2(this.this$0, this.$block, this.$parentFrameClock, continuation);
        recomposer$recompositionRunner$2.L$0 = obj;
        return recomposer$recompositionRunner$2;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x009f A[Catch: all -> 0x00a3, TryCatch #2 {all -> 0x00a3, blocks: (B:28:0x0099, B:30:0x009f, B:33:0x00a5), top: B:58:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00ce A[Catch: all -> 0x00d2, TryCatch #1 {all -> 0x00d2, blocks: (B:44:0x00c8, B:46:0x00ce, B:49:0x00d4), top: B:56:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.t1 t1VarK;
        androidx.compose.runtime.snapshots.e eVar;
        Throwable th2;
        List listI0;
        Object obj2;
        Recomposer recomposer;
        Object obj3;
        Recomposer recomposer2;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eVar = (androidx.compose.runtime.snapshots.e) this.L$1;
            t1VarK = (kotlinx.coroutines.t1) this.L$0;
            try {
                ResultKt.b(obj);
                eVar.dispose();
                obj3 = this.this$0.f3329c;
                recomposer2 = this.this$0;
                synchronized (obj3) {
                    try {
                        if (recomposer2.f3330d == t1VarK) {
                            recomposer2.f3330d = null;
                        }
                        recomposer2.a0();
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                Recomposer.f3325y.d(this.this$0.f3350x);
                return Unit.f64096a;
            } catch (Throwable th4) {
                th2 = th4;
                eVar.dispose();
                obj2 = this.this$0.f3329c;
                recomposer = this.this$0;
                synchronized (obj2) {
                    try {
                        if (recomposer.f3330d == t1VarK) {
                            recomposer.f3330d = null;
                        }
                        recomposer.a0();
                        Recomposer.f3325y.d(this.this$0.f3350x);
                        throw th2;
                    } catch (Throwable th5) {
                        throw th5;
                    }
                }
            }
        }
        ResultKt.b(obj);
        t1VarK = kotlinx.coroutines.v1.k(((kotlinx.coroutines.n0) this.L$0).getCoroutineContext());
        this.this$0.w0(t1VarK);
        androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
        final Recomposer recomposer3 = this.this$0;
        androidx.compose.runtime.snapshots.e eVarI = aVar.i(new Function2<Set<? extends Object>, androidx.compose.runtime.snapshots.j, Unit>() {
            {
                super(2);
            }

            @Override
            public Object invoke(Object obj4, Object obj5) {
                invoke((Set<? extends Object>) obj4, (androidx.compose.runtime.snapshots.j) obj5);
                return Unit.f64096a;
            }

            /* JADX WARN: Code duplicated, block: B:30:0x0084 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:31:0x0086 A[Catch: all -> 0x0074, LOOP:0: B:11:0x0038->B:31:0x0086, LOOP_END, TryCatch #0 {all -> 0x0074, blocks: (B:4:0x000e, B:6:0x0020, B:8:0x0028, B:11:0x0038, B:13:0x0048, B:15:0x0054, B:17:0x005d, B:19:0x0066, B:27:0x007d, B:24:0x0076, B:31:0x0086, B:41:0x00ae, B:32:0x0088, B:33:0x008e, B:35:0x0094, B:37:0x009c, B:40:0x00aa), top: B:50:0x000e }] */
            /* JADX WARN: Code duplicated, block: B:53:0x00ae A[EDGE_INSN: B:53:0x00ae->B:41:0x00ae BREAK  A[LOOP:0: B:11:0x0038->B:31:0x0086], SYNTHETIC] */
            public final void invoke(Set<? extends Object> set, androidx.compose.runtime.snapshots.j jVar) {
                kotlinx.coroutines.n nVarA0;
                int i11;
                Object obj4 = recomposer3.f3329c;
                Recomposer recomposer4 = recomposer3;
                synchronized (obj4) {
                    try {
                        if (((Recomposer.State) recomposer4.f3347u.getValue()).compareTo(Recomposer.State.Idle) >= 0) {
                            MutableScatterSet mutableScatterSet = recomposer4.f3334h;
                            if (set instanceof ScatterSetWrapper) {
                                ScatterSet scatterSetA = ((ScatterSetWrapper) set).a();
                                Object[] objArr = scatterSetA.f1938b;
                                long[] jArr = scatterSetA.f1937a;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i12 = 0;
                                    while (true) {
                                        long j10 = jArr[i12];
                                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                                            if (i12 != length) {
                                                break;
                                                break;
                                            }
                                            i12++;
                                        } else {
                                            int i13 = 8;
                                            int i14 = 8 - ((~(i12 - length)) >>> 31);
                                            int i15 = 0;
                                            while (i15 < i14) {
                                                if ((255 & j10) < 128) {
                                                    Object obj5 = objArr[(i12 << 3) + i15];
                                                    if (!(obj5 instanceof androidx.compose.runtime.snapshots.d0) || ((androidx.compose.runtime.snapshots.d0) obj5).m100isReadInh_f27i8$runtime_release(androidx.compose.runtime.snapshots.f.a(1))) {
                                                        mutableScatterSet.h(obj5);
                                                    }
                                                    i11 = 8;
                                                } else {
                                                    i11 = i13;
                                                }
                                                j10 >>= i11;
                                                i15++;
                                                i13 = i11;
                                            }
                                            if (i14 != i13) {
                                                break;
                                            } else if (i12 != length) {
                                                break;
                                            } else {
                                                i12++;
                                            }
                                        }
                                    }
                                }
                            } else {
                                for (Object obj6 : set) {
                                    if (!(obj6 instanceof androidx.compose.runtime.snapshots.d0) || ((androidx.compose.runtime.snapshots.d0) obj6).m100isReadInh_f27i8$runtime_release(androidx.compose.runtime.snapshots.f.a(1))) {
                                        mutableScatterSet.h(obj6);
                                    }
                                }
                            }
                            nVarA0 = recomposer4.a0();
                        } else {
                            nVarA0 = null;
                        }
                    } catch (Throwable th6) {
                        throw th6;
                    }
                }
                if (nVarA0 != null) {
                    Result.Companion companion = Result.INSTANCE;
                    nVarA0.resumeWith(Result.m453constructorimpl(Unit.f64096a));
                }
            }
        });
        Recomposer.f3325y.c(this.this$0.f3350x);
        try {
            Object obj4 = this.this$0.f3329c;
            Recomposer recomposer4 = this.this$0;
            synchronized (obj4) {
                listI0 = recomposer4.i0();
            }
            int size = listI0.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((y) listI0.get(i11)).u();
            }
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$block, this.$parentFrameClock, null);
            this.L$0 = t1VarK;
            this.L$1 = eVarI;
            this.label = 1;
            if (kotlinx.coroutines.o0.e(anonymousClass3, this) == objF) {
                return objF;
            }
            eVar = eVarI;
            eVar.dispose();
            obj3 = this.this$0.f3329c;
            recomposer2 = this.this$0;
            synchronized (obj3) {
                if (recomposer2.f3330d == t1VarK) {
                    recomposer2.f3330d = null;
                }
                recomposer2.a0();
                Recomposer.f3325y.d(this.this$0.f3350x);
                return Unit.f64096a;
            }
        } catch (Throwable th6) {
            eVar = eVarI;
            th2 = th6;
            eVar.dispose();
            obj2 = this.this$0.f3329c;
            recomposer = this.this$0;
            synchronized (obj2) {
                if (recomposer.f3330d == t1VarK) {
                    recomposer.f3330d = null;
                }
                recomposer.a0();
            }
            Recomposer.f3325y.d(this.this$0.f3350x);
            throw th2;
        }
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((Recomposer$recompositionRunner$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
