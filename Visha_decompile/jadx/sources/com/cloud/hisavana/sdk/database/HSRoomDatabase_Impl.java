package com.cloud.hisavana.sdk.database;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.push.PushConstants;
import defpackage.azd;
import defpackage.dgc;
import defpackage.gvd;
import defpackage.l47;
import defpackage.l7d;
import defpackage.ldb;
import defpackage.nu7;
import defpackage.p5d;
import defpackage.pgd;
import defpackage.qud;
import defpackage.tba;
import defpackage.tpc;
import defpackage.uad;
import defpackage.ufd;
import defpackage.y8d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class HSRoomDatabase_Impl extends HSRoomDatabase {
    public volatile tba j;
    public volatile ufd k;
    public volatile y8d l;
    public volatile qud m;
    public volatile azd n;
    public volatile dgc o;
    public volatile l47 p;

    public class a extends RoomOpenHelper.Delegate {
        public a(int i) {
            super(i);
        }

        @Override
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `cloudList_room` (`codeSeatId` TEXT NOT NULL, `code_seat_bean` TEXT, PRIMARY KEY(`codeSeatId`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `adList_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_creative_id` TEXT, `codeSeatId` TEXT, `file_path` TEXT, `price` REAL, `is_offline_ad` INTEGER, `ad_request_ver` INTEGER, `ad_bean` TEXT)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `attr_click_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ac_type` INTEGER NOT NULL, `pkg` TEXT NOT NULL, `dl_type` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `click_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `attr_impression_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `pkg` TEXT NOT NULL, `imp_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `retry_tracking_table_room` (`uuid` TEXT NOT NULL, `create_time` INTEGER, `retry_times` INTEGER, `tracking_data` TEXT, `md5` TEXT, PRIMARY KEY(`uuid`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `default_ad_room` (`ad_creative_id` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `ad_type` INTEGER NOT NULL, `price` REAL, `ad_request_ver` INTEGER NOT NULL, `displayed_times` INTEGER NOT NULL, `displayed_date` TEXT, `start_date` TEXT, `end_date` TEXT, `display_max_times` INTEGER NOT NULL, `file_path` TEXT, `default_country_white` TEXT, `default_country_black` TEXT, `default_brand_white` TEXT, `default_brand_black` TEXT, `ad_bean` TEXT, PRIMARY KEY(`ad_creative_id`, `codeSeatId`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `click_freq_room` (`codeSeatId` TEXT NOT NULL, `pkg` TEXT NOT NULL, `count` INTEGER NOT NULL, `date` TEXT NOT NULL, PRIMARY KEY(`codeSeatId`, `pkg`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'a363b49da002cab09b4aa58c32df7b7e')");
        }

        @Override
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `cloudList_room`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `adList_room`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `attr_click_room`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `attr_impression_room`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `retry_tracking_table_room`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `default_ad_room`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `click_freq_room`");
            List list = ((RoomDatabase) HSRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) HSRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) HSRoomDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            HSRoomDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) HSRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onOpen(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onPostMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        @Override
        public void onPreMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            DBUtil.dropFtsSyncTriggers(supportSQLiteDatabase);
        }

        @Override
        public RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase supportSQLiteDatabase) {
            HashMap map = new HashMap(2);
            map.put("codeSeatId", new TableInfo.Column("codeSeatId", "TEXT", true, 1, null, 1));
            map.put("code_seat_bean", new TableInfo.Column("code_seat_bean", "TEXT", false, 0, null, 1));
            TableInfo tableInfo = new TableInfo("cloudList_room", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "cloudList_room");
            if (!tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(false, "cloudList_room(com.cloud.hisavana.sdk.database.entities.CloudConfigEntity).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
            }
            HashMap map2 = new HashMap(8);
            map2.put("_id", new TableInfo.Column("_id", "INTEGER", true, 1, null, 1));
            map2.put("ad_creative_id", new TableInfo.Column("ad_creative_id", "TEXT", false, 0, null, 1));
            map2.put("codeSeatId", new TableInfo.Column("codeSeatId", "TEXT", false, 0, null, 1));
            map2.put("file_path", new TableInfo.Column("file_path", "TEXT", false, 0, null, 1));
            map2.put("price", new TableInfo.Column("price", "REAL", false, 0, null, 1));
            map2.put(TrackingKey.IS_OFFLINE_AD, new TableInfo.Column(TrackingKey.IS_OFFLINE_AD, "INTEGER", false, 0, null, 1));
            map2.put("ad_request_ver", new TableInfo.Column("ad_request_ver", "INTEGER", false, 0, null, 1));
            map2.put("ad_bean", new TableInfo.Column("ad_bean", "TEXT", false, 0, null, 1));
            TableInfo tableInfo3 = new TableInfo("adList_room", map2, new HashSet(0), new HashSet(0));
            TableInfo tableInfo4 = TableInfo.read(supportSQLiteDatabase, "adList_room");
            if (!tableInfo3.equals(tableInfo4)) {
                return new RoomOpenHelper.ValidationResult(false, "adList_room(com.cloud.hisavana.sdk.database.entities.AdListEntity).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
            }
            HashMap map3 = new HashMap(7);
            map3.put("_id", new TableInfo.Column("_id", "INTEGER", true, 1, null, 1));
            map3.put("ac_type", new TableInfo.Column("ac_type", "INTEGER", true, 0, null, 1));
            map3.put(PushConstants.PROVIDER_FIELD_PKG, new TableInfo.Column(PushConstants.PROVIDER_FIELD_PKG, "TEXT", true, 0, null, 1));
            map3.put("dl_type", new TableInfo.Column("dl_type", "TEXT", true, 0, null, 1));
            map3.put("codeSeatId", new TableInfo.Column("codeSeatId", "TEXT", true, 0, null, 1));
            map3.put(TrackingKey.CLICK_TS, new TableInfo.Column(TrackingKey.CLICK_TS, "INTEGER", true, 0, null, 1));
            map3.put("ad_creative_id", new TableInfo.Column("ad_creative_id", "TEXT", true, 0, null, 1));
            TableInfo tableInfo5 = new TableInfo("attr_click_room", map3, new HashSet(0), new HashSet(0));
            TableInfo tableInfo6 = TableInfo.read(supportSQLiteDatabase, "attr_click_room");
            if (!tableInfo5.equals(tableInfo6)) {
                return new RoomOpenHelper.ValidationResult(false, "attr_click_room(com.cloud.hisavana.sdk.database.entities.AttrClickEntity).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
            }
            HashMap map4 = new HashMap(4);
            map4.put("_id", new TableInfo.Column("_id", "INTEGER", true, 1, null, 1));
            map4.put(PushConstants.PROVIDER_FIELD_PKG, new TableInfo.Column(PushConstants.PROVIDER_FIELD_PKG, "TEXT", true, 0, null, 1));
            map4.put("imp_ts", new TableInfo.Column("imp_ts", "INTEGER", true, 0, null, 1));
            map4.put("ad_creative_id", new TableInfo.Column("ad_creative_id", "TEXT", true, 0, null, 1));
            TableInfo tableInfo7 = new TableInfo("attr_impression_room", map4, new HashSet(0), new HashSet(0));
            TableInfo tableInfo8 = TableInfo.read(supportSQLiteDatabase, "attr_impression_room");
            if (!tableInfo7.equals(tableInfo8)) {
                return new RoomOpenHelper.ValidationResult(false, "attr_impression_room(com.cloud.hisavana.sdk.database.entities.AttrImpressionEntity).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfo8);
            }
            HashMap map5 = new HashMap(5);
            map5.put("uuid", new TableInfo.Column("uuid", "TEXT", true, 1, null, 1));
            map5.put("create_time", new TableInfo.Column("create_time", "INTEGER", false, 0, null, 1));
            map5.put("retry_times", new TableInfo.Column("retry_times", "INTEGER", false, 0, null, 1));
            map5.put("tracking_data", new TableInfo.Column("tracking_data", "TEXT", false, 0, null, 1));
            map5.put("md5", new TableInfo.Column("md5", "TEXT", false, 0, null, 1));
            TableInfo tableInfo9 = new TableInfo("retry_tracking_table_room", map5, new HashSet(0), new HashSet(0));
            TableInfo tableInfo10 = TableInfo.read(supportSQLiteDatabase, "retry_tracking_table_room");
            if (!tableInfo9.equals(tableInfo10)) {
                return new RoomOpenHelper.ValidationResult(false, "retry_tracking_table_room(com.cloud.hisavana.sdk.database.entities.RetryTrackingEntity).\n Expected:\n" + tableInfo9 + "\n Found:\n" + tableInfo10);
            }
            HashMap map6 = new HashMap(16);
            map6.put("ad_creative_id", new TableInfo.Column("ad_creative_id", "TEXT", true, 1, null, 1));
            map6.put("codeSeatId", new TableInfo.Column("codeSeatId", "TEXT", true, 2, null, 1));
            map6.put(TrackingKey.AD_TYPE, new TableInfo.Column(TrackingKey.AD_TYPE, "INTEGER", true, 0, null, 1));
            map6.put("price", new TableInfo.Column("price", "REAL", false, 0, null, 1));
            map6.put("ad_request_ver", new TableInfo.Column("ad_request_ver", "INTEGER", true, 0, null, 1));
            map6.put("displayed_times", new TableInfo.Column("displayed_times", "INTEGER", true, 0, null, 1));
            map6.put("displayed_date", new TableInfo.Column("displayed_date", "TEXT", false, 0, null, 1));
            map6.put("start_date", new TableInfo.Column("start_date", "TEXT", false, 0, null, 1));
            map6.put("end_date", new TableInfo.Column("end_date", "TEXT", false, 0, null, 1));
            map6.put("display_max_times", new TableInfo.Column("display_max_times", "INTEGER", true, 0, null, 1));
            map6.put("file_path", new TableInfo.Column("file_path", "TEXT", false, 0, null, 1));
            map6.put("default_country_white", new TableInfo.Column("default_country_white", "TEXT", false, 0, null, 1));
            map6.put("default_country_black", new TableInfo.Column("default_country_black", "TEXT", false, 0, null, 1));
            map6.put("default_brand_white", new TableInfo.Column("default_brand_white", "TEXT", false, 0, null, 1));
            map6.put("default_brand_black", new TableInfo.Column("default_brand_black", "TEXT", false, 0, null, 1));
            map6.put("ad_bean", new TableInfo.Column("ad_bean", "TEXT", false, 0, null, 1));
            TableInfo tableInfo11 = new TableInfo("default_ad_room", map6, new HashSet(0), new HashSet(0));
            TableInfo tableInfo12 = TableInfo.read(supportSQLiteDatabase, "default_ad_room");
            if (!tableInfo11.equals(tableInfo12)) {
                return new RoomOpenHelper.ValidationResult(false, "default_ad_room(com.cloud.hisavana.sdk.database.entities.DefaultAdEntity).\n Expected:\n" + tableInfo11 + "\n Found:\n" + tableInfo12);
            }
            HashMap map7 = new HashMap(4);
            map7.put("codeSeatId", new TableInfo.Column("codeSeatId", "TEXT", true, 1, null, 1));
            map7.put(PushConstants.PROVIDER_FIELD_PKG, new TableInfo.Column(PushConstants.PROVIDER_FIELD_PKG, "TEXT", true, 2, null, 1));
            map7.put("count", new TableInfo.Column("count", "INTEGER", true, 0, null, 1));
            map7.put("date", new TableInfo.Column("date", "TEXT", true, 0, null, 1));
            TableInfo tableInfo13 = new TableInfo("click_freq_room", map7, new HashSet(0), new HashSet(0));
            TableInfo tableInfo14 = TableInfo.read(supportSQLiteDatabase, "click_freq_room");
            if (tableInfo13.equals(tableInfo14)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "click_freq_room(com.cloud.hisavana.sdk.database.entities.ClickFreqEntity).\n Expected:\n" + tableInfo13 + "\n Found:\n" + tableInfo14);
        }
    }

    @Override
    public ufd b() {
        ufd ufdVar;
        if (this.k != null) {
            return this.k;
        }
        synchronized (this) {
            try {
                if (this.k == null) {
                    this.k = new pgd(this);
                }
                ufdVar = this.k;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ufdVar;
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `cloudList_room`");
            writableDatabase.execSQL("DELETE FROM `adList_room`");
            writableDatabase.execSQL("DELETE FROM `attr_click_room`");
            writableDatabase.execSQL("DELETE FROM `attr_impression_room`");
            writableDatabase.execSQL("DELETE FROM `retry_tracking_table_room`");
            writableDatabase.execSQL("DELETE FROM `default_ad_room`");
            writableDatabase.execSQL("DELETE FROM `click_freq_room`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override
    public InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "cloudList_room", "adList_room", "attr_click_room", "attr_impression_room", "retry_tracking_table_room", "default_ad_room", "click_freq_room");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(3660), "a363b49da002cab09b4aa58c32df7b7e", "1d92183205f919f619dea4fe8b906072")).build());
    }

    @Override
    public qud e() {
        qud qudVar;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            try {
                if (this.m == null) {
                    this.m = new gvd(this);
                }
                qudVar = this.m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qudVar;
    }

    @Override
    public List getAutoMigrations(Map map) {
        return new ArrayList();
    }

    @Override
    public Set getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override
    public Map getRequiredTypeConverters() {
        HashMap map = new HashMap();
        map.put(tba.class, ldb.c());
        map.put(ufd.class, pgd.c());
        map.put(y8d.class, uad.c());
        map.put(qud.class, gvd.c());
        map.put(azd.class, defpackage.a.c());
        map.put(dgc.class, tpc.c());
        map.put(p5d.class, l7d.a());
        map.put(l47.class, nu7.b());
        return map;
    }

    @Override
    public azd h() {
        azd azdVar;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            try {
                if (this.n == null) {
                    this.n = new defpackage.a(this);
                }
                azdVar = this.n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return azdVar;
    }

    @Override
    public l47 j() {
        l47 l47Var;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            try {
                if (this.p == null) {
                    this.p = new nu7(this);
                }
                l47Var = this.p;
            } catch (Throwable th) {
                throw th;
            }
        }
        return l47Var;
    }

    @Override
    public tba l() {
        tba tbaVar;
        if (this.j != null) {
            return this.j;
        }
        synchronized (this) {
            try {
                if (this.j == null) {
                    this.j = new ldb(this);
                }
                tbaVar = this.j;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tbaVar;
    }

    @Override
    public y8d r() {
        y8d y8dVar;
        if (this.l != null) {
            return this.l;
        }
        synchronized (this) {
            try {
                if (this.l == null) {
                    this.l = new uad(this);
                }
                y8dVar = this.l;
            } catch (Throwable th) {
                throw th;
            }
        }
        return y8dVar;
    }

    @Override
    public dgc v() {
        dgc dgcVar;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            try {
                if (this.o == null) {
                    this.o = new tpc(this);
                }
                dgcVar = this.o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dgcVar;
    }
}
