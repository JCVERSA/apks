package androidx.room;

import defpackage.cu0;
import defpackage.el0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.oz3;
import defpackage.ps0;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Loz3;", "Lzfb;", "<anonymous>", "(Loz3;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1", f = "CoroutinesRoom.kt", l = {111}, m = "invokeSuspend")
public final class CoroutinesRoom$Companion$createFlow$1 extends SuspendLambda implements s74 {
    final Callable<R> $callable;
    final RoomDatabase $db;
    final boolean $inTransaction;
    final String[] $tableNames;
    private Object L$0;
    int label;

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1", f = "CoroutinesRoom.kt", l = {137}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final oz3 $$this$flow;
        final Callable<R> $callable;
        final RoomDatabase $db;
        final boolean $inTransaction;
        final String[] $tableNames;
        private Object L$0;
        int label;

        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
        @nt1(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1", f = "CoroutinesRoom.kt", l = {128, 130}, m = "invokeSuspend")
        public static final class C00141 extends SuspendLambda implements s74 {
            final Callable<R> $callable;
            final RoomDatabase $db;
            final CoroutinesRoom$Companion$createFlow$1$1$observer$1 $observer;
            final ps0 $observerChannel;
            final ps0 $resultChannel;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00141(RoomDatabase roomDatabase, CoroutinesRoom$Companion$createFlow$1$1$observer$1 coroutinesRoom$Companion$createFlow$1$1$observer$1, ps0 ps0Var, Callable callable, ps0 ps0Var2, wh1 wh1Var) {
                super(2, wh1Var);
                this.$db = roomDatabase;
                this.$observer = coroutinesRoom$Companion$createFlow$1$1$observer$1;
                this.$observerChannel = ps0Var;
                this.$callable = callable;
                this.$resultChannel = ps0Var2;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C00141(this.$db, this.$observer, this.$observerChannel, this.$callable, this.$resultChannel, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C00141) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            /* JADX WARN: Code duplicated, block: B:20:0x0047 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:21:0x0048  */
            /* JADX WARN: Code duplicated, block: B:24:0x0053 A[Catch: all -> 0x0017, TRY_LEAVE, TryCatch #0 {all -> 0x0017, blocks: (B:7:0x0012, B:18:0x003d, B:22:0x004b, B:24:0x0053, B:14:0x0025, B:17:0x0037), top: B:31:0x0008 }] */
            /* JADX WARN: Code duplicated, block: B:26:0x0068 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:27:0x0069  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0066 -> B:8:0x0015). Please report as a decompilation issue!!! */
            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                */
            @Override
            public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                /*
                    r6 = this;
                    java.lang.Object r0 = defpackage.z45.f()
                    int r1 = r6.label
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L29
                    if (r1 == r3) goto L21
                    if (r1 != r2) goto L19
                    java.lang.Object r1 = r6.L$0
                    bu0 r1 = (defpackage.bu0) r1
                    kotlin.c.b(r7)     // Catch: java.lang.Throwable -> L17
                L15:
                    r7 = r1
                    goto L3d
                L17:
                    r7 = move-exception
                    goto L77
                L19:
                    java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                    java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                    r6.<init>(r7)
                    throw r6
                L21:
                    java.lang.Object r1 = r6.L$0
                    bu0 r1 = (defpackage.bu0) r1
                    kotlin.c.b(r7)     // Catch: java.lang.Throwable -> L17
                    goto L4b
                L29:
                    kotlin.c.b(r7)
                    androidx.room.RoomDatabase r7 = r6.$db
                    androidx.room.InvalidationTracker r7 = r7.getInvalidationTracker()
                    androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1 r1 = r6.$observer
                    r7.addObserver(r1)
                    ps0 r7 = r6.$observerChannel     // Catch: java.lang.Throwable -> L17
                    bu0 r7 = r7.iterator()     // Catch: java.lang.Throwable -> L17
                L3d:
                    r6.L$0 = r7     // Catch: java.lang.Throwable -> L17
                    r6.label = r3     // Catch: java.lang.Throwable -> L17
                    java.lang.Object r1 = r7.a(r6)     // Catch: java.lang.Throwable -> L17
                    if (r1 != r0) goto L48
                    return r0
                L48:
                    r5 = r1
                    r1 = r7
                    r7 = r5
                L4b:
                    java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L17
                    boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L17
                    if (r7 == 0) goto L69
                    r1.next()     // Catch: java.lang.Throwable -> L17
                    java.util.concurrent.Callable<R> r7 = r6.$callable     // Catch: java.lang.Throwable -> L17
                    java.lang.Object r7 = r7.call()     // Catch: java.lang.Throwable -> L17
                    ps0 r4 = r6.$resultChannel     // Catch: java.lang.Throwable -> L17
                    r6.L$0 = r1     // Catch: java.lang.Throwable -> L17
                    r6.label = r2     // Catch: java.lang.Throwable -> L17
                    java.lang.Object r7 = r4.l(r7, r6)     // Catch: java.lang.Throwable -> L17
                    if (r7 != r0) goto L15
                    return r0
                L69:
                    androidx.room.RoomDatabase r7 = r6.$db
                    androidx.room.InvalidationTracker r7 = r7.getInvalidationTracker()
                    androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1 r6 = r6.$observer
                    r7.removeObserver(r6)
                    zfb r6 = defpackage.zfb.a
                    return r6
                L77:
                    androidx.room.RoomDatabase r0 = r6.$db
                    androidx.room.InvalidationTracker r0 = r0.getInvalidationTracker()
                    androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1 r6 = r6.$observer
                    r0.removeObserver(r6)
                    throw r7
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.room.CoroutinesRoom$Companion$createFlow$1.AnonymousClass1.C00141.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z, RoomDatabase roomDatabase, oz3 oz3Var, String[] strArr, Callable<R> callable, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$inTransaction = z;
            this.$db = roomDatabase;
            this.$$this$flow = oz3Var;
            this.$tableNames = strArr;
            this.$callable = callable;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$inTransaction, this.$db, this.$$this$flow, this.$tableNames, this.$callable, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1] */
        @Override
        public final Object invokeSuspend(Object obj) {
            c transactionDispatcher;
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                kotlin.c.b(obj);
                nk1 nk1Var = (nk1) this.L$0;
                final ps0 ps0VarB = cu0.b(-1, null, null, 6, null);
                final String[] strArr = this.$tableNames;
                ?? r7 = new InvalidationTracker.Observer(strArr) {
                    @Override
                    public void onInvalidated(Set<String> tables) {
                        ps0VarB.f(zfb.a);
                    }
                };
                ps0VarB.f(zfb.a);
                TransactionElement transactionElement = (TransactionElement) nk1Var.getCoroutineContext().get(TransactionElement.INSTANCE);
                if (transactionElement == null || (transactionDispatcher = transactionElement.getTransactionDispatcher()) == null) {
                    transactionDispatcher = this.$inTransaction ? CoroutinesRoomKt.getTransactionDispatcher(this.$db) : CoroutinesRoomKt.getQueryDispatcher(this.$db);
                }
                ps0 ps0VarB2 = cu0.b(0, null, null, 7, null);
                el0.d(nk1Var, transactionDispatcher, null, new C00141(this.$db, r7, ps0VarB, this.$callable, ps0VarB2, null), 2, null);
                oz3 oz3Var = this.$$this$flow;
                this.label = 1;
                if (sz3.m(oz3Var, ps0VarB2, this) == objF) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutinesRoom$Companion$createFlow$1(boolean z, RoomDatabase roomDatabase, String[] strArr, Callable<R> callable, wh1<? super CoroutinesRoom$Companion$createFlow$1> wh1Var) {
        super(2, wh1Var);
        this.$inTransaction = z;
        this.$db = roomDatabase;
        this.$tableNames = strArr;
        this.$callable = callable;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        CoroutinesRoom$Companion$createFlow$1 coroutinesRoom$Companion$createFlow$1 = new CoroutinesRoom$Companion$createFlow$1(this.$inTransaction, this.$db, this.$tableNames, this.$callable, wh1Var);
        coroutinesRoom$Companion$createFlow$1.L$0 = obj;
        return coroutinesRoom$Companion$createFlow$1;
    }

    @Override
    public final Object invoke(oz3 oz3Var, wh1<? super zfb> wh1Var) {
        return ((CoroutinesRoom$Companion$createFlow$1) create(oz3Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            kotlin.c.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$inTransaction, this.$db, (oz3) this.L$0, this.$tableNames, this.$callable, null);
            this.label = 1;
            if (d.g(anonymousClass1, this) == objF) {
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
