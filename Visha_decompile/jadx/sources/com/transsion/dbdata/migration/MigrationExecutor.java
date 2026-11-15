package com.transsion.dbdata.migration;

import android.content.Context;
import defpackage.el0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.v6a;
import defpackage.y45;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;

public final class MigrationExecutor {
    public static final a c = new a(null);
    public static volatile MigrationExecutor d;
    public final ExecutorService a;
    public final nk1 b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MigrationExecutor a() {
            MigrationExecutor migrationExecutor = MigrationExecutor.d;
            if (migrationExecutor == null) {
                synchronized (this) {
                    migrationExecutor = MigrationExecutor.d;
                    if (migrationExecutor == null) {
                        migrationExecutor = new MigrationExecutor(null);
                        MigrationExecutor.d = migrationExecutor;
                    }
                }
            }
            return migrationExecutor;
        }

        public a() {
        }
    }

    public interface b {
        void a(boolean z);
    }

    public MigrationExecutor(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final void c(Context context, b bVar) {
        y45.j(context, "context");
        el0.d(this.b, null, null, new MigrationExecutor$executeMigration$1(context, bVar, null), 3, null);
    }

    public MigrationExecutor() {
        this.a = Executors.newSingleThreadExecutor();
        this.b = d.a(mc2.b().plus(v6a.b(null, 1, null)));
    }
}
