package com.transsion.dbdata.utils;

import android.content.Context;
import defpackage.e74;
import defpackage.nt1;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lzfb;", "<anonymous>", "()V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.dbdata.utils.MigrationUtils$starMigrateTask$2", f = "MigrationUtils.kt", l = {}, m = "invokeSuspend")
public final class MigrationUtils$starMigrateTask$2 extends SuspendLambda implements e74 {
    final Context $context;
    final int $migrationType;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MigrationUtils$starMigrateTask$2(int i, Context context, wh1<? super MigrationUtils$starMigrateTask$2> wh1Var) {
        super(1, wh1Var);
        this.$migrationType = i;
        this.$context = context;
    }

    @Override
    public final wh1<zfb> create(wh1<?> wh1Var) {
        return new MigrationUtils$starMigrateTask$2(this.$migrationType, this.$context, wh1Var);
    }

    @Override
    public final Object invoke(wh1<? super zfb> wh1Var) {
        return ((MigrationUtils$starMigrateTask$2) create(wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        int i = this.$migrationType;
        if (i == 1) {
            MigrationUtils migrationUtils = MigrationUtils.a;
            migrationUtils.q(this.$context);
            migrationUtils.r(this.$context);
            migrationUtils.s(this.$context);
        } else if (i == 2) {
            MigrationUtils migrationUtils2 = MigrationUtils.a;
            migrationUtils2.t(this.$context);
            migrationUtils2.r(this.$context);
            migrationUtils2.s(this.$context);
        } else if (i == 3) {
            MigrationUtils migrationUtils3 = MigrationUtils.a;
            migrationUtils3.q(this.$context);
            migrationUtils3.t(this.$context);
            migrationUtils3.r(this.$context);
            migrationUtils3.s(this.$context);
        }
        return zfb.a;
    }
}
