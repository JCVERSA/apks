package org.proninyaroslav.libretorrent.core.storage;

import android.content.Context;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import org.proninyaroslav.libretorrent.core.model.data.entity.FastResume;
import org.proninyaroslav.libretorrent.core.model.data.entity.FeedChannel;
import org.proninyaroslav.libretorrent.core.model.data.entity.FeedItem;
import org.proninyaroslav.libretorrent.core.model.data.entity.TagInfo;
import org.proninyaroslav.libretorrent.core.model.data.entity.Torrent;
import org.proninyaroslav.libretorrent.core.model.data.entity.TorrentTagInfo;
import org.proninyaroslav.libretorrent.core.storage.converter.UriConverter;
import org.proninyaroslav.libretorrent.core.storage.dao.FastResumeDao;
import org.proninyaroslav.libretorrent.core.storage.dao.TorrentDao;

@TypeConverters({UriConverter.class})
@Database(entities = {Torrent.class, FastResume.class, FeedChannel.class, FeedItem.class, TagInfo.class, TorrentTagInfo.class}, exportSchema = false, version = 9)
public abstract class AppDatabase extends RoomDatabase {
    public static volatile AppDatabase a;

    public static AppDatabase a(Context context) {
        return (AppDatabase) Room.databaseBuilder(context, AppDatabase.class, "libretorrent.db").addMigrations(DatabaseMigration.b(context)).build();
    }

    public static AppDatabase c(Context context) {
        if (a == null) {
            synchronized (AppDatabase.class) {
                try {
                    if (a == null) {
                        a = a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public abstract FastResumeDao b();

    public abstract TorrentDao d();
}
