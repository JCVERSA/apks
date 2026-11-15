package androidx.datastore.core;

import defpackage.e74;
import defpackage.nt1;
import defpackage.wh1;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"T", "Lzfb;", "<anonymous>", "()V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1", f = "DataMigrationInitializer.kt", l = {45}, m = "invokeSuspend")
public final class DataMigrationInitializer$Companion$runMigrations$2$1$1 extends SuspendLambda implements e74 {
    final DataMigration<T> $migration;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$runMigrations$2$1$1(DataMigration<T> dataMigration, wh1<? super DataMigrationInitializer$Companion$runMigrations$2$1$1> wh1Var) {
        super(1, wh1Var);
        this.$migration = dataMigration;
    }

    @Override
    public final wh1<zfb> create(wh1<?> wh1Var) {
        return new DataMigrationInitializer$Companion$runMigrations$2$1$1(this.$migration, wh1Var);
    }

    @Override
    public final Object invoke(wh1<? super zfb> wh1Var) {
        return ((DataMigrationInitializer$Companion$runMigrations$2$1$1) create(wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type wh1 to androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1 for r3v4 'this'  wh1
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r0 = defpackage.z45.f()
            int r1 = r3.label
            r2 = 1
            if (r1 == 0) goto L17
            if (r1 != r2) goto Lf
            kotlin.c.b(r4)
            goto L25
        Lf:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            r3.<init>(r4)
            throw r3
        L17:
            kotlin.c.b(r4)
            androidx.datastore.core.DataMigration<T> r4 = r3.$migration
            r3.label = r2
            java.lang.Object r3 = r4.cleanUp(r3)
            if (r3 != r0) goto L25
            return r0
        L25:
            zfb r3 = defpackage.zfb.a
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
