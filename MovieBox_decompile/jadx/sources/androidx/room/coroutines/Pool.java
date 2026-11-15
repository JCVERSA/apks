package androidx.room.coroutines;

import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

final class Pool {

    private final int f14284a;

    private final Function0 f14285b;

    private final ReentrantLock f14286c;

    private int f14287d;

    private boolean f14288e;

    private final i[] f14289f;

    private final kotlinx.coroutines.sync.h f14290g;

    private final androidx.collection.e f14291h;

    public Pool(int i10, Function0 connectionFactory) {
        Intrinsics.h(connectionFactory, "connectionFactory");
        this.f14284a = i10;
        this.f14285b = connectionFactory;
        this.f14286c = new ReentrantLock();
        this.f14289f = new i[i10];
        this.f14290g = kotlinx.coroutines.sync.k.b(i10, 0, 2, null);
        this.f14291h = new androidx.collection.e(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void f() {
        if (this.f14287d >= this.f14284a) {
            return;
        }
        i iVar = new i((y3.b) this.f14285b.invoke(), null, 2, 0 == true ? 1 : 0);
        i[] iVarArr = this.f14289f;
        int i10 = this.f14287d;
        this.f14287d = i10 + 1;
        iVarArr[i10] = iVar;
        this.f14291h.a(iVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        Pool$acquire$1 pool$acquire$1;
        Pool pool;
        if (continuation instanceof Pool$acquire$1) {
            pool$acquire$1 = (Pool$acquire$1) continuation;
            int i10 = pool$acquire$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pool$acquire$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pool$acquire$1 = new Pool$acquire$1(this, continuation);
            }
        } else {
            pool$acquire$1 = new Pool$acquire$1(this, continuation);
        }
        Object obj = pool$acquire$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pool$acquire$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.sync.h hVar = this.f14290g;
            pool$acquire$1.L$0 = this;
            pool$acquire$1.label = 1;
            if (hVar.c(pool$acquire$1) == objF) {
                return objF;
            }
            pool = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pool = (Pool) pool$acquire$1.L$0;
            ResultKt.b(obj);
        }
        try {
            ReentrantLock reentrantLock = pool.f14286c;
            reentrantLock.lock();
            try {
                if (pool.f14288e) {
                    y3.a.b(21, "Connection pool is closed");
                    throw new KotlinNothingValueException();
                }
                if (pool.f14291h.d()) {
                    pool.f();
                }
                i iVar = (i) pool.f14291h.e();
                reentrantLock.unlock();
                return iVar;
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        } catch (Throwable th3) {
            pool.f14290g.release();
            throw th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0060 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x0061  */
    /* JADX WARN: Code duplicated, block: B:30:0x0076 A[Catch: all -> 0x007a, TryCatch #2 {all -> 0x007a, blocks: (B:28:0x0072, B:30:0x0076, B:34:0x007e, B:38:0x0085), top: B:47:0x0072 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x007c  */
    /* JADX WARN: Code duplicated, block: B:34:0x007e A[Catch: all -> 0x007a, TryCatch #2 {all -> 0x007a, blocks: (B:28:0x0072, B:30:0x0076, B:34:0x007e, B:38:0x0085), top: B:47:0x0072 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0082 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x0085 A[Catch: all -> 0x007a, TRY_LEAVE, TryCatch #2 {all -> 0x007a, blocks: (B:28:0x0072, B:30:0x0076, B:34:0x007e, B:38:0x0085), top: B:47:0x0072 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0061 -> B:24:0x0063). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b(long r9, kotlin.jvm.functions.Function0 r11, kotlin.coroutines.Continuation r12) {
        /*
            r8 = this;
            boolean r0 = r12 instanceof androidx.room.coroutines.Pool$acquireWithTimeout$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.room.coroutines.Pool$acquireWithTimeout$1 r0 = (androidx.room.coroutines.Pool$acquireWithTimeout$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.Pool$acquireWithTimeout$1 r0 = new androidx.room.coroutines.Pool$acquireWithTimeout$1
            r0.<init>(r8, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            long r9 = r0.J$0
            java.lang.Object r11 = r0.L$2
            kotlin.jvm.internal.Ref$ObjectRef r11 = (kotlin.jvm.internal.Ref.ObjectRef) r11
            java.lang.Object r2 = r0.L$1
            kotlin.jvm.functions.Function0 r2 = (kotlin.jvm.functions.Function0) r2
            java.lang.Object r5 = r0.L$0
            androidx.room.coroutines.Pool r5 = (androidx.room.coroutines.Pool) r5
            kotlin.ResultKt.b(r12)     // Catch: java.lang.Throwable -> L38
            goto L63
        L38:
            r12 = move-exception
            goto L6d
        L3a:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L42:
            kotlin.ResultKt.b(r12)
            r5 = r8
        L46:
            kotlin.jvm.internal.Ref$ObjectRef r12 = new kotlin.jvm.internal.Ref$ObjectRef
            r12.<init>()
            androidx.room.coroutines.Pool$acquireWithTimeout$2 r2 = new androidx.room.coroutines.Pool$acquireWithTimeout$2     // Catch: java.lang.Throwable -> L68
            r2.<init>(r12, r5, r4)     // Catch: java.lang.Throwable -> L68
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L68
            r0.L$1 = r11     // Catch: java.lang.Throwable -> L68
            r0.L$2 = r12     // Catch: java.lang.Throwable -> L68
            r0.J$0 = r9     // Catch: java.lang.Throwable -> L68
            r0.label = r3     // Catch: java.lang.Throwable -> L68
            java.lang.Object r2 = kotlinx.coroutines.TimeoutKt.d(r9, r2, r0)     // Catch: java.lang.Throwable -> L68
            if (r2 != r1) goto L61
            return r1
        L61:
            r2 = r11
            r11 = r12
        L63:
            r12 = r11
            r11 = r2
            r2 = r0
            r0 = r4
            goto L72
        L68:
            r2 = move-exception
            r7 = r2
            r2 = r11
            r11 = r12
            r12 = r7
        L6d:
            r7 = r12
            r12 = r11
            r11 = r2
            r2 = r0
            r0 = r7
        L72:
            boolean r6 = r0 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L7a
            if (r6 == 0) goto L7c
            r11.invoke()     // Catch: java.lang.Throwable -> L7a
            goto L83
        L7a:
            r9 = move-exception
            goto L86
        L7c:
            if (r0 != 0) goto L85
            T r12 = r12.element     // Catch: java.lang.Throwable -> L7a
            if (r12 == 0) goto L83
            return r12
        L83:
            r0 = r2
            goto L46
        L85:
            throw r0     // Catch: java.lang.Throwable -> L7a
        L86:
            T r10 = r12.element
            androidx.room.coroutines.i r10 = (androidx.room.coroutines.i) r10
            if (r10 == 0) goto L8f
            r5.e(r10)
        L8f:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.Pool.b(long, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void c() {
        ReentrantLock reentrantLock = this.f14286c;
        reentrantLock.lock();
        try {
            this.f14288e = true;
            for (i iVar : this.f14289f) {
                if (iVar != null) {
                    iVar.close();
                }
            }
            Unit unit = Unit.f64096a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void d(StringBuilder builder) {
        Intrinsics.h(builder, "builder");
        ReentrantLock reentrantLock = this.f14286c;
        reentrantLock.lock();
        try {
            List listC = CollectionsKt.c();
            int iF = this.f14291h.f();
            for (int i10 = 0; i10 < iF; i10++) {
                listC.add(this.f14291h.c(i10));
            }
            List listA = CollectionsKt.a(listC);
            builder.append('\t' + super.toString() + " (");
            builder.append("capacity=" + this.f14284a + ", ");
            builder.append("permits=" + this.f14290g.a() + ", ");
            builder.append("queue=(size=" + listA.size() + ")[" + CollectionsKt.s0(listA, null, null, null, 0, null, null, 63, null) + "], ");
            builder.append(")");
            builder.append('\n');
            i[] iVarArr = this.f14289f;
            int length = iVarArr.length;
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                i iVar = iVarArr[i12];
                i11++;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("\t\t[");
                sb2.append(i11);
                sb2.append("] - ");
                sb2.append(iVar != null ? iVar.toString() : null);
                builder.append(sb2.toString());
                builder.append('\n');
                if (iVar != null) {
                    iVar.h(builder);
                }
            }
            Unit unit = Unit.f64096a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void e(i connection) {
        Intrinsics.h(connection, "connection");
        ReentrantLock reentrantLock = this.f14286c;
        reentrantLock.lock();
        try {
            this.f14291h.a(connection);
            Unit unit = Unit.f64096a;
            reentrantLock.unlock();
            this.f14290g.release();
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }
}
