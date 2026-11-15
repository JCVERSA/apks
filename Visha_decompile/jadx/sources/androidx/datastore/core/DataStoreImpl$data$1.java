package androidx.datastore.core;

import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.mk0;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Loz3;", "Lzfb;", "<anonymous>", "(Loz3;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.datastore.core.DataStoreImpl$data$1", f = "DataStoreImpl.kt", l = {72, 74, 100}, m = "invokeSuspend")
public final class DataStoreImpl$data$1 extends SuspendLambda implements s74 {
    private Object L$0;
    Object L$1;
    int label;
    final DataStoreImpl<T> this$0;

    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Loz3;", "Landroidx/datastore/core/State;", "Lzfb;", "<anonymous>", "(Loz3;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.datastore.core.DataStoreImpl$data$1$1", f = "DataStoreImpl.kt", l = {102}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        int label;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DataStoreImpl<T> dataStoreImpl, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(oz3 oz3Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(oz3Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.label = 1;
                if (dataStoreImpl.incrementCollector(this) == objF) {
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

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "it", "Landroidx/datastore/core/State;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl$data$1$2", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        Object L$0;
        int label;

        public AnonymousClass2(wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(wh1Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override
        public final Object invoke(State<T> state, wh1<? super Boolean> wh1Var) {
            return ((AnonymousClass2) create(state, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            return mk0.a(!(((State) this.L$0) instanceof Final));
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "it", "Landroidx/datastore/core/State;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.DataStoreImpl$data$1$3", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements s74 {
        final State<T> $startState;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(State<T> state, wh1<? super AnonymousClass3> wh1Var) {
            super(2, wh1Var);
            this.$startState = state;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$startState, wh1Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override
        public final Object invoke(State<T> state, wh1<? super Boolean> wh1Var) {
            return ((AnonymousClass3) create(state, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            State state = (State) this.L$0;
            return mk0.a((state instanceof Data) && state.getVersion() <= this.$startState.getVersion());
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T", "Loz3;", "", "it", "Lzfb;", "<anonymous>", "(Loz3;Ljava/lang/Throwable;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.datastore.core.DataStoreImpl$data$1$5", f = "DataStoreImpl.kt", l = {116}, m = "invokeSuspend")
    public static final class AnonymousClass5 extends SuspendLambda implements u74 {
        int label;
        final DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(DataStoreImpl<T> dataStoreImpl, wh1<? super AnonymousClass5> wh1Var) {
            super(3, wh1Var);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invoke(oz3 oz3Var, Throwable th, wh1<? super zfb> wh1Var) {
            return new AnonymousClass5(this.this$0, wh1Var).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.label = 1;
                if (dataStoreImpl.decrementCollector(this) == objF) {
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
    public DataStoreImpl$data$1(DataStoreImpl<T> dataStoreImpl, wh1<? super DataStoreImpl$data$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = dataStoreImpl;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        DataStoreImpl$data$1 dataStoreImpl$data$1 = new DataStoreImpl$data$1(this.this$0, wh1Var);
        dataStoreImpl$data$1.L$0 = obj;
        return dataStoreImpl$data$1;
    }

    @Override
    public final Object invoke(oz3 oz3Var, wh1<? super zfb> wh1Var) {
        return ((DataStoreImpl$data$1) create(oz3Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00bc A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        oz3 oz3Var;
        State state;
        oz3 oz3Var2;
        State state2;
        nz3 nz3VarW;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                oz3Var = (oz3) this.L$0;
                c.b(obj);
            } else if (i == 2) {
                state2 = (State) this.L$1;
                oz3Var2 = (oz3) this.L$0;
                c.b(obj);
                state = state2;
                oz3Var = oz3Var2;
                final nz3 nz3VarK = sz3.k(sz3.A(sz3.x(((DataStoreImpl) this.this$0).inMemoryCache.getFlow(), new AnonymousClass1(this.this$0, null)), new AnonymousClass2(null)), new AnonymousClass3(state, null));
                nz3VarW = sz3.w(new nz3() {

                    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"T", "R", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "emit", "(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "g14", "<anonymous>"}, k = 3, mv = {1, 8, 0})
                    public static final class AnonymousClass2<T> implements oz3 {
                        final oz3 $this_unsafeFlow;

                        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                        @nt1(c = "androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2", f = "DataStoreImpl.kt", l = {TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES}, m = "emit")
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            int label;
                            Object result;

                            public AnonymousClass1(wh1 wh1Var) {
                                super(wh1Var);
                            }

                            @Override
                            public final Object invokeSuspend(Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(oz3 oz3Var) {
                            this.$this_unsafeFlow = oz3Var;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override
                        public final Object emit(Object obj, wh1 wh1Var) throws Throwable {
                            AnonymousClass1 anonymousClass1;
                            if (wh1Var instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) wh1Var;
                                int i = anonymousClass1.label;
                                if ((i & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.label = i - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(wh1Var);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(wh1Var);
                            }
                            Object obj2 = anonymousClass1.result;
                            Object objF = z45.f();
                            int i2 = anonymousClass1.label;
                            if (i2 == 0) {
                                c.b(obj2);
                                oz3 oz3Var = this.$this_unsafeFlow;
                                State state = (State) obj;
                                if (state instanceof ReadException) {
                                    throw ((ReadException) state).getReadException();
                                }
                                if (!(state instanceof Data)) {
                                    if (state instanceof Final ? true : state instanceof UnInitialized) {
                                        throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                                Object value = ((Data) state).getValue();
                                anonymousClass1.label = 1;
                                if (oz3Var.emit(value, anonymousClass1) == objF) {
                                    return objF;
                                }
                            } else {
                                if (i2 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                c.b(obj2);
                            }
                            return zfb.a;
                        }
                    }

                    @Override
                    public Object collect(oz3 oz3Var3, wh1 wh1Var) {
                        Object objCollect = nz3VarK.collect(new AnonymousClass2(oz3Var3), wh1Var);
                        return objCollect == z45.f() ? objCollect : zfb.a;
                    }
                }, new AnonymousClass5(this.this$0, null));
                this.L$0 = null;
                this.L$1 = null;
                this.label = 3;
                if (sz3.l(oz3Var, nz3VarW, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
        c.b(obj);
        oz3 oz3Var3 = (oz3) this.L$0;
        DataStoreImpl<T> dataStoreImpl = this.this$0;
        this.L$0 = oz3Var3;
        this.label = 1;
        Object state3 = dataStoreImpl.readState(false, this);
        if (state3 == objF) {
            return objF;
        }
        oz3Var = oz3Var3;
        obj = state3;
        state = (State) obj;
        if (state instanceof Data) {
            Object value = ((Data) state).getValue();
            this.L$0 = oz3Var;
            this.L$1 = state;
            this.label = 2;
            if (oz3Var.emit(value, this) == objF) {
                return objF;
            }
            oz3Var2 = oz3Var;
            state2 = state;
            state = state2;
            oz3Var = oz3Var2;
        } else {
            if (state instanceof UnInitialized) {
                throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
            }
            if (state instanceof ReadException) {
                throw ((ReadException) state).getReadException();
            }
            if (state instanceof Final) {
                return zfb.a;
            }
        }
        final nz3 nz3VarK2 = sz3.k(sz3.A(sz3.x(((DataStoreImpl) this.this$0).inMemoryCache.getFlow(), new AnonymousClass1(this.this$0, null)), new AnonymousClass2(null)), new AnonymousClass3(state, null));
        nz3VarW = sz3.w(new nz3() {

            @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"T", "R", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "emit", "(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "g14", "<anonymous>"}, k = 3, mv = {1, 8, 0})
            public static final class AnonymousClass2<T> implements oz3 {
                final oz3 $this_unsafeFlow;

                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                @nt1(c = "androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2", f = "DataStoreImpl.kt", l = {TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES}, m = "emit")
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    Object result;

                    public AnonymousClass1(wh1 wh1Var) {
                        super(wh1Var);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(oz3 oz3Var) {
                    this.$this_unsafeFlow = oz3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override
                public final Object emit(Object obj, wh1 wh1Var) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    if (wh1Var instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) wh1Var;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(wh1Var);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(wh1Var);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object objF = z45.f();
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        c.b(obj2);
                        oz3 oz3Var = this.$this_unsafeFlow;
                        State state = (State) obj;
                        if (state instanceof ReadException) {
                            throw ((ReadException) state).getReadException();
                        }
                        if (!(state instanceof Data)) {
                            if (state instanceof Final ? true : state instanceof UnInitialized) {
                                throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                            }
                            throw new NoWhenBranchMatchedException();
                        }
                        Object value = ((Data) state).getValue();
                        anonymousClass1.label = 1;
                        if (oz3Var.emit(value, anonymousClass1) == objF) {
                            return objF;
                        }
                    } else {
                        if (i2 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        c.b(obj2);
                    }
                    return zfb.a;
                }
            }

            @Override
            public Object collect(oz3 oz3Var4, wh1 wh1Var) {
                Object objCollect = nz3VarK2.collect(new AnonymousClass2(oz3Var4), wh1Var);
                return objCollect == z45.f() ? objCollect : zfb.a;
            }
        }, new AnonymousClass5(this.this$0, null));
        this.L$0 = null;
        this.L$1 = null;
        this.label = 3;
        if (sz3.l(oz3Var, nz3VarW, this) == objF) {
            return objF;
        }
        return zfb.a;
    }
}
