package kotlinx.coroutines.flow.internal;

import defpackage.bc9;
import defpackage.c74;
import defpackage.jsc;
import defpackage.mz4;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.ps0;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", l = {51, 73, 76}, m = "invokeSuspend")
public final class CombineKt$combineInternal$2 extends SuspendLambda implements s74 {
    final c74 $arrayFactory;
    final nz3[] $flows;
    final oz3 $this_combineInternal;
    final u74 $transform;
    int I$0;
    int I$1;
    private Object L$0;
    Object L$1;
    Object L$2;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 0, 0})
    @nt1(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", l = {28}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final nz3[] $flows;
        final int $i;
        final AtomicInteger $nonClosed;
        final ps0 $resultChannel;
        int label;

        public static final class C04151 implements oz3 {
            public final ps0 b;
            public final int c;

            public C04151(ps0 ps0Var, int i) {
                this.b = ps0Var;
                this.c = i;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override
            public final Object emit(Object obj, wh1 wh1Var) {
                CombineKt$combineInternal$2$1$1$emit$1 combineKt$combineInternal$2$1$1$emit$1;
                if (wh1Var instanceof CombineKt$combineInternal$2$1$1$emit$1) {
                    combineKt$combineInternal$2$1$1$emit$1 = (CombineKt$combineInternal$2$1$1$emit$1) wh1Var;
                    int i = combineKt$combineInternal$2$1$1$emit$1.label;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        combineKt$combineInternal$2$1$1$emit$1.label = i - Integer.MIN_VALUE;
                    } else {
                        combineKt$combineInternal$2$1$1$emit$1 = new CombineKt$combineInternal$2$1$1$emit$1(this, wh1Var);
                    }
                } else {
                    combineKt$combineInternal$2$1$1$emit$1 = new CombineKt$combineInternal$2$1$1$emit$1(this, wh1Var);
                }
                Object obj2 = combineKt$combineInternal$2$1$1$emit$1.result;
                Object objF = z45.f();
                int i2 = combineKt$combineInternal$2$1$1$emit$1.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        c.b(obj2);
                    } else {
                        if (i2 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        c.b(obj2);
                    }
                    return zfb.a;
                }
                c.b(obj2);
                ps0 ps0Var = this.b;
                mz4 mz4Var = new mz4(this.c, obj);
                combineKt$combineInternal$2$1$1$emit$1.label = 1;
                if (ps0Var.l(mz4Var, combineKt$combineInternal$2$1$1$emit$1) == objF) {
                    return objF;
                }
                combineKt$combineInternal$2$1$1$emit$1.label = 2;
                if (jsc.a(combineKt$combineInternal$2$1$1$emit$1) == objF) {
                    return objF;
                }
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(nz3[] nz3VarArr, int i, AtomicInteger atomicInteger, ps0 ps0Var, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$flows = nz3VarArr;
            this.$i = i;
            this.$nonClosed = atomicInteger;
            this.$resultChannel = ps0Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$flows, this.$i, this.$nonClosed, this.$resultChannel, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            try {
                if (i == 0) {
                    c.b(obj);
                    nz3[] nz3VarArr = this.$flows;
                    int i2 = this.$i;
                    nz3 nz3Var = nz3VarArr[i2];
                    C04151 c04151 = new C04151(this.$resultChannel, i2);
                    this.label = 1;
                    if (nz3Var.collect(c04151, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c.b(obj);
                }
                if (this.$nonClosed.decrementAndGet() == 0) {
                    bc9.a.a(this.$resultChannel, null, 1, null);
                }
                return zfb.a;
            } catch (Throwable th) {
                if (this.$nonClosed.decrementAndGet() == 0) {
                    bc9.a.a(this.$resultChannel, null, 1, null);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineInternal$2(nz3[] nz3VarArr, c74 c74Var, u74 u74Var, oz3 oz3Var, wh1<? super CombineKt$combineInternal$2> wh1Var) {
        super(2, wh1Var);
        this.$flows = nz3VarArr;
        this.$arrayFactory = c74Var;
        this.$transform = u74Var;
        this.$this_combineInternal = oz3Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(this.$flows, this.$arrayFactory, this.$transform, this.$this_combineInternal, wh1Var);
        combineKt$combineInternal$2.L$0 = obj;
        return combineKt$combineInternal$2;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CombineKt$combineInternal$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x00be  */
    /* JADX WARN: Code duplicated, block: B:26:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ca A[LOOP:0: B:28:0x00ca->B:48:?, LOOP_START, PHI: r6 r10
      0x00ca: PHI (r6v6 int) = (r6v5 int), (r6v7 int) binds: [B:25:0x00c5, B:48:?] A[DONT_GENERATE, DONT_INLINE]
      0x00ca: PHI (r10v8 mz4) = (r10v7 mz4), (r10v21 mz4) binds: [B:25:0x00c5, B:48:?] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x00da  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:38:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:40:0x0111 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x0112  */
    /* JADX WARN: Code duplicated, block: B:43:0x0134 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x00ef A[EDGE_INSN: B:46:0x00ef->B:35:0x00ef BREAK  A[LOOP:0: B:28:0x00ca->B:48:?], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0135 -> B:45:0x0137). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
