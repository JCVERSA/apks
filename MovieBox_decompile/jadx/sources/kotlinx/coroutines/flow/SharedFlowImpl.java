package kotlinx.coroutines.flow;

import java.util.Arrays;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.BufferOverflow;

public class SharedFlowImpl extends kotlinx.coroutines.flow.internal.a implements w0, kotlinx.coroutines.flow.a, kotlinx.coroutines.flow.internal.j {

    private final int f64786e;

    private final int f64787f;

    private final BufferOverflow f64788g;

    private Object[] f64789h;

    private long f64790i;

    private long f64791j;

    private int f64792k;

    private int f64793l;

    private static final class a implements kotlinx.coroutines.a1 {

        public final SharedFlowImpl f64794a;

        public long f64795b;

        public final Object f64796c;

        public final Continuation f64797d;

        public a(SharedFlowImpl sharedFlowImpl, long j10, Object obj, Continuation continuation) {
            this.f64794a = sharedFlowImpl;
            this.f64795b = j10;
            this.f64796c = obj;
            this.f64797d = continuation;
        }

        @Override
        public void dispose() {
            this.f64794a.z(this);
        }
    }

    public class b {

        public static final int[] f64798a;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f64798a = iArr;
        }
    }

    public SharedFlowImpl(int i10, int i11, BufferOverflow bufferOverflow) {
        this.f64786e = i10;
        this.f64787f = i11;
        this.f64788g = bufferOverflow;
    }

    private final void A() {
        if (this.f64787f != 0 || this.f64793l > 1) {
            Object[] objArr = this.f64789h;
            Intrinsics.e(objArr);
            while (this.f64793l > 0 && c1.f(objArr, (L() + ((long) Q())) - 1) == c1.f64806a) {
                this.f64793l--;
                c1.g(objArr, L() + ((long) Q()), null);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009a A[Catch: all -> 0x0042, TryCatch #1 {all -> 0x0042, blocks: (B:15:0x003b, B:32:0x0092, B:34:0x009a, B:38:0x00ad, B:39:0x00b0, B:22:0x005d), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ad A[Catch: all -> 0x0042, TryCatch #1 {all -> 0x0042, blocks: (B:15:0x003b, B:32:0x0092, B:34:0x009a, B:38:0x00ad, B:39:0x00b0, B:22:0x005d), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00c0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x00ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, kotlinx.coroutines.flow.b] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r5v1, types: [kotlinx.coroutines.flow.internal.a] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, kotlinx.coroutines.flow.SharedFlowImpl] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [kotlinx.coroutines.flow.b] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2, types: [kotlinx.coroutines.flow.internal.c] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object, kotlinx.coroutines.flow.d1] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9, types: [kotlinx.coroutines.flow.d1] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00be -> B:16:0x003e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:34:0x009a
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    static java.lang.Object B(kotlinx.coroutines.flow.SharedFlowImpl r8, kotlinx.coroutines.flow.b r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.SharedFlowImpl$collect$1
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.SharedFlowImpl$collect$1 r0 = (kotlinx.coroutines.flow.SharedFlowImpl$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.SharedFlowImpl$collect$1 r0 = new kotlinx.coroutines.flow.SharedFlowImpl$collect$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            if (r2 == 0) goto L77
            r8 = 1
            if (r2 == r8) goto L61
            if (r2 == r4) goto L4d
            if (r2 != r3) goto L45
            java.lang.Object r8 = r0.L$3
            kotlinx.coroutines.t1 r8 = (kotlinx.coroutines.t1) r8
            java.lang.Object r9 = r0.L$2
            kotlinx.coroutines.flow.d1 r9 = (kotlinx.coroutines.flow.d1) r9
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.flow.b r2 = (kotlinx.coroutines.flow.b) r2
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.flow.SharedFlowImpl r5 = (kotlinx.coroutines.flow.SharedFlowImpl) r5
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L42
        L3e:
            r10 = r2
            r2 = r8
            r8 = r5
            goto L8f
        L42:
            r8 = move-exception
            goto Lc4
        L45:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L4d:
            java.lang.Object r8 = r0.L$3
            kotlinx.coroutines.t1 r8 = (kotlinx.coroutines.t1) r8
            java.lang.Object r9 = r0.L$2
            kotlinx.coroutines.flow.d1 r9 = (kotlinx.coroutines.flow.d1) r9
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.flow.b r2 = (kotlinx.coroutines.flow.b) r2
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.flow.SharedFlowImpl r5 = (kotlinx.coroutines.flow.SharedFlowImpl) r5
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L42
            goto L92
        L61:
            java.lang.Object r8 = r0.L$2
            r9 = r8
            kotlinx.coroutines.flow.d1 r9 = (kotlinx.coroutines.flow.d1) r9
            java.lang.Object r8 = r0.L$1
            kotlinx.coroutines.flow.b r8 = (kotlinx.coroutines.flow.b) r8
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.SharedFlowImpl r2 = (kotlinx.coroutines.flow.SharedFlowImpl) r2
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L74
            r10 = r8
            r8 = r2
            goto L83
        L74:
            r8 = move-exception
            r5 = r2
            goto Lc4
        L77:
            kotlin.ResultKt.b(r10)
            kotlinx.coroutines.flow.internal.c r10 = r8.i()
            kotlinx.coroutines.flow.d1 r10 = (kotlinx.coroutines.flow.d1) r10
            r7 = r10
            r10 = r9
            r9 = r7
        L83:
            kotlin.coroutines.CoroutineContext r2 = r0.getF64214a()     // Catch: java.lang.Throwable -> Lc1
            kotlinx.coroutines.t1$b r5 = kotlinx.coroutines.t1.f65027m1     // Catch: java.lang.Throwable -> Lc1
            kotlin.coroutines.CoroutineContext$Element r2 = r2.get(r5)     // Catch: java.lang.Throwable -> Lc1
            kotlinx.coroutines.t1 r2 = (kotlinx.coroutines.t1) r2     // Catch: java.lang.Throwable -> Lc1
        L8f:
            r5 = r8
            r8 = r2
            r2 = r10
        L92:
            java.lang.Object r10 = r5.V(r9)     // Catch: java.lang.Throwable -> L42
            kotlinx.coroutines.internal.z r6 = kotlinx.coroutines.flow.c1.f64806a     // Catch: java.lang.Throwable -> L42
            if (r10 != r6) goto Lab
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L42
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L42
            r0.L$2 = r9     // Catch: java.lang.Throwable -> L42
            r0.L$3 = r8     // Catch: java.lang.Throwable -> L42
            r0.label = r4     // Catch: java.lang.Throwable -> L42
            java.lang.Object r10 = r5.y(r9, r0)     // Catch: java.lang.Throwable -> L42
            if (r10 != r1) goto L92
            return r1
        Lab:
            if (r8 == 0) goto Lb0
            kotlinx.coroutines.v1.j(r8)     // Catch: java.lang.Throwable -> L42
        Lb0:
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L42
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L42
            r0.L$2 = r9     // Catch: java.lang.Throwable -> L42
            r0.L$3 = r8     // Catch: java.lang.Throwable -> L42
            r0.label = r3     // Catch: java.lang.Throwable -> L42
            java.lang.Object r10 = r2.emit(r10, r0)     // Catch: java.lang.Throwable -> L42
            if (r10 != r1) goto L3e
            return r1
        Lc1:
            r10 = move-exception
            r5 = r8
            r8 = r10
        Lc4:
            r5.l(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.B(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.b, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void C(long j10) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        if (((kotlinx.coroutines.flow.internal.a) this).f64835b != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f64834a) != null) {
            for (kotlinx.coroutines.flow.internal.c cVar : cVarArr) {
                if (cVar != null) {
                    d1 d1Var = (d1) cVar;
                    long j11 = d1Var.f64807a;
                    if (j11 >= 0 && j11 < j10) {
                        d1Var.f64807a = j10;
                    }
                }
            }
        }
        this.f64791j = j10;
    }

    private final void F() {
        Object[] objArr = this.f64789h;
        Intrinsics.e(objArr);
        c1.g(objArr, L(), null);
        this.f64792k--;
        long jL = L() + 1;
        if (this.f64790i < jL) {
            this.f64790i = jL;
        }
        if (this.f64791j < jL) {
            C(jL);
        }
    }

    static Object G(SharedFlowImpl sharedFlowImpl, Object obj, Continuation continuation) {
        if (sharedFlowImpl.b(obj)) {
            return Unit.f64096a;
        }
        Object objH = sharedFlowImpl.H(obj, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f64096a;
    }

    private final Object H(Object obj, Continuation continuation) {
        Continuation[] continuationArrJ;
        a aVar;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Continuation[] continuationArrJ2 = kotlinx.coroutines.flow.internal.b.f64838a;
        synchronized (this) {
            try {
                if (S(obj)) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(Unit.f64096a));
                    continuationArrJ = J(continuationArrJ2);
                    aVar = null;
                } else {
                    a aVar2 = new a(this, ((long) Q()) + L(), obj, cancellableContinuationImpl);
                    I(aVar2);
                    this.f64793l++;
                    if (this.f64787f == 0) {
                        continuationArrJ2 = J(continuationArrJ2);
                    }
                    continuationArrJ = continuationArrJ2;
                    aVar = aVar2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (aVar != null) {
            kotlinx.coroutines.q.a(cancellableContinuationImpl, aVar);
        }
        for (Continuation continuation2 : continuationArrJ) {
            if (continuation2 != null) {
                Result.Companion companion2 = Result.INSTANCE;
                continuation2.resumeWith(Result.m453constructorimpl(Unit.f64096a));
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f64096a;
    }

    public final void I(Object obj) {
        int iQ = Q();
        Object[] objArrR = this.f64789h;
        if (objArrR == null) {
            objArrR = R(null, 0, 2);
        } else if (iQ >= objArrR.length) {
            objArrR = R(objArrR, iQ, objArrR.length * 2);
        }
        c1.g(objArrR, L() + ((long) iQ), obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [kotlin.coroutines.Continuation[]] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public final Continuation[] J(Continuation[] continuationArr) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        d1 d1Var;
        Continuation continuation;
        int length = continuationArr.length;
        if (((kotlinx.coroutines.flow.internal.a) this).f64835b != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f64834a) != null) {
            int length2 = cVarArr.length;
            int i10 = 0;
            while (i10 < length2) {
                kotlinx.coroutines.flow.internal.c cVar = cVarArr[i10];
                if (cVar == null || (continuation = (d1Var = (d1) cVar).f64808b) == null || U(d1Var) < 0) {
                    continuationArr = continuationArr;
                } else {
                    if (length >= continuationArr.length) {
                        continuationArr = continuationArr;
                        continuationArr = continuationArr;
                        Object[] objArrCopyOf = Arrays.copyOf((Object[]) continuationArr, Math.max(2, continuationArr.length * 2));
                        Intrinsics.g(objArrCopyOf, "copyOf(...)");
                        continuationArr = objArrCopyOf;
                    }
                    continuationArr = continuationArr;
                    continuationArr = continuationArr;
                    ((Continuation[]) continuationArr)[length] = continuation;
                    d1Var.f64808b = null;
                    length++;
                }
                i10++;
                continuationArr = continuationArr;
            }
            continuationArr = continuationArr;
        }
        return (Continuation[]) continuationArr;
    }

    private final long K() {
        return L() + ((long) this.f64792k);
    }

    public final long L() {
        return Math.min(this.f64791j, this.f64790i);
    }

    private final Object N(long j10) {
        Object[] objArr = this.f64789h;
        Intrinsics.e(objArr);
        Object objF = c1.f(objArr, j10);
        return objF instanceof a ? ((a) objF).f64796c : objF;
    }

    private final long O() {
        return L() + ((long) this.f64792k) + ((long) this.f64793l);
    }

    private final int P() {
        return (int) ((L() + ((long) this.f64792k)) - this.f64790i);
    }

    public final int Q() {
        return this.f64792k + this.f64793l;
    }

    private final Object[] R(Object[] objArr, int i10, int i11) {
        if (i11 <= 0) {
            throw new IllegalStateException("Buffer size overflow");
        }
        Object[] objArr2 = new Object[i11];
        this.f64789h = objArr2;
        if (objArr == null) {
            return objArr2;
        }
        long jL = L();
        for (int i12 = 0; i12 < i10; i12++) {
            long j10 = ((long) i12) + jL;
            c1.g(objArr2, j10, c1.f(objArr, j10));
        }
        return objArr2;
    }

    public final boolean S(Object obj) {
        if (m() == 0) {
            return T(obj);
        }
        if (this.f64792k >= this.f64787f && this.f64791j <= this.f64790i) {
            int i10 = b.f64798a[this.f64788g.ordinal()];
            if (i10 == 1) {
                return false;
            }
            if (i10 == 2) {
                return true;
            }
            if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            }
        }
        I(obj);
        int i11 = this.f64792k + 1;
        this.f64792k = i11;
        if (i11 > this.f64787f) {
            F();
        }
        if (P() > this.f64786e) {
            W(this.f64790i + 1, this.f64791j, K(), O());
        }
        return true;
    }

    private final boolean T(Object obj) {
        if (this.f64786e == 0) {
            return true;
        }
        I(obj);
        int i10 = this.f64792k + 1;
        this.f64792k = i10;
        if (i10 > this.f64786e) {
            F();
        }
        this.f64791j = L() + ((long) this.f64792k);
        return true;
    }

    public final long U(d1 d1Var) {
        long j10 = d1Var.f64807a;
        if (j10 < K()) {
            return j10;
        }
        if (this.f64787f <= 0 && j10 <= L() && this.f64793l != 0) {
            return j10;
        }
        return -1L;
    }

    private final Object V(d1 d1Var) {
        Object obj;
        Continuation[] continuationArrX = kotlinx.coroutines.flow.internal.b.f64838a;
        synchronized (this) {
            try {
                long jU = U(d1Var);
                if (jU < 0) {
                    obj = c1.f64806a;
                } else {
                    long j10 = d1Var.f64807a;
                    Object objN = N(jU);
                    d1Var.f64807a = jU + 1;
                    continuationArrX = X(j10);
                    obj = objN;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (Continuation continuation : continuationArrX) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m453constructorimpl(Unit.f64096a));
            }
        }
        return obj;
    }

    private final void W(long j10, long j11, long j12, long j13) {
        long jMin = Math.min(j11, j10);
        for (long jL = L(); jL < jMin; jL++) {
            Object[] objArr = this.f64789h;
            Intrinsics.e(objArr);
            c1.g(objArr, jL, null);
        }
        this.f64790i = j10;
        this.f64791j = j11;
        this.f64792k = (int) (j12 - jMin);
        this.f64793l = (int) (j13 - j12);
    }

    private final Object y(d1 d1Var, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this) {
            try {
                if (U(d1Var) < 0) {
                    d1Var.f64808b = cancellableContinuationImpl;
                } else {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(Unit.f64096a));
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f64096a;
    }

    public final void z(a aVar) {
        synchronized (this) {
            if (aVar.f64795b < L()) {
                return;
            }
            Object[] objArr = this.f64789h;
            Intrinsics.e(objArr);
            if (c1.f(objArr, aVar.f64795b) != aVar) {
                return;
            }
            c1.g(objArr, aVar.f64795b, c1.f64806a);
            A();
            Unit unit = Unit.f64096a;
        }
    }

    @Override
    public d1 j() {
        return new d1();
    }

    @Override
    public d1[] k(int i10) {
        return new d1[i10];
    }

    protected final Object M() {
        Object[] objArr = this.f64789h;
        Intrinsics.e(objArr);
        return c1.f(objArr, (this.f64790i + ((long) P())) - 1);
    }

    public final Continuation[] X(long j10) {
        long j11;
        long j12;
        long j13;
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        if (j10 > this.f64791j) {
            return kotlinx.coroutines.flow.internal.b.f64838a;
        }
        long jL = L();
        long j14 = ((long) this.f64792k) + jL;
        if (this.f64787f == 0 && this.f64793l > 0) {
            j14++;
        }
        if (((kotlinx.coroutines.flow.internal.a) this).f64835b != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f64834a) != null) {
            for (kotlinx.coroutines.flow.internal.c cVar : cVarArr) {
                if (cVar != null) {
                    long j15 = ((d1) cVar).f64807a;
                    if (j15 >= 0 && j15 < j14) {
                        j14 = j15;
                    }
                }
            }
        }
        if (j14 <= this.f64791j) {
            return kotlinx.coroutines.flow.internal.b.f64838a;
        }
        long jK = K();
        int iMin = m() > 0 ? Math.min(this.f64793l, this.f64787f - ((int) (jK - j14))) : this.f64793l;
        Continuation[] continuationArr = kotlinx.coroutines.flow.internal.b.f64838a;
        long j16 = ((long) this.f64793l) + jK;
        if (iMin > 0) {
            continuationArr = new Continuation[iMin];
            Object[] objArr = this.f64789h;
            Intrinsics.e(objArr);
            long j17 = jK;
            int i10 = 0;
            while (true) {
                if (jK >= j16) {
                    j11 = j14;
                    j12 = j16;
                    break;
                }
                Object objF = c1.f(objArr, jK);
                j11 = j14;
                kotlinx.coroutines.internal.z zVar = c1.f64806a;
                if (objF != zVar) {
                    Intrinsics.f(objF, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) objF;
                    int i11 = i10 + 1;
                    j12 = j16;
                    continuationArr[i10] = aVar.f64797d;
                    c1.g(objArr, jK, zVar);
                    c1.g(objArr, j17, aVar.f64796c);
                    j13 = 1;
                    j17++;
                    if (i11 >= iMin) {
                        break;
                    }
                    i10 = i11;
                } else {
                    j12 = j16;
                    j13 = 1;
                }
                jK += j13;
                j14 = j11;
                j16 = j12;
            }
            jK = j17;
        } else {
            j11 = j14;
            j12 = j16;
        }
        int i12 = (int) (jK - jL);
        long j18 = m() == 0 ? jK : j11;
        long jMax = Math.max(this.f64790i, jK - ((long) Math.min(this.f64786e, i12)));
        if (this.f64787f == 0 && jMax < j12) {
            Object[] objArr2 = this.f64789h;
            Intrinsics.e(objArr2);
            if (Intrinsics.c(c1.f(objArr2, jMax), c1.f64806a)) {
                jK++;
                jMax++;
            }
        }
        W(jMax, j18, jK, j12);
        A();
        return !(continuationArr.length == 0) ? J(continuationArr) : continuationArr;
    }

    public final long Y() {
        long j10 = this.f64790i;
        if (j10 < this.f64791j) {
            this.f64791j = j10;
        }
        return j10;
    }

    @Override
    public Object a(kotlinx.coroutines.flow.b bVar, Continuation continuation) {
        return B(this, bVar, continuation);
    }

    @Override
    public boolean b(Object obj) {
        int i10;
        boolean z10;
        Continuation[] continuationArrJ = kotlinx.coroutines.flow.internal.b.f64838a;
        synchronized (this) {
            if (S(obj)) {
                continuationArrJ = J(continuationArrJ);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        for (Continuation continuation : continuationArrJ) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m453constructorimpl(Unit.f64096a));
            }
        }
        return z10;
    }

    @Override
    public kotlinx.coroutines.flow.a d(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        return c1.e(this, coroutineContext, i10, bufferOverflow);
    }

    @Override
    public Object emit(Object obj, Continuation continuation) {
        return G(this, obj, continuation);
    }

    @Override
    public void f() {
        synchronized (this) {
            W(K(), this.f64791j, K(), O());
            Unit unit = Unit.f64096a;
        }
    }
}
