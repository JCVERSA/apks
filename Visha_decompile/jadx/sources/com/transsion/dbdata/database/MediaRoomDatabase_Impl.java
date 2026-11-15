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
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.push.PushConstants;
import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.b68;
import defpackage.c68;
import defpackage.f68;
import defpackage.g68;
import defpackage.ht;
import defpackage.jt;
import defpackage.njb;
import defpackage.oe6;
import defpackage.ojb;
import defpackage.pe6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class MediaRoomDatabase_Impl extends MediaRoomDatabase {
    public volatile b68 f;
    public volatile f68 g;
    public volatile njb h;
    public volatile oe6 i;
    public volatile ht j;

    public class a extends RoomOpenHelper.Delegate {
        public a(int i) {
            super(i);
        }

        @Override
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `playlist_item` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `category` INTEGER NOT NULL, `create_type` INTEGER NOT NULL, `create_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `media_playlist_item` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `playlist_id` INTEGER NOT NULL, `media_id` INTEGER NOT NULL, `record_time` INTEGER NOT NULL, `_data` TEXT NOT NULL, FOREIGN KEY(`playlist_id`) REFERENCES `playlist_item`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            supportSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS `idx_media_playlist_link` ON `media_playlist_item` (`playlist_id` ASC, `media_id` ASC)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `user_behavior` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `media_id` INTEGER, `media_type` INTEGER, `is_video_to_audio` INTEGER NOT NULL, `video_to_audio_convert_time` INTEGER NOT NULL, `_data` TEXT NOT NULL, `custom_cover` TEXT, `is_collected` INTEGER NOT NULL, `is_hide` INTEGER NOT NULL, `is_filter` INTEGER NOT NULL)");
            supportSQLiteDatabase.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS `idx_user_behavior_media_id` ON `user_behavior` (`media_id`)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `media_data_missing` (`_data` TEXT NOT NULL, `media_id` INTEGER NOT NULL, `media_type` INTEGER NOT NULL, `duration` INTEGER, `artist` TEXT, `album` TEXT, `album_year` TEXT, `width` INTEGER, `height` INTEGER, `media_size` INTEGER, `media_alias` TEXT, `custom_cover_path` TEXT, PRIMARY KEY(`_data`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `audio_play_history` (`_data` TEXT NOT NULL, `media_id` INTEGER, `play_count` INTEGER NOT NULL, `create_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, PRIMARY KEY(`_data`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '6e9f8f3757bfcb2a4e42ecaa14b242a6')");
        }

        @Override
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `playlist_item`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `media_playlist_item`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `user_behavior`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `media_data_missing`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `audio_play_history`");
            List list = ((RoomDatabase) MediaRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) MediaRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) MediaRoomDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            supportSQLiteDatabase.execSQL("PRAGMA foreign_keys = ON");
            MediaRoomDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) MediaRoomDatabase_Impl.this).mCallbacks;
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
            HashMap map = new HashMap(6);
            map.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
            map.put(CloudItem.KEY_CATEGORY, new TableInfo.Column(CloudItem.KEY_CATEGORY, "INTEGER", true, 0, null, 1));
            map.put("create_type", new TableInfo.Column("create_type", "INTEGER", true, 0, null, 1));
            map.put("create_time", new TableInfo.Column("create_time", "INTEGER", true, 0, null, 1));
            map.put(PushConstants.PROVIDER_FIELD_UPDATE_TIME, new TableInfo.Column(PushConstants.PROVIDER_FIELD_UPDATE_TIME, "INTEGER", true, 0, null, 1));
            TableInfo tableInfo = new TableInfo("playlist_item", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "playlist_item");
            if (!tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(false, "playlist_item(com.transsion.dbdata.database.PlayListItem).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
            }
            HashMap map2 = new HashMap(5);
            map2.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map2.put("playlist_id", new TableInfo.Column("playlist_id", "INTEGER", true, 0, null, 1));
            map2.put("media_id", new TableInfo.Column("media_id", "INTEGER", true, 0, null, 1));
            map2.put("record_time", new TableInfo.Column("record_time", "INTEGER", true, 0, null, 1));
            map2.put("_data", new TableInfo.Column("_data", "TEXT", true, 0, null, 1));
            HashSet hashSet = new HashSet(1);
            hashSet.add(new TableInfo.ForeignKey("playlist_item", "CASCADE", "CASCADE", Arrays.asList("playlist_id"), Arrays.asList(TtmlNode.ATTR_ID)));
            HashSet hashSet2 = new HashSet(1);
            hashSet2.add(new TableInfo.Index("idx_media_playlist_link", false, Arrays.asList("playlist_id", "media_id"), Arrays.asList("ASC", "ASC")));
            TableInfo tableInfo3 = new TableInfo("media_playlist_item", map2, hashSet, hashSet2);
            TableInfo tableInfo4 = TableInfo.read(supportSQLiteDatabase, "media_playlist_item");
            if (!tableInfo3.equals(tableInfo4)) {
                return new RoomOpenHelper.ValidationResult(false, "media_playlist_item(com.transsion.dbdata.database.PlayListMediaItem).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
            }
            HashMap map3 = new HashMap(10);
            map3.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map3.put("media_id", new TableInfo.Column("media_id", "INTEGER", false, 0, null, 1));
            map3.put(SheetDialogParamsConstant.MEDIA_TYPE, new TableInfo.Column(SheetDialogParamsConstant.MEDIA_TYPE, "INTEGER", false, 0, null, 1));
            map3.put("is_video_to_audio", new TableInfo.Column("is_video_to_audio", "INTEGER", true, 0, null, 1));
            map3.put("video_to_audio_convert_time", new TableInfo.Column("video_to_audio_convert_time", "INTEGER", true, 0, null, 1));
            map3.put("_data", new TableInfo.Column("_data", "TEXT", true, 0, null, 1));
            map3.put("custom_cover", new TableInfo.Column("custom_cover", "TEXT", false, 0, null, 1));
            map3.put("is_collected", new TableInfo.Column("is_collected", "INTEGER", true, 0, null, 1));
            map3.put("is_hide", new TableInfo.Column("is_hide", "INTEGER", true, 0, null, 1));
            map3.put("is_filter", new TableInfo.Column("is_filter", "INTEGER", true, 0, null, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(1);
            hashSet4.add(new TableInfo.Index("idx_user_behavior_media_id", true, Arrays.asList("media_id"), Arrays.asList("ASC")));
            TableInfo tableInfo5 = new TableInfo("user_behavior", map3, hashSet3, hashSet4);
            TableInfo tableInfo6 = TableInfo.read(supportSQLiteDatabase, "user_behavior");
            if (!tableInfo5.equals(tableInfo6)) {
                return new RoomOpenHelper.ValidationResult(false, "user_behavior(com.transsion.dbdata.database.UserBehaviorItem).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
            }
            HashMap map4 = new HashMap(12);
            map4.put("_data", new TableInfo.Column("_data", "TEXT", true, 1, null, 1));
            map4.put("media_id", new TableInfo.Column("media_id", "INTEGER", true, 0, null, 1));
            map4.put(SheetDialogParamsConstant.MEDIA_TYPE, new TableInfo.Column(SheetDialogParamsConstant.MEDIA_TYPE, "INTEGER", true, 0, null, 1));
            map4.put("duration", new TableInfo.Column("duration", "INTEGER", false, 0, null, 1));
            map4.put("artist", new TableInfo.Column("artist", "TEXT", false, 0, null, 1));
            map4.put("album", new TableInfo.Column("album", "TEXT", false, 0, null, 1));
            map4.put("album_year", new TableInfo.Column("album_year", "TEXT", false, 0, null, 1));
            map4.put("width", new TableInfo.Column("width", "INTEGER", false, 0, null, 1));
            map4.put("height", new TableInfo.Column("height", "INTEGER", false, 0, null, 1));
            map4.put("media_size", new TableInfo.Column("media_size", "INTEGER", false, 0, null, 1));
            map4.put("media_alias", new TableInfo.Column("media_alias", "TEXT", false, 0, null, 1));
            map4.put("custom_cover_path", new TableInfo.Column("custom_cover_path", "TEXT", false, 0, null, 1));
            TableInfo tableInfo7 = new TableInfo("media_data_missing", map4, new HashSet(0), new HashSet(0));
            TableInfo tableInfo8 = TableInfo.read(supportSQLiteDatabase, "media_data_missing");
            if (!tableInfo7.equals(tableInfo8)) {
                return new RoomOpenHelper.ValidationResult(false, "media_data_missing(com.transsion.dbdata.database.MediaDataMissingItem).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfo8);
            }
            HashMap map5 = new HashMap(5);
            map5.put("_data", new TableInfo.Column("_data", "TEXT", true, 1, null, 1));
            map5.put("media_id", new TableInfo.Column("media_id", "INTEGER", false, 0, null, 1));
            map5.put("play_count", new TableInfo.Column("play_count", "INTEGER", true, 0, null, 1));
            map5.put("create_time", new TableInfo.Column("create_time", "INTEGER", true, 0, null, 1));
            map5.put(PushConstants.PROVIDER_FIELD_UPDATE_TIME, new TableInfo.Column(PushConstants.PROVIDER_FIELD_UPDATE_TIME, "INTEGER", true, 0, null, 1));
            TableInfo tableInfo9 = new TableInfo("audio_play_history", map5, new HashSet(0), new HashSet(0));
            TableInfo tableInfo10 = TableInfo.read(supportSQLiteDatabase, "audio_play_history");
            if (tableInfo9.equals(tableInfo10)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "audio_play_history(com.transsion.dbdata.database.AudioPlayHistory).\n Expected:\n" + tableInfo9 + "\n Found:\n" + tableInfo10);
        }
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("PRAGMA defer_foreign_keys = TRUE");
            writableDatabase.execSQL("DELETE FROM `playlist_item`");
            writableDatabase.execSQL("DELETE FROM `media_playlist_item`");
            writableDatabase.execSQL("DELETE FROM `user_behavior`");
            writableDatabase.execSQL("DELETE FROM `media_data_missing`");
            writableDatabase.execSQL("DELETE FROM `audio_play_history`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "playlist_item", "media_playlist_item", "user_behavior", "media_data_missing", "audio_play_history");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(2), "6e9f8f3757bfcb2a4e42ecaa14b242a6", "4f74f17d340d5c4295a595f859b65ea5")).build());
    }

    @Override
    public ht f() {
        ht htVar;
        if (this.j != null) {
            return this.j;
        }
        synchronized (this) {
            try {
                if (this.j == null) {
                    this.j = new jt(this);
                }
                htVar = this.j;
            } catch (Throwable th) {
                throw th;
            }
        }
        return htVar;
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
        map.put(b68.class, c68.b());
        map.put(f68.class, g68.e());
        map.put(njb.class, ojb.a());
        map.put(oe6.class, pe6.b());
        map.put(ht.class, jt.b());
        return map;
    }

    @Override
    public oe6 h() {
        oe6 oe6Var;
        if (this.i != null) {
            return this.i;
        }
        synchronized (this) {
            try {
                if (this.i == null) {
                    this.i = new pe6(this);
                }
                oe6Var = this.i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return oe6Var;
    }

    @Override
    public b68 j() {
        b68 b68Var;
        if (this.f != null) {
            return this.f;
        }
        synchronized (this) {
            try {
                if (this.f == null) {
                    this.f = new c68(this);
                }
                b68Var = this.f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return b68Var;
    }

    @Override
    public f68 k() {
        f68 f68Var;
        if (this.g != null) {
            return this.g;
        }
        synchronized (this) {
            try {
                if (this.g == null) {
                    this.g = new g68(this);
                }
                f68Var = this.g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return f68Var;
    }

    @Override
    public njb l() {
        njb njbVar;
        if (this.h != null) {
            return this.h;
        }
        synchronized (this) {
            try {
                if (this.h == null) {
                    this.h = new ojb(this);
                }
                njbVar = this.h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return njbVar;
    }
}
