package com.snaptube.premium.localplay.download;

import android.app.Notification;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.offline.Download;
import com.google.android.exoplayer2.offline.DownloadManager;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.snaptube.premium.notification.STNotification;
import com.snaptube.premium.notification.a;
import com.snaptube.util.ProductionEnv;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.vungle.ads.internal.protos.Sdk;
import java.util.List;
import kotlin.Metadata;
import o.ax6;
import o.or3;
import o.ts1;
import o.uh;
import o.uu1;

@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0006*\u0001\u0011\u0018\u0000 \u00152\u00020\u00012\u00020\u0002:\u0001\u0012B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/snaptube/premium/localplay/download/BackgroundDownloadService;", "Lcom/google/android/exoplayer2/offline/DownloadService;", "Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;", "<init>", "()V", "Lcom/google/android/exoplayer2/offline/DownloadManager;", "getDownloadManager", "()Lcom/google/android/exoplayer2/offline/DownloadManager;", "Lo/ax6;", "getScheduler", "()Lo/ax6;", "", "Lcom/google/android/exoplayer2/offline/Download;", "downloads", "Landroid/app/Notification;", "getForegroundNotification", "(Ljava/util/List;)Landroid/app/Notification;", "com/snaptube/premium/localplay/download/BackgroundDownloadService$b", "a", "Lcom/snaptube/premium/localplay/download/BackgroundDownloadService$b;", "downloadListener", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class BackgroundDownloadService extends DownloadService implements DownloadManager.Listener {

    public final b downloadListener;

    public static final class b implements DownloadManager.Listener {
        @Override
        public void onDownloadChanged(DownloadManager downloadManager, Download download) {
            or3.f(downloadManager, "downloadManager");
            or3.f(download, NativeAdPresenter.DOWNLOAD);
            ProductionEnv.d("BackgroundDownloadService", "onDownloadChanged = " + download.request.id + "，" + download.state);
        }

        @Override
        public void onDownloadRemoved(DownloadManager downloadManager, Download download) {
            or3.f(downloadManager, "downloadManager");
            or3.f(download, NativeAdPresenter.DOWNLOAD);
            ProductionEnv.d("BackgroundDownloadService", "onDownloadRemoved = " + download.request.id + "，" + download.state);
        }

        @Override
        public void onDownloadsPausedChanged(DownloadManager downloadManager, boolean z) {
            ts1.c(this, downloadManager, z);
        }

        @Override
        public void onIdle(DownloadManager downloadManager) {
            or3.f(downloadManager, "downloadManager");
            ProductionEnv.d("BackgroundDownloadService", "onIdle");
        }

        @Override
        public void onInitialized(DownloadManager downloadManager) {
            or3.f(downloadManager, "downloadManager");
            ProductionEnv.d("BackgroundDownloadService", "onInitialized");
        }

        @Override
        public void onRequirementsStateChanged(DownloadManager downloadManager, Requirements requirements, int i) {
            ts1.f(this, downloadManager, requirements, i);
        }

        @Override
        public void onWaitingForRequirementsChanged(DownloadManager downloadManager, boolean z) {
            or3.f(downloadManager, "downloadManager");
            ProductionEnv.d("BackgroundDownloadService", "onWaitingForRequirementsChanged = " + z);
        }
    }

    public BackgroundDownloadService() {
        super(uh.m() ? Sdk.SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE : 0);
        this.downloadListener = new b();
    }

    @Override
    public DownloadManager getDownloadManager() {
        DownloadManager downloadManagerI = uu1.i(this);
        downloadManagerI.addListener(this.downloadListener);
        downloadManagerI.setMinRetryCount(3);
        or3.e(downloadManagerI, "apply(...)");
        return downloadManagerI;
    }

    @Override
    public Notification getForegroundNotification(List downloads) {
        or3.f(downloads, "downloads");
        STNotification sTNotification = STNotification.DOWNLOAD_AND_PLAY;
        a.b(this, sTNotification.getChannelId());
        Notification notificationC = new NotificationCompat.e(this, sTNotification.getChannelId()).c();
        or3.e(notificationC, "build(...)");
        return notificationC;
    }

    @Override
    public ax6 getScheduler() {
        return null;
    }

    @Override
    public void onDownloadChanged(DownloadManager downloadManager, Download download) {
        ts1.a(this, downloadManager, download);
    }

    @Override
    public void onDownloadRemoved(DownloadManager downloadManager, Download download) {
        ts1.b(this, downloadManager, download);
    }

    @Override
    public void onDownloadsPausedChanged(DownloadManager downloadManager, boolean z) {
        ts1.c(this, downloadManager, z);
    }

    @Override
    public void onIdle(DownloadManager downloadManager) {
        ts1.d(this, downloadManager);
    }

    @Override
    public void onInitialized(DownloadManager downloadManager) {
        ts1.e(this, downloadManager);
    }

    @Override
    public void onRequirementsStateChanged(DownloadManager downloadManager, Requirements requirements, int i) {
        ts1.f(this, downloadManager, requirements, i);
    }

    @Override
    public void onWaitingForRequirementsChanged(DownloadManager downloadManager, boolean z) {
        ts1.g(this, downloadManager, z);
    }
}
