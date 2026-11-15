package com.transsion.dbdata.utils;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@nt1(c = "com.transsion.dbdata.utils.MigrationUtils", f = "MigrationUtils.kt", l = {262}, m = "starMigrateTask")
public final class MigrationUtils$starMigrateTask$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final MigrationUtils this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MigrationUtils$starMigrateTask$1(MigrationUtils migrationUtils, wh1<? super MigrationUtils$starMigrateTask$1> wh1Var) {
        super(wh1Var);
        this.this$0 = migrationUtils;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.v(null, this);
    }
}
