package androidx.datastore.core;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lkotlinx/coroutines/flow/b;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1", f = "DataStoreImpl.kt", l = {72, 74, 100}, m = "invokeSuspend")
@SourceDebugExtension
final class DataStoreImpl$data$1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
    private Object L$0;
    Object L$1;
    int label;
    final DataStoreImpl this$0;

    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Lkotlinx/coroutines/flow/b;", "Landroidx/datastore/core/v;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$1", f = "DataStoreImpl.kt", l = {102}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        int label;
        final DataStoreImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DataStoreImpl dataStoreImpl, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                DataStoreImpl dataStoreImpl = this.this$0;
                this.label = 1;
                if (dataStoreImpl.u(this) == objF) {
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
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Landroidx/datastore/core/v;", "it", "", "<anonymous>", "(Landroidx/datastore/core/v;)Z"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$2", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<v, Continuation<? super Boolean>, Object> {
        Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override
        public final Object invoke(v vVar, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass2) create(vVar, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return Boxing.a(!(((v) this.L$0) instanceof k));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Landroidx/datastore/core/v;", "it", "", "<anonymous>", "(Landroidx/datastore/core/v;)Z"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$3", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<v, Continuation<? super Boolean>, Object> {
        final v $startState;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(v vVar, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$startState = vVar;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$startState, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override
        public final Object invoke(v vVar, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass3) create(vVar, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            v vVar = (v) this.L$0;
            return Boxing.a((vVar instanceof e) && vVar.a() <= this.$startState.a());
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T", "Lkotlinx/coroutines/flow/b;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$5", f = "DataStoreImpl.kt", l = {Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass5 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        int label;
        final DataStoreImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(DataStoreImpl dataStoreImpl, Continuation<? super AnonymousClass5> continuation) {
            super(3, continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                DataStoreImpl dataStoreImpl = this.this$0;
                this.label = 1;
                if (dataStoreImpl.p(this) == objF) {
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
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            return new AnonymousClass5(this.this$0, continuation).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$data$1(DataStoreImpl dataStoreImpl, Continuation<? super DataStoreImpl$data$1> continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataStoreImpl$data$1 dataStoreImpl$data$1 = new DataStoreImpl$data$1(this.this$0, continuation);
        dataStoreImpl$data$1.L$0 = obj;
        return dataStoreImpl$data$1;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00bc A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.flow.b bVar;
        v vVar;
        kotlinx.coroutines.flow.b bVar2;
        v vVar2;
        kotlinx.coroutines.flow.a aVarW;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
            } else if (i10 == 2) {
                vVar2 = (v) this.L$1;
                bVar2 = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                vVar = vVar2;
                bVar = bVar2;
                final kotlinx.coroutines.flow.a aVarK = kotlinx.coroutines.flow.c.k(kotlinx.coroutines.flow.c.D(kotlinx.coroutines.flow.c.y(this.this$0.f8257h.b(), new AnonymousClass1(this.this$0, null)), new AnonymousClass2(null)), new AnonymousClass3(vVar, null));
                aVarW = kotlinx.coroutines.flow.c.w(new kotlinx.coroutines.flow.a() {

                    public static final class AnonymousClass2 implements kotlinx.coroutines.flow.b {

                        final kotlinx.coroutines.flow.b f8269a;

                        @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                        @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2", f = "DataStoreImpl.kt", l = {Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, m = "emit")
                        @SourceDebugExtension
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            int label;
                            Object result;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override
                            public final Object invokeSuspend(Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(kotlinx.coroutines.flow.b bVar) {
                            this.f8269a = bVar;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override
                        public final Object emit(Object obj, Continuation continuation) throws Throwable {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i10 = anonymousClass1.label;
                                if ((i10 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.label = i10 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.result;
                            Object objF = IntrinsicsKt.f();
                            int i11 = anonymousClass1.label;
                            if (i11 == 0) {
                                ResultKt.b(obj2);
                                kotlinx.coroutines.flow.b bVar = this.f8269a;
                                v vVar = (v) obj;
                                if (vVar instanceof r) {
                                    throw ((r) vVar).b();
                                }
                                if (!(vVar instanceof e)) {
                                    if (vVar instanceof k ? true : vVar instanceof y) {
                                        throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                                Object objC = ((e) vVar).c();
                                anonymousClass1.label = 1;
                                if (bVar.emit(objC, anonymousClass1) == objF) {
                                    return objF;
                                }
                            } else {
                                if (i11 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.b(obj2);
                            }
                            return Unit.f64096a;
                        }
                    }

                    @Override
                    public Object a(kotlinx.coroutines.flow.b bVar3, Continuation continuation) {
                        Object objA = aVarK.a(new AnonymousClass2(bVar3), continuation);
                        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
                    }
                }, new AnonymousClass5(this.this$0, null));
                this.L$0 = null;
                this.L$1 = null;
                this.label = 3;
                if (kotlinx.coroutines.flow.c.m(bVar, aVarW, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        kotlinx.coroutines.flow.b bVar3 = (kotlinx.coroutines.flow.b) this.L$0;
        DataStoreImpl dataStoreImpl = this.this$0;
        this.L$0 = bVar3;
        this.label = 1;
        Object objZ = dataStoreImpl.z(false, this);
        if (objZ == objF) {
            return objF;
        }
        bVar = bVar3;
        obj = objZ;
        vVar = (v) obj;
        if (vVar instanceof e) {
            Object objC = ((e) vVar).c();
            this.L$0 = bVar;
            this.L$1 = vVar;
            this.label = 2;
            if (bVar.emit(objC, this) == objF) {
                return objF;
            }
            bVar2 = bVar;
            vVar2 = vVar;
            vVar = vVar2;
            bVar = bVar2;
        } else {
            if (vVar instanceof y) {
                throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
            }
            if (vVar instanceof r) {
                throw ((r) vVar).b();
            }
            if (vVar instanceof k) {
                return Unit.f64096a;
            }
        }
        final kotlinx.coroutines.flow.a aVarK2 = kotlinx.coroutines.flow.c.k(kotlinx.coroutines.flow.c.D(kotlinx.coroutines.flow.c.y(this.this$0.f8257h.b(), new AnonymousClass1(this.this$0, null)), new AnonymousClass2(null)), new AnonymousClass3(vVar, null));
        aVarW = kotlinx.coroutines.flow.c.w(new kotlinx.coroutines.flow.a() {

            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.b {

                final kotlinx.coroutines.flow.b f8269a;

                @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2", f = "DataStoreImpl.kt", l = {Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, m = "emit")
                @SourceDebugExtension
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.b bVar) {
                    this.f8269a = bVar;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override
                public final Object emit(Object obj, Continuation continuation) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i10 = anonymousClass1.label;
                        if ((i10 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i10 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object objF = IntrinsicsKt.f();
                    int i11 = anonymousClass1.label;
                    if (i11 == 0) {
                        ResultKt.b(obj2);
                        kotlinx.coroutines.flow.b bVar = this.f8269a;
                        v vVar = (v) obj;
                        if (vVar instanceof r) {
                            throw ((r) vVar).b();
                        }
                        if (!(vVar instanceof e)) {
                            if (vVar instanceof k ? true : vVar instanceof y) {
                                throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                            }
                            throw new NoWhenBranchMatchedException();
                        }
                        Object objC = ((e) vVar).c();
                        anonymousClass1.label = 1;
                        if (bVar.emit(objC, anonymousClass1) == objF) {
                            return objF;
                        }
                    } else {
                        if (i11 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f64096a;
                }
            }

            @Override
            public Object a(kotlinx.coroutines.flow.b bVar4, Continuation continuation) {
                Object objA = aVarK2.a(new AnonymousClass2(bVar4), continuation);
                return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
            }
        }, new AnonymousClass5(this.this$0, null));
        this.L$0 = null;
        this.L$1 = null;
        this.label = 3;
        if (kotlinx.coroutines.flow.c.m(bVar, aVarW, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
        return ((DataStoreImpl$data$1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
    }
}
