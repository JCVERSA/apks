package com.transsion.cloudcore.db;

import androidx.annotation.NonNull;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.MIMediaLibraryCache;
import com.transsion.dbdata.beans.VideoCloudCache;
import defpackage.apb;
import defpackage.hw5;

@Database(entities = {CloudTaskEntity.class, VideoCloudCache.class, MIMediaLibraryCache.class}, exportSchema = false, version = 2)
public abstract class CloudTaskDatabase extends RoomDatabase {
    private static final String DATABASE_NAME = "cloud_task_v3.db";
    static final Migration MIGRATION_1_2 = new Migration(1, 2) {
        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            LogUtils.v(CloudTaskDatabase.TAG, "Starting migration from version 1 to 2");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS video_cloud_cache");
            supportSQLiteDatabase.execSQL("CREATE TABLE video_cloud_cache (mId INTEGER NOT NULL, file_id TEXT NOT NULL PRIMARY KEY, file_name TEXT, size INTEGER, duration INTEGER, height INTEGER, width INTEGER, watch_status INTEGER, create_at TEXT, sharer_nickname TEXT, play_duration INTEGER, file_cover_path TEXT, preview_url TEXT, parent_file_id TEXT, is_exit_local INTEGER, cache_time INTEGER NOT NULL, is_recent_data INTEGER, data_type INTEGER DEFAULT 0, mediaLibrary_id TEXT DEFAULT '', cover TEXT DEFAULT '')");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS mi_media_library_cache (media_library_id TEXT NOT NULL PRIMARY KEY, media_library_name TEXT, media_library_collect_flag INTEGER, virtual_person_name TEXT, virtual_person_photo TEXT, media_library_status INTEGER, video_list_json TEXT, cache_time INTEGER NOT NULL)");
            LogUtils.v(CloudTaskDatabase.TAG, "Migration from version 1 to 2 completed successfully");
        }
    };
    private static final String TAG = "CloudTaskDatabase";
    private static volatile CloudTaskDatabase sSingleton;

    public class AnonymousClass2 extends RoomDatabase.Callback {
        public static void lambda$onOpen$0() throws Throwable {
            try {
                CloudTaskDatabaseMigrationHelper.migrateFromOldDatabases(Utils.a());
            } catch (Exception e) {
                LogUtils.l(CloudTaskDatabase.TAG, "Error during migration: " + e.getMessage());
            }
        }

        @Override
        public void onCreate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            super.onCreate(supportSQLiteDatabase);
            LogUtils.i(CloudTaskDatabase.TAG, "Cloud task database created successfully");
        }

        @Override
        public void onOpen(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            super.onOpen(supportSQLiteDatabase);
            LogUtils.i(CloudTaskDatabase.TAG, "Cloud task database opened");
            new Thread(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    CloudTaskDatabase.AnonymousClass2.lambda$onOpen$0();
                }
            }).start();
        }
    }

    public static void closeDatabase() {
        if (sSingleton == null || !sSingleton.isOpen()) {
            return;
        }
        try {
            sSingleton.close();
            sSingleton = null;
            LogUtils.v(TAG, "Cloud task database closed");
        } catch (Exception e) {
            LogUtils.l(TAG, "Failed to close cloud task database: " + e.getMessage());
        }
    }

    public static CloudTaskDatabase getInstance() {
        if (sSingleton == null) {
            synchronized (CloudTaskDatabase.class) {
                if (sSingleton == null) {
                    try {
                        sSingleton = (CloudTaskDatabase) Room.databaseBuilder(Utils.a(), CloudTaskDatabase.class, DATABASE_NAME).addMigrations(MIGRATION_1_2).fallbackToDestructiveMigration().addCallback(new AnonymousClass2()).build();
                        LogUtils.v(TAG, "Cloud task database instance created");
                    } catch (Exception e) {
                        LogUtils.l(TAG, "Failed to create cloud task database: " + e.getMessage());
                    }
                }
            }
        }
        return sSingleton;
    }

    public abstract CloudTaskDao cloudTaskDao();

    public abstract hw5 miMediaLibraryCacheDao();

    public abstract apb videoCloudCacheDao();
}
