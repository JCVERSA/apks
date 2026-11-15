package com.transsion.cloudcore.db;

import androidx.annotation.NonNull;
import androidx.core.provider.FontsContractCompat;
import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.push.PushConstants;
import defpackage.apb;
import defpackage.bpb;
import defpackage.hb0;
import defpackage.hw5;
import defpackage.iw5;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.BooleanUtils;

public final class CloudTaskDatabase_Impl extends CloudTaskDatabase {
    private volatile CloudTaskDao _cloudTaskDao;
    private volatile hw5 _mIMediaLibraryCacheDao;
    private volatile apb _videoCloudCacheDao;

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `cloud_task`");
            writableDatabase.execSQL("DELETE FROM `video_cloud_cache`");
            writableDatabase.execSQL("DELETE FROM `mi_media_library_cache`");
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
    public CloudTaskDao cloudTaskDao() {
        CloudTaskDao cloudTaskDao;
        if (this._cloudTaskDao != null) {
            return this._cloudTaskDao;
        }
        synchronized (this) {
            try {
                if (this._cloudTaskDao == null) {
                    this._cloudTaskDao = new CloudTaskDao_Impl(this);
                }
                cloudTaskDao = this._cloudTaskDao;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cloudTaskDao;
    }

    @Override
    @NonNull
    public InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "cloud_task", "video_cloud_cache", "mi_media_library_cache");
    }

    @Override
    @NonNull
    public SupportSQLiteOpenHelper createOpenHelper(@NonNull DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new RoomOpenHelper.Delegate(2) {
            @Override
            public void createAllTables(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `cloud_task` (`task_id` TEXT NOT NULL, `cloud_file_id` TEXT, `file_name` TEXT, `file_size` INTEGER NOT NULL, `progress` REAL NOT NULL, `local_file_id` INTEGER NOT NULL, `local_file_path` TEXT, `task_type` INTEGER NOT NULL, `task_status` INTEGER NOT NULL, `file_type` INTEGER NOT NULL, `mime_type` TEXT, `create_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `duration` INTEGER NOT NULL, `download_source` INTEGER NOT NULL, `isCloudFileExist` INTEGER NOT NULL DEFAULT true, `isLocalFileExist` INTEGER NOT NULL DEFAULT true, `cover_img_url` TEXT, PRIMARY KEY(`task_id`))");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `video_cloud_cache` (`mId` INTEGER NOT NULL, `file_id` TEXT NOT NULL, `file_name` TEXT, `size` INTEGER, `duration` INTEGER, `height` INTEGER, `width` INTEGER, `watch_status` INTEGER, `create_at` TEXT, `sharer_nickname` TEXT, `play_duration` INTEGER, `file_cover_path` TEXT, `preview_url` TEXT, `parent_file_id` TEXT, `is_exit_local` INTEGER, `cache_time` INTEGER NOT NULL, `is_recent_data` INTEGER, `data_type` INTEGER NOT NULL, `mediaLibrary_id` TEXT, `cover` TEXT, PRIMARY KEY(`file_id`))");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `mi_media_library_cache` (`media_library_id` TEXT NOT NULL, `media_library_name` TEXT, `media_library_collect_flag` INTEGER, `virtual_person_name` TEXT, `virtual_person_photo` TEXT, `media_library_status` INTEGER, `video_list_json` TEXT, `cache_time` INTEGER NOT NULL, PRIMARY KEY(`media_library_id`))");
                supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
                supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '797ca10a5216a7d35ccf463eb57d39a2')");
            }

            @Override
            public void dropAllTables(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `cloud_task`");
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `video_cloud_cache`");
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `mi_media_library_cache`");
                List list = ((RoomDatabase) CloudTaskDatabase_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                    }
                }
            }

            @Override
            public void onCreate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
                List list = ((RoomDatabase) CloudTaskDatabase_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                    }
                }
            }

            @Override
            public void onOpen(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
                ((RoomDatabase) CloudTaskDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
                CloudTaskDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
                List list = ((RoomDatabase) CloudTaskDatabase_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onOpen(supportSQLiteDatabase);
                    }
                }
            }

            @Override
            public void onPostMigrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            }

            @Override
            public void onPreMigrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
                DBUtil.dropFtsSyncTriggers(supportSQLiteDatabase);
            }

            @Override
            @NonNull
            public RoomOpenHelper.ValidationResult onValidateSchema(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
                HashMap map = new HashMap(18);
                map.put("task_id", new TableInfo.Column("task_id", "TEXT", true, 1, null, 1));
                map.put("cloud_file_id", new TableInfo.Column("cloud_file_id", "TEXT", false, 0, null, 1));
                map.put("file_name", new TableInfo.Column("file_name", "TEXT", false, 0, null, 1));
                map.put("file_size", new TableInfo.Column("file_size", "INTEGER", true, 0, null, 1));
                map.put("progress", new TableInfo.Column("progress", "REAL", true, 0, null, 1));
                map.put("local_file_id", new TableInfo.Column("local_file_id", "INTEGER", true, 0, null, 1));
                map.put("local_file_path", new TableInfo.Column("local_file_path", "TEXT", false, 0, null, 1));
                map.put("task_type", new TableInfo.Column("task_type", "INTEGER", true, 0, null, 1));
                map.put("task_status", new TableInfo.Column("task_status", "INTEGER", true, 0, null, 1));
                map.put(hb0.KEY_NAME_FILE_TYPE, new TableInfo.Column(hb0.KEY_NAME_FILE_TYPE, "INTEGER", true, 0, null, 1));
                map.put("mime_type", new TableInfo.Column("mime_type", "TEXT", false, 0, null, 1));
                map.put("create_time", new TableInfo.Column("create_time", "INTEGER", true, 0, null, 1));
                map.put(PushConstants.PROVIDER_FIELD_UPDATE_TIME, new TableInfo.Column(PushConstants.PROVIDER_FIELD_UPDATE_TIME, "INTEGER", true, 0, null, 1));
                map.put("duration", new TableInfo.Column("duration", "INTEGER", true, 0, null, 1));
                map.put("download_source", new TableInfo.Column("download_source", "INTEGER", true, 0, null, 1));
                map.put("isCloudFileExist", new TableInfo.Column("isCloudFileExist", "INTEGER", true, 0, BooleanUtils.TRUE, 1));
                map.put("isLocalFileExist", new TableInfo.Column("isLocalFileExist", "INTEGER", true, 0, BooleanUtils.TRUE, 1));
                map.put("cover_img_url", new TableInfo.Column("cover_img_url", "TEXT", false, 0, null, 1));
                TableInfo tableInfo = new TableInfo("cloud_task", map, new HashSet(0), new HashSet(0));
                TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "cloud_task");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenHelper.ValidationResult(false, "cloud_task(com.transsion.cloudcore.db.CloudTaskEntity).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                HashMap map2 = new HashMap(20);
                map2.put("mId", new TableInfo.Column("mId", "INTEGER", true, 0, null, 1));
                map2.put(FontsContractCompat.Columns.FILE_ID, new TableInfo.Column(FontsContractCompat.Columns.FILE_ID, "TEXT", true, 1, null, 1));
                map2.put("file_name", new TableInfo.Column("file_name", "TEXT", false, 0, null, 1));
                map2.put(PlayAudioData.TAG_SIZE, new TableInfo.Column(PlayAudioData.TAG_SIZE, "INTEGER", false, 0, null, 1));
                map2.put("duration", new TableInfo.Column("duration", "INTEGER", false, 0, null, 1));
                map2.put("height", new TableInfo.Column("height", "INTEGER", false, 0, null, 1));
                map2.put("width", new TableInfo.Column("width", "INTEGER", false, 0, null, 1));
                map2.put("watch_status", new TableInfo.Column("watch_status", "INTEGER", false, 0, null, 1));
                map2.put("create_at", new TableInfo.Column("create_at", "TEXT", false, 0, null, 1));
                map2.put("sharer_nickname", new TableInfo.Column("sharer_nickname", "TEXT", false, 0, null, 1));
                map2.put("play_duration", new TableInfo.Column("play_duration", "INTEGER", false, 0, null, 1));
                map2.put("file_cover_path", new TableInfo.Column("file_cover_path", "TEXT", false, 0, null, 1));
                map2.put("preview_url", new TableInfo.Column("preview_url", "TEXT", false, 0, null, 1));
                map2.put("parent_file_id", new TableInfo.Column("parent_file_id", "TEXT", false, 0, null, 1));
                map2.put("is_exit_local", new TableInfo.Column("is_exit_local", "INTEGER", false, 0, null, 1));
                map2.put("cache_time", new TableInfo.Column("cache_time", "INTEGER", true, 0, null, 1));
                map2.put("is_recent_data", new TableInfo.Column("is_recent_data", "INTEGER", false, 0, null, 1));
                map2.put("data_type", new TableInfo.Column("data_type", "INTEGER", true, 0, null, 1));
                map2.put("mediaLibrary_id", new TableInfo.Column("mediaLibrary_id", "TEXT", false, 0, null, 1));
                map2.put("cover", new TableInfo.Column("cover", "TEXT", false, 0, null, 1));
                TableInfo tableInfo3 = new TableInfo("video_cloud_cache", map2, new HashSet(0), new HashSet(0));
                TableInfo tableInfo4 = TableInfo.read(supportSQLiteDatabase, "video_cloud_cache");
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenHelper.ValidationResult(false, "video_cloud_cache(com.transsion.dbdata.beans.VideoCloudCache).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                HashMap map3 = new HashMap(8);
                map3.put("media_library_id", new TableInfo.Column("media_library_id", "TEXT", true, 1, null, 1));
                map3.put("media_library_name", new TableInfo.Column("media_library_name", "TEXT", false, 0, null, 1));
                map3.put("media_library_collect_flag", new TableInfo.Column("media_library_collect_flag", "INTEGER", false, 0, null, 1));
                map3.put("virtual_person_name", new TableInfo.Column("virtual_person_name", "TEXT", false, 0, null, 1));
                map3.put("virtual_person_photo", new TableInfo.Column("virtual_person_photo", "TEXT", false, 0, null, 1));
                map3.put("media_library_status", new TableInfo.Column("media_library_status", "INTEGER", false, 0, null, 1));
                map3.put("video_list_json", new TableInfo.Column("video_list_json", "TEXT", false, 0, null, 1));
                map3.put("cache_time", new TableInfo.Column("cache_time", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo5 = new TableInfo("mi_media_library_cache", map3, new HashSet(0), new HashSet(0));
                TableInfo tableInfo6 = TableInfo.read(supportSQLiteDatabase, "mi_media_library_cache");
                if (tableInfo5.equals(tableInfo6)) {
                    return new RoomOpenHelper.ValidationResult(true, null);
                }
                return new RoomOpenHelper.ValidationResult(false, "mi_media_library_cache(com.transsion.dbdata.beans.MIMediaLibraryCache).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
            }
        }, "797ca10a5216a7d35ccf463eb57d39a2", "37d4a8c50fdfb8e7bacc252ce37affbf")).build());
    }

    @Override
    @NonNull
    public List<Migration> getAutoMigrations(@NonNull Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> map) {
        return new ArrayList();
    }

    @Override
    @NonNull
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override
    @NonNull
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap map = new HashMap();
        map.put(CloudTaskDao.class, CloudTaskDao_Impl.getRequiredConverters());
        map.put(apb.class, bpb.b());
        map.put(hw5.class, iw5.a());
        return map;
    }

    @Override
    public hw5 miMediaLibraryCacheDao() {
        hw5 hw5Var;
        if (this._mIMediaLibraryCacheDao != null) {
            return this._mIMediaLibraryCacheDao;
        }
        synchronized (this) {
            try {
                if (this._mIMediaLibraryCacheDao == null) {
                    this._mIMediaLibraryCacheDao = new iw5(this);
                }
                hw5Var = this._mIMediaLibraryCacheDao;
            } catch (Throwable th) {
                throw th;
            }
        }
        return hw5Var;
    }

    @Override
    public apb videoCloudCacheDao() {
        apb apbVar;
        if (this._videoCloudCacheDao != null) {
            return this._videoCloudCacheDao;
        }
        synchronized (this) {
            try {
                if (this._videoCloudCacheDao == null) {
                    this._videoCloudCacheDao = new bpb(this);
                }
                apbVar = this._videoCloudCacheDao;
            } catch (Throwable th) {
                throw th;
            }
        }
        return apbVar;
    }
}
