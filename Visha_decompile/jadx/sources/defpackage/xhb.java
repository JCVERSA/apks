package defpackage;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloud.upload.model.UploadProgressInfo;
import com.transsion.cloud.upload.model.UploadingItem;
import com.transsion.cloud.upload.task.NewUploadTask;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.cloudcore.db.CloudTransferRecordManager;
import com.transsion.dbdata.beans.media.MediaItem;

public abstract class xhb {
    public static NewUploadTask a(UploadingItem uploadingItem) {
        NewUploadTask newUploadTask = new NewUploadTask(UploadingItem.INSTANCE.createUploadProgressInfo(uploadingItem));
        c(newUploadTask);
        return newUploadTask;
    }

    public static UploadProgressInfo b(CloudTaskEntity cloudTaskEntity) {
        UploadProgressInfo uploadProgressInfo = new UploadProgressInfo();
        uploadProgressInfo.tag = UploadingItem.INSTANCE.generateTag(cloudTaskEntity.localFileId, cloudTaskEntity.fileName);
        uploadProgressInfo.status = cloudTaskEntity.taskStatus;
        long j = cloudTaskEntity.fileSize;
        uploadProgressInfo.totalSize = j;
        uploadProgressInfo.fileName = cloudTaskEntity.fileName;
        uploadProgressInfo.filePath = cloudTaskEntity.localFilePath;
        uploadProgressInfo.date = cloudTaskEntity.createTime;
        uploadProgressInfo.taskId = cloudTaskEntity.taskId;
        uploadProgressInfo.duration = cloudTaskEntity.duration;
        float f = cloudTaskEntity.progress;
        uploadProgressInfo.fraction = f;
        long j2 = (long) (f * j);
        uploadProgressInfo.lastSize = j2;
        uploadProgressInfo.currentSize = j2;
        LogUtils.j("visha_cloud_UploadTaskUtils", " restoreCloudTaskFromDB:" + uploadProgressInfo);
        return uploadProgressInfo;
    }

    public static void c(NewUploadTask newUploadTask) {
        if (newUploadTask != null) {
            CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
            cloudTaskEntity.taskId = newUploadTask.mTaskId;
            cloudTaskEntity.fileName = newUploadTask.mProgressInfo.fileName;
            cloudTaskEntity.localFileId = newUploadTask.mProgressInfo.mediaId;
            cloudTaskEntity.localFilePath = newUploadTask.mProgressInfo.filePath;
            cloudTaskEntity.taskStatus = newUploadTask.mProgressInfo.status;
            cloudTaskEntity.fileSize = newUploadTask.mProgressInfo.totalSize;
            cloudTaskEntity.fileType = MediaItem.MediaType.VIDEO.mValue;
            cloudTaskEntity.taskType = 1;
            cloudTaskEntity.duration = newUploadTask.mProgressInfo.duration;
            long jCurrentTimeMillis = System.currentTimeMillis();
            cloudTaskEntity.updateTime = jCurrentTimeMillis;
            cloudTaskEntity.createTime = jCurrentTimeMillis;
            CloudTransferRecordManager.getInstance().createCloudTaskEntity(cloudTaskEntity, true);
        }
    }
}
