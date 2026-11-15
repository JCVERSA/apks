package com.transsion.dbdata.database;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.ag7;
import defpackage.hb0;
import defpackage.sg7;
import defpackage.tg7;
import defpackage.zf7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class OnlineVideoDatabase_Impl extends OnlineVideoDatabase {
    public volatile zf7 h;
    public volatile sg7 i;

    public class a extends RoomOpenHelper.Delegate {
        public a(int i) {
            super(i);
        }

        @Override
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `online_history` (`serialId` INTEGER NOT NULL, `source_id` TEXT, `video_id` INTEGER NOT NULL, `video_name` TEXT, `series_id` INTEGER NOT NULL, `video_description` TEXT, `last_play_postion` INTEGER NOT NULL, `duration` INTEGER NOT NULL, `video_cover` TEXT, `last_watch_time` INTEGER NOT NULL, `last_frame_img` BLOB, `watch_progress` REAL NOT NULL, `update_progress` TEXT, `record_id` INTEGER NOT NULL, `user_id` INTEGER NOT NULL, `video_serial_name` TEXT, `video_link` TEXT DEFAULT '', `source_type` TEXT DEFAULT '1', `pay_type` INTEGER NOT NULL, `is_intact` INTEGER NOT NULL, `is_youtube` INTEGER NOT NULL, `channel_name` TEXT, `channel_cover` TEXT, `video_bean_json` TEXT, `play_let` INTEGER NOT NULL, PRIMARY KEY(`serialId`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `online_user_history` (`is_uploaded` INTEGER NOT NULL, `serialId` INTEGER NOT NULL, `source_id` TEXT, `video_id` INTEGER NOT NULL, `video_name` TEXT, `series_id` INTEGER NOT NULL, `video_description` TEXT, `last_play_postion` INTEGER NOT NULL, `duration` INTEGER NOT NULL, `video_cover` TEXT, `last_watch_time` INTEGER NOT NULL, `last_frame_img` BLOB, `watch_progress` REAL NOT NULL, `update_progress` TEXT, `record_id` INTEGER NOT NULL, `user_id` INTEGER NOT NULL, `video_serial_name` TEXT, `video_link` TEXT DEFAULT '', `source_type` TEXT DEFAULT '1', `pay_type` INTEGER NOT NULL, `is_intact` INTEGER NOT NULL, `is_youtube` INTEGER NOT NULL, `channel_name` TEXT, `channel_cover` TEXT, `video_bean_json` TEXT, `play_let` INTEGER NOT NULL, PRIMARY KEY(`serialId`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '9d3f325aa0c4046c01e25827ffaa3add')");
        }

        @Override
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `online_history`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `online_user_history`");
            List list = ((RoomDatabase) OnlineVideoDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) OnlineVideoDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) OnlineVideoDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            OnlineVideoDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) OnlineVideoDatabase_Impl.this).mCallbacks;
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
            HashMap map = new HashMap(25);
            map.put("serialId", new TableInfo.Column("serialId", "INTEGER", true, 1, null, 1));
            map.put(hb0.KEY_NAME_VK_SOURCE_ID, new TableInfo.Column(hb0.KEY_NAME_VK_SOURCE_ID, "TEXT", false, 0, null, 1));
            map.put("video_id", new TableInfo.Column("video_id", "INTEGER", true, 0, null, 1));
            map.put("video_name", new TableInfo.Column("video_name", "TEXT", false, 0, null, 1));
            map.put("series_id", new TableInfo.Column("series_id", "INTEGER", true, 0, null, 1));
            map.put("video_description", new TableInfo.Column("video_description", "TEXT", false, 0, null, 1));
            map.put("last_play_postion", new TableInfo.Column("last_play_postion", "INTEGER", true, 0, null, 1));
            map.put("duration", new TableInfo.Column("duration", "INTEGER", true, 0, null, 1));
            map.put("video_cover", new TableInfo.Column("video_cover", "TEXT", false, 0, null, 1));
            map.put("last_watch_time", new TableInfo.Column("last_watch_time", "INTEGER", true, 0, null, 1));
            map.put("last_frame_img", new TableInfo.Column("last_frame_img", "BLOB", false, 0, null, 1));
            map.put("watch_progress", new TableInfo.Column("watch_progress", "REAL", true, 0, null, 1));
            map.put("update_progress", new TableInfo.Column("update_progress", "TEXT", false, 0, null, 1));
            map.put("record_id", new TableInfo.Column("record_id", "INTEGER", true, 0, null, 1));
            map.put(TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID, new TableInfo.Column(TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID, "INTEGER", true, 0, null, 1));
            map.put("video_serial_name", new TableInfo.Column("video_serial_name", "TEXT", false, 0, null, 1));
            map.put("video_link", new TableInfo.Column("video_link", "TEXT", false, 0, "''", 1));
            map.put("source_type", new TableInfo.Column("source_type", "TEXT", false, 0, "'1'", 1));
            map.put("pay_type", new TableInfo.Column("pay_type", "INTEGER", true, 0, null, 1));
            map.put("is_intact", new TableInfo.Column("is_intact", "INTEGER", true, 0, null, 1));
            map.put("is_youtube", new TableInfo.Column("is_youtube", "INTEGER", true, 0, null, 1));
            map.put("channel_name", new TableInfo.Column("channel_name", "TEXT", false, 0, null, 1));
            map.put("channel_cover", new TableInfo.Column("channel_cover", "TEXT", false, 0, null, 1));
            map.put("video_bean_json", new TableInfo.Column("video_bean_json", "TEXT", false, 0, null, 1));
            map.put("play_let", new TableInfo.Column("play_let", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo = new TableInfo("online_history", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "online_history");
            if (!tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(false, "online_history(com.transsion.dbdata.beans.onlinevideo.HistoryBean).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
            }
            HashMap map2 = new HashMap(26);
            map2.put("is_uploaded", new TableInfo.Column("is_uploaded", "INTEGER", true, 0, null, 1));
            map2.put("serialId", new TableInfo.Column("serialId", "INTEGER", true, 1, null, 1));
            map2.put(hb0.KEY_NAME_VK_SOURCE_ID, new TableInfo.Column(hb0.KEY_NAME_VK_SOURCE_ID, "TEXT", false, 0, null, 1));
            map2.put("video_id", new TableInfo.Column("video_id", "INTEGER", true, 0, null, 1));
            map2.put("video_name", new TableInfo.Column("video_name", "TEXT", false, 0, null, 1));
            map2.put("series_id", new TableInfo.Column("series_id", "INTEGER", true, 0, null, 1));
            map2.put("video_description", new TableInfo.Column("video_description", "TEXT", false, 0, null, 1));
            map2.put("last_play_postion", new TableInfo.Column("last_play_postion", "INTEGER", true, 0, null, 1));
            map2.put("duration", new TableInfo.Column("duration", "INTEGER", true, 0, null, 1));
            map2.put("video_cover", new TableInfo.Column("video_cover", "TEXT", false, 0, null, 1));
            map2.put("last_watch_time", new TableInfo.Column("last_watch_time", "INTEGER", true, 0, null, 1));
            map2.put("last_frame_img", new TableInfo.Column("last_frame_img", "BLOB", false, 0, null, 1));
            map2.put("watch_progress", new TableInfo.Column("watch_progress", "REAL", true, 0, null, 1));
            map2.put("update_progress", new TableInfo.Column("update_progress", "TEXT", false, 0, null, 1));
            map2.put("record_id", new TableInfo.Column("record_id", "INTEGER", true, 0, null, 1));
            map2.put(TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID, new TableInfo.Column(TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID, "INTEGER", true, 0, null, 1));
            map2.put("video_serial_name", new TableInfo.Column("video_serial_name", "TEXT", false, 0, null, 1));
            map2.put("video_link", new TableInfo.Column("video_link", "TEXT", false, 0, "''", 1));
            map2.put("source_type", new TableInfo.Column("source_type", "TEXT", false, 0, "'1'", 1));
            map2.put("pay_type", new TableInfo.Column("pay_type", "INTEGER", true, 0, null, 1));
            map2.put("is_intact", new TableInfo.Column("is_intact", "INTEGER", true, 0, null, 1));
            map2.put("is_youtube", new TableInfo.Column("is_youtube", "INTEGER", true, 0, null, 1));
            map2.put("channel_name", new TableInfo.Column("channel_name", "TEXT", false, 0, null, 1));
            map2.put("channel_cover", new TableInfo.Column("channel_cover", "TEXT", false, 0, null, 1));
            map2.put("video_bean_json", new TableInfo.Column("video_bean_json", "TEXT", false, 0, null, 1));
            map2.put("play_let", new TableInfo.Column("play_let", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo3 = new TableInfo("online_user_history", map2, new HashSet(0), new HashSet(0));
            TableInfo tableInfo4 = TableInfo.read(supportSQLiteDatabase, "online_user_history");
            if (tableInfo3.equals(tableInfo4)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "online_user_history(com.transsion.dbdata.beans.onlinevideo.HistoryUserBean).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
        }
    }

    @Override
    public zf7 b() {
        zf7 zf7Var;
        if (this.h != null) {
            return this.h;
        }
        synchronized (this) {
            try {
                if (this.h == null) {
                    this.h = new ag7(this);
                }
                zf7Var = this.h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zf7Var;
    }

    @Override
    public sg7 c() {
        sg7 sg7Var;
        if (this.i != null) {
            return this.i;
        }
        synchronized (this) {
            try {
                if (this.i == null) {
                    this.i = new tg7(this);
                }
                sg7Var = this.i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sg7Var;
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `online_history`");
            writableDatabase.execSQL("DELETE FROM `online_user_history`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "online_history", "online_user_history");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(7), "9d3f325aa0c4046c01e25827ffaa3add", "ad412fc45010dd2d0065a75e84df5389")).build());
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
        map.put(zf7.class, ag7.b());
        map.put(sg7.class, tg7.b());
        return map;
    }
}
