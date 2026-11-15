package com.cloud.hisavana.sdk.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;
import android.widget.Toast;
import androidx.room.RoomDatabase;
import androidx.room.s;
import com.cloud.hisavana.sdk.b1;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.v3;
import com.cloud.hisavana.sdk.v5;
import com.cloud.hisavana.sdk.x4;
import com.cloud.hisavana.sdk.y1;
import com.cloud.hisavana.sdk.z0;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;

public abstract class HSRoomDatabase extends RoomDatabase {

    private static volatile HSRoomDatabase f21767p;

    private static final x3.b f21768q = new a(2, 3400);

    private static final x3.b f21769r = new b(2600, 3400);

    private static final x3.b f21770s = new c(2700, 3400);

    private static final x3.b f21771t = new d(2900, 3400);

    private static final x3.b f21772u = new e(2910, 3400);

    private static final x3.b f21773v = new f(3070, 3400);

    private static final x3.b f21774w = new g(3140, 3400);

    class a extends x3.b {
        a(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public void b(z3.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.B0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class b extends x3.b {
        b(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public void b(z3.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.B0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class c extends x3.b {
        c(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public void b(z3.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.B0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class d extends x3.b {
        d(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public void b(z3.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class e extends x3.b {
        e(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public void b(z3.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class f extends x3.b {
        f(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public void b(z3.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class g extends x3.b {
        g(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public void b(z3.d dVar) throws Throwable {
            try {
                HSRoomDatabase.q0(dVar);
                HSRoomDatabase.m0(dVar, new String[]{"adList_room", "default_ad_room", "attr_impression_room", "attr_click_room", "cloudList_room", "retry_tracking_table_room"});
            } catch (Exception unused) {
            }
        }
    }

    private static void A0(z3.d dVar) {
        Cursor cursorM0 = null;
        try {
            try {
                dVar.A();
                cursorM0 = dVar.m0("SELECT * FROM retry_tracking_table");
                while (cursorM0.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("uuid", cursorM0.getString(g0(cursorM0, "uuid")));
                    contentValues.put("create_time", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "create_time"))));
                    contentValues.put("retry_times", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "retry_times"))));
                    contentValues.put("tracking_data", cursorM0.getString(g0(cursorM0, "tracking_data")));
                    contentValues.put("md5", cursorM0.getString(g0(cursorM0, "md5")));
                    dVar.n0("retry_tracking_table_room", 5, contentValues);
                }
                cursorM0.close();
                dVar.E("DROP TABLE IF EXISTS retry_tracking_table");
            } catch (Exception e10) {
                b4.b().e("HSRoomDatabase", "migrateTable_retry_tracking_table failed:" + Log.getStackTraceString(e10));
                if (cursorM0 != null) {
                    cursorM0.close();
                }
                dVar.E("DROP TABLE IF EXISTS retry_tracking_table");
            } finally {
                if (cursorM0 != null) {
                    try {
                        cursorM0.close();
                    } catch (Exception unused) {
                        dVar.I();
                        dVar.L();
                    }
                }
                dVar.E("DROP TABLE IF EXISTS retry_tracking_table");
                dVar.I();
                dVar.L();
            }
        } catch (Exception unused2) {
        }
    }

    public static void B0(z3.d dVar) throws Throwable {
        l7.a.e().s("requestConfigTime");
        l7.a.e().s("hisavanaCurrentCloudControlVersion");
        m0(dVar, new String[]{"adList_room", "default_ad_room", "attr_impression_room", "attr_click_room", "cloudList_room", "retry_tracking_table_room"});
    }

    public static void C0(z3.d dVar) throws Throwable {
        m0(dVar, new String[]{"adList_room", "default_ad_room", "attr_impression_room", "attr_click_room", "cloudList_room", "retry_tracking_table_room"});
    }

    private static int g0(Cursor cursor, String str) {
        return Math.max(cursor.getColumnIndex(str), 0);
    }

    public static void m0(z3.d dVar, String[] strArr) throws Throwable {
        for (String str : strArr) {
            str.hashCode();
            switch (str) {
                case "default_ad_room":
                    z0(dVar);
                    break;
                case "attr_impression_room":
                    w0(dVar);
                    break;
                case "retry_tracking_table_room":
                    A0(dVar);
                    break;
                case "cloudList_room":
                    y0(dVar);
                    break;
                case "attr_click_room":
                    u0(dVar);
                    break;
                case "adList_room":
                    s0(dVar);
                    break;
            }
        }
    }

    public static void q0(z3.d dVar) {
        dVar.E("CREATE TABLE IF NOT EXISTS cloudList_room(codeSeatId TEXT PRIMARY KEY NOT NULL, code_seat_bean TEXT);");
        dVar.E("CREATE TABLE IF NOT EXISTS adList_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ad_creative_id TEXT, codeSeatId TEXT,file_path TEXT,price DOUBLE,is_offline_ad INTEGER,ad_request_ver INTEGER,ad_bean TEXT);");
        dVar.E("CREATE TABLE IF NOT EXISTS retry_tracking_table_room(uuid TEXT NOT NULL, create_time INTEGER,retry_times INTEGER,tracking_data TEXT,md5 TEXT,PRIMARY KEY (uuid))");
        dVar.E("CREATE TABLE IF NOT EXISTS default_ad_room(ad_creative_id TEXT NOT NULL,codeSeatId TEXT NOT NULL,ad_type INTEGER NOT NULL,price DOUBLE DEFAULT 0.0,ad_request_ver INTEGER NOT NULL DEFAULT 0,displayed_times INTEGER NOT NULL  DEFAULT 0,displayed_date TEXT,start_date TEXT,end_date TEXT,display_max_times INTEGER NOT NULL DEFAULT 0,file_path TEXT,default_country_white TEXT,default_country_black TEXT,default_brand_white TEXT,default_brand_black TEXT,ad_bean TEXT, PRIMARY KEY (ad_creative_id,codeSeatId));");
        dVar.E("CREATE TABLE IF NOT EXISTS attr_impression_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,pkg TEXT NOT NULL,imp_ts INTEGER NOT NULL DEFAULT 0,ad_creative_id TEXT NOT NULL);");
        dVar.E("CREATE TABLE IF NOT EXISTS attr_click_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ac_type INTEGER NOT NULL,pkg TEXT NOT NULL,dl_type TEXT NOT NULL,codeSeatId TEXT NOT NULL,click_ts INTEGER NOT NULL DEFAULT 0,ad_creative_id TEXT NOT NULL);");
    }

    private static HSRoomDatabase r0() {
        return (HSRoomDatabase) s.a(com.cloud.sdk.commonutil.util.e.a(), HSRoomDatabase.class, "hisavana.db").b(f21768q, f21769r, f21770s, f21771t, f21772u, f21773v, f21774w).f().e().d();
    }

    private static void s0(z3.d dVar) {
        Cursor cursorM0 = null;
        try {
            try {
                dVar.A();
                cursorM0 = dVar.m0("SELECT * FROM adList");
                while (cursorM0.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "_id"))));
                    contentValues.put(TrackingKey.IS_OFFLINE_AD, Integer.valueOf(cursorM0.getInt(g0(cursorM0, TrackingKey.IS_OFFLINE_AD))));
                    contentValues.put("ad_bean", cursorM0.getString(g0(cursorM0, "ad_bean")));
                    contentValues.put("codeSeatId", cursorM0.getString(g0(cursorM0, "codeSeatId")));
                    contentValues.put(BidResponsed.KEY_PRICE, Double.valueOf(cursorM0.getDouble(g0(cursorM0, BidResponsed.KEY_PRICE))));
                    contentValues.put("ad_creative_id", cursorM0.getString(g0(cursorM0, "ad_creative_id")));
                    contentValues.put("ad_request_ver", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "ad_request_ver"))));
                    contentValues.put("file_path", cursorM0.getString(g0(cursorM0, "file_path")));
                    dVar.n0("adList_room", 5, contentValues);
                }
                cursorM0.close();
                dVar.E("DROP TABLE IF EXISTS adList");
            } catch (Exception e10) {
                b4.b().e("HSRoomDatabase", "migrateTable_adList failed:" + Log.getStackTraceString(e10));
                if (cursorM0 != null) {
                    cursorM0.close();
                }
                dVar.E("DROP TABLE IF EXISTS adList");
            } finally {
                if (cursorM0 != null) {
                    try {
                        cursorM0.close();
                    } catch (Exception unused) {
                        dVar.I();
                        dVar.L();
                    }
                }
                dVar.E("DROP TABLE IF EXISTS adList");
                dVar.I();
                dVar.L();
            }
        } catch (Exception unused2) {
        }
    }

    private static void u0(z3.d dVar) {
        Cursor cursorM0 = null;
        try {
            try {
                dVar.A();
                cursorM0 = dVar.m0("SELECT * FROM attr_click");
                while (cursorM0.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "_id"))));
                    contentValues.put("ac_type", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "ac_type"))));
                    contentValues.put(PushConstants.PROVIDER_FIELD_PKG, cursorM0.getString(g0(cursorM0, PushConstants.PROVIDER_FIELD_PKG)));
                    contentValues.put("dl_type", cursorM0.getString(g0(cursorM0, "dl_type")));
                    contentValues.put("codeSeatId", cursorM0.getString(g0(cursorM0, "codeSeatId")));
                    contentValues.put(TrackingKey.CLICK_TS, Integer.valueOf(cursorM0.getInt(g0(cursorM0, TrackingKey.CLICK_TS))));
                    contentValues.put("ad_creative_id", cursorM0.getString(g0(cursorM0, "ad_creative_id")));
                    dVar.n0("attr_click_room", 5, contentValues);
                }
                cursorM0.close();
                dVar.E("DROP TABLE IF EXISTS attr_click");
            } catch (Exception e10) {
                b4.b().e("HSRoomDatabase", "migrateTable_attr_click failed:" + Log.getStackTraceString(e10));
                if (cursorM0 != null) {
                    cursorM0.close();
                }
                dVar.E("DROP TABLE IF EXISTS attr_click");
            } finally {
                if (cursorM0 != null) {
                    try {
                        cursorM0.close();
                    } catch (Exception unused) {
                        dVar.I();
                        dVar.L();
                    }
                }
                dVar.E("DROP TABLE IF EXISTS attr_click");
                dVar.I();
                dVar.L();
            }
        } catch (Exception unused2) {
        }
    }

    public static HSRoomDatabase v0() {
        if (f21767p == null) {
            synchronized (HSRoomDatabase.class) {
                if (f21767p == null) {
                    try {
                        f21767p = r0();
                        if (c7.b.l()) {
                            b4.b().e("HSRoomDatabase", "current database version is:" + f21767p.z().getReadableDatabase().getVersion());
                        }
                    } catch (Exception e10) {
                        if (c7.b.l()) {
                            Toast.makeText(com.cloud.sdk.commonutil.util.e.a(), "create room database failed:" + Log.getStackTraceString(e10), 1).show();
                        }
                        com.cloud.sdk.commonutil.util.e.a().deleteDatabase("hisavana.db");
                        f21767p = r0();
                    }
                }
            }
        }
        return f21767p;
    }

    private static void w0(z3.d dVar) {
        Cursor cursorM0 = null;
        try {
            try {
                try {
                    dVar.A();
                    cursorM0 = dVar.m0("SELECT * FROM attr_impression");
                    while (cursorM0.moveToNext()) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("_id", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "_id"))));
                        contentValues.put(PushConstants.PROVIDER_FIELD_PKG, cursorM0.getString(g0(cursorM0, PushConstants.PROVIDER_FIELD_PKG)));
                        contentValues.put("imp_ts", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "imp_ts"))));
                        contentValues.put("ad_creative_id", cursorM0.getString(g0(cursorM0, "ad_creative_id")));
                        dVar.n0("attr_impression_room", 5, contentValues);
                    }
                    cursorM0.close();
                    dVar.E("DROP TABLE IF EXISTS attr_impression");
                } catch (Exception e10) {
                    b4.b().e("HSRoomDatabase", "migrateTable_attr_impression failed:" + Log.getStackTraceString(e10));
                    if (cursorM0 != null) {
                        cursorM0.close();
                    }
                    dVar.E("DROP TABLE IF EXISTS attr_impression");
                }
            } catch (Exception unused) {
            }
        } finally {
            if (cursorM0 != null) {
                try {
                    cursorM0.close();
                } catch (Exception unused2) {
                    dVar.I();
                    dVar.L();
                }
            }
            dVar.E("DROP TABLE IF EXISTS attr_impression");
            dVar.I();
            dVar.L();
        }
    }

    private static void y0(z3.d dVar) {
        Cursor cursorM0 = null;
        try {
            try {
                try {
                    dVar.A();
                    cursorM0 = dVar.m0("SELECT * FROM cloudList");
                    while (cursorM0.moveToNext()) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("codeSeatId", cursorM0.getString(g0(cursorM0, "codeSeatId")));
                        contentValues.put("code_seat_bean", cursorM0.getString(g0(cursorM0, "code_seat_bean")));
                        dVar.n0("cloudList_room", 5, contentValues);
                    }
                    cursorM0.close();
                    dVar.E("DROP TABLE IF EXISTS cloudList");
                } catch (Exception e10) {
                    b4.b().e("HSRoomDatabase", "migrateTable_cloudList failed:" + Log.getStackTraceString(e10));
                    if (cursorM0 != null) {
                        cursorM0.close();
                    }
                    dVar.E("DROP TABLE IF EXISTS cloudList");
                }
            } catch (Exception unused) {
            }
        } finally {
            if (cursorM0 != null) {
                try {
                    cursorM0.close();
                } catch (Exception unused2) {
                    dVar.I();
                    dVar.L();
                }
            }
            dVar.E("DROP TABLE IF EXISTS cloudList");
            dVar.I();
            dVar.L();
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0185 A[Catch: Exception -> 0x018b, TRY_ENTER, TryCatch #0 {Exception -> 0x018b, blocks: (B:39:0x0185, B:40:0x0188, B:23:0x0141), top: B:51:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0195 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static void z0(z3.d dVar) throws Throwable {
        z3.d dVar2;
        String str;
        z3.d dVar3 = dVar;
        String str2 = "default_brand_white";
        String str3 = "default_country_black";
        String str4 = "ad_bean";
        String str5 = "ad_creative_id";
        String str6 = "default_brand_black";
        Cursor cursor = null;
        try {
            try {
                dVar.A();
                try {
                    Cursor cursorM0 = dVar3.m0("SELECT * FROM default_ad");
                    while (cursorM0.moveToNext()) {
                        try {
                            try {
                                ContentValues contentValues = new ContentValues();
                                String str7 = str2;
                                contentValues.put(str5, cursorM0.getString(g0(cursorM0, str5)));
                                contentValues.put("codeSeatId", cursorM0.getString(g0(cursorM0, "codeSeatId")));
                                contentValues.put("ad_type", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "ad_type"))));
                                contentValues.put(BidResponsed.KEY_PRICE, Double.valueOf(cursorM0.getDouble(g0(cursorM0, BidResponsed.KEY_PRICE))));
                                contentValues.put("ad_request_ver", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "ad_request_ver"))));
                                contentValues.put("displayed_times", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "displayed_times"))));
                                contentValues.put("displayed_date", cursorM0.getString(g0(cursorM0, "displayed_date")));
                                contentValues.put("start_date", cursorM0.getString(g0(cursorM0, "start_date")));
                                contentValues.put("end_date", cursorM0.getString(g0(cursorM0, "end_date")));
                                contentValues.put("display_max_times", Integer.valueOf(cursorM0.getInt(g0(cursorM0, "display_max_times"))));
                                contentValues.put("file_path", cursorM0.getString(g0(cursorM0, "file_path")));
                                contentValues.put("default_country_white", cursorM0.getString(g0(cursorM0, "default_country_white")));
                                contentValues.put(str3, cursorM0.getString(g0(cursorM0, str3)));
                                String str8 = str5;
                                contentValues.put(str7, cursorM0.getString(g0(cursorM0, str7)));
                                String str9 = str6;
                                contentValues.put(str9, cursorM0.getString(g0(cursorM0, str9)));
                                String str10 = str4;
                                contentValues.put(str10, cursorM0.getString(g0(cursorM0, str10)));
                                String str11 = str3;
                                dVar2 = dVar;
                                try {
                                    dVar2.n0("default_ad_room", 5, contentValues);
                                    dVar3 = dVar2;
                                    str2 = str7;
                                    str5 = str8;
                                    str3 = str11;
                                    str6 = str9;
                                    str4 = str10;
                                } catch (Exception e10) {
                                    e = e10;
                                    cursor = cursorM0;
                                    str = "DROP TABLE IF EXISTS default_ad";
                                    try {
                                        b4.b().e("HSRoomDatabase", "migrateTable_default_ad failed:" + Log.getStackTraceString(e));
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        dVar2.E(str);
                                        dVar.I();
                                        dVar.L();
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (cursor != null) {
                                            try {
                                                cursor.close();
                                            } catch (Exception unused) {
                                                dVar.I();
                                                dVar.L();
                                                throw th;
                                            }
                                        }
                                        dVar2.E(str);
                                        dVar.I();
                                        dVar.L();
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    cursor = cursorM0;
                                    str = "DROP TABLE IF EXISTS default_ad";
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    dVar2.E(str);
                                    dVar.I();
                                    dVar.L();
                                    throw th;
                                }
                            } catch (Exception e11) {
                                e = e11;
                                dVar2 = dVar;
                            } catch (Throwable th4) {
                                th = th4;
                                dVar2 = dVar;
                            }
                        } catch (Exception e12) {
                            e = e12;
                            dVar2 = dVar3;
                            str = "DROP TABLE IF EXISTS default_ad";
                            cursor = cursorM0;
                            b4.b().e("HSRoomDatabase", "migrateTable_default_ad failed:" + Log.getStackTraceString(e));
                            if (cursor != null) {
                                cursor.close();
                            }
                            dVar2.E(str);
                        } catch (Throwable th5) {
                            th = th5;
                            dVar2 = dVar3;
                            str = "DROP TABLE IF EXISTS default_ad";
                            cursor = cursorM0;
                            if (cursor != null) {
                                cursor.close();
                            }
                            dVar2.E(str);
                            dVar.I();
                            dVar.L();
                            throw th;
                        }
                    }
                    z3.d dVar4 = dVar3;
                    cursorM0.close();
                    dVar4.E("DROP TABLE IF EXISTS default_ad");
                } catch (Exception e13) {
                    e = e13;
                    dVar2 = dVar3;
                } catch (Throwable th6) {
                    th = th6;
                    dVar2 = dVar3;
                }
            } catch (Exception unused2) {
            }
        } catch (Exception e14) {
            e = e14;
            dVar2 = dVar3;
            str = "DROP TABLE IF EXISTS default_ad";
        } catch (Throwable th7) {
            th = th7;
            dVar2 = dVar3;
            str = "DROP TABLE IF EXISTS default_ad";
        }
        dVar.I();
        dVar.L();
    }

    public abstract v3 h0();

    public abstract x4 k0();

    public abstract v5 n0();

    public abstract z0 p0();

    public abstract y1 t0();

    public abstract b1 x0();
}
