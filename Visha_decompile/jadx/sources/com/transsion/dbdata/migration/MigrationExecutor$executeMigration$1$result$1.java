package com.transsion.dbdata.migration;

import android.content.Context;
import com.transsion.dbdata.utils.MigrationUtils;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Z"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.dbdata.migration.MigrationExecutor$executeMigration$1$result$1", f = "MigrationExecutor.kt", l = {61}, m = "invokeSuspend")
public final class MigrationExecutor$executeMigration$1$result$1 extends SuspendLambda implements s74 {
    final Context $context;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MigrationExecutor$executeMigration$1$result$1(Context context, wh1<? super MigrationExecutor$executeMigration$1$result$1> wh1Var) {
        super(2, wh1Var);
        this.$context = context;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new MigrationExecutor$executeMigration$1$result$1(this.$context, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Boolean> wh1Var) {
        return ((MigrationExecutor$executeMigration$1$result$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            MigrationUtils migrationUtils = MigrationUtils.a;
            Context context = this.$context;
            this.label = 1;
            obj = migrationUtils.v(context, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return obj;
    }
}
