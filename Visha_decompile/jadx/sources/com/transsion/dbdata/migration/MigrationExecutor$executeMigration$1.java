package com.transsion.dbdata.migration;

import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import defpackage.cl0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.dbdata.migration.MigrationExecutor$executeMigration$1", f = "MigrationExecutor.kt", l = {60, 64, 70}, m = "invokeSuspend")
public final class MigrationExecutor$executeMigration$1 extends SuspendLambda implements s74 {
    final MigrationExecutor.b $callback;
    final Context $context;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.dbdata.migration.MigrationExecutor$executeMigration$1$1", f = "MigrationExecutor.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final MigrationExecutor.b $callback;
        final boolean $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MigrationExecutor.b bVar, boolean z, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$callback = bVar;
            this.$result = z;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$callback, this.$result, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            MigrationExecutor.b bVar = this.$callback;
            if (bVar == null) {
                return null;
            }
            bVar.a(this.$result);
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.dbdata.migration.MigrationExecutor$executeMigration$1$2", f = "MigrationExecutor.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final MigrationExecutor.b $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MigrationExecutor.b bVar, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$callback = bVar;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass2(this.$callback, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            MigrationExecutor.b bVar = this.$callback;
            if (bVar == null) {
                return null;
            }
            bVar.a(false);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MigrationExecutor$executeMigration$1(Context context, MigrationExecutor.b bVar, wh1<? super MigrationExecutor$executeMigration$1> wh1Var) {
        super(2, wh1Var);
        this.$context = context;
        this.$callback = bVar;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new MigrationExecutor$executeMigration$1(this.$context, this.$callback, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((MigrationExecutor$executeMigration$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    c.b(obj);
                } else {
                    if (i != 2) {
                        if (i != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        c.b(obj);
                        return zfb.a;
                    }
                    c.b(obj);
                }
                return zfb.a;
            }
            c.b(obj);
            kotlinx.coroutines.c cVarB = mc2.b();
            MigrationExecutor$executeMigration$1$result$1 migrationExecutor$executeMigration$1$result$1 = new MigrationExecutor$executeMigration$1$result$1(this.$context, null);
            this.label = 1;
            obj = cl0.g(cVarB, migrationExecutor$executeMigration$1$result$1, this);
            if (obj == objF) {
                return objF;
            }
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            rx5 rx5VarC = mc2.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, zBooleanValue, null);
            this.label = 2;
            obj = cl0.g(rx5VarC, anonymousClass1, this);
            if (obj == objF) {
                return objF;
            }
        } catch (Exception e) {
            LogUtils.m("PlayListMigrationExecutor", "migration exception", e);
            rx5 rx5VarC2 = mc2.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$callback, null);
            this.label = 3;
            obj = cl0.g(rx5VarC2, anonymousClass2, this);
            if (obj == objF) {
                return objF;
            }
        }
        return zfb.a;
    }
}
