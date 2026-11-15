package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.transsion.cloud_drive.transfer.internal.impl.database.DownloadBlockColumns;
import com.transsion.cloud_drive.transfer.internal.impl.database.UploadSerialInfoColumns;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class q5b extends SQLiteOpenHelper {
    public static final a b = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q5b(Context context) {
        super(context, "cloud_drive_transfer.db", (SQLiteDatabase.CursorFactory) null, 2);
        y45.j(context, "context");
    }

    public final void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE UploadBlockInfo ADD COLUMN " + UploadSerialInfoColumns.CRC_ALGORITHM.getColumn() + " VARCHAR(16)");
        sQLiteDatabase.execSQL("ALTER TABLE UploadBlockInfo ADD COLUMN " + UploadSerialInfoColumns.CRC_VALUE.getColumn() + " VARCHAR(64)");
        sQLiteDatabase.execSQL("ALTER TABLE UploadBlockInfo ADD COLUMN " + UploadSerialInfoColumns.FILE_MODIFIED_TIME.getColumn() + " INTEGER");
    }

    public final void b(SQLiteDatabase sQLiteDatabase) {
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        y45.j(sQLiteDatabase, "db");
        String str = "\n            CREATE TABLE DownloadBlockInfo (\n                " + DownloadBlockColumns.ID.getColumn() + " INTEGER PRIMARY KEY AUTOINCREMENT,\n                " + DownloadBlockColumns.TASK_ID.getColumn() + " VARCHAR(64),\n                " + DownloadBlockColumns.CURRENT.getColumn() + " INTEGER NOT NULL,\n                " + DownloadBlockColumns.OFFSET.getColumn() + " TEXT,\n                " + DownloadBlockColumns.START.getColumn() + " TEXT,\n                " + DownloadBlockColumns.END.getColumn() + " TEXT\n            )\n            ";
        String str2 = "\n            CREATE TABLE UploadBlockInfo(\n                " + UploadSerialInfoColumns.ID.getColumn() + " INTEGER PRIMARY KEY AUTOINCREMENT,\n                " + UploadSerialInfoColumns.TASK_ID.getColumn() + " VARCHAR(64) NOT NULL,\n                " + UploadSerialInfoColumns.FILE_ID.getColumn() + " VARCHAR(128),\n                " + UploadSerialInfoColumns.UPLOAD_ID.getColumn() + " VARCHAR(128),\n                " + UploadSerialInfoColumns.CURRENT.getColumn() + " INTEGER,\n                " + UploadSerialInfoColumns.STATE.getColumn() + " INTEGER,\n                " + UploadSerialInfoColumns.CRC_ALGORITHM.getColumn() + " VARCHAR(16),\n                " + UploadSerialInfoColumns.CRC_VALUE.getColumn() + " VARCHAR(64),\n                " + UploadSerialInfoColumns.FILE_MODIFIED_TIME.getColumn() + " INTEGER\n            )\n            ";
        sQLiteDatabase.execSQL(str);
        sQLiteDatabase.execSQL(str2);
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        y45.j(sQLiteDatabase, "db");
        if (i < 2) {
            a(sQLiteDatabase);
            i = 2;
        }
        if (i < 3) {
            b(sQLiteDatabase);
        }
    }
}
