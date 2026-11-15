package com.transsion.cloudcore.db;

import android.database.Cursor;
import android.os.Looper;
import android.provider.MediaStore;
import android.util.Log;
import androidx.p004lifecycle.LiveData;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.utils.LoadDataUtils;
import defpackage.pp6;
import defpackage.se;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class CloudTransferRecordManager {
    private static final String TAG = "visha_cloud_CloudTaskManager";
    private static volatile CloudTransferRecordManager sInstance;
    private CloudTaskDao mCloudTaskDao;

    private CloudTransferRecordManager() {
        try {
            this.mCloudTaskDao = CloudTaskDatabase.getInstance().cloudTaskDao();
            LogUtils.w(TAG, "CloudTaskManager initialized successfully");
        } catch (Exception e) {
            LogUtils.m(TAG, "Failed to initialize CloudTaskManager: " + e.getMessage());
        }
    }

    public static CloudTransferRecordManager getInstance() {
        if (sInstance == null) {
            synchronized (CloudTransferRecordManager.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new CloudTransferRecordManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sInstance;
    }

    public void performDownloadTaskToFinished(String str, int i, String str2, String str3) {
        int iUpdateDownloadTaskToFinished;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            MediaItem mediaItemQueryMediaItemFromPath = queryMediaItemFromPath(str3);
            if (LoadDataUtils.m(mediaItemQueryMediaItemFromPath.id)) {
                iUpdateDownloadTaskToFinished = this.mCloudTaskDao.updateDownloadTaskToFinished(str, mediaItemQueryMediaItemFromPath.id, jCurrentTimeMillis, i, str2, str3, mediaItemQueryMediaItemFromPath.mineType, pp6.c(mediaItemQueryMediaItemFromPath.mineType, str2));
            } else {
                iUpdateDownloadTaskToFinished = this.mCloudTaskDao.updateDownloadTaskToFinished(str, mediaItemQueryMediaItemFromPath.id, jCurrentTimeMillis, i, str2, str3);
            }
            LogUtils.w(TAG, "Download task updated to finished successfully: " + iUpdateDownloadTaskToFinished + ", " + str + ", localFileName: " + str2 + ", localFilePath: " + str3 + ", downloadSource: " + i);
        } catch (Exception e) {
            LogUtils.m(TAG, "Failed to update download task to finished: " + e.getMessage());
        }
    }

    public void performUpdateTaskStatusAndProgress(String str, int i, float f) {
        try {
            this.mCloudTaskDao.updateTaskStatusAndProgress(str, i, f, System.currentTimeMillis());
            LogUtils.j(TAG, "performUpdateTaskStatusAndProgress success for taskId: " + str + ", status: " + i + ", progress: " + f);
        } catch (Exception e) {
            LogUtils.m(TAG, "performUpdateTaskStatusAndProgress failed for taskId: " + str + ", error: " + e.getMessage());
        }
    }

    public void performUpdateUploadTaskToFinished(String str, String str2, String str3, String str4) {
        int iUpdateUploadTaskToFinished;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            MediaItem mediaItemQueryMediaItemFromPath = queryMediaItemFromPath(str4);
            if (LoadDataUtils.m(mediaItemQueryMediaItemFromPath.id)) {
                iUpdateUploadTaskToFinished = this.mCloudTaskDao.updateUploadTaskToFinished(str, mediaItemQueryMediaItemFromPath.id, jCurrentTimeMillis, str2, str3, mediaItemQueryMediaItemFromPath.mineType, pp6.c(mediaItemQueryMediaItemFromPath.mineType, str3));
            } else {
                iUpdateUploadTaskToFinished = this.mCloudTaskDao.updateUploadTaskToFinished(str, mediaItemQueryMediaItemFromPath.id, jCurrentTimeMillis, str2, str3);
            }
            LogUtils.w(TAG, "Upload task updated to finished successfully: " + iUpdateUploadTaskToFinished + StringUtils.COMMA + str + ", cloudFileId: " + str2 + ", fileName: " + str3);
        } catch (Exception e) {
            LogUtils.m(TAG, "Failed to update upload task to finished: " + e.getMessage());
        }
    }

    public static MediaItem queryMediaItemFromPath(String str) {
        String[] strArr = {str};
        MediaItem mediaItem = new MediaItem();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = se.a().getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{"_id", "mime_type"}, "_data = ?", strArr, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mediaItem;
                }
                if (cursorQuery.moveToFirst()) {
                    mediaItem.id = cursorQuery.getInt(0);
                    mediaItem.mineType = cursorQuery.getString(1);
                }
                cursorQuery.close();
                return mediaItem;
            } catch (Exception e) {
                Log.e(TAG, "queryMediaIdFromPath: " + e.getMessage());
                if (0 != 0) {
                }
                return mediaItem;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static void release() {
        try {
            CloudTaskDatabase.closeDatabase();
            sInstance = null;
            LogUtils.w(TAG, "CloudTaskManager released");
        } catch (Exception e) {
            LogUtils.m(TAG, "Failed to release CloudTaskManager: " + e.getMessage());
        }
    }

    public void clearAllTasks() {
        ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
            @Override
            public void onSuccess(Void r1) {
            }

            @Override
            public Void doInBackground() {
                try {
                    CloudTransferRecordManager.this.mCloudTaskDao.deleteAllTasks();
                    LogUtils.w(CloudTransferRecordManager.TAG, "All tasks cleared successfully");
                    return null;
                } catch (Exception e) {
                    LogUtils.m(CloudTransferRecordManager.TAG, "Failed to clear all tasks: " + e.getMessage());
                    return null;
                }
            }
        });
    }

    public void createCloudTaskEntity(final CloudTaskEntity cloudTaskEntity, final boolean z) {
        if (cloudTaskEntity == null) {
            LogUtils.m(TAG, "createCloudTaskEntity failed: task is null");
            return;
        }
        String str = cloudTaskEntity.taskId;
        if (str == null || str.isEmpty()) {
            LogUtils.m(TAG, "createCloudTaskEntity failed: taskId is null or empty");
        } else {
            ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
                @Override
                public void onFail(Throwable th) {
                    LogUtils.m(CloudTransferRecordManager.TAG, "createCloudTaskEntity failed for taskId: " + cloudTaskEntity.taskId + ", error: " + th.getMessage());
                }

                @Override
                public Void doInBackground() throws Throwable {
                    try {
                        if (z) {
                            CloudTaskEntity cloudTaskEntity2 = cloudTaskEntity;
                            if (cloudTaskEntity2.taskStatus == 5) {
                                MediaItem mediaItemQueryMediaItemFromPath = CloudTransferRecordManager.queryMediaItemFromPath(cloudTaskEntity2.localFilePath);
                                if (LoadDataUtils.m(mediaItemQueryMediaItemFromPath.id)) {
                                    CloudTaskEntity cloudTaskEntity3 = cloudTaskEntity;
                                    cloudTaskEntity3.localFileId = mediaItemQueryMediaItemFromPath.id;
                                    String str2 = mediaItemQueryMediaItemFromPath.mineType;
                                    cloudTaskEntity3.mimeType = str2;
                                    cloudTaskEntity3.fileType = pp6.c(str2, cloudTaskEntity3.fileName);
                                } else {
                                    CloudTaskEntity cloudTaskEntity4 = cloudTaskEntity;
                                    cloudTaskEntity4.mimeType = pp6.d(cloudTaskEntity4.fileName);
                                    CloudTaskEntity cloudTaskEntity5 = cloudTaskEntity;
                                    cloudTaskEntity5.fileType = pp6.c(cloudTaskEntity5.mimeType, cloudTaskEntity5.fileName);
                                }
                            } else {
                                cloudTaskEntity2.mimeType = pp6.d(cloudTaskEntity2.fileName);
                                CloudTaskEntity cloudTaskEntity6 = cloudTaskEntity;
                                cloudTaskEntity6.fileType = pp6.c(cloudTaskEntity6.mimeType, cloudTaskEntity6.fileName);
                            }
                        }
                        CloudTransferRecordManager.this.mCloudTaskDao.insertTask(cloudTaskEntity);
                        LogUtils.w(CloudTransferRecordManager.TAG, "task created successfully: " + cloudTaskEntity);
                        return null;
                    } catch (Exception e) {
                        LogUtils.m(CloudTransferRecordManager.TAG, "Failed to create task: " + e.getMessage());
                        return null;
                    }
                }

                @Override
                public void onSuccess(Void r2) {
                    LogUtils.j(CloudTransferRecordManager.TAG, "createCloudTaskEntity success for taskId: " + cloudTaskEntity.taskId);
                }
            });
        }
    }

    public void deleteTask(final String str) {
        ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
            @Override
            public void onSuccess(Void r1) {
            }

            @Override
            public Void doInBackground() {
                try {
                    CloudTransferRecordManager.this.mCloudTaskDao.deleteTaskById(str);
                    LogUtils.w(CloudTransferRecordManager.TAG, "Task deleted successfully: " + str);
                    return null;
                } catch (Exception e) {
                    LogUtils.m(CloudTransferRecordManager.TAG, "Failed to delete task: " + e.getMessage());
                    return null;
                }
            }
        });
    }

    public void deleteTaskByTaskId(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            LogUtils.P(TAG, "deleteTaskByTaskId: called on main thread, switching to IO thread");
            deleteTask(str);
            return;
        }
        this.mCloudTaskDao.deleteTaskById(str);
        LogUtils.w(TAG, "deleteTaskByTaskId: " + str);
    }

    public List<CloudTaskEntity> getAllDownloadingTask() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            LogUtils.P(TAG, "getAllDownloadingTask: called on main thread, this may block UI");
            return new ArrayList();
        }
        try {
            List<CloudTaskEntity> allDownloadingTask = this.mCloudTaskDao.getAllDownloadingTask();
            StringBuilder sb = new StringBuilder();
            sb.append("Retrieved ");
            sb.append(allDownloadingTask != null ? allDownloadingTask.size() : 0);
            sb.append(" downloading tasks from database");
            LogUtils.w(TAG, sb.toString());
            return allDownloadingTask != null ? allDownloadingTask : new ArrayList();
        } catch (Exception e) {
            LogUtils.m(TAG, "Failed to get all downloading tasks: " + e.getMessage());
            return new ArrayList();
        }
    }

    public List<CloudTaskEntity> getAllFinishTask() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            LogUtils.P(TAG, "getAllFinishTask: called on main thread, this may block UI");
            return new ArrayList();
        }
        try {
            List<CloudTaskEntity> allFinishTask = this.mCloudTaskDao.getAllFinishTask();
            StringBuilder sb = new StringBuilder();
            sb.append("Retrieved ");
            sb.append(allFinishTask != null ? allFinishTask.size() : 0);
            sb.append(" finished tasks from database");
            LogUtils.w(TAG, sb.toString());
            return allFinishTask != null ? allFinishTask : new ArrayList();
        } catch (Exception e) {
            LogUtils.m(TAG, "Failed to get all finished tasks: " + e.getMessage());
            return new ArrayList();
        }
    }

    public LiveData<List<CloudTaskEntity>> getAllFinishTaskLiveData() {
        try {
            return this.mCloudTaskDao.getAllFinishTaskLiveData();
        } catch (Exception e) {
            LogUtils.m(TAG, "Failed to get all finished tasks LiveData: " + e.getMessage());
            return null;
        }
    }

    public List<CloudTaskEntity> getAllUploadingTask() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            LogUtils.P(TAG, "getAllUploadingTask: called on main thread, this may block UI");
            return new ArrayList();
        }
        try {
            List<CloudTaskEntity> allUploadingTask = this.mCloudTaskDao.getAllUploadingTask();
            StringBuilder sb = new StringBuilder();
            sb.append("getAllUploadingTask Retrieved ");
            sb.append(allUploadingTask != null ? allUploadingTask.size() : 0);
            sb.append(" uploading tasks from database");
            LogUtils.w(TAG, sb.toString());
            return allUploadingTask != null ? allUploadingTask : new ArrayList();
        } catch (Exception e) {
            LogUtils.m(TAG, "getAllUploadingTask Failed to get all uploading tasks: " + e.getMessage());
            return new ArrayList();
        }
    }

    public void updateDownloadTaskToFinished(final String str, final int i, final String str2, final String str3) {
        if (str == null || str.isEmpty()) {
            LogUtils.m(TAG, "updateDownloadTaskToFinished: task id is null or empty");
            return;
        }
        if (str3 == null || str3.isEmpty()) {
            LogUtils.m(TAG, "updateDownloadTaskToFinished: local file path is null or empty");
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            LogUtils.P(TAG, "updateDownloadTaskToFinished: called on main thread, switching to IO thread");
            ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
                @Override
                public Void doInBackground() {
                    CloudTransferRecordManager.this.performDownloadTaskToFinished(str, i, str2, str3);
                    return null;
                }

                @Override
                public void onSuccess(Void r2) {
                    LogUtils.j(CloudTransferRecordManager.TAG, "Download task update to finished completed for task: " + str);
                }
            });
        } else {
            LogUtils.j(TAG, "updateDownloadTaskToFinished: executing on background thread");
            performDownloadTaskToFinished(str, i, str2, str3);
        }
    }

    public void updateTaskStatusAndProgress(final String str, final int i, final float f) {
        if (str == null || str.isEmpty()) {
            LogUtils.m(TAG, "updateTaskStatusAndProgress failed: taskId is null or empty");
            return;
        }
        if (f < 0.0f || f > 1.0f) {
            LogUtils.m(TAG, "updateTaskStatusAndProgress failed: invalid progress value: " + f);
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
                @Override
                public void onFail(Throwable th) {
                    LogUtils.m(CloudTransferRecordManager.TAG, "updateTaskStatusAndProgress failed for taskId: " + str + ", error: " + th.getMessage());
                }

                @Override
                public void onSuccess(Void r1) {
                }

                @Override
                public Void doInBackground() throws Throwable {
                    CloudTransferRecordManager.this.performUpdateTaskStatusAndProgress(str, i, f);
                    return null;
                }
            });
        } else {
            performUpdateTaskStatusAndProgress(str, i, f);
        }
    }

    public void updateUploadTaskToFinished(final String str, String str2, String str3, final String str4) {
        final String str5;
        final String str6;
        if (str == null || str.isEmpty()) {
            LogUtils.m(TAG, "updateUploadTaskToFinished failed: taskId is null or empty");
            return;
        }
        if (str2 == null || str2.isEmpty()) {
            LogUtils.P(TAG, "updateUploadTaskToFinished failed: cloudFileId is null or empty");
            str5 = "";
        } else {
            str5 = str2;
        }
        if (str3 == null || str3.isEmpty()) {
            LogUtils.l(TAG, "updateUploadTaskToFinished failed: fileName is null or empty");
            str6 = "";
        } else {
            str6 = str3;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            LogUtils.P(TAG, "updateUploadTaskToFinished: called on main thread, switching to IO thread");
            ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
                @Override
                public void onFail(Throwable th) {
                    LogUtils.m(CloudTransferRecordManager.TAG, "updateUploadTaskToFinished failed for taskId: " + str + ", error: " + th.getMessage());
                }

                @Override
                public Void doInBackground() throws Throwable {
                    CloudTransferRecordManager.this.performUpdateUploadTaskToFinished(str, str5, str6, str4);
                    return null;
                }

                @Override
                public void onSuccess(Void r2) {
                    LogUtils.j(CloudTransferRecordManager.TAG, "updateUploadTaskToFinished success for taskId: " + str + ", cloudFileId: " + str5 + ", fileName: " + str6);
                }
            });
        } else {
            LogUtils.j(TAG, "updateUploadTaskToFinished: executing on background thread");
            performUpdateUploadTaskToFinished(str, str5, str6, str4);
        }
    }
}
