package com.transsion.athena.data.anateh;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.athena.config.data.model.ehanat;
import defpackage.c4d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;

public class athena extends SQLiteOpenHelper {
    private static final String a;
    private static final String b;
    private static final String c;
    private static final String d;
    private static final String e;
    private static final String f;
    private static final String g;
    private static final String h;
    private static final String i;
    private final File j;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE ");
        anehat.athena athenaVar = anehat.athena.a;
        sb.append(athenaVar.a());
        sb.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
        sb.append("tid");
        sb.append(" INTEGER NOT NULL,");
        sb.append(NotificationCompat.CATEGORY_EVENT);
        sb.append(" TEXT NOT NULL,");
        sb.append("et");
        sb.append(" INTEGER NOT NULL,");
        sb.append("pi");
        sb.append(" INTEGER NOT NULL,");
        sb.append("created_at");
        sb.append(" INTEGER NOT NULL,");
        sb.append("uid");
        sb.append(" TEXT,");
        sb.append("ext");
        sb.append(" TEXT,");
        sb.append("er_ts");
        sb.append(" INTEGER DEFAULT 0,");
        sb.append("boot_id");
        sb.append(" TEXT)");
        a = sb.toString();
        b = "CREATE TABLE " + anehat.athena.c.a() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, tid INTEGER NOT NULL UNIQUE,ev TEXT,pt INTEGER DEFAULT 0,cf TEXT,ext TEXT)";
        c = "CREATE TABLE " + anehat.athena.d.a() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, appid INTEGER NOT NULL UNIQUE," + TtmlNode.RUBY_BASE + " TEXT,cfg TEXT,uid TEXT,try INTEGER DEFAULT 0,date TEXT,cnt INTEGER DEFAULT 0,ext TEXT)";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ALTER TABLE ");
        sb2.append(athenaVar.a());
        sb2.append(" ADD COLUMN ");
        sb2.append("uid");
        sb2.append(" TEXT");
        d = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("ALTER TABLE ");
        sb3.append(athenaVar.a());
        sb3.append(" ADD COLUMN ");
        sb3.append("ext");
        sb3.append(" TEXT");
        e = sb3.toString();
        f = "ALTER TABLE " + athenaVar.a() + " ADD COLUMN er_ts INTEGER";
        g = "ALTER TABLE " + athenaVar.a() + " ADD COLUMN boot_id TEXT";
        h = "CREATE INDEX IF NOT EXISTS t_idx ON " + athenaVar.a() + " (tid" + StringUtils.COMMA + "created_at)";
        StringBuilder sb4 = new StringBuilder();
        sb4.append("DROP TABLE ");
        sb4.append(athenaVar.a());
        i = sb4.toString();
    }

    public athena(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 6);
        this.j = context.getDatabasePath(str);
    }

    public void a() {
        close();
        if (this.j.delete()) {
            c4d.b("mDatabaseFile deleted");
        }
    }

    public boolean b() {
        return this.j.exists() && this.j.length() > ((long) ehanat.k());
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        c4d.b("Creating a new Athena DB");
        try {
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.execSQL(a);
                sQLiteDatabase.execSQL(h);
                sQLiteDatabase.execSQL(b);
                sQLiteDatabase.execSQL(c);
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e2) {
                c4d.b(Log.getStackTraceString(e2));
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0037 A[Catch: all -> 0x0025, Exception -> 0x0027, SQLiteException -> 0x0032, TryCatch #1 {Exception -> 0x0027, blocks: (B:3:0x0014, B:5:0x001a, B:13:0x002c, B:18:0x0037, B:21:0x003f, B:24:0x005b, B:23:0x004a), top: B:31:0x0014, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x003f A[Catch: all -> 0x0025, Exception -> 0x0027, SQLiteException -> 0x0032, TRY_LEAVE, TryCatch #1 {Exception -> 0x0027, blocks: (B:3:0x0014, B:5:0x001a, B:13:0x002c, B:18:0x0037, B:21:0x003f, B:24:0x005b, B:23:0x004a), top: B:31:0x0014, outer: #0 }] */
    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        c4d.b("Upgrading app, replacing Athena DB oldVersion = " + i2);
        try {
            try {
                sQLiteDatabase.beginTransaction();
                if (i2 < 4) {
                    sQLiteDatabase.execSQL(b);
                    sQLiteDatabase.execSQL(c);
                }
                if (i2 < 3) {
                    try {
                        sQLiteDatabase.execSQL(d);
                        if (i2 < 5) {
                            sQLiteDatabase.execSQL(e);
                        }
                        if (i2 < 6) {
                            sQLiteDatabase.execSQL(f);
                            sQLiteDatabase.execSQL(g);
                        }
                    } catch (SQLiteException e2) {
                        c4d.d(Log.getStackTraceString(e2));
                        sQLiteDatabase.execSQL(i);
                        sQLiteDatabase.execSQL(a);
                    }
                } else {
                    if (i2 < 5) {
                        sQLiteDatabase.execSQL(e);
                    }
                    if (i2 < 6) {
                        sQLiteDatabase.execSQL(f);
                        sQLiteDatabase.execSQL(g);
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e3) {
                c4d.d(Log.getStackTraceString(e3));
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }
}
