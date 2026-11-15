package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import defpackage.e74;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\rR#\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0006¢\u0006\f\n\u0004\b\b\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/room/migration/MigrationImpl;", "Landroidx/room/migration/Migration;", "", "startVersion", "endVersion", "Lkotlin/Function1;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "Lzfb;", "migrateCallback", MethodDecl.initName, "(IILe74;)V", "db", "migrate", "(Landroidx/sqlite/db/SupportSQLiteDatabase;)V", "Le74;", "getMigrateCallback", "()Le74;", "room-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class MigrationImpl extends Migration {
    private final e74 migrateCallback;

    public MigrationImpl(int i, int i2, e74 e74Var) {
        super(i, i2);
        this.migrateCallback = e74Var;
    }

    public final e74 getMigrateCallback() {
        return this.migrateCallback;
    }

    @Override
    public void migrate(SupportSQLiteDatabase db) {
        this.migrateCallback.invoke(db);
    }
}
