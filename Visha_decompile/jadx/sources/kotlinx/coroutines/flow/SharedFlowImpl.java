package kotlinx.coroutines.flow;

import com.transsion.letswitch.service.api.internal.manager.MediaFile;
import defpackage.fr0;
import defpackage.i94;
import defpackage.kw6;
import defpackage.lg9;
import defpackage.mg9;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.pt1;
import defpackage.uc2;
import defpackage.wh1;
import defpackage.x3;
import defpackage.y3;
import defpackage.y45;
import defpackage.y7a;
import defpackage.z3;
import defpackage.z45;
import defpackage.zfb;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.BufferOverflow;

public class SharedFlowImpl extends x3 implements kw6, nz3, i94 {
    public final int f;
    public final int g;
    public final BufferOverflow h;
    public Object[] i;
    public long j;
    public long k;
    public int l;
    public int m;

    public static final class a implements uc2 {
        public final SharedFlowImpl b;
        public long c;
        public final Object d;
        public final wh1 e;

        public a(SharedFlowImpl sharedFlowImpl, long j, Object obj, wh1 wh1Var) {
            this.b = sharedFlowImpl;
            this.c = j;
            this.d = obj;
            this.e = wh1Var;
        }

        @Override
        public void dispose() {
            this.b.y(this);
        }
    }

    public class b {
        public static final int[] a;

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
            a = iArr;
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @nt1(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", l = {387, MediaFile.FILE_TYPE_OGM, MediaFile.FILE_TYPE_QUICKTIME_VIDEO}, m = "collect$suspendImpl")
    public static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        Object result;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SharedFlowImpl.A(SharedFlowImpl.this, null, this);
        }
    }

    public SharedFlowImpl(int i, int i2, BufferOverflow bufferOverflow) {
        this.f = i;
        this.g = i2;
        this.h = bufferOverflow;
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
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, oz3] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r5v1, types: [x3] */
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
    /* JADX WARN: Type inference failed for: r9v0, types: [oz3] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2, types: [z3] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object, mg9] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9, types: [mg9] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00be -> B:16:0x003e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:34:0x009a
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static java.lang.Object A(kotlinx.coroutines.flow.SharedFlowImpl r8, defpackage.oz3 r9, defpackage.wh1 r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.SharedFlowImpl.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.SharedFlowImpl$collect$1 r0 = (kotlinx.coroutines.flow.SharedFlowImpl.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.SharedFlowImpl$collect$1 r0 = new kotlinx.coroutines.flow.SharedFlowImpl$collect$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = defpackage.z45.f()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            if (r2 == 0) goto L77
            r8 = 1
            if (r2 == r8) goto L61
            if (r2 == r4) goto L4d
            if (r2 != r3) goto L45
            java.lang.Object r8 = r0.L$3
            kotlinx.coroutines.j r8 = (kotlinx.coroutines.j) r8
            java.lang.Object r9 = r0.L$2
            mg9 r9 = (defpackage.mg9) r9
            java.lang.Object r2 = r0.L$1
            oz3 r2 = (defpackage.oz3) r2
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.flow.SharedFlowImpl r5 = (kotlinx.coroutines.flow.SharedFlowImpl) r5
            kotlin.c.b(r10)     // Catch: java.lang.Throwable -> L42
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
            kotlinx.coroutines.j r8 = (kotlinx.coroutines.j) r8
            java.lang.Object r9 = r0.L$2
            mg9 r9 = (defpackage.mg9) r9
            java.lang.Object r2 = r0.L$1
            oz3 r2 = (defpackage.oz3) r2
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.flow.SharedFlowImpl r5 = (kotlinx.coroutines.flow.SharedFlowImpl) r5
            kotlin.c.b(r10)     // Catch: java.lang.Throwable -> L42
            goto L92
        L61:
            java.lang.Object r8 = r0.L$2
            r9 = r8
            mg9 r9 = (defpackage.mg9) r9
            java.lang.Object r8 = r0.L$1
            oz3 r8 = (defpackage.oz3) r8
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.SharedFlowImpl r2 = (kotlinx.coroutines.flow.SharedFlowImpl) r2
            kotlin.c.b(r10)     // Catch: java.lang.Throwable -> L74
            r10 = r8
            r8 = r2
            goto L83
        L74:
            r8 = move-exception
            r5 = r2
            goto Lc4
        L77:
            kotlin.c.b(r10)
            z3 r10 = r8.h()
            mg9 r10 = (defpackage.mg9) r10
            r7 = r10
            r10 = r9
            r9 = r7
        L83:
            kotlin.coroutines.d r2 = r0.getContext()     // Catch: java.lang.Throwable -> Lc1
            kotlinx.coroutines.j$b r5 = kotlinx.coroutines.j.B6     // Catch: java.lang.Throwable -> Lc1
            kotlin.coroutines.d$b r2 = r2.get(r5)     // Catch: java.lang.Throwable -> Lc1
            kotlinx.coroutines.j r2 = (kotlinx.coroutines.j) r2     // Catch: java.lang.Throwable -> Lc1
        L8f:
            r5 = r8
            r8 = r2
            r2 = r10
        L92:
            java.lang.Object r10 = r5.U(r9)     // Catch: java.lang.Throwable -> L42
            y7a r6 = defpackage.lg9.a     // Catch: java.lang.Throwable -> L42
            if (r10 != r6) goto Lab
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L42
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L42
            r0.L$2 = r9     // Catch: java.lang.Throwable -> L42
            r0.L$3 = r8     // Catch: java.lang.Throwable -> L42
            r0.label = r4     // Catch: java.lang.Throwable -> L42
            java.lang.Object r10 = r5.x(r9, r0)     // Catch: java.lang.Throwable -> L42
            if (r10 != r1) goto L92
            return r1
        Lab:
            if (r8 == 0) goto Lb0
            defpackage.n95.i(r8)     // Catch: java.lang.Throwable -> L42
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
            r5.k(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.A(kotlinx.coroutines.flow.SharedFlowImpl, oz3, wh1):java.lang.Object");
    }

    public static Object F(SharedFlowImpl sharedFlowImpl, Object obj, wh1 wh1Var) {
        Object objG;
        return (!sharedFlowImpl.c(obj) && (objG = sharedFlowImpl.G(obj, wh1Var)) == z45.f()) ? objG : zfb.a;
    }

    public final void B(long j) {
        z3[] z3VarArr;
        if (this.c != 0 && (z3VarArr = this.b) != null) {
            for (z3 z3Var : z3VarArr) {
                if (z3Var != null) {
                    mg9 mg9Var = (mg9) z3Var;
                    long j2 = mg9Var.a;
                    if (j2 >= 0 && j2 < j) {
                        mg9Var.a = j;
                    }
                }
            }
        }
        this.k = j;
    }

    @Override
    public mg9 i() {
        return new mg9();
    }

    @Override
    public mg9[] j(int i) {
        return new mg9[i];
    }

    public final void E() {
        Object[] objArr = this.i;
        y45.g(objArr);
        lg9.g(objArr, K(), null);
        this.l--;
        long jK = K() + 1;
        if (this.j < jK) {
            this.j = jK;
        }
        if (this.k < jK) {
            B(jK);
        }
    }

    public final Object G(Object obj, wh1 wh1Var) {
        wh1[] wh1VarArrI;
        a aVar;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        wh1[] wh1VarArrI2 = y3.a;
        synchronized (this) {
            try {
                if (R(obj)) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(zfb.a));
                    wh1VarArrI = I(wh1VarArrI2);
                    aVar = null;
                } else {
                    a aVar2 = new a(this, ((long) P()) + K(), obj, cancellableContinuationImpl);
                    H(aVar2);
                    this.m++;
                    if (this.g == 0) {
                        wh1VarArrI2 = I(wh1VarArrI2);
                    }
                    wh1VarArrI = wh1VarArrI2;
                    aVar = aVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (aVar != null) {
            fr0.a(cancellableContinuationImpl, aVar);
        }
        for (wh1 wh1Var2 : wh1VarArrI) {
            if (wh1Var2 != null) {
                Result.Companion companion2 = Result.INSTANCE;
                wh1Var2.resumeWith(Result.m279constructorimpl(zfb.a));
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result == z45.f() ? result : zfb.a;
    }

    public final void H(Object obj) {
        int iP = P();
        Object[] objArrQ = this.i;
        if (objArrQ == null) {
            objArrQ = Q(null, 0, 2);
        } else if (iP >= objArrQ.length) {
            objArrQ = Q(objArrQ, iP, objArrQ.length * 2);
        }
        lg9.g(objArrQ, K() + ((long) iP), obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [wh1[]] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public final wh1[] I(wh1[] wh1VarArr) {
        z3[] z3VarArr;
        mg9 mg9Var;
        wh1 wh1Var;
        int length = wh1VarArr.length;
        if (this.c != 0 && (z3VarArr = this.b) != null) {
            int length2 = z3VarArr.length;
            int i = 0;
            while (i < length2) {
                z3 z3Var = z3VarArr[i];
                if (z3Var == null || (wh1Var = (mg9Var = (mg9) z3Var).b) == null || T(mg9Var) < 0) {
                    wh1VarArr = wh1VarArr;
                } else {
                    if (length >= wh1VarArr.length) {
                        wh1VarArr = wh1VarArr;
                        wh1VarArr = wh1VarArr;
                        Object[] objArrCopyOf = Arrays.copyOf((Object[]) wh1VarArr, Math.max(2, wh1VarArr.length * 2));
                        y45.i(objArrCopyOf, "copyOf(...)");
                        wh1VarArr = objArrCopyOf;
                    }
                    wh1VarArr = wh1VarArr;
                    wh1VarArr = wh1VarArr;
                    ((wh1[]) wh1VarArr)[length] = wh1Var;
                    mg9Var.b = null;
                    length++;
                }
                i++;
                wh1VarArr = wh1VarArr;
            }
            wh1VarArr = wh1VarArr;
        }
        return (wh1[]) wh1VarArr;
    }

    public final long J() {
        return K() + ((long) this.l);
    }

    public final long K() {
        return Math.min(this.k, this.j);
    }

    public final Object L() {
        Object[] objArr = this.i;
        y45.g(objArr);
        return lg9.f(objArr, (this.j + ((long) O())) - 1);
    }

    public final Object M(long j) {
        Object[] objArr = this.i;
        y45.g(objArr);
        Object objF = lg9.f(objArr, j);
        return objF instanceof a ? ((a) objF).d : objF;
    }

    public final long N() {
        return K() + ((long) this.l) + ((long) this.m);
    }

    public final int O() {
        return (int) ((K() + ((long) this.l)) - this.j);
    }

    public final int P() {
        return this.l + this.m;
    }

    public final Object[] Q(Object[] objArr, int i, int i2) {
        if (i2 <= 0) {
            throw new IllegalStateException("Buffer size overflow");
        }
        Object[] objArr2 = new Object[i2];
        this.i = objArr2;
        if (objArr == null) {
            return objArr2;
        }
        long jK = K();
        for (int i3 = 0; i3 < i; i3++) {
            long j = ((long) i3) + jK;
            lg9.g(objArr2, j, lg9.f(objArr, j));
        }
        return objArr2;
    }

    public final boolean R(Object obj) {
        if (l() == 0) {
            return S(obj);
        }
        if (this.l >= this.g && this.k <= this.j) {
            int i = b.a[this.h.ordinal()];
            if (i == 1) {
                return false;
            }
            if (i == 2) {
                return true;
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
        }
        H(obj);
        int i2 = this.l + 1;
        this.l = i2;
        if (i2 > this.g) {
            E();
        }
        if (O() > this.f) {
            V(this.j + 1, this.k, J(), N());
        }
        return true;
    }

    public final boolean S(Object obj) {
        if (this.f == 0) {
            return true;
        }
        H(obj);
        int i = this.l + 1;
        this.l = i;
        if (i > this.f) {
            E();
        }
        this.k = K() + ((long) this.l);
        return true;
    }

    public final long T(mg9 mg9Var) {
        long j = mg9Var.a;
        if (j < J()) {
            return j;
        }
        if (this.g <= 0 && j <= K() && this.m != 0) {
            return j;
        }
        return -1L;
    }

    public final Object U(mg9 mg9Var) {
        Object obj;
        wh1[] wh1VarArrW = y3.a;
        synchronized (this) {
            try {
                long jT = T(mg9Var);
                if (jT < 0) {
                    obj = lg9.a;
                } else {
                    long j = mg9Var.a;
                    Object objM = M(jT);
                    mg9Var.a = jT + 1;
                    wh1VarArrW = W(j);
                    obj = objM;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (wh1 wh1Var : wh1VarArrW) {
            if (wh1Var != null) {
                Result.Companion companion = Result.INSTANCE;
                wh1Var.resumeWith(Result.m279constructorimpl(zfb.a));
            }
        }
        return obj;
    }

    public final void V(long j, long j2, long j3, long j4) {
        long jMin = Math.min(j2, j);
        for (long jK = K(); jK < jMin; jK++) {
            Object[] objArr = this.i;
            y45.g(objArr);
            lg9.g(objArr, jK, null);
        }
        this.j = j;
        this.k = j2;
        this.l = (int) (j3 - jMin);
        this.m = (int) (j4 - j3);
    }

    public final wh1[] W(long j) {
        long j2;
        long j3;
        long j4;
        z3[] z3VarArr;
        if (j > this.k) {
            return y3.a;
        }
        long jK = K();
        long j5 = ((long) this.l) + jK;
        if (this.g == 0 && this.m > 0) {
            j5++;
        }
        if (this.c != 0 && (z3VarArr = this.b) != null) {
            for (z3 z3Var : z3VarArr) {
                if (z3Var != null) {
                    long j6 = ((mg9) z3Var).a;
                    if (j6 >= 0 && j6 < j5) {
                        j5 = j6;
                    }
                }
            }
        }
        if (j5 <= this.k) {
            return y3.a;
        }
        long J = J();
        int iMin = l() > 0 ? Math.min(this.m, this.g - ((int) (J - j5))) : this.m;
        wh1[] wh1VarArr = y3.a;
        long j7 = ((long) this.m) + J;
        if (iMin > 0) {
            wh1VarArr = new wh1[iMin];
            Object[] objArr = this.i;
            y45.g(objArr);
            long j8 = J;
            int i = 0;
            while (true) {
                if (J >= j7) {
                    j2 = j5;
                    j3 = j7;
                    break;
                }
                Object objF = lg9.f(objArr, J);
                j2 = j5;
                y7a y7aVar = lg9.a;
                if (objF != y7aVar) {
                    y45.h(objF, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) objF;
                    int i2 = i + 1;
                    j3 = j7;
                    wh1VarArr[i] = aVar.e;
                    lg9.g(objArr, J, y7aVar);
                    lg9.g(objArr, j8, aVar.d);
                    j4 = 1;
                    j8++;
                    if (i2 >= iMin) {
                        break;
                    }
                    i = i2;
                } else {
                    j3 = j7;
                    j4 = 1;
                }
                J += j4;
                j5 = j2;
                j7 = j3;
            }
            J = j8;
        } else {
            j2 = j5;
            j3 = j7;
        }
        int i3 = (int) (J - jK);
        long j9 = l() == 0 ? J : j2;
        long jMax = Math.max(this.j, J - ((long) Math.min(this.f, i3)));
        if (this.g == 0 && jMax < j3) {
            Object[] objArr2 = this.i;
            y45.g(objArr2);
            if (y45.e(lg9.f(objArr2, jMax), lg9.a)) {
                J++;
                jMax++;
            }
        }
        V(jMax, j9, J, j3);
        z();
        return !(wh1VarArr.length == 0) ? I(wh1VarArr) : wh1VarArr;
    }

    public final long X() {
        long j = this.j;
        if (j < this.k) {
            this.k = j;
        }
        return j;
    }

    @Override
    public void b() {
        synchronized (this) {
            V(J(), this.k, J(), N());
            zfb zfbVar = zfb.a;
        }
    }

    @Override
    public boolean c(Object obj) {
        int i;
        boolean z;
        wh1[] wh1VarArrI = y3.a;
        synchronized (this) {
            if (R(obj)) {
                wh1VarArrI = I(wh1VarArrI);
                z = true;
            } else {
                z = false;
            }
        }
        for (wh1 wh1Var : wh1VarArrI) {
            if (wh1Var != null) {
                Result.Companion companion = Result.INSTANCE;
                wh1Var.resumeWith(Result.m279constructorimpl(zfb.a));
            }
        }
        return z;
    }

    @Override
    public Object collect(oz3 oz3Var, wh1 wh1Var) {
        return A(this, oz3Var, wh1Var);
    }

    @Override
    public nz3 d(d dVar, int i, BufferOverflow bufferOverflow) {
        return lg9.e(this, dVar, i, bufferOverflow);
    }

    @Override
    public Object emit(Object obj, wh1 wh1Var) {
        return F(this, obj, wh1Var);
    }

    public final Object x(mg9 mg9Var, wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this) {
            try {
                if (T(mg9Var) < 0) {
                    mg9Var.b = cancellableContinuationImpl;
                } else {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(zfb.a));
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result == z45.f() ? result : zfb.a;
    }

    public final void y(a aVar) {
        synchronized (this) {
            if (aVar.c < K()) {
                return;
            }
            Object[] objArr = this.i;
            y45.g(objArr);
            if (lg9.f(objArr, aVar.c) != aVar) {
                return;
            }
            lg9.g(objArr, aVar.c, lg9.a);
            z();
            zfb zfbVar = zfb.a;
        }
    }

    public final void z() {
        if (this.g != 0 || this.m > 1) {
            Object[] objArr = this.i;
            y45.g(objArr);
            while (this.m > 0 && lg9.f(objArr, (K() + ((long) P())) - 1) == lg9.a) {
                this.m--;
                lg9.g(objArr, K() + ((long) P()), null);
            }
        }
    }
}
