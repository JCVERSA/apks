package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class p9b extends SQLiteOpenHelper {
    public final int b;
    public final boolean c;

    public p9b(Context context, boolean z) {
        super(context, z ? "tray.db" : "tray_backup_excluded.db", (SQLiteDatabase.CursorFactory) null, 2);
        this.c = z;
        this.b = 2;
    }

    public final void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE TrayPreferences ( _id INTEGER PRIMARY KEY, KEY TEXT NOT NULL, VALUE TEXT, MODULE TEXT, CREATED INT DEFAULT 0, UPDATED INT DEFAULT 0, UNIQUE (MODULE, KEY));");
    }

    public final String b() {
        StringBuilder sb = new StringBuilder();
        sb.append("tray internal db (");
        sb.append(this.c ? "backup" : "no backup");
        sb.append("): ");
        return sb.toString();
    }

    public final void d(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE TrayPreferences ADD COLUMN MIGRATED_KEY TEXT");
        sQLiteDatabase.execSQL("CREATE TABLE TrayInternal ( _id INTEGER PRIMARY KEY, KEY TEXT NOT NULL, VALUE TEXT, MODULE TEXT, CREATED INT DEFAULT 0, UPDATED INT DEFAULT 0, MIGRATED_KEY TEXT, UNIQUE (MODULE, KEY));");
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        r9b.b(b() + "onCreate with version " + this.b);
        a(sQLiteDatabase);
        r9b.b(b() + "created database version 1");
        int i = this.b;
        if (i > 1) {
            onUpgrade(sQLiteDatabase, 1, i);
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        r9b.b(b() + "upgrading Database from version " + i + " to version " + i2);
        if (i2 > 2) {
            throw new IllegalStateException("onUpgrade doesn't support the upgrade to version " + i2);
        }
        if (i != 1) {
            throw new IllegalArgumentException("onUpgrade() with oldVersion <= 0 is useless");
        }
        d(sQLiteDatabase);
        r9b.b(b() + "upgraded Database to version 2");
    }
}
