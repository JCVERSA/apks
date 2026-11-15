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
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.bw6;
import defpackage.cw6;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class MusicVideoDatabase_Impl extends MusicVideoDatabase {
    public volatile bw6 e;

    public class a extends RoomOpenHelper.Delegate {
        public a(int i) {
            super(i);
        }

        @Override
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `music_video` (`id` INTEGER NOT NULL, `parentPath` TEXT, `bucketId` INTEGER NOT NULL, `title` TEXT, `displayName` TEXT, `year` INTEGER NOT NULL, `mineType` TEXT, `duration` INTEGER NOT NULL, `data` TEXT, `dateAdd` INTEGER NOT NULL, `dateModified` INTEGER NOT NULL, `albumId` INTEGER NOT NULL, `albumName` TEXT, `artistId` INTEGER NOT NULL, `artistName` TEXT, `size` INTEGER NOT NULL, `uri` TEXT, `bucketDisplayName` TEXT, PRIMARY KEY(`id`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '31d77630faeff610b8b8914997dad704')");
        }

        @Override
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `music_video`");
            List list = ((RoomDatabase) MusicVideoDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) MusicVideoDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) MusicVideoDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            MusicVideoDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) MusicVideoDatabase_Impl.this).mCallbacks;
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
            HashMap map = new HashMap(18);
            map.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map.put(PlayAudioData.TAG_PARENT_PATH, new TableInfo.Column(PlayAudioData.TAG_PARENT_PATH, "TEXT", false, 0, null, 1));
            map.put("bucketId", new TableInfo.Column("bucketId", "INTEGER", true, 0, null, 1));
            map.put("title", new TableInfo.Column("title", "TEXT", false, 0, null, 1));
            map.put("displayName", new TableInfo.Column("displayName", "TEXT", false, 0, null, 1));
            map.put("year", new TableInfo.Column("year", "INTEGER", true, 0, null, 1));
            map.put("mineType", new TableInfo.Column("mineType", "TEXT", false, 0, null, 1));
            map.put("duration", new TableInfo.Column("duration", "INTEGER", true, 0, null, 1));
            map.put("data", new TableInfo.Column("data", "TEXT", false, 0, null, 1));
            map.put("dateAdd", new TableInfo.Column("dateAdd", "INTEGER", true, 0, null, 1));
            map.put("dateModified", new TableInfo.Column("dateModified", "INTEGER", true, 0, null, 1));
            map.put("albumId", new TableInfo.Column("albumId", "INTEGER", true, 0, null, 1));
            map.put("albumName", new TableInfo.Column("albumName", "TEXT", false, 0, null, 1));
            map.put("artistId", new TableInfo.Column("artistId", "INTEGER", true, 0, null, 1));
            map.put("artistName", new TableInfo.Column("artistName", "TEXT", false, 0, null, 1));
            map.put(PlayAudioData.TAG_SIZE, new TableInfo.Column(PlayAudioData.TAG_SIZE, "INTEGER", true, 0, null, 1));
            map.put("uri", new TableInfo.Column("uri", "TEXT", false, 0, null, 1));
            map.put("bucketDisplayName", new TableInfo.Column("bucketDisplayName", "TEXT", false, 0, null, 1));
            TableInfo tableInfo = new TableInfo("music_video", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "music_video");
            if (tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "music_video(com.transsion.dbdata.beans.musicvideo.MusicVideoDataBean).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
        }
    }

    @Override
    public bw6 b() {
        bw6 bw6Var;
        if (this.e != null) {
            return this.e;
        }
        synchronized (this) {
            try {
                if (this.e == null) {
                    this.e = new cw6(this);
                }
                bw6Var = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bw6Var;
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `music_video`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "music_video");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(1), "31d77630faeff610b8b8914997dad704", "049c08e4ab5a2286856500923fac0e9d")).build());
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
        map.put(bw6.class, cw6.a());
        return map;
    }
}
