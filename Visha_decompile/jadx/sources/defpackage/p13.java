package defpackage;

import com.blankj.utilcode.util.LogUtils;
import com.lzy.okgo.model.Progress;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.cloudcore.db.CloudTransferRecordManager;
import java.io.File;
import java.util.List;
import java.util.UUID;

public abstract class p13 {
    public static void c() {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                p13.d();
            }
        });
    }

    public static void d() {
        try {
            List listR = r03.t().r();
            List listS = r03.t().s();
            List listP = r03.t().p();
            LogUtils.w("DownloadRecordMigrationFix", "=== OkGo Database ===");
            LogUtils.w("DownloadRecordMigrationFix", "Downloading tasks: " + listR.size());
            LogUtils.w("DownloadRecordMigrationFix", "Finished tasks: " + listS.size());
            LogUtils.w("DownloadRecordMigrationFix", "All tasks: " + listP.size());
            List<CloudTaskEntity> allDownloadingTask = CloudTransferRecordManager.getInstance().getAllDownloadingTask();
            List<CloudTaskEntity> allFinishTask = CloudTransferRecordManager.getInstance().getAllFinishTask();
            LogUtils.w("DownloadRecordMigrationFix", "=== Cloud Task Database ===");
            LogUtils.w("DownloadRecordMigrationFix", "Downloading tasks: " + allDownloadingTask.size());
            LogUtils.w("DownloadRecordMigrationFix", "Finished tasks (all types): " + allFinishTask.size());
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            for (CloudTaskEntity cloudTaskEntity : allFinishTask) {
                int i4 = cloudTaskEntity.taskType;
                if (i4 == 2) {
                    i2++;
                    LogUtils.j("DownloadRecordMigrationFix", "Finished download: " + cloudTaskEntity.fileName + ", source: " + cloudTaskEntity.downloadSource + ", localExists: " + cloudTaskEntity.isLocalFileExist + ", cloudExists: " + cloudTaskEntity.isCloudFileExist);
                } else if (i4 == 1) {
                    i3++;
                }
            }
            LogUtils.w("DownloadRecordMigrationFix", "Finished download tasks: " + i2);
            LogUtils.w("DownloadRecordMigrationFix", "Finished upload tasks: " + i3);
            int i5 = 0;
            for (CloudTaskEntity cloudTaskEntity2 : allFinishTask) {
                if (cloudTaskEntity2.taskType == 2) {
                    if (new File(cloudTaskEntity2.localFilePath).exists()) {
                        i++;
                    } else {
                        i5++;
                        LogUtils.P("DownloadRecordMigrationFix", "File missing: " + cloudTaskEntity2.localFilePath);
                    }
                }
            }
            LogUtils.w("DownloadRecordMigrationFix", "Local files exist: " + i);
            LogUtils.w("DownloadRecordMigrationFix", "Local files missing: " + i5);
        } catch (Exception e) {
            LogUtils.m("DownloadRecordMigrationFix", "Error diagnosing download records: " + e.getMessage());
        }
    }

    public static void e() {
        try {
            LogUtils.w("DownloadRecordMigrationFix", "Starting migration of finished records from OkGo database...");
            List<Progress> listS = r03.t().s();
            LogUtils.w("DownloadRecordMigrationFix", "Found " + listS.size() + " finished records in OkGo database");
            if (listS.isEmpty()) {
                LogUtils.w("DownloadRecordMigrationFix", "No finished records to migrate");
                return;
            }
            int i = 0;
            int i2 = 0;
            for (Progress progress : listS) {
                try {
                    if (new File(progress.filePath).exists()) {
                        CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
                        cloudTaskEntity.taskId = "migrated_" + UUID.randomUUID().toString();
                        cloudTaskEntity.fileName = progress.fileName;
                        cloudTaskEntity.localFilePath = progress.filePath;
                        cloudTaskEntity.downloadSource = progress.downloadSource;
                        cloudTaskEntity.taskType = 2;
                        cloudTaskEntity.taskStatus = 5;
                        cloudTaskEntity.fileSize = progress.totalSize;
                        cloudTaskEntity.isLocalFileExist = true;
                        cloudTaskEntity.isCloudFileExist = false;
                        cloudTaskEntity.createTime = progress.date;
                        cloudTaskEntity.updateTime = System.currentTimeMillis();
                        CloudTransferRecordManager.getInstance().createCloudTaskEntity(cloudTaskEntity, true);
                        i++;
                        LogUtils.j("DownloadRecordMigrationFix", "Migrated: " + progress.fileName);
                    } else {
                        LogUtils.P("DownloadRecordMigrationFix", "Skipping migration, file not found: " + progress.filePath);
                        i2++;
                    }
                } catch (Exception e) {
                    LogUtils.m("DownloadRecordMigrationFix", "Error migrating record: " + progress.fileName + ", error: " + e.getMessage());
                }
            }
            LogUtils.w("DownloadRecordMigrationFix", "Migration completed. Migrated: " + i + ", Skipped: " + i2);
        } catch (Exception e2) {
            LogUtils.m("DownloadRecordMigrationFix", "Error during migration: " + e2.getMessage());
        }
    }

    public static void f() {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                p13.e();
            }
        });
    }
}
