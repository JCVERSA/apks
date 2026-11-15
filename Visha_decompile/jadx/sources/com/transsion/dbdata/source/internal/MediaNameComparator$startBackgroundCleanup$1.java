package com.transsion.dbdata.source.internal;

import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.dbdata.source.internal.MediaNameComparator$startBackgroundCleanup$1", f = "MediaNameComparator.kt", l = {77}, m = "invokeSuspend")
public final class MediaNameComparator$startBackgroundCleanup$1 extends SuspendLambda implements s74 {
    private Object L$0;
    int label;

    public MediaNameComparator$startBackgroundCleanup$1(wh1<? super MediaNameComparator$startBackgroundCleanup$1> wh1Var) {
        super(2, wh1Var);
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        MediaNameComparator$startBackgroundCleanup$1 mediaNameComparator$startBackgroundCleanup$1 = new MediaNameComparator$startBackgroundCleanup$1(wh1Var);
        mediaNameComparator$startBackgroundCleanup$1.L$0 = obj;
        return mediaNameComparator$startBackgroundCleanup$1;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((MediaNameComparator$startBackgroundCleanup$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002b A[Catch: Exception -> 0x0013, TRY_ENTER, TryCatch #0 {Exception -> 0x0013, blocks: (B:6:0x000f, B:18:0x0039, B:15:0x002b), top: B:23:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:17:0x0038 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0036 -> B:18:0x0039). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = defpackage.z45.f()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L1d
            if (r1 != r2) goto L15
            java.lang.Object r1 = r5.L$0
            nk1 r1 = (defpackage.nk1) r1
            kotlin.c.b(r6)     // Catch: java.lang.Exception -> L13
            goto L39
        L13:
            r6 = move-exception
            goto L3f
        L15:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L1d:
            kotlin.c.b(r6)
            java.lang.Object r6 = r5.L$0
            nk1 r6 = (defpackage.nk1) r6
            r1 = r6
        L25:
            boolean r6 = kotlinx.coroutines.d.i(r1)
            if (r6 == 0) goto L47
            r5.L$0 = r1     // Catch: java.lang.Exception -> L13
            r5.label = r2     // Catch: java.lang.Exception -> L13
            r3 = 60000(0xea60, double:2.9644E-319)
            java.lang.Object r6 = kotlinx.coroutines.DelayKt.b(r3, r5)     // Catch: java.lang.Exception -> L13
            if (r6 != r0) goto L39
            return r0
        L39:
            com.transsion.dbdata.source.internal.MediaNameComparator r6 = com.transsion.dbdata.source.internal.MediaNameComparator.a     // Catch: java.lang.Exception -> L13
            com.transsion.dbdata.source.internal.MediaNameComparator.d(r6)     // Catch: java.lang.Exception -> L13
            goto L25
        L3f:
            java.lang.String r3 = "MediaNameComparator"
            java.lang.String r4 = "Background cleanup failed"
            defpackage.vmb.d(r3, r4, r6)
            goto L25
        L47:
            zfb r5 = defpackage.zfb.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.dbdata.source.internal.MediaNameComparator$startBackgroundCleanup$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
