package kotlinx.coroutines;

import defpackage.nt1;
import defpackage.s74;
import defpackage.sc9;
import defpackage.wh1;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lsc9;", "Lkotlinx/coroutines/j;", "Lzfb;", "<anonymous>", "(Lsc9;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {1003, 1005}, m = "invokeSuspend")
public final class JobSupport$children$1 extends RestrictedSuspendLambda implements s74 {
    private Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final JobSupport this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobSupport$children$1(JobSupport jobSupport, wh1<? super JobSupport$children$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = jobSupport;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.this$0, wh1Var);
        jobSupport$children$1.L$0 = obj;
        return jobSupport$children$1;
    }

    @Override
    public final Object invoke(sc9 sc9Var, wh1<? super zfb> wh1Var) {
        return ((JobSupport$children$1) create(sc9Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0069  */
    /* JADX WARN: Code duplicated, block: B:24:0x006d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0080 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006b -> B:27:0x0081). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007e -> B:27:0x0081). Please report as a decompilation issue!!! */
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
            if (r1 == 0) goto L2a
            if (r1 == r3) goto L26
            if (r1 != r2) goto L1e
            java.lang.Object r1 = r6.L$2
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
            java.lang.Object r3 = r6.L$1
            po5 r3 = (defpackage.po5) r3
            java.lang.Object r4 = r6.L$0
            sc9 r4 = (defpackage.sc9) r4
            kotlin.c.b(r7)
            goto L81
        L1e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L26:
            kotlin.c.b(r7)
            goto L86
        L2a:
            kotlin.c.b(r7)
            java.lang.Object r7 = r6.L$0
            sc9 r7 = (defpackage.sc9) r7
            kotlinx.coroutines.JobSupport r1 = r6.this$0
            java.lang.Object r1 = r1.getState$kotlinx_coroutines_core()
            boolean r4 = r1 instanceof defpackage.wv0
            if (r4 == 0) goto L48
            wv0 r1 = (defpackage.wv0) r1
            xv0 r1 = r1.f
            r6.label = r3
            java.lang.Object r6 = r7.b(r1, r6)
            if (r6 != r0) goto L86
            return r0
        L48:
            boolean r3 = r1 instanceof defpackage.dz4
            if (r3 == 0) goto L86
            dz4 r1 = (defpackage.dz4) r1
            f17 r1 = r1.b()
            if (r1 == 0) goto L86
            java.lang.Object r3 = r1.j()
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"
            defpackage.y45.h(r3, r4)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            r4 = r7
            r5 = r3
            r3 = r1
            r1 = r5
        L63:
            boolean r7 = defpackage.y45.e(r1, r3)
            if (r7 != 0) goto L86
            boolean r7 = r1 instanceof defpackage.wv0
            if (r7 == 0) goto L81
            r7 = r1
            wv0 r7 = (defpackage.wv0) r7
            xv0 r7 = r7.f
            r6.L$0 = r4
            r6.L$1 = r3
            r6.L$2 = r1
            r6.label = r2
            java.lang.Object r7 = r4.b(r7, r6)
            if (r7 != r0) goto L81
            return r0
        L81:
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = r1.k()
            goto L63
        L86:
            zfb r6 = defpackage.zfb.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
