package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;

public final class x0h extends SQLiteOpenHelper {
    public final v1h b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0h(v1h v1hVar, Context context, String str) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.b = v1hVar;
    }

    @Override
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException unused) {
            this.b.a.b().q().a("Opening the local database failed, dropping and recreating it");
            this.b.a.z();
            if (!this.b.a.e().getDatabasePath("google_app_measurement_local.db").delete()) {
                this.b.a.b().q().b("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e2) {
                this.b.a.b().q().b("Failed to open local database. Events will bypass local storage", e2);
                return null;
            }
        }
    }

    @Override
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        gke.b(this.b.a.b(), sQLiteDatabase);
    }

    @Override
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override
    public final void onOpen(SQLiteDatabase sQLiteDatabase) throws Throwable {
        gke.a(this.b.a.b(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
