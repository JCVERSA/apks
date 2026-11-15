package org.proninyaroslav.libretorrent.core.storage;

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
import com.transsion.sniffer_load.sniffservice.SniffDownloadHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.proninyaroslav.libretorrent.core.storage.dao.FastResumeDao;
import org.proninyaroslav.libretorrent.core.storage.dao.FastResumeDao_Impl;
import org.proninyaroslav.libretorrent.core.storage.dao.FeedDao;
import org.proninyaroslav.libretorrent.core.storage.dao.FeedDao_Impl;
import org.proninyaroslav.libretorrent.core.storage.dao.TagInfoDao;
import org.proninyaroslav.libretorrent.core.storage.dao.TagInfoDao_Impl;
import org.proninyaroslav.libretorrent.core.storage.dao.TorrentDao;
import org.proninyaroslav.libretorrent.core.storage.dao.TorrentDao_Impl;

public final class AppDatabase_Impl extends AppDatabase {
    public volatile TorrentDao b;
    public volatile FastResumeDao c;

    @Override
    public FastResumeDao b() {
        FastResumeDao fastResumeDao;
        if (this.c != null) {
            return this.c;
        }
        synchronized (this) {
            try {
                if (this.c == null) {
                    this.c = new FastResumeDao_Impl(this);
                }
                fastResumeDao = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fastResumeDao;
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("PRAGMA defer_foreign_keys = TRUE");
            writableDatabase.execSQL("DELETE FROM `Torrent`");
            writableDatabase.execSQL("DELETE FROM `FastResume`");
            writableDatabase.execSQL("DELETE FROM `FeedChannel`");
            writableDatabase.execSQL("DELETE FROM `FeedItem`");
            writableDatabase.execSQL("DELETE FROM `TagInfo`");
            writableDatabase.execSQL("DELETE FROM `TorrentTagInfo`");
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
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "Torrent", "FastResume", "FeedChannel", "FeedItem", "TagInfo", "TorrentTagInfo");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new RoomOpenHelper.Delegate(9) {
            @Override
            public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Torrent` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `downloadPath` TEXT NOT NULL, `dateAdded` INTEGER NOT NULL, `error` TEXT, `manuallyPaused` INTEGER NOT NULL, `sequentialDownload` INTEGER NOT NULL, `magnet` TEXT, `downloadingMetadata` INTEGER NOT NULL, `visibility` INTEGER NOT NULL, `firstLastPiecePriority` INTEGER NOT NULL, PRIMARY KEY(`id`))");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `FastResume` (`torrentId` TEXT NOT NULL, `data` BLOB NOT NULL, PRIMARY KEY(`torrentId`), FOREIGN KEY(`torrentId`) REFERENCES `Torrent`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
                supportSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS `index_FastResume_torrentId` ON `FastResume` (`torrentId`)");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `FeedChannel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `name` TEXT, `lastUpdate` INTEGER NOT NULL, `autoDownload` INTEGER NOT NULL, `filter` TEXT, `isRegexFilter` INTEGER NOT NULL, `fetchError` TEXT)");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `FeedItem` (`id` TEXT NOT NULL, `title` TEXT NOT NULL, `feedId` INTEGER NOT NULL, `downloadUrl` TEXT, `articleUrl` TEXT, `pubDate` INTEGER NOT NULL, `fetchDate` INTEGER NOT NULL, `read` INTEGER NOT NULL, PRIMARY KEY(`id`), FOREIGN KEY(`feedId`) REFERENCES `FeedChannel`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
                supportSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS `index_FeedItem_feedId` ON `FeedItem` (`feedId`)");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TagInfo` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `color` INTEGER NOT NULL)");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TorrentTagInfo` (`tagId` INTEGER NOT NULL, `torrentId` TEXT NOT NULL, PRIMARY KEY(`tagId`, `torrentId`), FOREIGN KEY(`tagId`) REFERENCES `TagInfo`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`torrentId`) REFERENCES `Torrent`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
                supportSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS `index_TorrentTagInfo_tagId` ON `TorrentTagInfo` (`tagId`)");
                supportSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS `index_TorrentTagInfo_torrentId` ON `TorrentTagInfo` (`torrentId`)");
                supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
                supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '5e7ddc46b48d983c51da89793079c7fd')");
            }

            @Override
            public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `Torrent`");
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `FastResume`");
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `FeedChannel`");
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `FeedItem`");
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `TagInfo`");
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `TorrentTagInfo`");
                List list = ((RoomDatabase) AppDatabase_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                    }
                }
            }

            @Override
            public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
                List list = ((RoomDatabase) AppDatabase_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                    }
                }
            }

            @Override
            public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
                ((RoomDatabase) AppDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
                supportSQLiteDatabase.execSQL("PRAGMA foreign_keys = ON");
                AppDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
                List list = ((RoomDatabase) AppDatabase_Impl.this).mCallbacks;
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
                HashMap map = new HashMap(11);
                map.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "TEXT", true, 1, null, 1));
                map.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
                map.put("downloadPath", new TableInfo.Column("downloadPath", "TEXT", true, 0, null, 1));
                map.put("dateAdded", new TableInfo.Column("dateAdded", "INTEGER", true, 0, null, 1));
                map.put("error", new TableInfo.Column("error", "TEXT", false, 0, null, 1));
                map.put("manuallyPaused", new TableInfo.Column("manuallyPaused", "INTEGER", true, 0, null, 1));
                map.put("sequentialDownload", new TableInfo.Column("sequentialDownload", "INTEGER", true, 0, null, 1));
                map.put(SniffDownloadHelper.MAGNET_PREFIX, new TableInfo.Column(SniffDownloadHelper.MAGNET_PREFIX, "TEXT", false, 0, null, 1));
                map.put("downloadingMetadata", new TableInfo.Column("downloadingMetadata", "INTEGER", true, 0, null, 1));
                map.put("visibility", new TableInfo.Column("visibility", "INTEGER", true, 0, null, 1));
                map.put("firstLastPiecePriority", new TableInfo.Column("firstLastPiecePriority", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo("Torrent", map, new HashSet(0), new HashSet(0));
                TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "Torrent");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenHelper.ValidationResult(false, "Torrent(org.proninyaroslav.libretorrent.core.model.data.entity.Torrent).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                HashMap map2 = new HashMap(2);
                map2.put("torrentId", new TableInfo.Column("torrentId", "TEXT", true, 1, null, 1));
                map2.put("data", new TableInfo.Column("data", "BLOB", true, 0, null, 1));
                HashSet hashSet = new HashSet(1);
                hashSet.add(new TableInfo.ForeignKey("Torrent", "CASCADE", "NO ACTION", Arrays.asList("torrentId"), Arrays.asList(TtmlNode.ATTR_ID)));
                HashSet hashSet2 = new HashSet(1);
                hashSet2.add(new TableInfo.Index("index_FastResume_torrentId", false, Arrays.asList("torrentId"), Arrays.asList("ASC")));
                TableInfo tableInfo3 = new TableInfo("FastResume", map2, hashSet, hashSet2);
                TableInfo tableInfo4 = TableInfo.read(supportSQLiteDatabase, "FastResume");
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenHelper.ValidationResult(false, "FastResume(org.proninyaroslav.libretorrent.core.model.data.entity.FastResume).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                HashMap map3 = new HashMap(8);
                map3.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
                map3.put("url", new TableInfo.Column("url", "TEXT", true, 0, null, 1));
                map3.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
                map3.put("lastUpdate", new TableInfo.Column("lastUpdate", "INTEGER", true, 0, null, 1));
                map3.put("autoDownload", new TableInfo.Column("autoDownload", "INTEGER", true, 0, null, 1));
                map3.put("filter", new TableInfo.Column("filter", "TEXT", false, 0, null, 1));
                map3.put("isRegexFilter", new TableInfo.Column("isRegexFilter", "INTEGER", true, 0, null, 1));
                map3.put("fetchError", new TableInfo.Column("fetchError", "TEXT", false, 0, null, 1));
                TableInfo tableInfo5 = new TableInfo("FeedChannel", map3, new HashSet(0), new HashSet(0));
                TableInfo tableInfo6 = TableInfo.read(supportSQLiteDatabase, "FeedChannel");
                if (!tableInfo5.equals(tableInfo6)) {
                    return new RoomOpenHelper.ValidationResult(false, "FeedChannel(org.proninyaroslav.libretorrent.core.model.data.entity.FeedChannel).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
                }
                HashMap map4 = new HashMap(8);
                map4.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "TEXT", true, 1, null, 1));
                map4.put("title", new TableInfo.Column("title", "TEXT", true, 0, null, 1));
                map4.put("feedId", new TableInfo.Column("feedId", "INTEGER", true, 0, null, 1));
                map4.put("downloadUrl", new TableInfo.Column("downloadUrl", "TEXT", false, 0, null, 1));
                map4.put("articleUrl", new TableInfo.Column("articleUrl", "TEXT", false, 0, null, 1));
                map4.put("pubDate", new TableInfo.Column("pubDate", "INTEGER", true, 0, null, 1));
                map4.put("fetchDate", new TableInfo.Column("fetchDate", "INTEGER", true, 0, null, 1));
                map4.put("read", new TableInfo.Column("read", "INTEGER", true, 0, null, 1));
                HashSet hashSet3 = new HashSet(1);
                hashSet3.add(new TableInfo.ForeignKey("FeedChannel", "CASCADE", "NO ACTION", Arrays.asList("feedId"), Arrays.asList(TtmlNode.ATTR_ID)));
                HashSet hashSet4 = new HashSet(1);
                hashSet4.add(new TableInfo.Index("index_FeedItem_feedId", false, Arrays.asList("feedId"), Arrays.asList("ASC")));
                TableInfo tableInfo7 = new TableInfo("FeedItem", map4, hashSet3, hashSet4);
                TableInfo tableInfo8 = TableInfo.read(supportSQLiteDatabase, "FeedItem");
                if (!tableInfo7.equals(tableInfo8)) {
                    return new RoomOpenHelper.ValidationResult(false, "FeedItem(org.proninyaroslav.libretorrent.core.model.data.entity.FeedItem).\n Expected:\n" + tableInfo7 + "\n Found:\n" + tableInfo8);
                }
                HashMap map5 = new HashMap(3);
                map5.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
                map5.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
                map5.put("color", new TableInfo.Column("color", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo9 = new TableInfo("TagInfo", map5, new HashSet(0), new HashSet(0));
                TableInfo tableInfo10 = TableInfo.read(supportSQLiteDatabase, "TagInfo");
                if (!tableInfo9.equals(tableInfo10)) {
                    return new RoomOpenHelper.ValidationResult(false, "TagInfo(org.proninyaroslav.libretorrent.core.model.data.entity.TagInfo).\n Expected:\n" + tableInfo9 + "\n Found:\n" + tableInfo10);
                }
                HashMap map6 = new HashMap(2);
                map6.put("tagId", new TableInfo.Column("tagId", "INTEGER", true, 1, null, 1));
                map6.put("torrentId", new TableInfo.Column("torrentId", "TEXT", true, 2, null, 1));
                HashSet hashSet5 = new HashSet(2);
                hashSet5.add(new TableInfo.ForeignKey("TagInfo", "CASCADE", "NO ACTION", Arrays.asList("tagId"), Arrays.asList(TtmlNode.ATTR_ID)));
                hashSet5.add(new TableInfo.ForeignKey("Torrent", "CASCADE", "NO ACTION", Arrays.asList("torrentId"), Arrays.asList(TtmlNode.ATTR_ID)));
                HashSet hashSet6 = new HashSet(2);
                hashSet6.add(new TableInfo.Index("index_TorrentTagInfo_tagId", false, Arrays.asList("tagId"), Arrays.asList("ASC")));
                hashSet6.add(new TableInfo.Index("index_TorrentTagInfo_torrentId", false, Arrays.asList("torrentId"), Arrays.asList("ASC")));
                TableInfo tableInfo11 = new TableInfo("TorrentTagInfo", map6, hashSet5, hashSet6);
                TableInfo tableInfo12 = TableInfo.read(supportSQLiteDatabase, "TorrentTagInfo");
                if (tableInfo11.equals(tableInfo12)) {
                    return new RoomOpenHelper.ValidationResult(true, null);
                }
                return new RoomOpenHelper.ValidationResult(false, "TorrentTagInfo(org.proninyaroslav.libretorrent.core.model.data.entity.TorrentTagInfo).\n Expected:\n" + tableInfo11 + "\n Found:\n" + tableInfo12);
            }
        }, "5e7ddc46b48d983c51da89793079c7fd", "b027df3595f5fe39f10b10e8254a4308")).build());
    }

    @Override
    public TorrentDao d() {
        TorrentDao torrentDao;
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b == null) {
                    this.b = new TorrentDao_Impl(this);
                }
                torrentDao = this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return torrentDao;
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
        map.put(TorrentDao.class, TorrentDao_Impl.c());
        map.put(FastResumeDao.class, FastResumeDao_Impl.a());
        map.put(FeedDao.class, FeedDao_Impl.b());
        map.put(TagInfoDao.class, TagInfoDao_Impl.b());
        return map;
    }
}
