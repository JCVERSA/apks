package com.transsion.sniffer_load.database;

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
import defpackage.dv8;
import defpackage.ev8;
import defpackage.ig0;
import defpackage.jg0;
import defpackage.jic;
import defpackage.kic;
import defpackage.nz2;
import defpackage.oz2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class BookmarkDatabase_Impl extends BookmarkDatabase {
    public volatile ig0 d;
    public volatile dv8 e;
    public volatile jic f;
    public volatile nz2 g;

    public class a extends RoomOpenHelper.Delegate {
        public a(int i) {
            super(i);
        }

        @Override
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Bookmark` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `uri` TEXT, `imageResId` INTEGER NOT NULL, `imageUri` TEXT, `bitmap` BLOB)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `ReviewHistory` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `bitmap` BLOB, `url` TEXT, `date` INTEGER NOT NULL, `imageUri` TEXT)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `WebPreviewRecord` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `title` TEXT, `icon` BLOB, `previewBitmap` BLOB, `webUrl` TEXT)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `DownloadHistory` (`mediaId` TEXT NOT NULL, `originSite` TEXT, `videoSite` TEXT, `timeStamp` INTEGER NOT NULL, PRIMARY KEY(`mediaId`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '7e83d24e28c14bc77fb46343e45ef134')");
        }

        @Override
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `Bookmark`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `ReviewHistory`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `WebPreviewRecord`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `DownloadHistory`");
            List list = ((RoomDatabase) BookmarkDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) BookmarkDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) BookmarkDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            BookmarkDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) BookmarkDatabase_Impl.this).mCallbacks;
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
            map.put("uri", new TableInfo.Column("uri", "TEXT", false, 0, null, 1));
            map.put("imageResId", new TableInfo.Column("imageResId", "INTEGER", true, 0, null, 1));
            map.put("imageUri", new TableInfo.Column("imageUri", "TEXT", false, 0, null, 1));
            map.put("bitmap", new TableInfo.Column("bitmap", "BLOB", false, 0, null, 1));
            TableInfo tableInfo = new TableInfo("Bookmark", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "Bookmark");
            if (!tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(false, "Bookmark(com.transsion.dbdata.beans.sniff.Bookmark).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
            }
            HashMap map2 = new HashMap(6);
            map2.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map2.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
            map2.put("bitmap", new TableInfo.Column("bitmap", "BLOB", false, 0, null, 1));
            map2.put("url", new TableInfo.Column("url", "TEXT", false, 0, null, 1));
            map2.put("date", new TableInfo.Column("date", "INTEGER", true, 0, null, 1));
            map2.put("imageUri", new TableInfo.Column("imageUri", "TEXT", false, 0, null, 1));
            TableInfo tableInfo3 = new TableInfo("ReviewHistory", map2, new HashSet(0), new HashSet(0));
            TableInfo tableInfo4 = TableInfo.read(supportSQLiteDatabase, "ReviewHistory");
            if (!tableInfo3.equals(tableInfo4)) {
                return new RoomOpenHelper.ValidationResult(false, "ReviewHistory(com.transsion.sniffer_load.data.ReviewHistory).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
            }
            HashMap map3 = new HashMap(5);
            map3.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
            map3.put("title", new TableInfo.Column("title", "TEXT", false, 0, null, 1));
            map3.put("icon", new TableInfo.Column("icon", "BLOB", false, 0, null, 1));
            map3.put("previewBitmap", new TableInfo.Column("previewBitmap", "BLOB", false, 0, null, 1));
            map3.put("webUrl", new TableInfo.Column("webUrl", "TEXT", false, 0, null, 1));
            TableInfo tableInfo5 = new TableInfo("WebPreviewRecord", map3, new HashSet(0), new HashSet(0));
            TableInfo tableInfo6 = TableInfo.read(supportSQLiteDatabase, "WebPreviewRecord");
            if (!tableInfo5.equals(tableInfo6)) {
                return new RoomOpenHelper.ValidationResult(false, "WebPreviewRecord(com.transsion.sniffer_load.data.WebPreviewRecord).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
            }
            HashMap map4 = new HashMap(4);
            map4.put("mediaId", new TableInfo.Column("mediaId", "TEXT", true, 1, null, 1));
            map4.put("originSite", new TableInfo.Column("originSite", "TEXT", false, 0, null, 1));
            map4.put("videoSite", new TableInfo.Column("videoSite", "TEXT", false, 0, null, 1));
            map4.put("timeStamp", new TableInfo.Column("timeStamp", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo7 = new TableInfo("DownloadHistory", map4, new HashSet(0), new HashSet(0));
            TableInfo tableInfo8 = TableInfo.read(supportSQLiteDatabase, "DownloadHistory");
            if (tableInfo7.equals(tableInfo8)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "DownloadHistory(com.transsion.sniffer_load.data.DownloadHistory).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfo8);
        }
    }

    @Override
    public ig0 a() {
        ig0 ig0Var;
        if (this.d != null) {
            return this.d;
        }
        synchronized (this) {
            try {
                if (this.d == null) {
                    this.d = new jg0(this);
                }
                ig0Var = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ig0Var;
    }

    @Override
    public nz2 b() {
        nz2 nz2Var;
        if (this.g != null) {
            return this.g;
        }
        synchronized (this) {
            try {
                if (this.g == null) {
                    this.g = new oz2(this);
                }
                nz2Var = this.g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nz2Var;
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `Bookmark`");
            writableDatabase.execSQL("DELETE FROM `ReviewHistory`");
            writableDatabase.execSQL("DELETE FROM `WebPreviewRecord`");
            writableDatabase.execSQL("DELETE FROM `DownloadHistory`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "Bookmark", "ReviewHistory", "WebPreviewRecord", "DownloadHistory");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(3), "7e83d24e28c14bc77fb46343e45ef134", "8ca01cbfdbeaa35a72f8d21b53b17d12")).build());
    }

    @Override
    public dv8 d() {
        dv8 dv8Var;
        if (this.e != null) {
            return this.e;
        }
        synchronized (this) {
            try {
                if (this.e == null) {
                    this.e = new ev8(this);
                }
                dv8Var = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dv8Var;
    }

    @Override
    public jic e() {
        jic jicVar;
        if (this.f != null) {
            return this.f;
        }
        synchronized (this) {
            try {
                if (this.f == null) {
                    this.f = new kic(this);
                }
                jicVar = this.f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jicVar;
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
        map.put(ig0.class, jg0.b());
        map.put(dv8.class, ev8.b());
        map.put(jic.class, kic.b());
        map.put(nz2.class, oz2.a());
        return map;
    }
}
