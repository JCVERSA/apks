package com.transsion.dbdata.database;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.tuc;
import defpackage.uuc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class YoutubeRoomDatabase_Impl extends YoutubeRoomDatabase {
    public volatile tuc b;

    public class a extends RoomOpenHelper.Delegate {
        public a(int i) {
            super(i);
        }

        @Override
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `youtube_video` (`id` TEXT NOT NULL, `stream_type` TEXT, `name` TEXT, `textual_upload_date` TEXT, `thumbnail_url` TEXT, `duration` INTEGER NOT NULL, `age_limit` INTEGER NOT NULL, `description` TEXT, `view_count` INTEGER NOT NULL, `like_count` INTEGER NOT NULL, `dislike_count` INTEGER NOT NULL, `uploader_name` TEXT, `uploader_url` TEXT, `uploader_avatar_url` TEXT, `uploader_verified` INTEGER NOT NULL, `uploader_subscriber_count` INTEGER NOT NULL, `sub_channel_name` TEXT, `sub_channel_url` TEXT, `sub_channel_avatar` TEXT, `video_stream` TEXT, `width` INTEGER NOT NULL, `height` INTEGER NOT NULL, `dash_mpd_url` TEXT, `hls_url` TEXT, `start_position` INTEGER NOT NULL, `host` TEXT, `category` TEXT, `licence` TEXT, `support_info` TEXT, `language` TEXT, `date_modified` INTEGER NOT NULL, `origin_url` TEXT, PRIMARY KEY(`id`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '77e703a81038b41f86e2f6fbeee21fc7')");
        }

        @Override
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `youtube_video`");
            List list = ((RoomDatabase) YoutubeRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) YoutubeRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) YoutubeRoomDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            YoutubeRoomDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) YoutubeRoomDatabase_Impl.this).mCallbacks;
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
            HashMap map = new HashMap(32);
            map.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "TEXT", true, 1, null, 1));
            map.put("stream_type", new TableInfo.Column("stream_type", "TEXT", false, 0, null, 1));
            map.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
            map.put("textual_upload_date", new TableInfo.Column("textual_upload_date", "TEXT", false, 0, null, 1));
            map.put("thumbnail_url", new TableInfo.Column("thumbnail_url", "TEXT", false, 0, null, 1));
            map.put("duration", new TableInfo.Column("duration", "INTEGER", true, 0, null, 1));
            map.put("age_limit", new TableInfo.Column("age_limit", "INTEGER", true, 0, null, 1));
            map.put("description", new TableInfo.Column("description", "TEXT", false, 0, null, 1));
            map.put("view_count", new TableInfo.Column("view_count", "INTEGER", true, 0, null, 1));
            map.put("like_count", new TableInfo.Column("like_count", "INTEGER", true, 0, null, 1));
            map.put("dislike_count", new TableInfo.Column("dislike_count", "INTEGER", true, 0, null, 1));
            map.put("uploader_name", new TableInfo.Column("uploader_name", "TEXT", false, 0, null, 1));
            map.put("uploader_url", new TableInfo.Column("uploader_url", "TEXT", false, 0, null, 1));
            map.put("uploader_avatar_url", new TableInfo.Column("uploader_avatar_url", "TEXT", false, 0, null, 1));
            map.put("uploader_verified", new TableInfo.Column("uploader_verified", "INTEGER", true, 0, null, 1));
            map.put("uploader_subscriber_count", new TableInfo.Column("uploader_subscriber_count", "INTEGER", true, 0, null, 1));
            map.put("sub_channel_name", new TableInfo.Column("sub_channel_name", "TEXT", false, 0, null, 1));
            map.put("sub_channel_url", new TableInfo.Column("sub_channel_url", "TEXT", false, 0, null, 1));
            map.put("sub_channel_avatar", new TableInfo.Column("sub_channel_avatar", "TEXT", false, 0, null, 1));
            map.put("video_stream", new TableInfo.Column("video_stream", "TEXT", false, 0, null, 1));
            map.put("width", new TableInfo.Column("width", "INTEGER", true, 0, null, 1));
            map.put("height", new TableInfo.Column("height", "INTEGER", true, 0, null, 1));
            map.put("dash_mpd_url", new TableInfo.Column("dash_mpd_url", "TEXT", false, 0, null, 1));
            map.put("hls_url", new TableInfo.Column("hls_url", "TEXT", false, 0, null, 1));
            map.put("start_position", new TableInfo.Column("start_position", "INTEGER", true, 0, null, 1));
            map.put(SerializableCookie.HOST, new TableInfo.Column(SerializableCookie.HOST, "TEXT", false, 0, null, 1));
            map.put(CloudItem.KEY_CATEGORY, new TableInfo.Column(CloudItem.KEY_CATEGORY, "TEXT", false, 0, null, 1));
            map.put("licence", new TableInfo.Column("licence", "TEXT", false, 0, null, 1));
            map.put("support_info", new TableInfo.Column("support_info", "TEXT", false, 0, null, 1));
            map.put("language", new TableInfo.Column("language", "TEXT", false, 0, null, 1));
            map.put("date_modified", new TableInfo.Column("date_modified", "INTEGER", true, 0, null, 1));
            map.put("origin_url", new TableInfo.Column("origin_url", "TEXT", false, 0, null, 1));
            TableInfo tableInfo = new TableInfo("youtube_video", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "youtube_video");
            if (tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "youtube_video(com.transsion.dbdata.beans.YoutubeData).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
        }
    }

    @Override
    public tuc b() {
        tuc tucVar;
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b == null) {
                    this.b = new uuc(this);
                }
                tucVar = this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tucVar;
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `youtube_video`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "youtube_video");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(1), "77e703a81038b41f86e2f6fbeee21fc7", "c67fed7d96d904f5723922898f11cea1")).build());
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
        map.put(tuc.class, uuc.a());
        return map;
    }
}
