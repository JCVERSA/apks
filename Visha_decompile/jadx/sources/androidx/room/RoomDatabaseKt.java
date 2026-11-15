package androidx.room;

import defpackage.c74;
import defpackage.cl0;
import defpackage.cr0;
import defpackage.e74;
import defpackage.el0;
import defpackage.gh8;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.pt1;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import defpackage.zha;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.c;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.j;

@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\b\u0003\u001a;\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u001c\u0010\u0005\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001aI\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\t\u001a\u00020\b2\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\nH\u0082@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u001b\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012\u001a;\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00190\u0018*\u00020\u00012\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0013\"\u00020\u00142\b\b\u0002\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"R", "Landroidx/room/RoomDatabase;", "Lkotlin/Function1;", "Lwh1;", "", "block", "withTransaction", "(Landroidx/room/RoomDatabase;Le74;Lwh1;)Ljava/lang/Object;", "Lkotlin/coroutines/d;", "context", "Lkotlin/Function2;", "Lnk1;", "transactionBlock", "startTransactionCoroutine", "(Landroidx/room/RoomDatabase;Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;", "Lkotlin/coroutines/c;", "dispatcher", "createTransactionContext", "(Landroidx/room/RoomDatabase;Lkotlin/coroutines/c;)Lkotlin/coroutines/d;", "", "", "tables", "", "emitInitialState", "Lnz3;", "", "invalidationTrackerFlow", "(Landroidx/room/RoomDatabase;[Ljava/lang/String;Z)Lnz3;", "room-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class RoomDatabaseKt {

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lgh8;", "", "", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.room.RoomDatabaseKt$invalidationTrackerFlow$1", f = "RoomDatabaseExt.kt", l = {235}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final boolean $emitInitialState;
        final String[] $tables;
        final RoomDatabase $this_invalidationTrackerFlow;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z, RoomDatabase roomDatabase, String[] strArr, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$emitInitialState = z;
            this.$this_invalidationTrackerFlow = roomDatabase;
            this.$tables = strArr;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$emitInitialState, this.$this_invalidationTrackerFlow, this.$tables, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Type inference failed for: r5v0, types: [androidx.room.RoomDatabaseKt$invalidationTrackerFlow$1$observer$1] */
        @Override
        public final Object invokeSuspend(Object obj) {
            c queryDispatcher;
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                kotlin.c.b(obj);
                final gh8 gh8Var = (gh8) this.L$0;
                final AtomicBoolean atomicBoolean = new AtomicBoolean(this.$emitInitialState);
                final String[] strArr = this.$tables;
                ?? r5 = new InvalidationTracker.Observer(strArr) {
                    @Override
                    public void onInvalidated(Set<String> tables) {
                        if (atomicBoolean.get()) {
                            return;
                        }
                        gh8Var.f(tables);
                    }
                };
                TransactionElement transactionElement = (TransactionElement) gh8Var.getCoroutineContext().get(TransactionElement.INSTANCE);
                if (transactionElement == null || (queryDispatcher = transactionElement.getTransactionDispatcher()) == null) {
                    queryDispatcher = CoroutinesRoomKt.getQueryDispatcher(this.$this_invalidationTrackerFlow);
                }
                final j jVarD = el0.d(gh8Var, queryDispatcher, null, new RoomDatabaseKt$invalidationTrackerFlow$1$job$1(this.$this_invalidationTrackerFlow, r5, this.$emitInitialState, gh8Var, this.$tables, atomicBoolean, null), 2, null);
                c74 c74Var = new c74() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m54invoke();
                        return zfb.a;
                    }

                    public final void m54invoke() {
                        j.a.b(jVarD, null, 1, null);
                    }
                };
                this.label = 1;
                if (ProduceKt.a(gh8Var, c74Var, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return zfb.a;
        }
    }

    public static final d createTransactionContext(RoomDatabase roomDatabase, c cVar) {
        TransactionElement transactionElement = new TransactionElement(cVar);
        return cVar.plus(transactionElement).plus(zha.a(roomDatabase.getSuspendingTransactionId(), Integer.valueOf(System.identityHashCode(transactionElement))));
    }

    public static final nz3 invalidationTrackerFlow(RoomDatabase roomDatabase, String[] strArr, boolean z) {
        return sz3.d(new AnonymousClass1(z, roomDatabase, strArr, null));
    }

    public static nz3 invalidationTrackerFlow$default(RoomDatabase roomDatabase, String[] strArr, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return invalidationTrackerFlow(roomDatabase, strArr, z);
    }

    public static final <R> Object startTransactionCoroutine(final RoomDatabase roomDatabase, final d dVar, final s74 s74Var, wh1<? super R> wh1Var) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        try {
            roomDatabase.getTransactionExecutor().execute(new Runnable() {

                @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
                @nt1(c = "androidx.room.RoomDatabaseKt$startTransactionCoroutine$2$1$1", f = "RoomDatabaseExt.kt", l = {103}, m = "invokeSuspend")
                public static final class AnonymousClass1 extends SuspendLambda implements s74 {
                    final cr0 $continuation;
                    final RoomDatabase $this_startTransactionCoroutine;
                    final s74 $transactionBlock;
                    private Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(RoomDatabase roomDatabase, cr0 cr0Var, s74 s74Var, wh1<? super AnonymousClass1> wh1Var) {
                        super(2, wh1Var);
                        this.$this_startTransactionCoroutine = roomDatabase;
                        this.$continuation = cr0Var;
                        this.$transactionBlock = s74Var;
                    }

                    @Override
                    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_startTransactionCoroutine, this.$continuation, this.$transactionBlock, wh1Var);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override
                    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                        return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        wh1 wh1Var;
                        Object objF = z45.f();
                        int i = this.label;
                        if (i == 0) {
                            kotlin.c.b(obj);
                            d.b bVar = ((nk1) this.L$0).getCoroutineContext().get(c.A6);
                            y45.g(bVar);
                            d dVarCreateTransactionContext = RoomDatabaseKt.createTransactionContext(this.$this_startTransactionCoroutine, (c) bVar);
                            cr0 cr0Var = this.$continuation;
                            Result.Companion companion = Result.INSTANCE;
                            s74 s74Var = this.$transactionBlock;
                            this.L$0 = cr0Var;
                            this.label = 1;
                            obj = cl0.g(dVarCreateTransactionContext, s74Var, this);
                            if (obj == objF) {
                                return objF;
                            }
                            wh1Var = cr0Var;
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            wh1Var = (wh1) this.L$0;
                            kotlin.c.b(obj);
                        }
                        wh1Var.resumeWith(Result.m279constructorimpl(obj));
                        return zfb.a;
                    }
                }

                @Override
                public final void run() {
                    try {
                        cl0.e(dVar.minusKey(c.A6), new AnonymousClass1(roomDatabase, cancellableContinuationImpl, s74Var, null));
                    } catch (Throwable th) {
                        cancellableContinuationImpl.cancel(th);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            cancellableContinuationImpl.cancel(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public static final <R> Object withTransaction(RoomDatabase roomDatabase, e74 e74Var, wh1<? super R> wh1Var) {
        RoomDatabaseKt$withTransaction$transactionBlock$1 roomDatabaseKt$withTransaction$transactionBlock$1 = new RoomDatabaseKt$withTransaction$transactionBlock$1(roomDatabase, e74Var, null);
        TransactionElement transactionElement = (TransactionElement) wh1Var.getContext().get(TransactionElement.INSTANCE);
        c transactionDispatcher = transactionElement != null ? transactionElement.getTransactionDispatcher() : null;
        return transactionDispatcher != null ? cl0.g(transactionDispatcher, roomDatabaseKt$withTransaction$transactionBlock$1, wh1Var) : startTransactionCoroutine(roomDatabase, wh1Var.getContext(), roomDatabaseKt$withTransaction$transactionBlock$1, wh1Var);
    }
}
