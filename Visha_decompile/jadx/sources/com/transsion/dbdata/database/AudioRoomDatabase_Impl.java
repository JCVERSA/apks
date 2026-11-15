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
import defpackage.av5;
import defpackage.bv5;
import defpackage.d68;
import defpackage.e68;
import defpackage.gi1;
import defpackage.hi1;
import defpackage.sl;
import defpackage.tl;
import defpackage.x38;
import defpackage.y38;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class AudioRoomDatabase_Impl extends AudioRoomDatabase {
    public volatile x38 m;
    public volatile d68 n;
    public volatile sl o;
    public volatile gi1 p;
    public volatile av5 q;

    public class a extends RoomOpenHelper.Delegate {
        public a(int i) {
            super(i);
        }

        @Override
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `playlist` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `setup_time` INTEGER NOT NULL, `last_play_time` INTEGER NOT NULL)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `media_playList` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `playlist_id` INTEGER NOT NULL, `media_id` INTEGER NOT NULL, `playlistFlag` INTEGER NOT NULL, `play_count` INTEGER NOT NULL, `record_time` INTEGER NOT NULL, `_data` TEXT)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `AudioAlbum` (`id` INTEGER, `imgPath` TEXT, PRIMARY KEY(`id`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `convert_audio` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mediaId` INTEGER, `data` TEXT, `convert_time` INTEGER NOT NULL)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `lyric_data` (`media_id` INTEGER NOT NULL, `_data` TEXT, `delay` INTEGER NOT NULL, PRIMARY KEY(`media_id`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'f1f888bac5b3544b283d523c31dd424e')");
        }

        @Override
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `playlist`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `media_playList`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `AudioAlbum`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `convert_audio`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `lyric_data`");
            List list = ((RoomDatabase) AudioRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) AudioRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) AudioRoomDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            AudioRoomDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) AudioRoomDatabase_Impl.this).mCallbacks;
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
            HashMap map = new HashMap(4);
            map.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
            map.put("setup_time", new TableInfo.Column("setup_time", "INTEGER", true, 0, null, 1));
            map.put("last_play_time", new TableInfo.Column("last_play_time", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo = new TableInfo("playlist", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "playlist");
            if (!tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(false, "playlist(com.transsion.dbdata.database.PlayList).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
            }
            HashMap map2 = new HashMap(8);
            map2.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map2.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
            map2.put("playlist_id", new TableInfo.Column("playlist_id", "INTEGER", true, 0, null, 1));
            map2.put("media_id", new TableInfo.Column("media_id", "INTEGER", true, 0, null, 1));
            map2.put("playlistFlag", new TableInfo.Column("playlistFlag", "INTEGER", true, 0, null, 1));
            map2.put("play_count", new TableInfo.Column("play_count", "INTEGER", true, 0, null, 1));
            map2.put("record_time", new TableInfo.Column("record_time", "INTEGER", true, 0, null, 1));
            map2.put("_data", new TableInfo.Column("_data", "TEXT", false, 0, null, 1));
            TableInfo tableInfo3 = new TableInfo("media_playList", map2, new HashSet(0), new HashSet(0));
            TableInfo tableInfo4 = TableInfo.read(supportSQLiteDatabase, "media_playList");
            if (!tableInfo3.equals(tableInfo4)) {
                return new RoomOpenHelper.ValidationResult(false, "media_playList(com.transsion.dbdata.database.PlayListMedia).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
            }
            HashMap map3 = new HashMap(2);
            map3.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", false, 1, null, 1));
            map3.put("imgPath", new TableInfo.Column("imgPath", "TEXT", false, 0, null, 1));
            TableInfo tableInfo5 = new TableInfo("AudioAlbum", map3, new HashSet(0), new HashSet(0));
            TableInfo tableInfo6 = TableInfo.read(supportSQLiteDatabase, "AudioAlbum");
            if (!tableInfo5.equals(tableInfo6)) {
                return new RoomOpenHelper.ValidationResult(false, "AudioAlbum(com.transsion.dbdata.database.AudioAlbum).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
            }
            HashMap map4 = new HashMap(4);
            map4.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map4.put("mediaId", new TableInfo.Column("mediaId", "INTEGER", false, 0, null, 1));
            map4.put("data", new TableInfo.Column("data", "TEXT", false, 0, null, 1));
            map4.put("convert_time", new TableInfo.Column("convert_time", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo7 = new TableInfo("convert_audio", map4, new HashSet(0), new HashSet(0));
            TableInfo tableInfo8 = TableInfo.read(supportSQLiteDatabase, "convert_audio");
            if (!tableInfo7.equals(tableInfo8)) {
                return new RoomOpenHelper.ValidationResult(false, "convert_audio(com.transsion.dbdata.database.ConvertAudio).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfo8);
            }
            HashMap map5 = new HashMap(3);
            map5.put("media_id", new TableInfo.Column("media_id", "INTEGER", true, 1, null, 1));
            map5.put("_data", new TableInfo.Column("_data", "TEXT", false, 0, null, 1));
            map5.put("delay", new TableInfo.Column("delay", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo9 = new TableInfo("lyric_data", map5, new HashSet(0), new HashSet(0));
            TableInfo tableInfo10 = TableInfo.read(supportSQLiteDatabase, "lyric_data");
            if (tableInfo9.equals(tableInfo10)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "lyric_data(com.transsion.dbdata.beans.LyricData).\n Expected:\n" + tableInfo9 + "\n Found:\n" + tableInfo10);
        }
    }

    @Override
    public sl a() {
        sl slVar;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            try {
                if (this.o == null) {
                    this.o = new tl(this);
                }
                slVar = this.o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return slVar;
    }

    @Override
    public gi1 b() {
        gi1 gi1Var;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            try {
                if (this.p == null) {
                    this.p = new hi1(this);
                }
                gi1Var = this.p;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gi1Var;
    }

    @Override
    public av5 c() {
        av5 av5Var;
        if (this.q != null) {
            return this.q;
        }
        synchronized (this) {
            try {
                if (this.q == null) {
                    this.q = new bv5(this);
                }
                av5Var = this.q;
            } catch (Throwable th) {
                throw th;
            }
        }
        return av5Var;
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `playlist`");
            writableDatabase.execSQL("DELETE FROM `media_playList`");
            writableDatabase.execSQL("DELETE FROM `AudioAlbum`");
            writableDatabase.execSQL("DELETE FROM `convert_audio`");
            writableDatabase.execSQL("DELETE FROM `lyric_data`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "playlist", "media_playList", "AudioAlbum", "convert_audio", "lyric_data");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(7), "f1f888bac5b3544b283d523c31dd424e", "8f902cbc10aea2154bbeca9c7b32fc73")).build());
    }

    @Override
    public x38 d() {
        x38 x38Var;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            try {
                if (this.m == null) {
                    this.m = new y38(this);
                }
                x38Var = this.m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return x38Var;
    }

    @Override
    public d68 e() {
        d68 d68Var;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            try {
                if (this.n == null) {
                    this.n = new e68(this);
                }
                d68Var = this.n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return d68Var;
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
        map.put(x38.class, y38.b());
        map.put(d68.class, e68.b());
        map.put(sl.class, tl.b());
        map.put(gi1.class, hi1.b());
        map.put(av5.class, bv5.a());
        return map;
    }
}
