package org.proninyaroslav.libretorrent.core;

import android.content.Context;
import org.proninyaroslav.libretorrent.core.settings.SettingsRepository;
import org.proninyaroslav.libretorrent.core.settings.SettingsRepositoryImpl;
import org.proninyaroslav.libretorrent.core.storage.AppDatabase;
import org.proninyaroslav.libretorrent.core.storage.TagRepository;
import org.proninyaroslav.libretorrent.core.storage.TagRepositoryImpl;
import org.proninyaroslav.libretorrent.core.storage.TorrentRepository;
import org.proninyaroslav.libretorrent.core.storage.TorrentRepositoryImpl;

public class RepositoryHelper {
    public static TorrentRepositoryImpl a;
    public static SettingsRepositoryImpl b;
    public static TagRepository c;

    public static synchronized SettingsRepository a(Context context) {
        try {
            if (b == null) {
                b = new SettingsRepositoryImpl(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return b;
    }

    public static synchronized TagRepository b(Context context) {
        try {
            if (c == null) {
                c = new TagRepositoryImpl(AppDatabase.c(context));
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public static synchronized TorrentRepository c(Context context) {
        try {
            if (a == null) {
                a = new TorrentRepositoryImpl(context, AppDatabase.c(context));
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }
}
