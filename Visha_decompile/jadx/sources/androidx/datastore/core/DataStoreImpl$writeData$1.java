package androidx.datastore.core;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@nt1(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {348}, m = "writeData$datastore_core_release")
public final class DataStoreImpl$writeData$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final DataStoreImpl<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$writeData$1(DataStoreImpl<T> dataStoreImpl, wh1<? super DataStoreImpl$writeData$1> wh1Var) {
        super(wh1Var);
        this.this$0 = dataStoreImpl;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type wh1 to androidx.datastore.core.DataStoreImpl$writeData$1 for r2v2 'this'  wh1
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r3) {
        /*
            r2 = this;
            r2.result = r3
            int r3 = r2.label
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 | r0
            r2.label = r3
            androidx.datastore.core.DataStoreImpl<T> r3 = r2.this$0
            r0 = 0
            r1 = 0
            java.lang.Object r2 = r3.writeData$datastore_core_release(r0, r1, r2)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$writeData$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
