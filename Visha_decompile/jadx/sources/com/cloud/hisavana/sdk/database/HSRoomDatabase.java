package com.cloud.hisavana.sdk.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;
import android.widget.Toast;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.cloud.hisavana.sdk.s;
import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.transsion.push.PushConstants;
import defpackage.azd;
import defpackage.dgc;
import defpackage.hed;
import defpackage.ikd;
import defpackage.kmb;
import defpackage.l47;
import defpackage.o9;
import defpackage.pid;
import defpackage.qk8;
import defpackage.qud;
import defpackage.r6;
import defpackage.swd;
import defpackage.tba;
import defpackage.ufd;
import defpackage.ul4;
import defpackage.vl4;
import defpackage.y8d;
import defpackage.z30;

@Database(entities = {kmb.class, pid.class, swd.class, z30.class, s.class, hed.class, qk8.class}, exportSchema = false, version = 3660)
public abstract class HSRoomDatabase extends RoomDatabase {
    public static volatile HSRoomDatabase a;
    public static final Migration b = new a(2, 3400);
    public static final Migration c = new b(2600, 3400);
    public static final Migration d = new c(2700, 3400);
    public static final Migration e = new d(MgtvMediaPlayer.MEDIA_INFO_MEDIACODEC_COLOR_FORMAT, 3400);
    public static final Migration f = new e(2910, 3400);
    public static final Migration g = new f(3070, 3400);
    public static final Migration h = new g(3140, 3400);
    public static final Migration i = new h(3400, 3660);

    public class a extends Migration {
        public a(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
            HSRoomDatabase.k(supportSQLiteDatabase);
            HSRoomDatabase.x(supportSQLiteDatabase);
            HSRoomDatabase.y(supportSQLiteDatabase);
        }
    }

    public class b extends Migration {
        public b(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
            HSRoomDatabase.k(supportSQLiteDatabase);
            HSRoomDatabase.x(supportSQLiteDatabase);
            HSRoomDatabase.y(supportSQLiteDatabase);
        }
    }

    public class c extends Migration {
        public c(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
            HSRoomDatabase.k(supportSQLiteDatabase);
            HSRoomDatabase.x(supportSQLiteDatabase);
            HSRoomDatabase.y(supportSQLiteDatabase);
        }
    }

    public class d extends Migration {
        public d(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
            HSRoomDatabase.k(supportSQLiteDatabase);
            HSRoomDatabase.y(supportSQLiteDatabase);
        }
    }

    public class e extends Migration {
        public e(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
            HSRoomDatabase.k(supportSQLiteDatabase);
            HSRoomDatabase.y(supportSQLiteDatabase);
        }
    }

    public class f extends Migration {
        public f(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
            HSRoomDatabase.k(supportSQLiteDatabase);
            HSRoomDatabase.y(supportSQLiteDatabase);
        }
    }

    public class g extends Migration {
        public g(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
            try {
                HSRoomDatabase.k(supportSQLiteDatabase);
                HSRoomDatabase.g(supportSQLiteDatabase, new String[]{"adList_room", "default_ad_room", "attr_impression_room", "attr_click_room", "cloudList_room", "retry_tracking_table_room"});
            } catch (Exception unused) {
            }
        }
    }

    public class h extends Migration {
        public h(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            try {
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS click_freq_room(codeSeatId TEXT NOT NULL,pkg TEXT NOT NULL,count INTEGER NOT NULL DEFAULT 0,date TEXT NOT NULL DEFAULT '', PRIMARY KEY (codeSeatId,pkg));");
            } catch (Exception e) {
                ikd.b().e("HSRoomDatabase", "create click_freq table failed: " + e.getMessage());
            }
        }
    }

    public static int a(Cursor cursor, String str) {
        return Math.max(cursor.getColumnIndex(str), 0);
    }

    public static void g(SupportSQLiteDatabase supportSQLiteDatabase, String[] strArr) throws Throwable {
        for (String str : strArr) {
            str.hashCode();
            switch (str) {
                case "default_ad_room":
                    u(supportSQLiteDatabase);
                    break;
                case "attr_impression_room":
                    q(supportSQLiteDatabase);
                    break;
                case "retry_tracking_table_room":
                    w(supportSQLiteDatabase);
                    break;
                case "cloudList_room":
                    s(supportSQLiteDatabase);
                    break;
                case "attr_click_room":
                    o(supportSQLiteDatabase);
                    break;
                case "adList_room":
                    m(supportSQLiteDatabase);
                    break;
            }
        }
    }

    public static void k(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS cloudList_room(codeSeatId TEXT PRIMARY KEY NOT NULL, code_seat_bean TEXT);");
        supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS adList_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ad_creative_id TEXT, codeSeatId TEXT,file_path TEXT,price DOUBLE,is_offline_ad INTEGER,ad_request_ver INTEGER,ad_bean TEXT);");
        supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS retry_tracking_table_room(uuid TEXT NOT NULL, create_time INTEGER,retry_times INTEGER,tracking_data TEXT,md5 TEXT,PRIMARY KEY (uuid))");
        supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS default_ad_room(ad_creative_id TEXT NOT NULL,codeSeatId TEXT NOT NULL,ad_type INTEGER NOT NULL,price DOUBLE DEFAULT 0.0,ad_request_ver INTEGER NOT NULL DEFAULT 0,displayed_times INTEGER NOT NULL  DEFAULT 0,displayed_date TEXT,start_date TEXT,end_date TEXT,display_max_times INTEGER NOT NULL DEFAULT 0,file_path TEXT,default_country_white TEXT,default_country_black TEXT,default_brand_white TEXT,default_brand_black TEXT,ad_bean TEXT, PRIMARY KEY (ad_creative_id,codeSeatId));");
        supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS attr_impression_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,pkg TEXT NOT NULL,imp_ts INTEGER NOT NULL DEFAULT 0,ad_creative_id TEXT NOT NULL);");
        supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS attr_click_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ac_type INTEGER NOT NULL,pkg TEXT NOT NULL,dl_type TEXT NOT NULL,codeSeatId TEXT NOT NULL,click_ts INTEGER NOT NULL DEFAULT 0,ad_creative_id TEXT NOT NULL);");
        supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS click_freq_room(codeSeatId TEXT NOT NULL,pkg TEXT NOT NULL,count INTEGER NOT NULL DEFAULT 0,date TEXT NOT NULL DEFAULT '', PRIMARY KEY (codeSeatId,pkg));");
    }

    public static void m(SupportSQLiteDatabase supportSQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            try {
                supportSQLiteDatabase.beginTransaction();
                cursorQuery = supportSQLiteDatabase.query("SELECT * FROM adList");
                while (cursorQuery.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "_id"))));
                    contentValues.put(TrackingKey.IS_OFFLINE_AD, Integer.valueOf(cursorQuery.getInt(a(cursorQuery, TrackingKey.IS_OFFLINE_AD))));
                    contentValues.put("ad_bean", cursorQuery.getString(a(cursorQuery, "ad_bean")));
                    contentValues.put("codeSeatId", cursorQuery.getString(a(cursorQuery, "codeSeatId")));
                    contentValues.put("price", Double.valueOf(cursorQuery.getDouble(a(cursorQuery, "price"))));
                    contentValues.put("ad_creative_id", cursorQuery.getString(a(cursorQuery, "ad_creative_id")));
                    contentValues.put("ad_request_ver", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "ad_request_ver"))));
                    contentValues.put("file_path", cursorQuery.getString(a(cursorQuery, "file_path")));
                    supportSQLiteDatabase.insert("adList_room", 5, contentValues);
                }
                cursorQuery.close();
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS adList");
            } catch (Exception e2) {
                ikd.b().e("HSRoomDatabase", "migrateTable_adList failed:" + Log.getStackTraceString(e2));
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS adList");
            } finally {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Exception unused) {
                        supportSQLiteDatabase.setTransactionSuccessful();
                        supportSQLiteDatabase.endTransaction();
                    }
                }
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS adList");
                supportSQLiteDatabase.setTransactionSuccessful();
                supportSQLiteDatabase.endTransaction();
            }
        } catch (Exception unused2) {
        }
    }

    public static HSRoomDatabase n() {
        return (HSRoomDatabase) Room.databaseBuilder(ul4.a(), HSRoomDatabase.class, p()).addMigrations(b, c, d, e, f, g, h, i).fallbackToDestructiveMigrationOnDowngrade().fallbackToDestructiveMigration().build();
    }

    public static void o(SupportSQLiteDatabase supportSQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            try {
                supportSQLiteDatabase.beginTransaction();
                cursorQuery = supportSQLiteDatabase.query("SELECT * FROM attr_click");
                while (cursorQuery.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "_id"))));
                    contentValues.put("ac_type", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "ac_type"))));
                    contentValues.put(PushConstants.PROVIDER_FIELD_PKG, cursorQuery.getString(a(cursorQuery, PushConstants.PROVIDER_FIELD_PKG)));
                    contentValues.put("dl_type", cursorQuery.getString(a(cursorQuery, "dl_type")));
                    contentValues.put("codeSeatId", cursorQuery.getString(a(cursorQuery, "codeSeatId")));
                    contentValues.put(TrackingKey.CLICK_TS, Integer.valueOf(cursorQuery.getInt(a(cursorQuery, TrackingKey.CLICK_TS))));
                    contentValues.put("ad_creative_id", cursorQuery.getString(a(cursorQuery, "ad_creative_id")));
                    supportSQLiteDatabase.insert("attr_click_room", 5, contentValues);
                }
                cursorQuery.close();
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS attr_click");
            } catch (Exception e2) {
                ikd.b().e("HSRoomDatabase", "migrateTable_attr_click failed:" + Log.getStackTraceString(e2));
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS attr_click");
            } finally {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Exception unused) {
                        supportSQLiteDatabase.setTransactionSuccessful();
                        supportSQLiteDatabase.endTransaction();
                    }
                }
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS attr_click");
                supportSQLiteDatabase.setTransactionSuccessful();
                supportSQLiteDatabase.endTransaction();
            }
        } catch (Exception unused2) {
        }
    }

    public static String p() {
        return vl4.b("hisavana") + ".db";
    }

    public static void q(SupportSQLiteDatabase supportSQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            try {
                try {
                    supportSQLiteDatabase.beginTransaction();
                    cursorQuery = supportSQLiteDatabase.query("SELECT * FROM attr_impression");
                    while (cursorQuery.moveToNext()) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("_id", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "_id"))));
                        contentValues.put(PushConstants.PROVIDER_FIELD_PKG, cursorQuery.getString(a(cursorQuery, PushConstants.PROVIDER_FIELD_PKG)));
                        contentValues.put("imp_ts", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "imp_ts"))));
                        contentValues.put("ad_creative_id", cursorQuery.getString(a(cursorQuery, "ad_creative_id")));
                        supportSQLiteDatabase.insert("attr_impression_room", 5, contentValues);
                    }
                    cursorQuery.close();
                    supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS attr_impression");
                } catch (Exception e2) {
                    ikd.b().e("HSRoomDatabase", "migrateTable_attr_impression failed:" + Log.getStackTraceString(e2));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS attr_impression");
                }
            } catch (Exception unused) {
            }
        } finally {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception unused2) {
                    supportSQLiteDatabase.setTransactionSuccessful();
                    supportSQLiteDatabase.endTransaction();
                }
            }
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS attr_impression");
            supportSQLiteDatabase.setTransactionSuccessful();
            supportSQLiteDatabase.endTransaction();
        }
    }

    public static void s(SupportSQLiteDatabase supportSQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            try {
                try {
                    supportSQLiteDatabase.beginTransaction();
                    cursorQuery = supportSQLiteDatabase.query("SELECT * FROM cloudList");
                    while (cursorQuery.moveToNext()) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("codeSeatId", cursorQuery.getString(a(cursorQuery, "codeSeatId")));
                        contentValues.put("code_seat_bean", cursorQuery.getString(a(cursorQuery, "code_seat_bean")));
                        supportSQLiteDatabase.insert("cloudList_room", 5, contentValues);
                    }
                    cursorQuery.close();
                    supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS cloudList");
                } catch (Exception e2) {
                    ikd.b().e("HSRoomDatabase", "migrateTable_cloudList failed:" + Log.getStackTraceString(e2));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS cloudList");
                }
            } catch (Exception unused) {
            }
        } finally {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception unused2) {
                    supportSQLiteDatabase.setTransactionSuccessful();
                    supportSQLiteDatabase.endTransaction();
                }
            }
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS cloudList");
            supportSQLiteDatabase.setTransactionSuccessful();
            supportSQLiteDatabase.endTransaction();
        }
    }

    public static HSRoomDatabase t() {
        if (a == null) {
            synchronized (HSRoomDatabase.class) {
                if (a == null) {
                    try {
                        a = n();
                        if (r6.p()) {
                            ikd.b().e("HSRoomDatabase", "current database version is:" + a.getOpenHelper().getReadableDatabase().getVersion());
                        }
                    } catch (Exception e2) {
                        if (r6.p()) {
                            Toast.makeText(ul4.a(), "create room database failed:" + Log.getStackTraceString(e2), 1).show();
                        }
                        ul4.a().deleteDatabase(p());
                        a = n();
                    }
                }
            }
        }
        return a;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0186 A[Catch: Exception -> 0x018c, TRY_ENTER, TryCatch #0 {Exception -> 0x018c, blocks: (B:39:0x0186, B:40:0x0189, B:23:0x0142), top: B:51:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0196 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void u(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
        SupportSQLiteDatabase supportSQLiteDatabase2;
        String str;
        SupportSQLiteDatabase supportSQLiteDatabase3 = supportSQLiteDatabase;
        String str2 = "default_brand_white";
        String str3 = "default_country_black";
        String str4 = "ad_bean";
        String str5 = "ad_creative_id";
        String str6 = "default_brand_black";
        Cursor cursor = null;
        try {
            try {
                supportSQLiteDatabase.beginTransaction();
                try {
                    Cursor cursorQuery = supportSQLiteDatabase3.query("SELECT * FROM default_ad");
                    while (cursorQuery.moveToNext()) {
                        try {
                            try {
                                ContentValues contentValues = new ContentValues();
                                String str7 = str2;
                                contentValues.put(str5, cursorQuery.getString(a(cursorQuery, str5)));
                                contentValues.put("codeSeatId", cursorQuery.getString(a(cursorQuery, "codeSeatId")));
                                contentValues.put(TrackingKey.AD_TYPE, Integer.valueOf(cursorQuery.getInt(a(cursorQuery, TrackingKey.AD_TYPE))));
                                contentValues.put("price", Double.valueOf(cursorQuery.getDouble(a(cursorQuery, "price"))));
                                contentValues.put("ad_request_ver", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "ad_request_ver"))));
                                contentValues.put("displayed_times", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "displayed_times"))));
                                contentValues.put("displayed_date", cursorQuery.getString(a(cursorQuery, "displayed_date")));
                                contentValues.put("start_date", cursorQuery.getString(a(cursorQuery, "start_date")));
                                contentValues.put("end_date", cursorQuery.getString(a(cursorQuery, "end_date")));
                                contentValues.put("display_max_times", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "display_max_times"))));
                                contentValues.put("file_path", cursorQuery.getString(a(cursorQuery, "file_path")));
                                contentValues.put("default_country_white", cursorQuery.getString(a(cursorQuery, "default_country_white")));
                                contentValues.put(str3, cursorQuery.getString(a(cursorQuery, str3)));
                                String str8 = str5;
                                contentValues.put(str7, cursorQuery.getString(a(cursorQuery, str7)));
                                String str9 = str6;
                                contentValues.put(str9, cursorQuery.getString(a(cursorQuery, str9)));
                                String str10 = str4;
                                contentValues.put(str10, cursorQuery.getString(a(cursorQuery, str10)));
                                String str11 = str3;
                                supportSQLiteDatabase2 = supportSQLiteDatabase;
                                try {
                                    supportSQLiteDatabase2.insert("default_ad_room", 5, contentValues);
                                    supportSQLiteDatabase3 = supportSQLiteDatabase2;
                                    str2 = str7;
                                    str5 = str8;
                                    str3 = str11;
                                    str6 = str9;
                                    str4 = str10;
                                } catch (Exception e2) {
                                    e = e2;
                                    cursor = cursorQuery;
                                    str = "DROP TABLE IF EXISTS default_ad";
                                    try {
                                        ikd.b().e("HSRoomDatabase", "migrateTable_default_ad failed:" + Log.getStackTraceString(e));
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        supportSQLiteDatabase2.execSQL(str);
                                        supportSQLiteDatabase.setTransactionSuccessful();
                                        supportSQLiteDatabase.endTransaction();
                                    } catch (Throwable th) {
                                        th = th;
                                        if (cursor != null) {
                                            try {
                                                cursor.close();
                                            } catch (Exception unused) {
                                                supportSQLiteDatabase.setTransactionSuccessful();
                                                supportSQLiteDatabase.endTransaction();
                                                throw th;
                                            }
                                        }
                                        supportSQLiteDatabase2.execSQL(str);
                                        supportSQLiteDatabase.setTransactionSuccessful();
                                        supportSQLiteDatabase.endTransaction();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    cursor = cursorQuery;
                                    str = "DROP TABLE IF EXISTS default_ad";
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    supportSQLiteDatabase2.execSQL(str);
                                    supportSQLiteDatabase.setTransactionSuccessful();
                                    supportSQLiteDatabase.endTransaction();
                                    throw th;
                                }
                            } catch (Exception e3) {
                                e = e3;
                                supportSQLiteDatabase2 = supportSQLiteDatabase;
                            } catch (Throwable th3) {
                                th = th3;
                                supportSQLiteDatabase2 = supportSQLiteDatabase;
                            }
                        } catch (Exception e4) {
                            e = e4;
                            supportSQLiteDatabase2 = supportSQLiteDatabase3;
                            str = "DROP TABLE IF EXISTS default_ad";
                            cursor = cursorQuery;
                            ikd.b().e("HSRoomDatabase", "migrateTable_default_ad failed:" + Log.getStackTraceString(e));
                            if (cursor != null) {
                                cursor.close();
                            }
                            supportSQLiteDatabase2.execSQL(str);
                        } catch (Throwable th4) {
                            th = th4;
                            supportSQLiteDatabase2 = supportSQLiteDatabase3;
                            str = "DROP TABLE IF EXISTS default_ad";
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            supportSQLiteDatabase2.execSQL(str);
                            supportSQLiteDatabase.setTransactionSuccessful();
                            supportSQLiteDatabase.endTransaction();
                            throw th;
                        }
                    }
                    SupportSQLiteDatabase supportSQLiteDatabase4 = supportSQLiteDatabase3;
                    cursorQuery.close();
                    supportSQLiteDatabase4.execSQL("DROP TABLE IF EXISTS default_ad");
                } catch (Exception e5) {
                    e = e5;
                    supportSQLiteDatabase2 = supportSQLiteDatabase3;
                } catch (Throwable th5) {
                    th = th5;
                    supportSQLiteDatabase2 = supportSQLiteDatabase3;
                }
            } catch (Exception unused2) {
            }
        } catch (Exception e6) {
            e = e6;
            supportSQLiteDatabase2 = supportSQLiteDatabase3;
            str = "DROP TABLE IF EXISTS default_ad";
        } catch (Throwable th6) {
            th = th6;
            supportSQLiteDatabase2 = supportSQLiteDatabase3;
            str = "DROP TABLE IF EXISTS default_ad";
        }
        supportSQLiteDatabase.setTransactionSuccessful();
        supportSQLiteDatabase.endTransaction();
    }

    public static void w(SupportSQLiteDatabase supportSQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            try {
                try {
                    supportSQLiteDatabase.beginTransaction();
                    cursorQuery = supportSQLiteDatabase.query("SELECT * FROM retry_tracking_table");
                    while (cursorQuery.moveToNext()) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("uuid", cursorQuery.getString(a(cursorQuery, "uuid")));
                        contentValues.put("create_time", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "create_time"))));
                        contentValues.put("retry_times", Integer.valueOf(cursorQuery.getInt(a(cursorQuery, "retry_times"))));
                        contentValues.put("tracking_data", cursorQuery.getString(a(cursorQuery, "tracking_data")));
                        contentValues.put("md5", cursorQuery.getString(a(cursorQuery, "md5")));
                        supportSQLiteDatabase.insert("retry_tracking_table_room", 5, contentValues);
                    }
                    cursorQuery.close();
                    supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS retry_tracking_table");
                } catch (Exception e2) {
                    ikd.b().e("HSRoomDatabase", "migrateTable_retry_tracking_table failed:" + Log.getStackTraceString(e2));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS retry_tracking_table");
                }
            } catch (Exception unused) {
            }
        } finally {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception unused2) {
                    supportSQLiteDatabase.setTransactionSuccessful();
                    supportSQLiteDatabase.endTransaction();
                }
            }
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS retry_tracking_table");
            supportSQLiteDatabase.setTransactionSuccessful();
            supportSQLiteDatabase.endTransaction();
        }
    }

    public static void x(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
        o9.e().s("requestConfigTime");
        o9.e().s("hisavanaCurrentCloudControlVersion");
        g(supportSQLiteDatabase, new String[]{"adList_room", "default_ad_room", "attr_impression_room", "attr_click_room", "cloudList_room", "retry_tracking_table_room"});
    }

    public static void y(SupportSQLiteDatabase supportSQLiteDatabase) throws Throwable {
        g(supportSQLiteDatabase, new String[]{"adList_room", "default_ad_room", "attr_impression_room", "attr_click_room", "cloudList_room", "retry_tracking_table_room"});
    }

    public abstract ufd b();

    public abstract qud e();

    public abstract azd h();

    public abstract l47 j();

    public abstract tba l();

    public abstract y8d r();

    public abstract dgc v();
}
