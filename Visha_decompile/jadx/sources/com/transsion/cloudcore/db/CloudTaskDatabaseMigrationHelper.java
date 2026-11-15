package com.transsion.cloudcore.db;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.push.PushConstants;
import defpackage.hb0;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CloudTaskDatabaseMigrationHelper {
    private static final String CURRENT_DATABASE_NAME = "cloud_task_v3.db";
    private static final String[] OLD_DATABASE_NAMES = {"cloud_task.db", "cloud_task_v2.db"};
    private static final String TAG = "CloudTaskDBMigration";

    private static boolean getBooleanValue(Cursor cursor, String str, boolean z) {
        try {
            int columnIndex = cursor.getColumnIndex(str);
            if (columnIndex >= 0 && !cursor.isNull(columnIndex)) {
                return cursor.getInt(columnIndex) != 0;
            }
        } catch (Exception e) {
            LogUtils.P(TAG, "Error getting boolean value for " + str + ": " + e.getMessage());
        }
        return z;
    }

    private static float getFloatValue(Cursor cursor, String str, float f) {
        try {
            int columnIndex = cursor.getColumnIndex(str);
            if (columnIndex >= 0 && !cursor.isNull(columnIndex)) {
                return cursor.getFloat(columnIndex);
            }
        } catch (Exception e) {
            LogUtils.P(TAG, "Error getting float value for " + str + ": " + e.getMessage());
        }
        return f;
    }

    private static int getIntValue(Cursor cursor, String str, int i) {
        try {
            int columnIndex = cursor.getColumnIndex(str);
            if (columnIndex >= 0 && !cursor.isNull(columnIndex)) {
                return cursor.getInt(columnIndex);
            }
        } catch (Exception e) {
            LogUtils.P(TAG, "Error getting int value for " + str + ": " + e.getMessage());
        }
        return i;
    }

    private static long getLongValue(Cursor cursor, String str, long j) {
        try {
            int columnIndex = cursor.getColumnIndex(str);
            if (columnIndex >= 0 && !cursor.isNull(columnIndex)) {
                return cursor.getLong(columnIndex);
            }
        } catch (Exception e) {
            LogUtils.P(TAG, "Error getting long value for " + str + ": " + e.getMessage());
        }
        return j;
    }

    private static String getStringValue(Cursor cursor, String str, String str2) {
        try {
            int columnIndex = cursor.getColumnIndex(str);
            if (columnIndex >= 0 && !cursor.isNull(columnIndex)) {
                return cursor.getString(columnIndex);
            }
        } catch (Exception e) {
            LogUtils.P(TAG, "Error getting string value for " + str + ": " + e.getMessage());
        }
        return str2;
    }

    private static void insertTasksDirectly(Context context, List<CloudTaskEntity> list) {
        String str = TAG;
        SQLiteDatabase sQLiteDatabaseOpenDatabase = null;
        try {
            try {
                File databasePath = context.getDatabasePath(CURRENT_DATABASE_NAME);
                if (!databasePath.exists()) {
                    LogUtils.w(TAG, "New database does not exist yet, will be created by Room");
                    return;
                }
                sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(databasePath.getAbsolutePath(), null, 0);
                sQLiteDatabaseOpenDatabase.beginTransaction();
                try {
                    Iterator<CloudTaskEntity> it = list.iterator();
                    while (it.hasNext()) {
                        CloudTaskEntity next = it.next();
                        Iterator<CloudTaskEntity> it2 = it;
                        String str2 = str;
                        try {
                            sQLiteDatabaseOpenDatabase.execSQL("INSERT OR REPLACE INTO cloud_task (task_id, cloud_file_id, file_name, file_size, progress, local_file_id, local_file_path, task_type, task_status, file_type, mime_type, create_time, update_time, duration, download_source, isCloudFileExist, isLocalFileExist, cover_img_url) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", new Object[]{next.taskId, next.cloudFileId, next.fileName, Long.valueOf(next.fileSize), Float.valueOf(next.progress), Integer.valueOf(next.localFileId), next.localFilePath, Integer.valueOf(next.taskType), Integer.valueOf(next.taskStatus), Integer.valueOf(next.fileType), next.mimeType, Long.valueOf(next.createTime), Long.valueOf(next.updateTime), Long.valueOf(next.duration), Integer.valueOf(next.downloadSource), Integer.valueOf(next.isCloudFileExist ? 1 : 0), Integer.valueOf(next.isLocalFileExist ? 1 : 0), next.imgUrl});
                            str = str2;
                            LogUtils.j(str, "Inserted task: " + next.fileName);
                            it = it2;
                        } catch (Throwable th) {
                            th = th;
                            sQLiteDatabaseOpenDatabase.endTransaction();
                            throw th;
                        }
                    }
                    sQLiteDatabaseOpenDatabase.setTransactionSuccessful();
                    LogUtils.w(str, "All tasks inserted successfully");
                    sQLiteDatabaseOpenDatabase.endTransaction();
                    sQLiteDatabaseOpenDatabase.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e) {
                LogUtils.m(TAG, "Error inserting tasks directly: " + e.getMessage());
                if (0 == 0) {
                }
            }
        } catch (Throwable th3) {
            if (0 != 0) {
                sQLiteDatabaseOpenDatabase.close();
            }
            throw th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.database.sqlite.SQLiteClosable] */
    private static boolean isCurrentDatabaseEmpty(Context context) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        Cursor cursorRawQuery = null;
        try {
            try {
                sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(context.getDatabasePath(CURRENT_DATABASE_NAME).getAbsolutePath(), null, 1);
                try {
                    cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT COUNT(*) FROM cloud_task WHERE task_status = ?", new String[]{String.valueOf(5)});
                    if (!cursorRawQuery.moveToFirst()) {
                        cursorRawQuery.close();
                        sQLiteDatabaseOpenDatabase.close();
                        return true;
                    }
                    int i = cursorRawQuery.getInt(0);
                    LogUtils.j(TAG, "Current database has " + i + " finished tasks");
                    boolean z = i == 0;
                    cursorRawQuery.close();
                    sQLiteDatabaseOpenDatabase.close();
                    return z;
                } catch (Exception e) {
                    e = e;
                    LogUtils.P(TAG, "Error checking current database: " + e.getMessage());
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (sQLiteDatabaseOpenDatabase != null) {
                        sQLiteDatabaseOpenDatabase.close();
                    }
                    return true;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursorRawQuery.close();
                }
                if (context != 0) {
                    context.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            sQLiteDatabaseOpenDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            context = 0;
            if (0 != 0) {
                cursorRawQuery.close();
            }
            if (context != 0) {
                context.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:42:0x01fe  */
    /* JADX WARN: Multi-variable type inference failed */
    private static void migrateFromOldDatabase(Context context, String str) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        Cursor cursor = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            try {
                LogUtils.w(TAG, "Starting migration from " + str);
                sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(context.getDatabasePath(str).getAbsolutePath(), null, 1);
                try {
                    Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type='table' AND name='cloud_task'", null);
                    if (!cursorRawQuery.moveToFirst()) {
                        LogUtils.P(TAG, "Old database does not have cloud_task table");
                        cursorRawQuery.close();
                        sQLiteDatabaseOpenDatabase.close();
                        return;
                    }
                    cursorRawQuery.close();
                    Cursor cursorRawQuery2 = sQLiteDatabaseOpenDatabase.rawQuery("SELECT * FROM cloud_task WHERE task_status = ?", new String[]{String.valueOf(5)});
                    ArrayList arrayList = new ArrayList();
                    while (cursorRawQuery2.moveToNext()) {
                        try {
                            CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                            cloudTaskEntity.taskId = getStringValue(cursorRawQuery2, "task_id", "");
                            cloudTaskEntity.cloudFileId = getStringValue(cursorRawQuery2, "cloud_file_id", "");
                            cloudTaskEntity.fileName = getStringValue(cursorRawQuery2, "file_name", "");
                            cloudTaskEntity.fileSize = getLongValue(cursorRawQuery2, "file_size", 0L);
                            cloudTaskEntity.progress = getFloatValue(cursorRawQuery2, "progress", 1.0f);
                            cloudTaskEntity.localFileId = getIntValue(cursorRawQuery2, "local_file_id", 0);
                            cloudTaskEntity.localFilePath = getStringValue(cursorRawQuery2, "local_file_path", "");
                            cloudTaskEntity.taskType = getIntValue(cursorRawQuery2, "task_type", 0);
                            cloudTaskEntity.taskStatus = getIntValue(cursorRawQuery2, "task_status", 5);
                            cloudTaskEntity.fileType = getIntValue(cursorRawQuery2, hb0.KEY_NAME_FILE_TYPE, 0);
                            cloudTaskEntity.mimeType = getStringValue(cursorRawQuery2, "mime_type", "");
                            cloudTaskEntity.createTime = getLongValue(cursorRawQuery2, "create_time", System.currentTimeMillis());
                            cloudTaskEntity.updateTime = getLongValue(cursorRawQuery2, PushConstants.PROVIDER_FIELD_UPDATE_TIME, System.currentTimeMillis());
                            cloudTaskEntity.duration = getLongValue(cursorRawQuery2, "duration", 0L);
                            cloudTaskEntity.downloadSource = getIntValue(cursorRawQuery2, "download_source", 0);
                            cloudTaskEntity.isCloudFileExist = getBooleanValue(cursorRawQuery2, "isCloudFileExist", false);
                            cloudTaskEntity.isLocalFileExist = getBooleanValue(cursorRawQuery2, "isLocalFileExist", true);
                            cloudTaskEntity.imgUrl = getStringValue(cursorRawQuery2, "cover_img_url", "");
                            if (new File(cloudTaskEntity.localFilePath).exists()) {
                                arrayList.add(cloudTaskEntity);
                                LogUtils.j(TAG, "Will migrate task: " + cloudTaskEntity.fileName);
                            } else {
                                LogUtils.P(TAG, "Skip task (file not found): " + cloudTaskEntity.fileName);
                            }
                        } catch (Exception e) {
                            LogUtils.m(TAG, "Error reading task from old database: " + e.getMessage());
                        }
                    }
                    LogUtils.w(TAG, "Found " + arrayList.size() + " tasks to migrate");
                    if (!arrayList.isEmpty()) {
                        insertTasksDirectly(context, arrayList);
                        LogUtils.w(TAG, "Migration completed successfully, migrated " + arrayList.size() + " tasks");
                    }
                    cursorRawQuery2.close();
                    sQLiteDatabaseOpenDatabase.close();
                } catch (Exception e2) {
                    e = e2;
                    LogUtils.m(TAG, "Error during migration from " + str + ": " + e.getMessage());
                    if (0 != 0) {
                        (objArr2 == true ? 1 : 0).close();
                    }
                    if (sQLiteDatabaseOpenDatabase == null) {
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                if (0 != 0) {
                    (objArr == true ? 1 : 0).close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            sQLiteDatabaseOpenDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor.close();
            }
            if (0 != 0) {
                (objArr == true ? 1 : 0).close();
            }
            throw th;
        }
    }

    public static void migrateFromOldDatabases(Context context) throws Throwable {
        try {
            LogUtils.w(TAG, "Starting migration check from old databases...");
            if (context.getDatabasePath(CURRENT_DATABASE_NAME).exists()) {
                LogUtils.j(TAG, "Current database already exists, checking if migration needed...");
                if (!isCurrentDatabaseEmpty(context)) {
                    LogUtils.j(TAG, "Current database has data, skip migration");
                    return;
                }
                LogUtils.w(TAG, "Current database is empty, will try to migrate from old databases");
            }
            for (String str : OLD_DATABASE_NAMES) {
                if (context.getDatabasePath(str).exists()) {
                    LogUtils.w(TAG, "Found old database: " + str);
                    migrateFromOldDatabase(context, str);
                    break;
                }
            }
            LogUtils.w(TAG, "Migration check completed");
        } catch (Exception e) {
            LogUtils.m(TAG, "Error during migration: " + e.getMessage());
        }
    }
}
