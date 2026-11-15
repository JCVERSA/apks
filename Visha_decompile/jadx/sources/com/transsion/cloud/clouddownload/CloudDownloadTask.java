package com.transsion.cloud.clouddownload;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.lzy.okgo.model.Progress;
import com.transsion.cloudcore.cloudapi.model.CloudDownloadTaskInfo;
import com.transsion.cloudcore.cloudapi.model.TransferErrorInfo;
import com.transsion.cloudcore.cloudapi.model.TransferTaskInfo;
import com.transsion.cloudcore.cloudapi.model.TransferTaskStatus;
import com.transsion.cloudcore.db.CloudTransferRecordManager;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import defpackage.a41;
import defpackage.b41;
import defpackage.cz5;
import defpackage.fu4;
import defpackage.ie7;
import defpackage.jf;
import defpackage.s44;
import defpackage.ut4;
import defpackage.uz2;
import defpackage.yx2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.Iterator;

public class CloudDownloadTask extends NewDownloadTask {
    private static final long FORCE_UPDATE_INTERVAL = 1000;
    public static final String TAG = "visha_cloud_CloudDownloadTask";
    private final fu4 mCloudDownloadManager;
    public CloudDownloadTaskInfo mCloudDownloadTaskInfo;
    private final b41 mCloudTransferListener;
    private boolean mHadDownloadFinish;
    private volatile boolean mIsDownloading;
    private final Handler mProgressHandler;
    private final Runnable mProgressUpdateRunnable;
    private TransferTaskStatus mSdkTransferTaskStatus;
    public String mTaskId;

    public class a implements b41 {
        public final Progress a;

        public a(Progress progress) {
            this.a = progress;
        }

        @Override
        public void a(String str, TransferTaskInfo transferTaskInfo) {
            CloudDownloadTask.this.stopOrStartProgressUpdate(false);
            CloudDownloadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.COMPLETED;
            LogUtils.w(CloudDownloadTask.TAG, "onComplete taskId: " + str);
            CloudDownloadTask.this.postOnFinish(this.a, null);
            fu4 fu4Var = CloudDownloadTask.this.mCloudDownloadManager;
            CloudDownloadTask cloudDownloadTask = CloudDownloadTask.this;
            fu4Var.i(cloudDownloadTask.mTaskId, cloudDownloadTask.mCloudTransferListener);
            cz5.j(this.a.totalSize, "cloud_download_finish");
        }

        @Override
        public void b(String str) {
            CloudDownloadTask.this.stopOrStartProgressUpdate(false);
            CloudDownloadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.CANCELED;
            LogUtils.j(CloudDownloadTask.TAG, "onCancel taskId: " + str);
        }

        @Override
        public void c(String str) {
            CloudDownloadTask.this.stopOrStartProgressUpdate(false);
            CloudDownloadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.PAUSED;
            LogUtils.j(CloudDownloadTask.TAG, "onPause taskId: " + str);
        }

        @Override
        public void d(String str, long j, long j2) {
            LogUtils.j(CloudDownloadTask.TAG, "onProgress taskId: " + str + StringUtils.COMMA + j + "/" + j2);
            CloudDownloadTask.this.postLoading(this.a, j, j2, false);
        }

        @Override
        public void e(String str, TransferErrorInfo transferErrorInfo) {
            CloudDownloadTask.this.stopOrStartProgressUpdate(false);
            CloudDownloadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.FAILED;
            LogUtils.m(CloudDownloadTask.TAG, "onError taskId: " + str, transferErrorInfo.getCode() + " : " + transferErrorInfo.getMessage());
            CloudDownloadTask.this.postOnError(this.a, new Throwable(transferErrorInfo.getCode() + " : " + transferErrorInfo.getMessage()));
            cz5.i(false, this.a.fileName, transferErrorInfo.getCode());
        }

        @Override
        public void f(String str) {
            CloudDownloadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.RUNNING;
            Progress progress = this.a;
            progress.status = 2;
            progress.speed = 0L;
            LogUtils.j(CloudDownloadTask.TAG, "onStart taskId: " + str, this.a);
            CloudDownloadTask cloudDownloadTask = CloudDownloadTask.this;
            Progress progress2 = this.a;
            cloudDownloadTask.postLoading(progress2, progress2.currentSize, progress2.totalSize, true);
            CloudDownloadTask.this.stopOrStartProgressUpdate(true);
            cz5.j(this.a.totalSize, "cloud_download_start");
        }
    }

    public CloudDownloadTask(final Progress progress) {
        super(progress);
        this.mSdkTransferTaskStatus = TransferTaskStatus.WAITING;
        this.mIsDownloading = false;
        this.mProgressHandler = new Handler(Looper.getMainLooper());
        this.mProgressUpdateRunnable = new Runnable() {
            @Override
            public void run() {
                if (CloudDownloadTask.this.mIsDownloading) {
                    Progress progress2 = progress;
                    if (progress2.status == 2) {
                        CloudDownloadTask.this.postLoading(progress2, progress2.currentSize, progress2.totalSize, false);
                        CloudDownloadTask.this.mProgressHandler.postDelayed(this, 1000L);
                    }
                }
            }
        };
        fu4 fu4VarD = a41.a.d(jf.c());
        this.mCloudDownloadManager = fu4VarD;
        a aVar = new a(progress);
        this.mCloudTransferListener = aVar;
        try {
            CloudDownloadTaskInfo cloudDownloadTaskInfoH = fu4VarD.h(progress.cloudFileId, progress.fileName, yx2.h, progress.taskId, aVar);
            this.mCloudDownloadTaskInfo = cloudDownloadTaskInfoH;
            String taskId = cloudDownloadTaskInfoH.getTaskId();
            this.mTaskId = taskId;
            progress.taskId = taskId;
        } catch (Exception e) {
            this.mTaskId = progress.taskId;
            postOnError(progress, e);
        }
    }

    public void lambda$postLoading$0(boolean z, float f, Progress progress, Progress progress2) {
        if (z || f != progress2.fraction) {
            updateDatabase(progress2);
        }
        if (progress.status == 2) {
            postOnProgress(progress2);
        }
    }

    public void lambda$postOnProgress$1(Progress progress) {
        Iterator<uz2> it = this.listeners.values().iterator();
        while (it.hasNext()) {
            it.next().a(progress);
        }
        updateNotification((int) (progress.fraction * 100.0f), String.format("%s/s", s44.d(jf.c(), progress.speed)), String.format("%s", s44.d(jf.c(), progress.totalSize)), this.simpleView, this.complexView);
    }

    public void lambda$postOnRemove$2(Progress progress, boolean z) {
        Iterator<uz2> it = this.listeners.values().iterator();
        while (it.hasNext()) {
            it.next().e(progress, z);
        }
        this.listeners.clear();
        stopNotification();
    }

    public void postLoading(final Progress progress, long j, long j2, final boolean z) {
        long j3 = j - progress.currentSize;
        final float f = progress.fraction;
        if (j3 < 0) {
            j3 = 0;
        }
        Progress.changeProgress(progress, j3, j2, new Progress.a() {
            @Override
            public final void a(Progress progress2) {
                this.a.lambda$postLoading$0(z, f, progress, progress2);
            }
        });
    }

    private void postOnProgress(final Progress progress) {
        LogUtils.N(TAG, "postOnProgress-----" + progress);
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnProgress$1(progress);
            }
        });
    }

    private void postOnRemove(final Progress progress, final boolean z) {
        Log.i(TAG, "postOnRemove-----" + progress.status);
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnRemove$2(progress, z);
            }
        });
        CloudTransferRecordManager.getInstance().deleteTask(this.mTaskId);
    }

    public void stopOrStartProgressUpdate(boolean z) {
        this.mIsDownloading = z;
        if (z) {
            this.mProgressHandler.postDelayed(this.mProgressUpdateRunnable, 1000L);
        } else {
            this.mProgressHandler.removeCallbacks(this.mProgressUpdateRunnable);
        }
    }

    @Override
    public void noNetPause() {
        this.mCloudDownloadManager.a(this.mTaskId);
    }

    @Override
    public void pause(boolean z) {
        this.mCloudDownloadManager.a(this.mTaskId);
        postPause(this.progress, z);
        stopOrStartProgressUpdate(false);
    }

    public void postOnFinish(Progress progress, File file) {
        progress.speed = 0L;
        progress.fraction = 1.0f;
        progress.status = 5;
        this.mHadDownloadFinish = true;
        Log.i(TAG, "postOnFinish-----" + progress.fileName);
        CloudTransferRecordManager cloudTransferRecordManager = CloudTransferRecordManager.getInstance();
        String str = this.mTaskId;
        String str2 = progress.fileName;
        StringBuilder sb = new StringBuilder();
        sb.append(yx2.h);
        sb.append(File.separator);
        CloudDownloadTaskInfo cloudDownloadTaskInfo = this.mCloudDownloadTaskInfo;
        sb.append(cloudDownloadTaskInfo != null ? cloudDownloadTaskInfo.getFileName() : "");
        cloudTransferRecordManager.updateDownloadTaskToFinished(str, 1, str2, sb.toString());
        for (uz2 uz2Var : this.listeners.values()) {
            uz2Var.a(progress);
            uz2Var.b(file, progress);
        }
        stopNotification();
    }

    @Override
    public NewDownloadTask register(uz2 uz2Var) {
        super.register(uz2Var);
        return this;
    }

    @Override
    public void remove(boolean z) {
        this.mCloudDownloadManager.cancel(this.mTaskId);
        postOnRemove(this.progress, z);
        stopOrStartProgressUpdate(false);
        cz5.j(this.progress.totalSize, "cloud_download_cancel");
    }

    @Override
    public void run() {
        start();
    }

    @Override
    public void start() {
        StringBuilder sb = new StringBuilder();
        sb.append("start task:");
        sb.append(this.progress != null ? this.progress.toString() : "null");
        LogUtils.j(TAG, sb.toString());
        if (this.progress.status != 0 && this.progress.status != 3 && this.progress.status != 4 && this.progress.status != 1 && this.progress.status != 6 && this.progress.status != 7) {
            ie7.c("the task with tag " + this.progress.tag + " is already in the download queue, current task status is " + this.progress.status);
            return;
        }
        postOnStart(this.progress);
        CloudDownloadTaskInfo cloudDownloadTaskInfo = (CloudDownloadTaskInfo) this.mCloudDownloadManager.e(this.mTaskId);
        if (cloudDownloadTaskInfo != null) {
            if (this.mSdkTransferTaskStatus == TransferTaskStatus.PAUSED) {
                this.mCloudDownloadManager.c(this.mTaskId, this.mCloudTransferListener);
            } else {
                this.mCloudDownloadManager.f(cloudDownloadTaskInfo, this.mCloudTransferListener);
            }
        }
    }

    @Override
    public void unRegister(String str) {
        super.unRegister(str);
    }

    public void updateDatabase(Progress progress) {
        if (this.mHadDownloadFinish) {
            return;
        }
        CloudTransferRecordManager.getInstance().updateTaskStatusAndProgress(this.mTaskId, progress.status, progress.fraction);
    }

    @Override
    public void waiting() {
        this.mCloudDownloadManager.a(this.mTaskId);
        postWaiting(this.progress);
    }
}
