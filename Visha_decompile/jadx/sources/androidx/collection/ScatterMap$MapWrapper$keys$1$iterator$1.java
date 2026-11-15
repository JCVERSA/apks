package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import defpackage.nt1;
import defpackage.s74;
import defpackage.sc9;
import defpackage.wh1;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;

@Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lsc9;", "Lzfb;", "<anonymous>", "(Lsc9;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.collection.ScatterMap$MapWrapper$keys$1$iterator$1", f = "ScatterMap.kt", l = {726}, m = "invokeSuspend")
public final class ScatterMap$MapWrapper$keys$1$iterator$1 extends RestrictedSuspendLambda implements s74 {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    long J$0;
    private Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final ScatterMap<K, V> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScatterMap$MapWrapper$keys$1$iterator$1(ScatterMap<K, V> scatterMap, wh1<? super ScatterMap$MapWrapper$keys$1$iterator$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = scatterMap;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        ScatterMap$MapWrapper$keys$1$iterator$1 scatterMap$MapWrapper$keys$1$iterator$1 = new ScatterMap$MapWrapper$keys$1$iterator$1(this.this$0, wh1Var);
        scatterMap$MapWrapper$keys$1$iterator$1.L$0 = obj;
        return scatterMap$MapWrapper$keys$1$iterator$1;
    }

    @Override
    public final Object invoke(sc9 sc9Var, wh1<? super zfb> wh1Var) {
        return ((ScatterMap$MapWrapper$keys$1$iterator$1) create(sc9Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0055  */
    /* JADX WARN: Code duplicated, block: B:21:0x0092 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0094  */
    /* JADX WARN: Code duplicated, block: B:24:0x009a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0053 -> B:23:0x0098). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0055 -> B:14:0x0066). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x006f -> B:20:0x008f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x008c -> B:20:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            r20 = this;
            r0 = r20
            java.lang.Object r1 = defpackage.z45.f()
            int r2 = r0.label
            r3 = 0
            r4 = 8
            r5 = 1
            if (r2 == 0) goto L32
            if (r2 != r5) goto L2a
            int r2 = r0.I$3
            int r6 = r0.I$2
            long r7 = r0.J$0
            int r9 = r0.I$1
            int r10 = r0.I$0
            java.lang.Object r11 = r0.L$2
            long[] r11 = (long[]) r11
            java.lang.Object r12 = r0.L$1
            java.lang.Object[] r12 = (java.lang.Object[]) r12
            java.lang.Object r13 = r0.L$0
            sc9 r13 = (defpackage.sc9) r13
            kotlin.c.b(r21)
            goto L8f
        L2a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L32:
            kotlin.c.b(r21)
            java.lang.Object r2 = r0.L$0
            sc9 r2 = (defpackage.sc9) r2
            androidx.collection.ScatterMap<K, V> r6 = r0.this$0
            java.lang.Object[] r7 = r6.keys
            long[] r6 = r6.metadata
            int r8 = r6.length
            int r8 = r8 + (-2)
            if (r8 < 0) goto L9d
            r9 = r3
        L45:
            r10 = r6[r9]
            long r12 = ~r10
            r14 = 7
            long r12 = r12 << r14
            long r12 = r12 & r10
            r14 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r12 = r12 & r14
            int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r12 == 0) goto L98
            int r12 = r9 - r8
            int r12 = ~r12
            int r12 = r12 >>> 31
            int r12 = 8 - r12
            r13 = r2
            r2 = r3
            r18 = r10
            r11 = r6
            r10 = r8
            r6 = r12
            r12 = r7
            r7 = r18
        L66:
            if (r2 >= r6) goto L92
            r14 = 255(0xff, double:1.26E-321)
            long r14 = r14 & r7
            r16 = 128(0x80, double:6.32E-322)
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 >= 0) goto L8f
            int r14 = r9 << 3
            int r14 = r14 + r2
            r14 = r12[r14]
            r0.L$0 = r13
            r0.L$1 = r12
            r0.L$2 = r11
            r0.I$0 = r10
            r0.I$1 = r9
            r0.J$0 = r7
            r0.I$2 = r6
            r0.I$3 = r2
            r0.label = r5
            java.lang.Object r14 = r13.b(r14, r0)
            if (r14 != r1) goto L8f
            return r1
        L8f:
            long r7 = r7 >> r4
            int r2 = r2 + r5
            goto L66
        L92:
            if (r6 != r4) goto L9d
            r8 = r10
            r6 = r11
            r7 = r12
            r2 = r13
        L98:
            if (r9 == r8) goto L9d
            int r9 = r9 + 1
            goto L45
        L9d:
            zfb r0 = defpackage.zfb.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ScatterMap$MapWrapper$keys$1$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
