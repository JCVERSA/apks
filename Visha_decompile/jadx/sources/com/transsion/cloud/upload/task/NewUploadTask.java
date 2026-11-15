package com.transsion.cloud.upload.task;

import android.app.Application;
import android.app.Notification;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.transsion.cloud.upload.model.UploadProgressInfo;
import com.transsion.cloudcore.cloudapi.model.CloudUploadTaskInfo;
import com.transsion.cloudcore.cloudapi.model.TransferErrorInfo;
import com.transsion.cloudcore.cloudapi.model.TransferTaskInfo;
import com.transsion.cloudcore.cloudapi.model.TransferTaskStatus;
import com.transsion.cloudcore.db.CloudTransferRecordManager;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.TransferNotificationHelper;
import com.transsion.sniffer_load.R;
import defpackage.a41;
import defpackage.b41;
import defpackage.cz5;
import defpackage.ie7;
import defpackage.ju4;
import defpackage.nhb;
import defpackage.ri4;
import defpackage.s44;
import defpackage.se;
import defpackage.ut4;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class NewUploadTask implements Runnable, MultiItemEntity {
    private static final long FORCE_UPDATE_INTERVAL = 1000;
    public static final int NONE = 0;
    private static final String TAG = "visha_cloud_NewUploadTask";
    private static Notification mSummeryNotification;
    protected RemoteViews complexView;
    private long lastNotificationUpdateTime;
    private int lastNotifiedProgress;
    public volatile Map<Object, nhb> listeners;
    private final b41 mCloudTransferListener;
    private final ju4 mCloudUploadManager;
    private volatile boolean mIsDownloading;
    protected final int mNid;
    private Notification mNotification;
    private Handler mProgressHandler;
    public volatile UploadProgressInfo mProgressInfo;
    private Runnable mProgressUpdateRunnable;
    private TransferTaskStatus mSdkTransferTaskStatus;
    public final String mTaskId;
    protected final CloudUploadTaskInfo mTaskInfo;
    private int notifyCount;
    protected RemoteViews simpleView;

    public class a implements b41 {
        public a() {
        }

        @Override
        public void a(String str, TransferTaskInfo transferTaskInfo) {
            NewUploadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.COMPLETED;
            if (transferTaskInfo instanceof CloudUploadTaskInfo) {
                CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) transferTaskInfo;
                LogUtils.w(NewUploadTask.TAG, "onComplete uploadTaskInfo: " + cloudUploadTaskInfo);
                CloudUploadTaskInfo cloudUploadTaskInfo2 = NewUploadTask.this.mTaskInfo;
                if (cloudUploadTaskInfo2 != null) {
                    cloudUploadTaskInfo2.setFileId(cloudUploadTaskInfo.getFileId());
                }
            }
            String str2 = "onComplete taskId: " + str;
            CloudUploadTaskInfo cloudUploadTaskInfo3 = NewUploadTask.this.mTaskInfo;
            LogUtils.w(NewUploadTask.TAG, str2, cloudUploadTaskInfo3 != null ? cloudUploadTaskInfo3.getFileId() : "null");
            NewUploadTask.this.postOnFinish();
            ju4 ju4Var = NewUploadTask.this.mCloudUploadManager;
            NewUploadTask newUploadTask = NewUploadTask.this;
            ju4Var.i(newUploadTask.mTaskId, newUploadTask.mCloudTransferListener);
            NewUploadTask.this.stopOrStartProgressUpdate(false);
            cz5.j(NewUploadTask.this.mProgressInfo.totalSize, "cloud_upload_finish");
        }

        @Override
        public void b(String str) {
            NewUploadTask.this.stopOrStartProgressUpdate(false);
            NewUploadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.CANCELED;
            LogUtils.j(NewUploadTask.TAG, "onCancel taskId: " + str);
        }

        @Override
        public void c(String str) {
            NewUploadTask.this.stopOrStartProgressUpdate(false);
            NewUploadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.PAUSED;
            LogUtils.j(NewUploadTask.TAG, "onPause taskId: " + str);
        }

        @Override
        public void d(String str, long j, long j2) {
            CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) NewUploadTask.this.mCloudUploadManager.e(str);
            if (cloudUploadTaskInfo != null) {
                TransferTaskStatus status = cloudUploadTaskInfo.getStatus();
                TransferTaskStatus transferTaskStatus = TransferTaskStatus.PROCESSING;
                if (status == transferTaskStatus) {
                    NewUploadTask.this.mSdkTransferTaskStatus = transferTaskStatus;
                    NewUploadTask.this.updateUploadState(8);
                    NewUploadTask.this.mProgressInfo.transcodingProgress = (int) ((j / j2) * 100.0f);
                    if (NewUploadTask.this.mProgressInfo.transcodingProgress < 5) {
                        NewUploadTask.this.mProgressInfo.transcodingProgress = 5;
                    }
                    NewUploadTask.this.updateTaskRecord();
                    NewUploadTask.this.postOnTranscoding();
                    return;
                }
            }
            LogUtils.w(NewUploadTask.TAG, "onProgress taskId: " + str + StringUtils.COMMA + j + "/" + j2);
            NewUploadTask.this.postLoading(j, j2, false);
        }

        @Override
        public void e(String str, TransferErrorInfo transferErrorInfo) {
            NewUploadTask.this.stopOrStartProgressUpdate(false);
            CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) NewUploadTask.this.mCloudUploadManager.e(str);
            if (cloudUploadTaskInfo != null) {
                TransferTaskStatus status = cloudUploadTaskInfo.getStatus();
                TransferTaskStatus transferTaskStatus = TransferTaskStatus.PROCESS_FAIL;
                if (status == transferTaskStatus) {
                    NewUploadTask.this.mSdkTransferTaskStatus = transferTaskStatus;
                    NewUploadTask.this.postOnTranscodeFail();
                    return;
                }
            }
            NewUploadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.FAILED;
            LogUtils.m(NewUploadTask.TAG, "onError taskId: " + str, transferErrorInfo.getCode() + " : " + transferErrorInfo.getMessage());
            NewUploadTask.this.postOnError(new Throwable(transferErrorInfo.getCode() + " : " + transferErrorInfo.getMessage()));
            cz5.i(true, NewUploadTask.this.mProgressInfo.fileName, transferErrorInfo.getCode());
        }

        @Override
        public void f(String str) {
            NewUploadTask.this.mSdkTransferTaskStatus = TransferTaskStatus.RUNNING;
            LogUtils.j(NewUploadTask.TAG, "onStart taskId: " + str);
            NewUploadTask.this.updateUploadState(2);
            NewUploadTask.this.mProgressInfo.speed = 0L;
            NewUploadTask newUploadTask = NewUploadTask.this;
            newUploadTask.postLoading(newUploadTask.mProgressInfo.currentSize, NewUploadTask.this.mProgressInfo.totalSize, true);
            NewUploadTask.this.stopOrStartProgressUpdate(true);
            cz5.j(NewUploadTask.this.mProgressInfo.totalSize, "cloud_upload_start");
        }
    }

    public NewUploadTask(final UploadProgressInfo uploadProgressInfo) {
        this.notifyCount = 0;
        this.mSdkTransferTaskStatus = TransferTaskStatus.WAITING;
        this.mIsDownloading = false;
        ju4 ju4VarF = a41.a.f(MainApp.f());
        this.mCloudUploadManager = ju4VarF;
        this.listeners = Collections.synchronizedMap(new LinkedHashMap());
        this.mProgressInfo = uploadProgressInfo;
        this.mNid = TransferNotificationHelper.h(this.mProgressInfo.tag);
        this.mProgressHandler = new Handler(Looper.getMainLooper());
        this.mProgressUpdateRunnable = new Runnable() {
            @Override
            public void run() {
                if (NewUploadTask.this.mIsDownloading) {
                    UploadProgressInfo uploadProgressInfo2 = uploadProgressInfo;
                    if (uploadProgressInfo2.status == 2) {
                        NewUploadTask.this.postLoading(uploadProgressInfo2.currentSize, uploadProgressInfo2.totalSize, false);
                        NewUploadTask.this.mProgressHandler.postDelayed(this, 1000L);
                    }
                }
            }
        };
        a aVar = new a();
        this.mCloudTransferListener = aVar;
        CloudUploadTaskInfo cloudUploadTaskInfoG = ju4VarF.g(this.mProgressInfo.filePath, "root", uploadProgressInfo.taskId, this.mProgressInfo.duration, aVar);
        this.mTaskInfo = cloudUploadTaskInfoG;
        if (!TextUtils.isEmpty(this.mProgressInfo.fileId)) {
            cloudUploadTaskInfoG.setFileId(this.mProgressInfo.fileId);
        }
        this.mTaskId = cloudUploadTaskInfoG.getTaskId();
        LogUtils.w(TAG, "NewUploadTask : " + this.mProgressInfo);
    }

    private boolean checkFileExists() {
        boolean z = false;
        if (TextUtils.isEmpty(this.mProgressInfo.filePath)) {
            LogUtils.m(TAG, "File path is empty");
            return false;
        }
        File file = new File(this.mProgressInfo.filePath);
        if (file.exists() && file.isFile()) {
            z = true;
        }
        if (!z) {
            LogUtils.m(TAG, "File does not exist: " + this.mProgressInfo.filePath);
        }
        return z;
    }

    private String getTag() {
        return this.mProgressInfo.tag;
    }

    public void lambda$postLoading$2(boolean z, float f, UploadProgressInfo uploadProgressInfo) {
        if (z || (uploadProgressInfo != null && f != uploadProgressInfo.fraction)) {
            updateTaskRecord();
        }
        if (this.mProgressInfo.status == 2) {
            postOnProgress();
        }
    }

    public void lambda$postOnProgress$3() {
        Iterator<nhb> it = this.listeners.values().iterator();
        while (it.hasNext()) {
            it.next().d(this.mProgressInfo);
        }
        updateNotification((int) (this.mProgressInfo.fraction * 100.0f), String.format("%s/s", s44.d(MainApp.f(), this.mProgressInfo.speed)), String.format("%s", s44.d(MainApp.f(), this.mProgressInfo.totalSize)), this.simpleView, this.complexView);
    }

    public void lambda$postOnStart$4() {
        Iterator<nhb> it = this.listeners.values().iterator();
        while (it.hasNext()) {
            it.next().f(this.mProgressInfo);
        }
        startNotification(this.mProgressInfo);
    }

    public void lambda$postOnTranscodeFail$1() {
        Iterator<nhb> it = this.listeners.values().iterator();
        while (it.hasNext()) {
            it.next().a(this.mProgressInfo);
        }
        stopNotification();
    }

    public void lambda$postOnTranscoding$0() {
        Iterator<nhb> it = this.listeners.values().iterator();
        while (it.hasNext()) {
            it.next().d(this.mProgressInfo);
        }
        updateNotification((int) (this.mProgressInfo.fraction * 100.0f), MainApp.f().getString(R.string.visha_video_transcoding_new), String.format("%s", s44.d(MainApp.f(), this.mProgressInfo.totalSize)), this.simpleView, this.complexView);
    }

    public void lambda$postOnWaiting$5() {
        Iterator<nhb> it = this.listeners.values().iterator();
        while (it.hasNext()) {
            it.next().g(this.mProgressInfo);
        }
        stopNotification();
    }

    public void postLoading(long j, long j2, final boolean z) {
        long j3 = j - this.mProgressInfo.currentSize;
        final float f = this.mProgressInfo.fraction;
        UploadProgressInfo.changeProgress(this.mProgressInfo, j3 < 0 ? 0L : j3, j2, new UploadProgressInfo.Action() {
            @Override
            public final void call(UploadProgressInfo uploadProgressInfo) {
                this.a.lambda$postLoading$2(z, f, uploadProgressInfo);
            }
        });
    }

    public void postOnError(Throwable th) {
        updateUploadState(4);
        updateTaskRecord();
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<nhb> it = NewUploadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().a(NewUploadTask.this.mProgressInfo);
                }
                NewUploadTask.this.stopNotification();
            }
        });
    }

    public void postOnFinish() {
        LogUtils.w(TAG, "postOnFinish : " + this.mTaskInfo);
        this.mProgressInfo.speed = 0L;
        this.mProgressInfo.fraction = 1.0f;
        this.mProgressInfo.lastStatus = this.mProgressInfo.status;
        this.mProgressInfo.status = 5;
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<nhb> it = NewUploadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().b(NewUploadTask.this.mProgressInfo);
                }
                NewUploadTask.this.stopNotification();
            }
        });
        CloudTransferRecordManager.getInstance().updateUploadTaskToFinished(this.mTaskId, this.mTaskInfo.getFileId(), this.mTaskInfo.getFileName(), this.mTaskInfo.getLocalFilePath());
    }

    private void postOnPause(boolean z) {
        updateTaskRecord();
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<nhb> it = NewUploadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().c(NewUploadTask.this.mProgressInfo);
                }
                NewUploadTask.this.stopNotification();
            }
        });
    }

    private void postOnProgress() {
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnProgress$3();
            }
        });
    }

    private void postOnRemove(final boolean z) {
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<nhb> it = NewUploadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().e(NewUploadTask.this.mProgressInfo, z);
                }
                NewUploadTask.this.stopNotification();
            }
        });
        CloudTransferRecordManager.getInstance().deleteTask(this.mTaskId);
    }

    private void postOnStart() {
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnStart$4();
            }
        });
    }

    public void postOnTranscodeFail() {
        this.mProgressInfo.status = 9;
        updateTaskRecord();
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnTranscodeFail$1();
            }
        });
    }

    public void postOnTranscoding() {
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnTranscoding$0();
            }
        });
    }

    private void postOnWaiting() {
        updateTaskRecord();
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnWaiting$5();
            }
        });
    }

    public void stopOrStartProgressUpdate(boolean z) {
        this.mIsDownloading = z;
        if (z) {
            this.mProgressHandler.postDelayed(this.mProgressUpdateRunnable, 1000L);
        } else {
            this.mProgressHandler.removeCallbacks(this.mProgressUpdateRunnable);
        }
    }

    private void updateNotification(int i, String str, String str2, RemoteViews remoteViews, RemoteViews remoteViews2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastNotificationUpdateTime >= 500 && Math.abs(i - this.lastNotifiedProgress) >= 1) {
            this.lastNotificationUpdateTime = jCurrentTimeMillis;
            this.lastNotifiedProgress = i;
            int i2 = this.notifyCount + 1;
            this.notifyCount = i2;
            if (i2 > 100) {
                startNotification(this.mProgressInfo);
                this.notifyCount = 0;
            } else {
                if (this.mNotification == null) {
                    return;
                }
                TransferNotificationHelper.s(i, str, str2, remoteViews, remoteViews2);
                TransferNotificationHelper.t(MainApp.f(), this.mNid, this.mNotification);
            }
        }
    }

    public void updateTaskRecord() {
        if (this.mProgressInfo.status == 5) {
            return;
        }
        CloudTransferRecordManager.getInstance().updateTaskStatusAndProgress(this.mTaskId, this.mProgressInfo.status, this.mProgressInfo.fraction);
    }

    public void updateUploadState(int i) {
        if (this.mProgressInfo.status == 5) {
            return;
        }
        this.mProgressInfo.lastStatus = this.mProgressInfo.status;
        this.mProgressInfo.status = i;
    }

    public String getFileId() {
        if (!TextUtils.isEmpty(this.mProgressInfo.fileId)) {
            return this.mProgressInfo.fileId;
        }
        CloudUploadTaskInfo cloudUploadTaskInfo = this.mTaskInfo;
        if (cloudUploadTaskInfo == null || TextUtils.isEmpty(cloudUploadTaskInfo.getFileId())) {
            return null;
        }
        return this.mTaskInfo.getFileId();
    }

    @Override
    public int getItemType() {
        return 0;
    }

    public boolean isHeaderTask() {
        return getItemType() == 1;
    }

    public void noNetPause() {
        LogUtils.w(TAG, "Network pause for upload task: " + getTag());
        updateUploadState(7);
        this.mProgressInfo.speed = 0L;
        postOnPause(false);
    }

    public void pause(boolean z) {
        LogUtils.w(TAG, "Pausing upload task: " + getTag());
        ju4 ju4Var = this.mCloudUploadManager;
        if (ju4Var != null) {
            ju4Var.a(this.mTaskId);
        }
        updateUploadState(z ? 6 : 3);
        postOnPause(z);
        stopOrStartProgressUpdate(false);
    }

    public void register(nhb nhbVar) {
        if (nhbVar != null) {
            this.listeners.put(nhbVar.a, nhbVar);
        }
    }

    public void remove() {
        boolean z = this.mProgressInfo.status == 0 || this.mProgressInfo.status == 2;
        LogUtils.w(TAG, "Removing upload task: " + getTag());
        this.mCloudUploadManager.cancel(this.mTaskId);
        updateUploadState(0);
        postOnRemove(z);
        stopOrStartProgressUpdate(false);
        cz5.j(this.mProgressInfo.totalSize, "cloud_upload_cancel");
    }

    public void resumeTranscoding() {
        ju4 ju4Var;
        if (this.mProgressInfo.status != 8 || (ju4Var = this.mCloudUploadManager) == null) {
            return;
        }
        ju4Var.d(this.mTaskId);
    }

    public void retryTranscode() {
        ju4 ju4Var = this.mCloudUploadManager;
        if (ju4Var != null) {
            ju4Var.b(this.mTaskId);
        }
    }

    @Override
    public void run() {
        LogUtils.w(TAG, "Upload task started for: " + this.mProgressInfo);
        try {
            if (checkFileExists()) {
                start();
            } else {
                postOnError(new Exception("File not exists"));
            }
        } catch (Exception e) {
            LogUtils.m(TAG, "Upload task error: " + e.getMessage());
            postOnError(e);
        }
    }

    public void start() {
        StringBuilder sb = new StringBuilder();
        sb.append("start task:");
        sb.append(this.mProgressInfo != null ? this.mProgressInfo.toString() : "null");
        LogUtils.j(TAG, sb.toString());
        if (!checkFileExists()) {
            postOnError(new Exception("File not exists"));
            return;
        }
        if (this.mProgressInfo.status != 0 && this.mProgressInfo.status != 3 && this.mProgressInfo.status != 4 && this.mProgressInfo.status != 1 && this.mProgressInfo.status != 6 && this.mProgressInfo.status != 7 && this.mProgressInfo.status != 9) {
            ie7.c("the task with tag " + this.mProgressInfo.tag + " is already in the download queue, current task status is " + this.mProgressInfo.status);
            return;
        }
        if (this.mProgressInfo.status == 9) {
            retryTranscode();
            return;
        }
        postOnStart();
        CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) this.mCloudUploadManager.e(this.mTaskId);
        if (cloudUploadTaskInfo != null) {
            if (this.mSdkTransferTaskStatus == TransferTaskStatus.PAUSED) {
                this.mCloudUploadManager.c(this.mTaskId, this.mCloudTransferListener);
            } else {
                this.mCloudUploadManager.f(cloudUploadTaskInfo, this.mCloudTransferListener);
            }
        }
    }

    public void startNotification(UploadProgressInfo uploadProgressInfo) {
        this.simpleView = new RemoteViews(MainApp.f().getPackageName(), com.transsion.playercommon.R.layout.notify_progress_layout_simple);
        this.complexView = new RemoteViews(MainApp.f().getPackageName(), com.transsion.playercommon.R.layout.notify_progress_layout);
        String str = String.format("%s/s", s44.d(MainApp.f(), uploadProgressInfo.speed));
        String str2 = String.format("%s", s44.d(MainApp.f(), uploadProgressInfo.totalSize));
        int i = (int) (uploadProgressInfo.fraction * 100.0f);
        String str3 = uploadProgressInfo.fileName;
        RemoteViews remoteViews = this.complexView;
        int i2 = com.transsion.playercommon.R.id.tv_name;
        remoteViews.setTextViewText(i2, str3);
        this.complexView.setTextViewText(com.transsion.playercommon.R.id.tv_speed, str);
        this.complexView.setTextViewText(com.transsion.playercommon.R.id.tv_size, str2);
        RemoteViews remoteViews2 = this.complexView;
        int i3 = com.transsion.playercommon.R.id.progressBar;
        remoteViews2.setProgressBar(i3, 100, i, false);
        RemoteViews remoteViews3 = this.complexView;
        int i4 = R.id.tv_title;
        Application applicationA = se.a();
        int i5 = R.string.visha_uploading_status;
        remoteViews3.setTextViewText(i4, applicationA.getText(i5));
        this.simpleView.setTextViewText(i2, str3);
        this.simpleView.setProgressBar(i3, 100, i, false);
        this.simpleView.setTextViewText(i4, se.a().getText(i5));
        this.mNotification = TransferNotificationHelper.n(MainApp.f(), this.simpleView, this.complexView, str3, this.mNid);
        if (Build.VERSION.SDK_INT <= 33) {
            mSummeryNotification = TransferNotificationHelper.m(MainApp.f());
            ri4.e().q(mSummeryNotification);
        }
    }

    public void stopNotification() {
        TransferNotificationHelper.a(MainApp.f(), this.mNid);
        if (TransferNotificationHelper.o(MainApp.f()) == 1) {
            ri4.e().s(true);
            TransferNotificationHelper.a(MainApp.f(), 10002);
        }
        this.mNotification = null;
        this.simpleView = null;
        this.complexView = null;
    }

    public void unRegister(String str) {
        ut4.b(str, "tag == null");
        this.listeners.remove(str);
    }

    public void waiting() {
        LogUtils.w(TAG, "Upload task waiting: " + getTag());
        updateUploadState(1);
        postOnWaiting();
    }

    public NewUploadTask(UploadHeaderTask.HeaderType headerType) {
        this.notifyCount = 0;
        this.mSdkTransferTaskStatus = TransferTaskStatus.WAITING;
        this.mIsDownloading = false;
        this.mProgressInfo = new UploadProgressInfo();
        this.mProgressInfo.tag = "headerType_" + headerType;
        this.mNid = 0;
        this.mTaskId = "";
        this.mTaskInfo = null;
        this.mCloudTransferListener = null;
        this.mCloudUploadManager = null;
        this.listeners = Collections.synchronizedMap(new LinkedHashMap());
    }
}
