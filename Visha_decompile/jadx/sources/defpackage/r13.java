package defpackage;

import android.text.TextUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.lzy.okgo.model.Progress;
import com.lzy.okgo.request.GetRequest;
import com.transsion.cloud.clouddownload.CloudDownloadTask;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.cloudcore.db.CloudTransferRecordManager;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.sniffer_load.okdownload.M3U8DownloadTask;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import com.transsion.sniffer_load.okdownload.SniffDownloadTask;
import com.transsion.videodownloader.model.VideoTaskItem;
import java.util.UUID;

public class r13 {
    public String a;
    public t13 b;

    public static class a {
        public static final r13 a = new r13();
    }

    public static Progress a(VideoTaskItem videoTaskItem) {
        Progress progress = new Progress();
        if (videoTaskItem != null) {
            progress.status = 3;
            progress.lastSize = progress.currentSize;
            progress.currentSize = videoTaskItem.getDownloadSize();
            progress.speed = (long) videoTaskItem.getSpeed();
            progress.fraction = videoTaskItem.getTransPeercent();
            progress.totalSize = videoTaskItem.getTotalSize();
            progress.date = videoTaskItem.getDownloadCreateTime();
            progress.tag = videoTaskItem.getUrl();
            progress.fileName = videoTaskItem.getFinalFileName();
            progress.url = videoTaskItem.getUrl();
            progress.imgUrl = videoTaskItem.getCoverPath();
            progress.sniffId = videoTaskItem.getSniffId();
            if (!r0a.g(videoTaskItem.getGroupName())) {
                progress.setOriginSite(videoTaskItem.getGroupName());
            }
        }
        return progress;
    }

    public static CloudDownloadTask b(bz0 bz0Var) {
        CloudDownloadTask cloudDownloadTask = new CloudDownloadTask(bz0.c(bz0Var));
        cloudDownloadTask.save();
        l(cloudDownloadTask);
        LogUtils.j("visha_DownloadTaskManager", " getCloudDownloadTask:" + bz0Var);
        return cloudDownloadTask;
    }

    public static NewDownloadTask c(com.transsion.sniffer_load.okdownload.a aVar) {
        GetRequest getRequestB = fe7.b(aVar.g());
        Progress progressD = com.transsion.sniffer_load.okdownload.a.d(aVar);
        progressD.request = getRequestB;
        SniffDownloadTask sniffDownloadTask = new SniffDownloadTask(progressD);
        sniffDownloadTask.save();
        LogUtils.j("visha_DownloadTaskManager", " getDownloadTask:" + aVar);
        return sniffDownloadTask;
    }

    public static r13 e() {
        return a.a;
    }

    public static NewDownloadTask f(com.transsion.sniffer_load.okdownload.a aVar) {
        M3U8DownloadTask m3U8DownloadTask = new M3U8DownloadTask(com.transsion.sniffer_load.okdownload.a.d(aVar));
        m3U8DownloadTask.setbM3U8Task(true);
        m3U8DownloadTask.save();
        LogUtils.j("visha_DownloadTaskManager", " getM3U8Task:" + aVar);
        return m3U8DownloadTask;
    }

    public static NewDownloadTask g(com.transsion.sniffer_load.okdownload.a aVar) {
        return yv5.e(aVar.g()) ? f(aVar) : c(aVar);
    }

    public static String h(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str.endsWith(".xdl") ? str.substring(0, str.length() - 4) : str;
    }

    public static NewDownloadTask j(com.transsion.sniffer_load.okdownload.a aVar) {
        aVar.g();
        NewDownloadTask newDownloadTaskG = g(aVar);
        newDownloadTaskG.progress.isClient = aVar.j;
        newDownloadTaskG.progress.setOriginSite(aVar.k);
        LogUtils.j("visha_DownloadTaskManager", " request_putMapTask" + aVar);
        return newDownloadTaskG;
    }

    public static Progress k(CloudTaskEntity cloudTaskEntity) {
        Progress progress = new Progress();
        progress.tag = bz0.i.b(cloudTaskEntity.cloudFileId);
        progress.folder = e().a;
        progress.status = cloudTaskEntity.taskStatus;
        long j = cloudTaskEntity.fileSize;
        progress.totalSize = j;
        float f = cloudTaskEntity.progress;
        long j2 = (long) (j * f);
        progress.currentSize = j2;
        progress.lastSize = j2;
        progress.fileName = cloudTaskEntity.fileName;
        progress.downloadSource = cloudTaskEntity.downloadSource;
        progress.date = cloudTaskEntity.createTime;
        progress.taskId = cloudTaskEntity.taskId;
        progress.duration = cloudTaskEntity.duration;
        progress.fraction = f;
        progress.cloudFileId = cloudTaskEntity.cloudFileId;
        progress.imgUrl = cloudTaskEntity.imgUrl;
        LogUtils.j("visha_DownloadTaskManager", " restoreCloudTaskFromDB:" + progress);
        return progress;
    }

    public static void l(CloudDownloadTask cloudDownloadTask) {
        if (cloudDownloadTask != null) {
            CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
            cloudTaskEntity.taskId = cloudDownloadTask.mTaskId;
            cloudTaskEntity.fileName = cloudDownloadTask.mCloudDownloadTaskInfo.getFileName();
            cloudTaskEntity.cloudFileId = cloudDownloadTask.mCloudDownloadTaskInfo.getFileId();
            cloudTaskEntity.downloadSource = cloudDownloadTask.progress.downloadSource;
            cloudTaskEntity.fileType = MediaItem.MediaType.VIDEO.mValue;
            cloudTaskEntity.taskType = 2;
            cloudTaskEntity.taskStatus = 0;
            cloudTaskEntity.duration = cloudDownloadTask.progress.duration;
            cloudTaskEntity.imgUrl = cloudDownloadTask.progress.imgUrl;
            cloudTaskEntity.fileSize = cloudDownloadTask.progress.totalSize;
            long jCurrentTimeMillis = System.currentTimeMillis();
            cloudTaskEntity.updateTime = jCurrentTimeMillis;
            cloudTaskEntity.createTime = jCurrentTimeMillis;
            CloudTransferRecordManager.getInstance().createCloudTaskEntity(cloudTaskEntity, true);
        }
    }

    public static void m(NewDownloadTask newDownloadTask, String str, String str2) {
        if (newDownloadTask != null) {
            CloudTaskEntity cloudTaskEntity = new CloudTaskEntity();
            cloudTaskEntity.taskId = "sniff_" + UUID.randomUUID().toString();
            cloudTaskEntity.fileName = str;
            cloudTaskEntity.localFilePath = str2;
            cloudTaskEntity.downloadSource = newDownloadTask.progress.downloadSource;
            cloudTaskEntity.taskType = 2;
            cloudTaskEntity.taskStatus = 5;
            cloudTaskEntity.fileSize = newDownloadTask.progress.totalSize;
            cloudTaskEntity.isLocalFileExist = true;
            cloudTaskEntity.isCloudFileExist = false;
            long jCurrentTimeMillis = System.currentTimeMillis();
            cloudTaskEntity.updateTime = jCurrentTimeMillis;
            cloudTaskEntity.createTime = jCurrentTimeMillis;
            CloudTransferRecordManager.getInstance().createCloudTaskEntity(cloudTaskEntity, true);
        }
    }

    public String d() {
        return this.a;
    }

    public t13 i() {
        return this.b;
    }

    public r13() {
        String str = yx2.h;
        this.a = str;
        mv4.c(str);
        this.b = new t13();
        yv5.c().d(Utils.a());
        yv5.c().g(M3U8DownloadTask.sM3U8DownloadListener);
    }
}
