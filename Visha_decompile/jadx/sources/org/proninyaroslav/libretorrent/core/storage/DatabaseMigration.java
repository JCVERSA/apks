package org.proninyaroslav.libretorrent.core.storage;

import android.content.Context;
import android.database.Cursor;
import android.util.Log;
import androidx.room.RoomMasterTable;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.proninyaroslav.libretorrent.core.system.SystemFacadeHelper;

class DatabaseMigration {
    public static final String a = "DatabaseMigration";
    public static final Migration b;
    public static final Migration c;
    public static final Migration d;
    public static final Migration e;
    public static final Migration f;
    public static final Migration g;
    public static final Migration h;

    public static class RoomDatabaseMigration extends Migration {
        public Context a;

        public static final class OldDataModel {
        }

        public RoomDatabaseMigration(Context context) {
            super(4, 5);
            this.a = context;
        }

        public final void a(SupportSQLiteDatabase supportSQLiteDatabase, String str, byte[] bArr) {
            supportSQLiteDatabase.execSQL("INSERT INTO `FastResume` (`torrentId`, `data`) VALUES(?, ?) ", new Object[]{str, bArr});
        }

        public void b(SupportSQLiteDatabase supportSQLiteDatabase) {
            g();
            d(supportSQLiteDatabase);
        }

        public final void c(File file) throws Throwable {
            String strJ;
            if (file.exists() && (strJ = SystemFacadeHelper.a(this.a).j()) != null) {
                try {
                    FileUtils.copyFileToDirectory(file, new File(strJ, "LibreTorrent_backup"));
                } catch (Exception unused) {
                }
            }
        }

        public void d(SupportSQLiteDatabase supportSQLiteDatabase) {
            File fileE;
            List<String> listF = f(supportSQLiteDatabase);
            supportSQLiteDatabase.beginTransaction();
            try {
                for (String str : listF) {
                    if (h(str) && (fileE = e(str)) != null) {
                        try {
                            try {
                                File file = new File(fileE, "fastresume");
                                if (file.exists()) {
                                    a(supportSQLiteDatabase, str, FileUtils.readFileToByteArray(file));
                                } else {
                                    c(new File(fileE, "torrent"));
                                }
                            } catch (Throwable th) {
                                try {
                                    FileUtils.deleteDirectory(fileE);
                                } catch (IOException unused) {
                                }
                                throw th;
                            }
                        } catch (Exception unused2) {
                            c(new File(fileE, "torrent"));
                        }
                        try {
                            FileUtils.deleteDirectory(fileE);
                        } catch (IOException unused3) {
                        }
                    }
                }
                supportSQLiteDatabase.setTransactionSuccessful();
                supportSQLiteDatabase.endTransaction();
            } catch (Throwable th2) {
                supportSQLiteDatabase.endTransaction();
                throw th2;
            }
        }

        public final File e(String str) {
            if (SystemFacadeHelper.a(this.a).k()) {
                File file = new File(this.a.getExternalFilesDir(null), str);
                if (file.exists()) {
                    return file;
                }
            }
            return null;
        }

        public final List f(SupportSQLiteDatabase supportSQLiteDatabase) {
            ArrayList arrayList = new ArrayList();
            Cursor cursorQuery = supportSQLiteDatabase.query("SELECT `id` from `Torrent`");
            while (cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.getString(0));
            }
            cursorQuery.close();
            return arrayList;
        }

        public final void g() {
            File externalFilesDir = this.a.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                new File(externalFilesDir, "session").delete();
            }
        }

        public final boolean h(String str) {
            return SystemFacadeHelper.a(this.a).k() && new File(this.a.getExternalFilesDir(null), str).exists();
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.beginTransaction();
            try {
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `Torrent` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `downloadPath` TEXT NOT NULL, `dateAdded` INTEGER NOT NULL, `error` TEXT, `manuallyPaused` INTEGER NOT NULL, `magnet` TEXT, `downloadingMetadata` INTEGER NOT NULL, PRIMARY KEY(`id`))");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `FastResume` (`torrentId` TEXT NOT NULL, `data` BLOB NOT NULL, PRIMARY KEY(`torrentId`), FOREIGN KEY(`torrentId`) REFERENCES `Torrent`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `FeedChannel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `name` TEXT, `lastUpdate` INTEGER NOT NULL, `autoDownload` INTEGER NOT NULL, `filter` TEXT, `isRegexFilter` INTEGER NOT NULL, `fetchError` TEXT)");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `FeedItem` (`id` TEXT NOT NULL, `title` TEXT NOT NULL, `feedId` INTEGER NOT NULL, `downloadUrl` TEXT, `articleUrl` TEXT, `pubDate` INTEGER NOT NULL, `fetchDate` INTEGER NOT NULL, `read` INTEGER NOT NULL, PRIMARY KEY(`id`), FOREIGN KEY(`feedId`) REFERENCES `FeedChannel`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
                supportSQLiteDatabase.execSQL("CREATE INDEX `index_FeedItem_feedId` ON `FeedItem` (`feedId`)");
                supportSQLiteDatabase.execSQL("CREATE INDEX `index_FastResume_torrentId` ON `FastResume` (`torrentId`)");
                supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
                supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '9a928af8203fc8a72546bb3719135e08')");
                supportSQLiteDatabase.execSQL("ALTER TABLE torrents RENAME TO torrents_old;");
                supportSQLiteDatabase.execSQL("INSERT INTO `Torrent` (`id`, `name`, `downloadPath`, `manuallyPaused`, `downloadingMetadata`, `magnet`, `dateAdded`, `error`) SELECT torrent_id, name, 'file://' || path_to_download, 0, downloading_metadata, CASE WHEN downloading_metadata THEN path_to_torrent ELSE NULL END path_to_torrent, datetime, error FROM torrents_old;");
                supportSQLiteDatabase.execSQL("DROP TABLE torrents_old;");
                supportSQLiteDatabase.execSQL("ALTER TABLE feeds RENAME TO feeds_old;");
                supportSQLiteDatabase.execSQL("INSERT INTO `FeedChannel` (`url`, `name`, `lastUpdate`, `autoDownload`, `filter`, `isRegexFilter`, `fetchError`) SELECT url, name, last_update, auto_download, filter, is_regex_filter, fetch_error FROM feeds_old;");
                supportSQLiteDatabase.execSQL("DROP TABLE feeds_old;");
                supportSQLiteDatabase.execSQL("DROP TABLE feed_items;");
                supportSQLiteDatabase.setTransactionSuccessful();
                supportSQLiteDatabase.endTransaction();
                try {
                    b(supportSQLiteDatabase);
                } catch (Exception e) {
                    Log.e(DatabaseMigration.a, Log.getStackTraceString(e));
                }
            } catch (Throwable th) {
                supportSQLiteDatabase.endTransaction();
                throw th;
            }
        }
    }

    static {
        int i = 2;
        b = new Migration(1, i) {
            @Override
            public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("ALTER TABLE torrents ADD COLUMN downloading_metadata integer ");
                supportSQLiteDatabase.execSQL("ALTER TABLE torrents ADD COLUMN datetime integer ");
            }
        };
        int i2 = 3;
        c = new Migration(i, i2) {
            @Override
            public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("CREATE TABLE feeds(_id integer primary key autoincrement, url text not null unique, name text, last_update integer, auto_download integer, filter text, is_regex_filter integer, fetch_error text);");
                supportSQLiteDatabase.execSQL("CREATE TABLE feed_items(_id integer primary key autoincrement, feed_url text, title text not null unique, download_url text, article_url text, pub_date integer, fetch_date integer, read integer );");
            }
        };
        d = new Migration(i2, 4) {
            @Override
            public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("ALTER TABLE torrents ADD COLUMN error text ");
            }
        };
        int i3 = 6;
        e = new Migration(5, i3) {
            @Override
            public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("ALTER TABLE `Torrent` ADD COLUMN `visibility` INTEGER NOT NULL DEFAULT 0");
            }
        };
        int i4 = 7;
        f = new Migration(i3, i4) {
            @Override
            public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TagInfo` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `color` INTEGER NOT NULL)");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `TorrentTagInfo` (`tagId` INTEGER NOT NULL, `torrentId` TEXT NOT NULL, PRIMARY KEY(`tagId`, `torrentId`), FOREIGN KEY(`tagId`) REFERENCES `TagInfo`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`torrentId`) REFERENCES `Torrent`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
                supportSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS `index_TorrentTagInfo_tagId` ON `TorrentTagInfo` (`tagId`)");
                supportSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS `index_TorrentTagInfo_torrentId` ON `TorrentTagInfo` (`torrentId`)");
            }
        };
        int i5 = 8;
        g = new Migration(i4, i5) {
            @Override
            public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("ALTER TABLE `Torrent` ADD COLUMN `sequentialDownload` INTEGER NOT NULL DEFAULT 0");
            }
        };
        h = new Migration(i5, 9) {
            @Override
            public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("ALTER TABLE `Torrent` ADD COLUMN `firstLastPiecePriority` INTEGER NOT NULL DEFAULT 0");
            }
        };
    }

    public static Migration[] b(Context context) {
        return new Migration[]{b, c, d, new RoomDatabaseMigration(context), e, f, g, h};
    }
}
