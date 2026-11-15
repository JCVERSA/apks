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
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.livecaption.constant.ICode;
import defpackage.g5c;
import defpackage.h5c;
import defpackage.h6a;
import defpackage.i6a;
import defpackage.ivb;
import defpackage.jub;
import defpackage.jvb;
import defpackage.kub;
import defpackage.m5a;
import defpackage.n5a;
import defpackage.q10;
import defpackage.qj1;
import defpackage.r10;
import defpackage.rj1;
import defpackage.w4a;
import defpackage.x4a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class VideoRoomDatabase_Impl extends VideoRoomDatabase {
    public volatile g5c n;
    public volatile m5a o;
    public volatile jub p;
    public volatile ivb q;
    public volatile q10 r;
    public volatile h6a s;
    public volatile w4a t;
    public volatile qj1 u;

    public class a extends RoomOpenHelper.Delegate {
        public a(int i) {
            super(i);
        }

        @Override
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `VideoStates` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `_data` TEXT, `position` INTEGER NOT NULL DEFAULT 0, `duration` INTEGER NOT NULL DEFAULT 0, `isPlayCompleted` INTEGER NOT NULL DEFAULT 0, `isVirtualFolder` INTEGER NOT NULL DEFAULT 0, `virtualFolder_path` TEXT, `virtualFolder_matchName` TEXT, `bucket_id` INTEGER NOT NULL DEFAULT 0, `_id` INTEGER NOT NULL DEFAULT 0, `date_modified` INTEGER NOT NULL DEFAULT 0, `record_date_modified` INTEGER NOT NULL DEFAULT 0, `subtitle_index` INTEGER NOT NULL DEFAULT -1, `play_count` INTEGER NOT NULL)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `SubtitleRecord` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `_id` INTEGER NOT NULL DEFAULT 0, `sub_id` TEXT, `subtitle_path` TEXT, `sub_track` INTEGER NOT NULL DEFAULT 0, `sub_track_delay_time` REAL NOT NULL, `sub_track_time` INTEGER NOT NULL, `sub_type` INTEGER NOT NULL DEFAULT 0, `sub_format` INTEGER NOT NULL DEFAULT 1, `sub_inner_id` INTEGER NOT NULL DEFAULT -1, `sub_inner_name` TEXT, `sub_local_lang_to` TEXT DEFAULT 'none')");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `video_playlist` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `setup_time` INTEGER NOT NULL, `last_play_time` INTEGER NOT NULL)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `video_media_playList` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `playlist_id` INTEGER NOT NULL, `media_id` INTEGER NOT NULL, `playlistFlag` INTEGER NOT NULL, `play_count` INTEGER NOT NULL, `record_time` INTEGER NOT NULL, `_data` TEXT)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `AudioTrack` (`id` INTEGER NOT NULL, `audioId` INTEGER NOT NULL, `name` TEXT, PRIMARY KEY(`id`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `SubtitleSetting` (`video_id` INTEGER NOT NULL, `location` INTEGER NOT NULL, `translateY` INTEGER NOT NULL, `text_alignment` INTEGER NOT NULL, `text_size` INTEGER NOT NULL, `text_style` INTEGER NOT NULL, `text_color` INTEGER NOT NULL, `text_background_color` INTEGER NOT NULL, `text_background_opacity` INTEGER NOT NULL, `text_drag` INTEGER NOT NULL, `time` INTEGER NOT NULL, PRIMARY KEY(`video_id`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `SubtitleHistory` (`sub_id` TEXT NOT NULL, `sub_name` TEXT, `sub_path` TEXT, `sub_language` TEXT, `sub_language_id` TEXT, `sub_size` INTEGER NOT NULL, `state` INTEGER NOT NULL, PRIMARY KEY(`sub_id`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `converting_video` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mediaId` INTEGER, `data` TEXT, `add_time` INTEGER NOT NULL, `converted_status` INTEGER NOT NULL DEFAULT 0)");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'a6435b753f40a9e09e73a46aa13df199')");
        }

        @Override
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `VideoStates`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `SubtitleRecord`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `video_playlist`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `video_media_playList`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `AudioTrack`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `SubtitleSetting`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `SubtitleHistory`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `converting_video`");
            List list = ((RoomDatabase) VideoRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) VideoRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) VideoRoomDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            VideoRoomDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) VideoRoomDatabase_Impl.this).mCallbacks;
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
            HashMap map = new HashMap(14);
            map.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map.put("_data", new TableInfo.Column("_data", "TEXT", false, 0, null, 1));
            map.put("position", new TableInfo.Column("position", "INTEGER", true, 0, "0", 1));
            map.put("duration", new TableInfo.Column("duration", "INTEGER", true, 0, "0", 1));
            map.put("isPlayCompleted", new TableInfo.Column("isPlayCompleted", "INTEGER", true, 0, "0", 1));
            map.put(PlayVideoData.TAG_VIRTUAL_FOLDER, new TableInfo.Column(PlayVideoData.TAG_VIRTUAL_FOLDER, "INTEGER", true, 0, "0", 1));
            map.put("virtualFolder_path", new TableInfo.Column("virtualFolder_path", "TEXT", false, 0, null, 1));
            map.put(PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME, new TableInfo.Column(PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME, "TEXT", false, 0, null, 1));
            map.put("bucket_id", new TableInfo.Column("bucket_id", "INTEGER", true, 0, "0", 1));
            map.put("_id", new TableInfo.Column("_id", "INTEGER", true, 0, "0", 1));
            map.put("date_modified", new TableInfo.Column("date_modified", "INTEGER", true, 0, "0", 1));
            map.put("record_date_modified", new TableInfo.Column("record_date_modified", "INTEGER", true, 0, "0", 1));
            map.put(PlayVideoData.TAG_SUBTITLE_INDEX, new TableInfo.Column(PlayVideoData.TAG_SUBTITLE_INDEX, "INTEGER", true, 0, "-1", 1));
            map.put("play_count", new TableInfo.Column("play_count", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo = new TableInfo("VideoStates", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "VideoStates");
            if (!tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(false, "VideoStates(com.transsion.dbdata.database.VideoRecord).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
            }
            HashMap map2 = new HashMap(12);
            map2.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map2.put("_id", new TableInfo.Column("_id", "INTEGER", true, 0, "0", 1));
            map2.put("sub_id", new TableInfo.Column("sub_id", "TEXT", false, 0, null, 1));
            map2.put("subtitle_path", new TableInfo.Column("subtitle_path", "TEXT", false, 0, null, 1));
            map2.put("sub_track", new TableInfo.Column("sub_track", "INTEGER", true, 0, "0", 1));
            map2.put("sub_track_delay_time", new TableInfo.Column("sub_track_delay_time", "REAL", true, 0, null, 1));
            map2.put("sub_track_time", new TableInfo.Column("sub_track_time", "INTEGER", true, 0, null, 1));
            map2.put("sub_type", new TableInfo.Column("sub_type", "INTEGER", true, 0, "0", 1));
            map2.put("sub_format", new TableInfo.Column("sub_format", "INTEGER", true, 0, "1", 1));
            map2.put("sub_inner_id", new TableInfo.Column("sub_inner_id", "INTEGER", true, 0, "-1", 1));
            map2.put("sub_inner_name", new TableInfo.Column("sub_inner_name", "TEXT", false, 0, null, 1));
            map2.put("sub_local_lang_to", new TableInfo.Column("sub_local_lang_to", "TEXT", false, 0, "'none'", 1));
            TableInfo tableInfo3 = new TableInfo("SubtitleRecord", map2, new HashSet(0), new HashSet(0));
            TableInfo tableInfo4 = TableInfo.read(supportSQLiteDatabase, "SubtitleRecord");
            if (!tableInfo3.equals(tableInfo4)) {
                return new RoomOpenHelper.ValidationResult(false, "SubtitleRecord(com.transsion.dbdata.beans.media.SubtitleRecord).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
            }
            HashMap map3 = new HashMap(4);
            map3.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map3.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
            map3.put("setup_time", new TableInfo.Column("setup_time", "INTEGER", true, 0, null, 1));
            map3.put("last_play_time", new TableInfo.Column("last_play_time", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo5 = new TableInfo("video_playlist", map3, new HashSet(0), new HashSet(0));
            TableInfo tableInfo6 = TableInfo.read(supportSQLiteDatabase, "video_playlist");
            if (!tableInfo5.equals(tableInfo6)) {
                return new RoomOpenHelper.ValidationResult(false, "video_playlist(com.transsion.dbdata.database.VideoPlayList).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
            }
            HashMap map4 = new HashMap(8);
            map4.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map4.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
            map4.put("playlist_id", new TableInfo.Column("playlist_id", "INTEGER", true, 0, null, 1));
            map4.put("media_id", new TableInfo.Column("media_id", "INTEGER", true, 0, null, 1));
            map4.put("playlistFlag", new TableInfo.Column("playlistFlag", "INTEGER", true, 0, null, 1));
            map4.put("play_count", new TableInfo.Column("play_count", "INTEGER", true, 0, null, 1));
            map4.put("record_time", new TableInfo.Column("record_time", "INTEGER", true, 0, null, 1));
            map4.put("_data", new TableInfo.Column("_data", "TEXT", false, 0, null, 1));
            TableInfo tableInfo7 = new TableInfo("video_media_playList", map4, new HashSet(0), new HashSet(0));
            TableInfo tableInfo8 = TableInfo.read(supportSQLiteDatabase, "video_media_playList");
            if (!tableInfo7.equals(tableInfo8)) {
                return new RoomOpenHelper.ValidationResult(false, "video_media_playList(com.transsion.dbdata.database.VideoPlayListMedia).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfo8);
            }
            HashMap map5 = new HashMap(3);
            map5.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map5.put("audioId", new TableInfo.Column("audioId", "INTEGER", true, 0, null, 1));
            map5.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
            TableInfo tableInfo9 = new TableInfo("AudioTrack", map5, new HashSet(0), new HashSet(0));
            TableInfo tableInfo10 = TableInfo.read(supportSQLiteDatabase, "AudioTrack");
            if (!tableInfo9.equals(tableInfo10)) {
                return new RoomOpenHelper.ValidationResult(false, "AudioTrack(com.transsion.dbdata.database.AudioTrack).\n Expected:\n" + tableInfo9 + "\n Found:\n" + tableInfo10);
            }
            HashMap map6 = new HashMap(11);
            map6.put("video_id", new TableInfo.Column("video_id", "INTEGER", true, 1, null, 1));
            map6.put("location", new TableInfo.Column("location", "INTEGER", true, 0, null, 1));
            map6.put("translateY", new TableInfo.Column("translateY", "INTEGER", true, 0, null, 1));
            map6.put("text_alignment", new TableInfo.Column("text_alignment", "INTEGER", true, 0, null, 1));
            map6.put("text_size", new TableInfo.Column("text_size", "INTEGER", true, 0, null, 1));
            map6.put("text_style", new TableInfo.Column("text_style", "INTEGER", true, 0, null, 1));
            map6.put("text_color", new TableInfo.Column("text_color", "INTEGER", true, 0, null, 1));
            map6.put("text_background_color", new TableInfo.Column("text_background_color", "INTEGER", true, 0, null, 1));
            map6.put("text_background_opacity", new TableInfo.Column("text_background_opacity", "INTEGER", true, 0, null, 1));
            map6.put("text_drag", new TableInfo.Column("text_drag", "INTEGER", true, 0, null, 1));
            map6.put("time", new TableInfo.Column("time", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo11 = new TableInfo("SubtitleSetting", map6, new HashSet(0), new HashSet(0));
            TableInfo tableInfo12 = TableInfo.read(supportSQLiteDatabase, "SubtitleSetting");
            if (!tableInfo11.equals(tableInfo12)) {
                return new RoomOpenHelper.ValidationResult(false, "SubtitleSetting(com.transsion.dbdata.beans.SubtitleSettingData).\n Expected:\n" + tableInfo11 + "\n Found:\n" + tableInfo12);
            }
            HashMap map7 = new HashMap(7);
            map7.put("sub_id", new TableInfo.Column("sub_id", "TEXT", true, 1, null, 1));
            map7.put("sub_name", new TableInfo.Column("sub_name", "TEXT", false, 0, null, 1));
            map7.put("sub_path", new TableInfo.Column("sub_path", "TEXT", false, 0, null, 1));
            map7.put("sub_language", new TableInfo.Column("sub_language", "TEXT", false, 0, null, 1));
            map7.put("sub_language_id", new TableInfo.Column("sub_language_id", "TEXT", false, 0, null, 1));
            map7.put("sub_size", new TableInfo.Column("sub_size", "INTEGER", true, 0, null, 1));
            map7.put(ICode.CALL.CALL_KEY_STATE, new TableInfo.Column(ICode.CALL.CALL_KEY_STATE, "INTEGER", true, 0, null, 1));
            TableInfo tableInfo13 = new TableInfo("SubtitleHistory", map7, new HashSet(0), new HashSet(0));
            TableInfo tableInfo14 = TableInfo.read(supportSQLiteDatabase, "SubtitleHistory");
            if (!tableInfo13.equals(tableInfo14)) {
                return new RoomOpenHelper.ValidationResult(false, "SubtitleHistory(com.transsion.dbdata.beans.SubtitleHistory).\n Expected:\n" + tableInfo13 + "\n Found:\n" + tableInfo14);
            }
            HashMap map8 = new HashMap(5);
            map8.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map8.put("mediaId", new TableInfo.Column("mediaId", "INTEGER", false, 0, null, 1));
            map8.put("data", new TableInfo.Column("data", "TEXT", false, 0, null, 1));
            map8.put("add_time", new TableInfo.Column("add_time", "INTEGER", true, 0, null, 1));
            map8.put("converted_status", new TableInfo.Column("converted_status", "INTEGER", true, 0, "0", 1));
            TableInfo tableInfo15 = new TableInfo("converting_video", map8, new HashSet(0), new HashSet(0));
            TableInfo tableInfo16 = TableInfo.read(supportSQLiteDatabase, "converting_video");
            if (tableInfo15.equals(tableInfo16)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "converting_video(com.transsion.dbdata.database.ConvertingVideo).\n Expected:\n" + tableInfo15 + "\n Found:\n" + tableInfo16);
        }
    }

    @Override
    public qj1 a() {
        qj1 qj1Var;
        if (this.u != null) {
            return this.u;
        }
        synchronized (this) {
            try {
                if (this.u == null) {
                    this.u = new rj1(this);
                }
                qj1Var = this.u;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qj1Var;
    }

    @Override
    public m5a b() {
        m5a m5aVar;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            try {
                if (this.o == null) {
                    this.o = new n5a(this);
                }
                m5aVar = this.o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return m5aVar;
    }

    @Override
    public h6a c() {
        h6a h6aVar;
        if (this.s != null) {
            return this.s;
        }
        synchronized (this) {
            try {
                if (this.s == null) {
                    this.s = new i6a(this);
                }
                h6aVar = this.s;
            } catch (Throwable th) {
                throw th;
            }
        }
        return h6aVar;
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `VideoStates`");
            writableDatabase.execSQL("DELETE FROM `SubtitleRecord`");
            writableDatabase.execSQL("DELETE FROM `video_playlist`");
            writableDatabase.execSQL("DELETE FROM `video_media_playList`");
            writableDatabase.execSQL("DELETE FROM `AudioTrack`");
            writableDatabase.execSQL("DELETE FROM `SubtitleSetting`");
            writableDatabase.execSQL("DELETE FROM `SubtitleHistory`");
            writableDatabase.execSQL("DELETE FROM `converting_video`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "VideoStates", "SubtitleRecord", "video_playlist", "video_media_playList", "AudioTrack", "SubtitleSetting", "SubtitleHistory", "converting_video");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(11), "a6435b753f40a9e09e73a46aa13df199", "b602c0879dad5de8a7c81226c77f02f4")).build());
    }

    @Override
    public jub d() {
        jub jubVar;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            try {
                if (this.p == null) {
                    this.p = new kub(this);
                }
                jubVar = this.p;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jubVar;
    }

    @Override
    public ivb e() {
        ivb ivbVar;
        if (this.q != null) {
            return this.q;
        }
        synchronized (this) {
            try {
                if (this.q == null) {
                    this.q = new jvb(this);
                }
                ivbVar = this.q;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ivbVar;
    }

    @Override
    public g5c f() {
        g5c g5cVar;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            try {
                if (this.n == null) {
                    this.n = new h5c(this);
                }
                g5cVar = this.n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return g5cVar;
    }

    @Override
    public q10 g() {
        q10 q10Var;
        if (this.r != null) {
            return this.r;
        }
        synchronized (this) {
            try {
                if (this.r == null) {
                    this.r = new r10(this);
                }
                q10Var = this.r;
            } catch (Throwable th) {
                throw th;
            }
        }
        return q10Var;
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
        map.put(g5c.class, h5c.b());
        map.put(m5a.class, n5a.a());
        map.put(jub.class, kub.b());
        map.put(ivb.class, jvb.b());
        map.put(q10.class, r10.a());
        map.put(h6a.class, i6a.a());
        map.put(w4a.class, x4a.b());
        map.put(qj1.class, rj1.b());
        return map;
    }

    @Override
    public w4a i() {
        w4a w4aVar;
        if (this.t != null) {
            return this.t;
        }
        synchronized (this) {
            try {
                if (this.t == null) {
                    this.t = new x4a(this);
                }
                w4aVar = this.t;
            } catch (Throwable th) {
                throw th;
            }
        }
        return w4aVar;
    }
}
