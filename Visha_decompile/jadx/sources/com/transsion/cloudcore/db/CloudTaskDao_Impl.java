package com.transsion.cloudcore.db;

import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.p004lifecycle.LiveData;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.push.PushConstants;
import defpackage.hb0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

public final class CloudTaskDao_Impl implements CloudTaskDao {
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<CloudTaskEntity> __deletionAdapterOfCloudTaskEntity;
    private final EntityInsertionAdapter<CloudTaskEntity> __insertionAdapterOfCloudTaskEntity;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllCloudTask;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllTasks;
    private final SharedSQLiteStatement __preparedStmtOfDeleteTaskById;
    private final SharedSQLiteStatement __preparedStmtOfUpdateDownloadTaskToFinished;
    private final SharedSQLiteStatement __preparedStmtOfUpdateDownloadTaskToFinished_1;
    private final SharedSQLiteStatement __preparedStmtOfUpdateTaskFileName;
    private final SharedSQLiteStatement __preparedStmtOfUpdateTaskProgress;
    private final SharedSQLiteStatement __preparedStmtOfUpdateTaskStatus;
    private final SharedSQLiteStatement __preparedStmtOfUpdateTaskStatusAndProgress;
    private final SharedSQLiteStatement __preparedStmtOfUpdateUploadTaskToFinished;
    private final SharedSQLiteStatement __preparedStmtOfUpdateUploadTaskToFinished_1;
    private final EntityDeletionOrUpdateAdapter<CloudTaskEntity> __updateAdapterOfCloudTaskEntity;

    public CloudTaskDao_Impl(@NonNull RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfCloudTaskEntity = new EntityInsertionAdapter<CloudTaskEntity>(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "INSERT OR REPLACE INTO `cloud_task` (`task_id`,`cloud_file_id`,`file_name`,`file_size`,`progress`,`local_file_id`,`local_file_path`,`task_type`,`task_status`,`file_type`,`mime_type`,`create_time`,`update_time`,`duration`,`download_source`,`isCloudFileExist`,`isLocalFileExist`,`cover_img_url`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override
            public void bind(@NonNull SupportSQLiteStatement supportSQLiteStatement, CloudTaskEntity cloudTaskEntity) {
                String str = cloudTaskEntity.taskId;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
                String str2 = cloudTaskEntity.cloudFileId;
                if (str2 == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, str2);
                }
                String str3 = cloudTaskEntity.fileName;
                if (str3 == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, str3);
                }
                supportSQLiteStatement.bindLong(4, cloudTaskEntity.fileSize);
                supportSQLiteStatement.bindDouble(5, cloudTaskEntity.progress);
                supportSQLiteStatement.bindLong(6, cloudTaskEntity.localFileId);
                String str4 = cloudTaskEntity.localFilePath;
                if (str4 == null) {
                    supportSQLiteStatement.bindNull(7);
                } else {
                    supportSQLiteStatement.bindString(7, str4);
                }
                supportSQLiteStatement.bindLong(8, cloudTaskEntity.taskType);
                supportSQLiteStatement.bindLong(9, cloudTaskEntity.taskStatus);
                supportSQLiteStatement.bindLong(10, cloudTaskEntity.fileType);
                String str5 = cloudTaskEntity.mimeType;
                if (str5 == null) {
                    supportSQLiteStatement.bindNull(11);
                } else {
                    supportSQLiteStatement.bindString(11, str5);
                }
                supportSQLiteStatement.bindLong(12, cloudTaskEntity.createTime);
                supportSQLiteStatement.bindLong(13, cloudTaskEntity.updateTime);
                supportSQLiteStatement.bindLong(14, cloudTaskEntity.duration);
                supportSQLiteStatement.bindLong(15, cloudTaskEntity.downloadSource);
                supportSQLiteStatement.bindLong(16, cloudTaskEntity.isCloudFileExist ? 1L : 0L);
                supportSQLiteStatement.bindLong(17, cloudTaskEntity.isLocalFileExist ? 1L : 0L);
                String str6 = cloudTaskEntity.imgUrl;
                if (str6 == null) {
                    supportSQLiteStatement.bindNull(18);
                } else {
                    supportSQLiteStatement.bindString(18, str6);
                }
            }
        };
        this.__deletionAdapterOfCloudTaskEntity = new EntityDeletionOrUpdateAdapter<CloudTaskEntity>(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "DELETE FROM `cloud_task` WHERE `task_id` = ?";
            }

            @Override
            public void bind(@NonNull SupportSQLiteStatement supportSQLiteStatement, CloudTaskEntity cloudTaskEntity) {
                String str = cloudTaskEntity.taskId;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
            }
        };
        this.__updateAdapterOfCloudTaskEntity = new EntityDeletionOrUpdateAdapter<CloudTaskEntity>(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE OR ABORT `cloud_task` SET `task_id` = ?,`cloud_file_id` = ?,`file_name` = ?,`file_size` = ?,`progress` = ?,`local_file_id` = ?,`local_file_path` = ?,`task_type` = ?,`task_status` = ?,`file_type` = ?,`mime_type` = ?,`create_time` = ?,`update_time` = ?,`duration` = ?,`download_source` = ?,`isCloudFileExist` = ?,`isLocalFileExist` = ?,`cover_img_url` = ? WHERE `task_id` = ?";
            }

            @Override
            public void bind(@NonNull SupportSQLiteStatement supportSQLiteStatement, CloudTaskEntity cloudTaskEntity) {
                String str = cloudTaskEntity.taskId;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
                String str2 = cloudTaskEntity.cloudFileId;
                if (str2 == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, str2);
                }
                String str3 = cloudTaskEntity.fileName;
                if (str3 == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, str3);
                }
                supportSQLiteStatement.bindLong(4, cloudTaskEntity.fileSize);
                supportSQLiteStatement.bindDouble(5, cloudTaskEntity.progress);
                supportSQLiteStatement.bindLong(6, cloudTaskEntity.localFileId);
                String str4 = cloudTaskEntity.localFilePath;
                if (str4 == null) {
                    supportSQLiteStatement.bindNull(7);
                } else {
                    supportSQLiteStatement.bindString(7, str4);
                }
                supportSQLiteStatement.bindLong(8, cloudTaskEntity.taskType);
                supportSQLiteStatement.bindLong(9, cloudTaskEntity.taskStatus);
                supportSQLiteStatement.bindLong(10, cloudTaskEntity.fileType);
                String str5 = cloudTaskEntity.mimeType;
                if (str5 == null) {
                    supportSQLiteStatement.bindNull(11);
                } else {
                    supportSQLiteStatement.bindString(11, str5);
                }
                supportSQLiteStatement.bindLong(12, cloudTaskEntity.createTime);
                supportSQLiteStatement.bindLong(13, cloudTaskEntity.updateTime);
                supportSQLiteStatement.bindLong(14, cloudTaskEntity.duration);
                supportSQLiteStatement.bindLong(15, cloudTaskEntity.downloadSource);
                supportSQLiteStatement.bindLong(16, cloudTaskEntity.isCloudFileExist ? 1L : 0L);
                supportSQLiteStatement.bindLong(17, cloudTaskEntity.isLocalFileExist ? 1L : 0L);
                String str6 = cloudTaskEntity.imgUrl;
                if (str6 == null) {
                    supportSQLiteStatement.bindNull(18);
                } else {
                    supportSQLiteStatement.bindString(18, str6);
                }
                String str7 = cloudTaskEntity.taskId;
                if (str7 == null) {
                    supportSQLiteStatement.bindNull(19);
                } else {
                    supportSQLiteStatement.bindString(19, str7);
                }
            }
        };
        this.__preparedStmtOfDeleteTaskById = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "DELETE FROM cloud_task WHERE task_id = ?";
            }
        };
        this.__preparedStmtOfDeleteAllTasks = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "DELETE FROM cloud_task";
            }
        };
        this.__preparedStmtOfDeleteAllCloudTask = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "DELETE FROM cloud_task WHERE task_type = 1 OR (task_type = 2 AND download_source = 1)";
            }
        };
        this.__preparedStmtOfUpdateTaskProgress = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE cloud_task SET progress = ?, update_time = ? WHERE task_id = ?";
            }
        };
        this.__preparedStmtOfUpdateTaskStatusAndProgress = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE cloud_task SET task_status = ?, progress = ?, update_time = ? WHERE task_id = ?";
            }
        };
        this.__preparedStmtOfUpdateUploadTaskToFinished = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE cloud_task SET local_file_id = ?,progress = 1.0, task_status = 5, update_time = ?, cloud_file_id = ?, file_name = ?,mime_type =?,file_type =?, isCloudFileExist = 1,isLocalFileExist = 1  WHERE task_id = ?";
            }
        };
        this.__preparedStmtOfUpdateUploadTaskToFinished_1 = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE cloud_task SET local_file_id = ?,progress = 1.0, task_status = 5, update_time = ?, cloud_file_id = ?, file_name = ?,isCloudFileExist = 1,isLocalFileExist = 1  WHERE task_id = ?";
            }
        };
        this.__preparedStmtOfUpdateDownloadTaskToFinished = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE cloud_task SET local_file_id = ?,progress = 1.0, task_status = 5, update_time = ?, local_file_path = ?, file_name = ?, download_source = ?,mime_type =?,file_type =?,isLocalFileExist = 1,isCloudFileExist = CASE WHEN ? = 1 THEN 1 ELSE 0 END WHERE task_id = ?";
            }
        };
        this.__preparedStmtOfUpdateDownloadTaskToFinished_1 = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE cloud_task SET local_file_id = ?,progress = 1.0, task_status = 5, update_time = ?, local_file_path = ?, file_name = ?, download_source = ?,isLocalFileExist = 1,isCloudFileExist = CASE WHEN ? = 1 THEN 1 ELSE 0 END WHERE task_id = ?";
            }
        };
        this.__preparedStmtOfUpdateTaskStatus = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE cloud_task SET task_status = ?, update_time = ? WHERE task_id = ?";
            }
        };
        this.__preparedStmtOfUpdateTaskFileName = new SharedSQLiteStatement(roomDatabase) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE cloud_task SET file_name = ?, update_time = ? WHERE task_id = ?";
            }
        };
    }

    @NonNull
    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override
    public void deleteAllCloudTask() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDeleteAllCloudTask.acquire();
        try {
            this.__db.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfDeleteAllCloudTask.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfDeleteAllCloudTask.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void deleteAllTasks() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDeleteAllTasks.acquire();
        try {
            this.__db.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfDeleteAllTasks.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfDeleteAllTasks.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void deleteTask(CloudTaskEntity cloudTaskEntity) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__deletionAdapterOfCloudTaskEntity.handle(cloudTaskEntity);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public void deleteTaskById(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDeleteTaskById.acquire();
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfDeleteTaskById.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfDeleteTaskById.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void deleteTasks(List<CloudTaskEntity> list) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__deletionAdapterOfCloudTaskEntity.handleMultiple(list);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public void deleteTasksByIds(List<String> list) {
        this.__db.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM cloud_task WHERE task_id IN (");
        int i = 1;
        StringUtil.appendPlaceholders(sbNewStringBuilder, list == null ? 1 : list.size());
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.__db.compileStatement(sbNewStringBuilder.toString());
        if (list == null) {
            supportSQLiteStatementCompileStatement.bindNull(1);
        } else {
            for (String str : list) {
                if (str == null) {
                    supportSQLiteStatementCompileStatement.bindNull(i);
                } else {
                    supportSQLiteStatementCompileStatement.bindString(i, str);
                }
                i++;
            }
        }
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementCompileStatement.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public List<CloudTaskEntity> getAllDownloadedTask() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_type = 2 AND task_status = 5 ORDER BY update_time DESC", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        cloudTaskEntity.taskId = null;
                    } else {
                        cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        cloudTaskEntity.cloudFileId = null;
                    } else {
                        cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        cloudTaskEntity.fileName = null;
                    } else {
                        cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    int i2 = columnIndexOrThrow;
                    cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                    cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                    cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        cloudTaskEntity.localFilePath = null;
                    } else {
                        cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                    cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                    cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        cloudTaskEntity.mimeType = null;
                    } else {
                        cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                    cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                    int i3 = i;
                    int i4 = columnIndexOrThrow13;
                    cloudTaskEntity.duration = cursorQuery.getLong(i3);
                    int i5 = columnIndexOrThrow15;
                    cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                    int i6 = columnIndexOrThrow16;
                    cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                    int i7 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i7)) {
                        cloudTaskEntity.imgUrl = null;
                    } else {
                        cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                    }
                    arrayList = arrayList;
                    arrayList.add(cloudTaskEntity);
                    columnIndexOrThrow18 = i7;
                    columnIndexOrThrow = i2;
                    columnIndexOrThrow16 = i6;
                    columnIndexOrThrow13 = i4;
                    i = i3;
                    columnIndexOrThrow15 = i5;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public LiveData<List<CloudTaskEntity>> getAllDownloadedTaskLiveData() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_type = 2 AND task_status = 5 ORDER BY update_time DESC", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"cloud_task"}, false, new Callable<List<CloudTaskEntity>>() {
            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }

            @Override
            @Nullable
            public List<CloudTaskEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(CloudTaskDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                    int i = columnIndexOrThrow14;
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                        if (cursorQuery.isNull(columnIndexOrThrow)) {
                            cloudTaskEntity.taskId = null;
                        } else {
                            cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow2)) {
                            cloudTaskEntity.cloudFileId = null;
                        } else {
                            cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow3)) {
                            cloudTaskEntity.fileName = null;
                        } else {
                            cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                        }
                        int i2 = columnIndexOrThrow2;
                        cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                        cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                        cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                        if (cursorQuery.isNull(columnIndexOrThrow7)) {
                            cloudTaskEntity.localFilePath = null;
                        } else {
                            cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                        }
                        cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                        cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                        cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                        if (cursorQuery.isNull(columnIndexOrThrow11)) {
                            cloudTaskEntity.mimeType = null;
                        } else {
                            cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                        }
                        cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                        cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                        int i3 = i;
                        int i4 = columnIndexOrThrow3;
                        cloudTaskEntity.duration = cursorQuery.getLong(i3);
                        int i5 = columnIndexOrThrow15;
                        cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                        int i6 = columnIndexOrThrow16;
                        cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                        columnIndexOrThrow17 = columnIndexOrThrow17;
                        cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                        int i7 = columnIndexOrThrow18;
                        if (cursorQuery.isNull(i7)) {
                            cloudTaskEntity.imgUrl = null;
                        } else {
                            cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                        }
                        arrayList = arrayList;
                        arrayList.add(cloudTaskEntity);
                        columnIndexOrThrow18 = i7;
                        columnIndexOrThrow = columnIndexOrThrow;
                        columnIndexOrThrow15 = i5;
                        columnIndexOrThrow2 = i2;
                        columnIndexOrThrow16 = i6;
                        columnIndexOrThrow3 = i4;
                        i = i3;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }
        });
    }

    @Override
    public List<CloudTaskEntity> getAllDownloadingTask() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_type = 2 AND task_status != 5 ORDER BY create_time DESC", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        cloudTaskEntity.taskId = null;
                    } else {
                        cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        cloudTaskEntity.cloudFileId = null;
                    } else {
                        cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        cloudTaskEntity.fileName = null;
                    } else {
                        cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    int i2 = columnIndexOrThrow;
                    cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                    cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                    cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        cloudTaskEntity.localFilePath = null;
                    } else {
                        cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                    cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                    cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        cloudTaskEntity.mimeType = null;
                    } else {
                        cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                    cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                    int i3 = i;
                    int i4 = columnIndexOrThrow13;
                    cloudTaskEntity.duration = cursorQuery.getLong(i3);
                    int i5 = columnIndexOrThrow15;
                    cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                    int i6 = columnIndexOrThrow16;
                    cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                    int i7 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i7)) {
                        cloudTaskEntity.imgUrl = null;
                    } else {
                        cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                    }
                    arrayList = arrayList;
                    arrayList.add(cloudTaskEntity);
                    columnIndexOrThrow18 = i7;
                    columnIndexOrThrow = i2;
                    columnIndexOrThrow16 = i6;
                    columnIndexOrThrow13 = i4;
                    i = i3;
                    columnIndexOrThrow15 = i5;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public LiveData<List<CloudTaskEntity>> getAllDownloadingTaskLiveData() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_type = 2 AND task_status != 5 ORDER BY create_time DESC", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"cloud_task"}, false, new Callable<List<CloudTaskEntity>>() {
            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }

            @Override
            @Nullable
            public List<CloudTaskEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(CloudTaskDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                    int i = columnIndexOrThrow14;
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                        if (cursorQuery.isNull(columnIndexOrThrow)) {
                            cloudTaskEntity.taskId = null;
                        } else {
                            cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow2)) {
                            cloudTaskEntity.cloudFileId = null;
                        } else {
                            cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow3)) {
                            cloudTaskEntity.fileName = null;
                        } else {
                            cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                        }
                        int i2 = columnIndexOrThrow2;
                        cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                        cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                        cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                        if (cursorQuery.isNull(columnIndexOrThrow7)) {
                            cloudTaskEntity.localFilePath = null;
                        } else {
                            cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                        }
                        cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                        cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                        cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                        if (cursorQuery.isNull(columnIndexOrThrow11)) {
                            cloudTaskEntity.mimeType = null;
                        } else {
                            cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                        }
                        cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                        cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                        int i3 = i;
                        int i4 = columnIndexOrThrow3;
                        cloudTaskEntity.duration = cursorQuery.getLong(i3);
                        int i5 = columnIndexOrThrow15;
                        cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                        int i6 = columnIndexOrThrow16;
                        cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                        columnIndexOrThrow17 = columnIndexOrThrow17;
                        cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                        int i7 = columnIndexOrThrow18;
                        if (cursorQuery.isNull(i7)) {
                            cloudTaskEntity.imgUrl = null;
                        } else {
                            cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                        }
                        arrayList = arrayList;
                        arrayList.add(cloudTaskEntity);
                        columnIndexOrThrow18 = i7;
                        columnIndexOrThrow = columnIndexOrThrow;
                        columnIndexOrThrow15 = i5;
                        columnIndexOrThrow2 = i2;
                        columnIndexOrThrow16 = i6;
                        columnIndexOrThrow3 = i4;
                        i = i3;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }
        });
    }

    @Override
    public List<CloudTaskEntity> getAllFinishTask() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_status = 5 ORDER BY update_time DESC", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        cloudTaskEntity.taskId = null;
                    } else {
                        cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        cloudTaskEntity.cloudFileId = null;
                    } else {
                        cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        cloudTaskEntity.fileName = null;
                    } else {
                        cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    int i2 = columnIndexOrThrow;
                    cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                    cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                    cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        cloudTaskEntity.localFilePath = null;
                    } else {
                        cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                    cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                    cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        cloudTaskEntity.mimeType = null;
                    } else {
                        cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                    cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                    int i3 = i;
                    int i4 = columnIndexOrThrow13;
                    cloudTaskEntity.duration = cursorQuery.getLong(i3);
                    int i5 = columnIndexOrThrow15;
                    cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                    int i6 = columnIndexOrThrow16;
                    cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                    int i7 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i7)) {
                        cloudTaskEntity.imgUrl = null;
                    } else {
                        cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                    }
                    arrayList = arrayList;
                    arrayList.add(cloudTaskEntity);
                    columnIndexOrThrow18 = i7;
                    columnIndexOrThrow = i2;
                    columnIndexOrThrow16 = i6;
                    columnIndexOrThrow13 = i4;
                    i = i3;
                    columnIndexOrThrow15 = i5;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public LiveData<List<CloudTaskEntity>> getAllFinishTaskLiveData() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_status = 5 ORDER BY update_time DESC", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"cloud_task"}, false, new Callable<List<CloudTaskEntity>>() {
            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }

            @Override
            @Nullable
            public List<CloudTaskEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(CloudTaskDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                    int i = columnIndexOrThrow14;
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                        if (cursorQuery.isNull(columnIndexOrThrow)) {
                            cloudTaskEntity.taskId = null;
                        } else {
                            cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow2)) {
                            cloudTaskEntity.cloudFileId = null;
                        } else {
                            cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow3)) {
                            cloudTaskEntity.fileName = null;
                        } else {
                            cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                        }
                        int i2 = columnIndexOrThrow2;
                        cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                        cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                        cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                        if (cursorQuery.isNull(columnIndexOrThrow7)) {
                            cloudTaskEntity.localFilePath = null;
                        } else {
                            cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                        }
                        cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                        cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                        cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                        if (cursorQuery.isNull(columnIndexOrThrow11)) {
                            cloudTaskEntity.mimeType = null;
                        } else {
                            cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                        }
                        cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                        cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                        int i3 = i;
                        int i4 = columnIndexOrThrow3;
                        cloudTaskEntity.duration = cursorQuery.getLong(i3);
                        int i5 = columnIndexOrThrow15;
                        cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                        int i6 = columnIndexOrThrow16;
                        cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                        columnIndexOrThrow17 = columnIndexOrThrow17;
                        cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                        int i7 = columnIndexOrThrow18;
                        if (cursorQuery.isNull(i7)) {
                            cloudTaskEntity.imgUrl = null;
                        } else {
                            cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                        }
                        arrayList = arrayList;
                        arrayList.add(cloudTaskEntity);
                        columnIndexOrThrow18 = i7;
                        columnIndexOrThrow = columnIndexOrThrow;
                        columnIndexOrThrow15 = i5;
                        columnIndexOrThrow2 = i2;
                        columnIndexOrThrow16 = i6;
                        columnIndexOrThrow3 = i4;
                        i = i3;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }
        });
    }

    @Override
    public List<CloudTaskEntity> getAllUploadedTask() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_type = 1 AND task_status = 5 ORDER BY update_time DESC", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        cloudTaskEntity.taskId = null;
                    } else {
                        cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        cloudTaskEntity.cloudFileId = null;
                    } else {
                        cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        cloudTaskEntity.fileName = null;
                    } else {
                        cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    int i2 = columnIndexOrThrow;
                    cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                    cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                    cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        cloudTaskEntity.localFilePath = null;
                    } else {
                        cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                    cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                    cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        cloudTaskEntity.mimeType = null;
                    } else {
                        cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                    cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                    int i3 = i;
                    int i4 = columnIndexOrThrow13;
                    cloudTaskEntity.duration = cursorQuery.getLong(i3);
                    int i5 = columnIndexOrThrow15;
                    cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                    int i6 = columnIndexOrThrow16;
                    cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                    int i7 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i7)) {
                        cloudTaskEntity.imgUrl = null;
                    } else {
                        cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                    }
                    arrayList = arrayList;
                    arrayList.add(cloudTaskEntity);
                    columnIndexOrThrow18 = i7;
                    columnIndexOrThrow = i2;
                    columnIndexOrThrow16 = i6;
                    columnIndexOrThrow13 = i4;
                    i = i3;
                    columnIndexOrThrow15 = i5;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public LiveData<List<CloudTaskEntity>> getAllUploadedTaskLiveData() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_type = 1 AND task_status = 5 ORDER BY update_time DESC", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"cloud_task"}, false, new Callable<List<CloudTaskEntity>>() {
            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }

            @Override
            @Nullable
            public List<CloudTaskEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(CloudTaskDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                    int i = columnIndexOrThrow14;
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                        if (cursorQuery.isNull(columnIndexOrThrow)) {
                            cloudTaskEntity.taskId = null;
                        } else {
                            cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow2)) {
                            cloudTaskEntity.cloudFileId = null;
                        } else {
                            cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow3)) {
                            cloudTaskEntity.fileName = null;
                        } else {
                            cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                        }
                        int i2 = columnIndexOrThrow2;
                        cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                        cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                        cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                        if (cursorQuery.isNull(columnIndexOrThrow7)) {
                            cloudTaskEntity.localFilePath = null;
                        } else {
                            cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                        }
                        cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                        cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                        cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                        if (cursorQuery.isNull(columnIndexOrThrow11)) {
                            cloudTaskEntity.mimeType = null;
                        } else {
                            cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                        }
                        cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                        cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                        int i3 = i;
                        int i4 = columnIndexOrThrow3;
                        cloudTaskEntity.duration = cursorQuery.getLong(i3);
                        int i5 = columnIndexOrThrow15;
                        cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                        int i6 = columnIndexOrThrow16;
                        cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                        columnIndexOrThrow17 = columnIndexOrThrow17;
                        cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                        int i7 = columnIndexOrThrow18;
                        if (cursorQuery.isNull(i7)) {
                            cloudTaskEntity.imgUrl = null;
                        } else {
                            cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                        }
                        arrayList = arrayList;
                        arrayList.add(cloudTaskEntity);
                        columnIndexOrThrow18 = i7;
                        columnIndexOrThrow = columnIndexOrThrow;
                        columnIndexOrThrow15 = i5;
                        columnIndexOrThrow2 = i2;
                        columnIndexOrThrow16 = i6;
                        columnIndexOrThrow3 = i4;
                        i = i3;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }
        });
    }

    @Override
    public List<CloudTaskEntity> getAllUploadingTask() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_type = 1 AND task_status != 5 ORDER BY create_time DESC", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        cloudTaskEntity.taskId = null;
                    } else {
                        cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        cloudTaskEntity.cloudFileId = null;
                    } else {
                        cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        cloudTaskEntity.fileName = null;
                    } else {
                        cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    int i2 = columnIndexOrThrow;
                    cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                    cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                    cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        cloudTaskEntity.localFilePath = null;
                    } else {
                        cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                    cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                    cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        cloudTaskEntity.mimeType = null;
                    } else {
                        cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                    cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                    int i3 = i;
                    int i4 = columnIndexOrThrow13;
                    cloudTaskEntity.duration = cursorQuery.getLong(i3);
                    int i5 = columnIndexOrThrow15;
                    cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                    int i6 = columnIndexOrThrow16;
                    cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                    int i7 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i7)) {
                        cloudTaskEntity.imgUrl = null;
                    } else {
                        cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                    }
                    arrayList = arrayList;
                    arrayList.add(cloudTaskEntity);
                    columnIndexOrThrow18 = i7;
                    columnIndexOrThrow = i2;
                    columnIndexOrThrow16 = i6;
                    columnIndexOrThrow13 = i4;
                    i = i3;
                    columnIndexOrThrow15 = i5;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public LiveData<List<CloudTaskEntity>> getAllUploadingTaskLiveData() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_type = 1 AND task_status != 5 ORDER BY create_time DESC", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"cloud_task"}, false, new Callable<List<CloudTaskEntity>>() {
            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }

            @Override
            @Nullable
            public List<CloudTaskEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(CloudTaskDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                    int i = columnIndexOrThrow14;
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                        if (cursorQuery.isNull(columnIndexOrThrow)) {
                            cloudTaskEntity.taskId = null;
                        } else {
                            cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow2)) {
                            cloudTaskEntity.cloudFileId = null;
                        } else {
                            cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow3)) {
                            cloudTaskEntity.fileName = null;
                        } else {
                            cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                        }
                        int i2 = columnIndexOrThrow2;
                        cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                        cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                        cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                        if (cursorQuery.isNull(columnIndexOrThrow7)) {
                            cloudTaskEntity.localFilePath = null;
                        } else {
                            cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                        }
                        cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                        cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                        cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                        if (cursorQuery.isNull(columnIndexOrThrow11)) {
                            cloudTaskEntity.mimeType = null;
                        } else {
                            cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                        }
                        cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                        cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                        int i3 = i;
                        int i4 = columnIndexOrThrow3;
                        cloudTaskEntity.duration = cursorQuery.getLong(i3);
                        int i5 = columnIndexOrThrow15;
                        cloudTaskEntity.downloadSource = cursorQuery.getInt(i5);
                        int i6 = columnIndexOrThrow16;
                        cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i6) != 0;
                        columnIndexOrThrow17 = columnIndexOrThrow17;
                        cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                        int i7 = columnIndexOrThrow18;
                        if (cursorQuery.isNull(i7)) {
                            cloudTaskEntity.imgUrl = null;
                        } else {
                            cloudTaskEntity.imgUrl = cursorQuery.getString(i7);
                        }
                        arrayList = arrayList;
                        arrayList.add(cloudTaskEntity);
                        columnIndexOrThrow18 = i7;
                        columnIndexOrThrow = columnIndexOrThrow;
                        columnIndexOrThrow15 = i5;
                        columnIndexOrThrow2 = i2;
                        columnIndexOrThrow16 = i6;
                        columnIndexOrThrow3 = i4;
                        i = i3;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }
        });
    }

    @Override
    public CloudTaskEntity getTaskById(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        CloudTaskEntity cloudTaskEntity;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_id = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                if (cursorQuery.moveToFirst()) {
                    CloudTaskEntity cloudTaskEntity2 = new CloudTaskEntity();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        cloudTaskEntity2.taskId = null;
                    } else {
                        cloudTaskEntity2.taskId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        cloudTaskEntity2.cloudFileId = null;
                    } else {
                        cloudTaskEntity2.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        cloudTaskEntity2.fileName = null;
                    } else {
                        cloudTaskEntity2.fileName = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    cloudTaskEntity2.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                    cloudTaskEntity2.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                    cloudTaskEntity2.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        cloudTaskEntity2.localFilePath = null;
                    } else {
                        cloudTaskEntity2.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    cloudTaskEntity2.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                    cloudTaskEntity2.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                    cloudTaskEntity2.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        cloudTaskEntity2.mimeType = null;
                    } else {
                        cloudTaskEntity2.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    cloudTaskEntity2.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                    cloudTaskEntity2.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                    cloudTaskEntity2.duration = cursorQuery.getLong(columnIndexOrThrow14);
                    cloudTaskEntity2.downloadSource = cursorQuery.getInt(columnIndexOrThrow15);
                    cloudTaskEntity2.isCloudFileExist = cursorQuery.getInt(columnIndexOrThrow16) != 0;
                    cloudTaskEntity2.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                    if (cursorQuery.isNull(columnIndexOrThrow18)) {
                        cloudTaskEntity2.imgUrl = null;
                    } else {
                        cloudTaskEntity2.imgUrl = cursorQuery.getString(columnIndexOrThrow18);
                    }
                    cloudTaskEntity = cloudTaskEntity2;
                } else {
                    cloudTaskEntity = null;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return cloudTaskEntity;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public LiveData<CloudTaskEntity> getTaskByIdLiveData(String str) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_id = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"cloud_task"}, false, new Callable<CloudTaskEntity>() {
            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            @Nullable
            public CloudTaskEntity call() throws Exception {
                CloudTaskEntity cloudTaskEntity;
                Cursor cursorQuery = DBUtil.query(CloudTaskDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                    int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                    int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                    int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                    int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                    if (cursorQuery.moveToFirst()) {
                        cloudTaskEntity = new CloudTaskEntity();
                        if (cursorQuery.isNull(columnIndexOrThrow)) {
                            cloudTaskEntity.taskId = null;
                        } else {
                            cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow2)) {
                            cloudTaskEntity.cloudFileId = null;
                        } else {
                            cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                        }
                        if (cursorQuery.isNull(columnIndexOrThrow3)) {
                            cloudTaskEntity.fileName = null;
                        } else {
                            cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                        }
                        cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                        cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                        cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                        if (cursorQuery.isNull(columnIndexOrThrow7)) {
                            cloudTaskEntity.localFilePath = null;
                        } else {
                            cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                        }
                        cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                        cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                        cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                        if (cursorQuery.isNull(columnIndexOrThrow11)) {
                            cloudTaskEntity.mimeType = null;
                        } else {
                            cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                        }
                        cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                        cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                        cloudTaskEntity.duration = cursorQuery.getLong(columnIndexOrThrow14);
                        cloudTaskEntity.downloadSource = cursorQuery.getInt(columnIndexOrThrow15);
                        boolean z = true;
                        cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(columnIndexOrThrow16) != 0;
                        if (cursorQuery.getInt(columnIndexOrThrow17) == 0) {
                            z = false;
                        }
                        cloudTaskEntity.isLocalFileExist = z;
                        if (cursorQuery.isNull(columnIndexOrThrow18)) {
                            cloudTaskEntity.imgUrl = null;
                        } else {
                            cloudTaskEntity.imgUrl = cursorQuery.getString(columnIndexOrThrow18);
                        }
                    } else {
                        cloudTaskEntity = null;
                    }
                    return cloudTaskEntity;
                } finally {
                    cursorQuery.close();
                }
            }
        });
    }

    @Override
    public int getTaskCountByTypeAndStatus(int i, int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) FROM cloud_task WHERE task_type = ? AND task_status = ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i);
        roomSQLiteQueryAcquire.bindLong(2, i2);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            return cursorQuery.moveToFirst() ? cursorQuery.getInt(0) : 0;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData<Integer> getTaskCountLiveData() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) FROM cloud_task", 0);
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"cloud_task"}, false, new Callable<Integer>() {
            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            @Nullable
            public Integer call() throws Exception {
                Integer numValueOf = null;
                Cursor cursorQuery = DBUtil.query(CloudTaskDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    if (cursorQuery.moveToFirst() && !cursorQuery.isNull(0)) {
                        numValueOf = Integer.valueOf(cursorQuery.getInt(0));
                    }
                    return numValueOf;
                } finally {
                    cursorQuery.close();
                }
            }
        });
    }

    @Override
    public List<CloudTaskEntity> getTasksByCloudFileId(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE cloud_file_id = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        cloudTaskEntity.taskId = null;
                    } else {
                        cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        cloudTaskEntity.cloudFileId = null;
                    } else {
                        cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        cloudTaskEntity.fileName = null;
                    } else {
                        cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    int i2 = columnIndexOrThrow2;
                    int i3 = columnIndexOrThrow3;
                    cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                    cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                    cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        cloudTaskEntity.localFilePath = null;
                    } else {
                        cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                    cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                    cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        cloudTaskEntity.mimeType = null;
                    } else {
                        cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                    cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                    int i4 = columnIndexOrThrow;
                    int i5 = i;
                    int i6 = columnIndexOrThrow12;
                    cloudTaskEntity.duration = cursorQuery.getLong(i5);
                    columnIndexOrThrow15 = columnIndexOrThrow15;
                    cloudTaskEntity.downloadSource = cursorQuery.getInt(columnIndexOrThrow15);
                    columnIndexOrThrow16 = columnIndexOrThrow16;
                    cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(columnIndexOrThrow16) != 0;
                    int i7 = columnIndexOrThrow17;
                    columnIndexOrThrow17 = i7;
                    cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(i7) != 0;
                    int i8 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i8)) {
                        cloudTaskEntity.imgUrl = null;
                    } else {
                        cloudTaskEntity.imgUrl = cursorQuery.getString(i8);
                    }
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add(cloudTaskEntity);
                    columnIndexOrThrow18 = i8;
                    columnIndexOrThrow = i4;
                    columnIndexOrThrow3 = i3;
                    arrayList = arrayList2;
                    columnIndexOrThrow12 = i6;
                    i = i5;
                    columnIndexOrThrow2 = i2;
                }
                ArrayList arrayList3 = arrayList;
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList3;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List<CloudTaskEntity> getTasksByLocalFilePath(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE local_file_path = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        cloudTaskEntity.taskId = null;
                    } else {
                        cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        cloudTaskEntity.cloudFileId = null;
                    } else {
                        cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        cloudTaskEntity.fileName = null;
                    } else {
                        cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    int i2 = columnIndexOrThrow2;
                    int i3 = columnIndexOrThrow3;
                    cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                    cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                    cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        cloudTaskEntity.localFilePath = null;
                    } else {
                        cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                    cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                    cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        cloudTaskEntity.mimeType = null;
                    } else {
                        cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                    cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                    int i4 = columnIndexOrThrow;
                    int i5 = i;
                    int i6 = columnIndexOrThrow12;
                    cloudTaskEntity.duration = cursorQuery.getLong(i5);
                    columnIndexOrThrow15 = columnIndexOrThrow15;
                    cloudTaskEntity.downloadSource = cursorQuery.getInt(columnIndexOrThrow15);
                    columnIndexOrThrow16 = columnIndexOrThrow16;
                    cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(columnIndexOrThrow16) != 0;
                    int i7 = columnIndexOrThrow17;
                    columnIndexOrThrow17 = i7;
                    cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(i7) != 0;
                    int i8 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i8)) {
                        cloudTaskEntity.imgUrl = null;
                    } else {
                        cloudTaskEntity.imgUrl = cursorQuery.getString(i8);
                    }
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add(cloudTaskEntity);
                    columnIndexOrThrow18 = i8;
                    columnIndexOrThrow = i4;
                    columnIndexOrThrow3 = i3;
                    arrayList = arrayList2;
                    columnIndexOrThrow12 = i6;
                    i = i5;
                    columnIndexOrThrow2 = i2;
                }
                ArrayList arrayList3 = arrayList;
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList3;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List<CloudTaskEntity> getTasksByStatusWithPaging(int i, int i2, int i3) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM cloud_task WHERE task_status = ? ORDER BY update_time DESC LIMIT ? OFFSET ?", 3);
        roomSQLiteQueryAcquire.bindLong(1, i);
        roomSQLiteQueryAcquire.bindLong(2, i2);
        roomSQLiteQueryAcquire.bindLong(3, i3);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cloud_file_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_size");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "progress");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "local_file_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "task_status");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_FILE_TYPE);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mime_type");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "download_source");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isCloudFileExist");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isLocalFileExist");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover_img_url");
                int i4 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        cloudTaskEntity.taskId = null;
                    } else {
                        cloudTaskEntity.taskId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        cloudTaskEntity.cloudFileId = null;
                    } else {
                        cloudTaskEntity.cloudFileId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        cloudTaskEntity.fileName = null;
                    } else {
                        cloudTaskEntity.fileName = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    int i5 = columnIndexOrThrow;
                    cloudTaskEntity.fileSize = cursorQuery.getLong(columnIndexOrThrow4);
                    cloudTaskEntity.progress = cursorQuery.getFloat(columnIndexOrThrow5);
                    cloudTaskEntity.localFileId = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        cloudTaskEntity.localFilePath = null;
                    } else {
                        cloudTaskEntity.localFilePath = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    cloudTaskEntity.taskType = cursorQuery.getInt(columnIndexOrThrow8);
                    cloudTaskEntity.taskStatus = cursorQuery.getInt(columnIndexOrThrow9);
                    cloudTaskEntity.fileType = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        cloudTaskEntity.mimeType = null;
                    } else {
                        cloudTaskEntity.mimeType = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    cloudTaskEntity.createTime = cursorQuery.getLong(columnIndexOrThrow12);
                    cloudTaskEntity.updateTime = cursorQuery.getLong(columnIndexOrThrow13);
                    int i6 = i4;
                    int i7 = columnIndexOrThrow12;
                    cloudTaskEntity.duration = cursorQuery.getLong(i6);
                    columnIndexOrThrow15 = columnIndexOrThrow15;
                    cloudTaskEntity.downloadSource = cursorQuery.getInt(columnIndexOrThrow15);
                    int i8 = columnIndexOrThrow16;
                    cloudTaskEntity.isCloudFileExist = cursorQuery.getInt(i8) != 0;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    cloudTaskEntity.isLocalFileExist = cursorQuery.getInt(columnIndexOrThrow17) != 0;
                    int i9 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i9)) {
                        cloudTaskEntity.imgUrl = null;
                    } else {
                        cloudTaskEntity.imgUrl = cursorQuery.getString(i9);
                    }
                    arrayList = arrayList;
                    arrayList.add(cloudTaskEntity);
                    columnIndexOrThrow18 = i9;
                    columnIndexOrThrow = i5;
                    columnIndexOrThrow16 = i8;
                    columnIndexOrThrow12 = i7;
                    i4 = i6;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public void insertTask(CloudTaskEntity cloudTaskEntity) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfCloudTaskEntity.insert(cloudTaskEntity);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public void insertTasks(List<CloudTaskEntity> list) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfCloudTaskEntity.insert(list);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public int updateDownloadTaskToFinished(String str, int i, long j, int i2, String str2, String str3, String str4, int i3) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfUpdateDownloadTaskToFinished.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        supportSQLiteStatementAcquire.bindLong(2, j);
        if (str3 == null) {
            supportSQLiteStatementAcquire.bindNull(3);
        } else {
            supportSQLiteStatementAcquire.bindString(3, str3);
        }
        if (str2 == null) {
            supportSQLiteStatementAcquire.bindNull(4);
        } else {
            supportSQLiteStatementAcquire.bindString(4, str2);
        }
        long j2 = i2;
        supportSQLiteStatementAcquire.bindLong(5, j2);
        if (str4 == null) {
            supportSQLiteStatementAcquire.bindNull(6);
        } else {
            supportSQLiteStatementAcquire.bindString(6, str4);
        }
        supportSQLiteStatementAcquire.bindLong(7, i3);
        supportSQLiteStatementAcquire.bindLong(8, j2);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(9);
        } else {
            supportSQLiteStatementAcquire.bindString(9, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfUpdateDownloadTaskToFinished.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfUpdateDownloadTaskToFinished.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void updateTask(CloudTaskEntity cloudTaskEntity) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfCloudTaskEntity.handle(cloudTaskEntity);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public int updateTaskFileName(String str, String str2, long j) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfUpdateTaskFileName.acquire();
        if (str2 == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str2);
        }
        supportSQLiteStatementAcquire.bindLong(2, j);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(3);
        } else {
            supportSQLiteStatementAcquire.bindString(3, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfUpdateTaskFileName.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfUpdateTaskFileName.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void updateTaskProgress(String str, float f, long j) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfUpdateTaskProgress.acquire();
        supportSQLiteStatementAcquire.bindDouble(1, f);
        supportSQLiteStatementAcquire.bindLong(2, j);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(3);
        } else {
            supportSQLiteStatementAcquire.bindString(3, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfUpdateTaskProgress.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfUpdateTaskProgress.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void updateTaskStatus(String str, int i, long j) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfUpdateTaskStatus.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        supportSQLiteStatementAcquire.bindLong(2, j);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(3);
        } else {
            supportSQLiteStatementAcquire.bindString(3, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfUpdateTaskStatus.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfUpdateTaskStatus.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void updateTaskStatusAndProgress(String str, int i, float f, long j) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfUpdateTaskStatusAndProgress.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        supportSQLiteStatementAcquire.bindDouble(2, f);
        supportSQLiteStatementAcquire.bindLong(3, j);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(4);
        } else {
            supportSQLiteStatementAcquire.bindString(4, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfUpdateTaskStatusAndProgress.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfUpdateTaskStatusAndProgress.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void updateTasks(List<CloudTaskEntity> list) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfCloudTaskEntity.handleMultiple(list);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public int updateUploadTaskToFinished(String str, int i, long j, String str2, String str3, String str4, int i2) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfUpdateUploadTaskToFinished.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        supportSQLiteStatementAcquire.bindLong(2, j);
        if (str2 == null) {
            supportSQLiteStatementAcquire.bindNull(3);
        } else {
            supportSQLiteStatementAcquire.bindString(3, str2);
        }
        if (str3 == null) {
            supportSQLiteStatementAcquire.bindNull(4);
        } else {
            supportSQLiteStatementAcquire.bindString(4, str3);
        }
        if (str4 == null) {
            supportSQLiteStatementAcquire.bindNull(5);
        } else {
            supportSQLiteStatementAcquire.bindString(5, str4);
        }
        supportSQLiteStatementAcquire.bindLong(6, i2);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(7);
        } else {
            supportSQLiteStatementAcquire.bindString(7, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfUpdateUploadTaskToFinished.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfUpdateUploadTaskToFinished.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public int updateUploadTaskToFinished(String str, int i, long j, String str2, String str3) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfUpdateUploadTaskToFinished_1.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        supportSQLiteStatementAcquire.bindLong(2, j);
        if (str2 == null) {
            supportSQLiteStatementAcquire.bindNull(3);
        } else {
            supportSQLiteStatementAcquire.bindString(3, str2);
        }
        if (str3 == null) {
            supportSQLiteStatementAcquire.bindNull(4);
        } else {
            supportSQLiteStatementAcquire.bindString(4, str3);
        }
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(5);
        } else {
            supportSQLiteStatementAcquire.bindString(5, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfUpdateUploadTaskToFinished_1.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfUpdateUploadTaskToFinished_1.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public int updateDownloadTaskToFinished(String str, int i, long j, int i2, String str2, String str3) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfUpdateDownloadTaskToFinished_1.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        supportSQLiteStatementAcquire.bindLong(2, j);
        if (str3 == null) {
            supportSQLiteStatementAcquire.bindNull(3);
        } else {
            supportSQLiteStatementAcquire.bindString(3, str3);
        }
        if (str2 == null) {
            supportSQLiteStatementAcquire.bindNull(4);
        } else {
            supportSQLiteStatementAcquire.bindString(4, str2);
        }
        long j2 = i2;
        supportSQLiteStatementAcquire.bindLong(5, j2);
        supportSQLiteStatementAcquire.bindLong(6, j2);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(7);
        } else {
            supportSQLiteStatementAcquire.bindString(7, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                this.__db.endTransaction();
                this.__preparedStmtOfUpdateDownloadTaskToFinished_1.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.__db.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.__preparedStmtOfUpdateDownloadTaskToFinished_1.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }
}
