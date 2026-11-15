package com.transsion.athena.data.anateh;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.config.utils.CommonUtils;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.athena.config.data.model.ehanat;
import java.io.File;

public class athena extends SQLiteOpenHelper {

    private static final String f41552a;

    private static final String f41553b;

    private static final String f41554c;

    private static final String f41555d;

    private static final String f41556e;

    private static final String f41557f;

    private static final String f41558g;

    private static final String f41559h;

    private static final String f41560i;

    private final File f41561j;

    static {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("CREATE TABLE ");
        anehat.athena athenaVar = anehat.athena.f41547a;
        sb2.append(athenaVar.a());
        sb2.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
        sb2.append("tid");
        sb2.append(" INTEGER NOT NULL,");
        sb2.append(NotificationCompat.CATEGORY_EVENT);
        sb2.append(" TEXT NOT NULL,");
        sb2.append("et");
        sb2.append(" INTEGER NOT NULL,");
        sb2.append("pi");
        sb2.append(" INTEGER NOT NULL,");
        sb2.append("created_at");
        sb2.append(" INTEGER NOT NULL,");
        sb2.append(CommonUtils.PARAM_UID);
        sb2.append(" TEXT,");
        sb2.append("ext");
        sb2.append(" TEXT,");
        sb2.append("er_ts");
        sb2.append(" INTEGER DEFAULT 0,");
        sb2.append("boot_id");
        sb2.append(" TEXT)");
        f41552a = sb2.toString();
        f41553b = "CREATE TABLE " + anehat.athena.f41549c.a() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, tid INTEGER NOT NULL UNIQUE,ev TEXT,pt INTEGER DEFAULT 0,cf TEXT,ext TEXT)";
        f41554c = "CREATE TABLE " + anehat.athena.f41550d.a() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, " + SafeStringUtils.SP_APPID + " INTEGER NOT NULL UNIQUE,base TEXT,cfg TEXT," + CommonUtils.PARAM_UID + " TEXT,try INTEGER DEFAULT 0,date TEXT,cnt INTEGER DEFAULT 0,ext TEXT)";
        StringBuilder sb3 = new StringBuilder();
        sb3.append("ALTER TABLE ");
        sb3.append(athenaVar.a());
        sb3.append(" ADD COLUMN ");
        sb3.append(CommonUtils.PARAM_UID);
        sb3.append(" TEXT");
        f41555d = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append("ALTER TABLE ");
        sb4.append(athenaVar.a());
        sb4.append(" ADD COLUMN ");
        sb4.append("ext");
        sb4.append(" TEXT");
        f41556e = sb4.toString();
        f41557f = "ALTER TABLE " + athenaVar.a() + " ADD COLUMN er_ts INTEGER";
        f41558g = "ALTER TABLE " + athenaVar.a() + " ADD COLUMN boot_id TEXT";
        f41559h = "CREATE INDEX IF NOT EXISTS t_idx ON " + athenaVar.a() + " (tid,created_at)";
        StringBuilder sb5 = new StringBuilder();
        sb5.append("DROP TABLE ");
        sb5.append(athenaVar.a());
        f41560i = sb5.toString();
    }

    athena(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 6);
        this.f41561j = context.getDatabasePath(str);
    }

    public void a() {
        close();
        if (this.f41561j.delete()) {
            com.transsion.athena.taaneh.aethna.a("mDatabaseFile deleted");
        }
    }

    public boolean b() {
        return this.f41561j.exists() && this.f41561j.length() > ((long) ehanat.k());
    }

    @Override
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        super.onConfigure(sQLiteDatabase);
        sQLiteDatabase.enableWriteAheadLogging();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA mmap_size=0;", null);
            cursorRawQuery.moveToFirst();
            cursorRawQuery.close();
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        com.transsion.athena.taaneh.aethna.a("Creating a new Athena DB");
        try {
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.execSQL(f41552a);
                sQLiteDatabase.execSQL(f41559h);
                sQLiteDatabase.execSQL(f41553b);
                sQLiteDatabase.execSQL(f41554c);
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.a(Log.getStackTraceString(e10));
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0037 A[Catch: all -> 0x0025, Exception -> 0x0027, SQLiteException -> 0x0032, TryCatch #1 {Exception -> 0x0027, blocks: (B:3:0x0014, B:5:0x001a, B:13:0x002c, B:18:0x0037, B:21:0x003f, B:24:0x005b, B:23:0x004a), top: B:31:0x0014, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x003f A[Catch: all -> 0x0025, Exception -> 0x0027, SQLiteException -> 0x0032, TRY_LEAVE, TryCatch #1 {Exception -> 0x0027, blocks: (B:3:0x0014, B:5:0x001a, B:13:0x002c, B:18:0x0037, B:21:0x003f, B:24:0x005b, B:23:0x004a), top: B:31:0x0014, outer: #0 }] */
    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        com.transsion.athena.taaneh.aethna.a("Upgrading app, replacing Athena DB oldVersion = " + i10);
        try {
            try {
                sQLiteDatabase.beginTransaction();
                if (i10 < 4) {
                    sQLiteDatabase.execSQL(f41553b);
                    sQLiteDatabase.execSQL(f41554c);
                }
                if (i10 < 3) {
                    try {
                        sQLiteDatabase.execSQL(f41555d);
                        if (i10 < 5) {
                            sQLiteDatabase.execSQL(f41556e);
                        }
                        if (i10 < 6) {
                            sQLiteDatabase.execSQL(f41557f);
                            sQLiteDatabase.execSQL(f41558g);
                        }
                    } catch (SQLiteException e10) {
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
                        sQLiteDatabase.execSQL(f41560i);
                        sQLiteDatabase.execSQL(f41552a);
                    }
                } else {
                    if (i10 < 5) {
                        sQLiteDatabase.execSQL(f41556e);
                    }
                    if (i10 < 6) {
                        sQLiteDatabase.execSQL(f41557f);
                        sQLiteDatabase.execSQL(f41558g);
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }
}
