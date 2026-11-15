package com.transsion.sniffer_load.okdownload;

import android.media.MediaScannerConnection;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.sniff.SniffGetResultReqBean;
import com.transsion.dbdata.beans.sniff.SniffMarkPointBean;
import com.transsion.dbdata.beans.sniff.SniffResultBean;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.vishaapis.APIService;
import com.transsion.playercommon.vishaapis.APIServiceManager;
import com.transsion.retrofit.callback.RequestCallback;
import com.transsion.retrofit.callback.RetryCallbackWithDirectData;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.data.M3u8Extra;
import com.transsion.sniffer_load.data.SniffDataManager;
import com.transsion.sniffer_load.sniffservice.SniffHeaderInjector;
import com.transsion.sniffer_load.sniffservice.SniffMarkPointer;
import com.transsion.videodownloader.VideoDownloadManager;
import com.transsion.videodownloader.model.VideoTaskItem;
import defpackage.av3;
import defpackage.e16;
import defpackage.fe7;
import defpackage.ie7;
import defpackage.iia;
import defpackage.jf;
import defpackage.jq0;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.r13;
import defpackage.s44;
import defpackage.ty2;
import defpackage.tz2;
import defpackage.ut4;
import defpackage.uz2;
import defpackage.yv5;
import defpackage.yx2;
import java.io.File;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

public class M3U8DownloadTask extends SniffDownloadTask {
    public static final String TAG = "visha_" + M3U8DownloadTask.class.getSimpleName();
    public static tz2 sM3U8DownloadListener = new a();
    private boolean bUpdateCover;
    private boolean isWaitingCalled;
    private final M3U8TaskExtra mM3U8TaskExtra;
    private final VideoTaskItem mVideoTaskItem;
    private volatile boolean pauseByMobile;
    private boolean retryRequestSniff;

    public static class M3U8TaskExtra implements Serializable {
        boolean bConvert;
        boolean bMergeFailed;
        float convertProgress;
    }

    public class a extends tz2 {
        @Override
        public void a(VideoTaskItem videoTaskItem) {
            LogUtils.j(M3U8DownloadTask.TAG, "onDownloadDefault", videoTaskItem.getUrl());
            super.a(videoTaskItem);
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
        }

        @Override
        public void b(VideoTaskItem videoTaskItem) {
            LogUtils.j(M3U8DownloadTask.TAG, "onDownloadError", Integer.valueOf(videoTaskItem.getErrorCode()));
            super.b(videoTaskItem);
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
        }

        @Override
        public void c(VideoTaskItem videoTaskItem) {
            LogUtils.j(M3U8DownloadTask.TAG, "onDownloadPause", videoTaskItem.getUrl());
            super.c(videoTaskItem);
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
        }

        @Override
        public void d(VideoTaskItem videoTaskItem) {
            LogUtils.j(M3U8DownloadTask.TAG, "onDownloadPending", videoTaskItem.getUrl());
            super.d(videoTaskItem);
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
        }

        @Override
        public void e(VideoTaskItem videoTaskItem) {
            LogUtils.j(M3U8DownloadTask.TAG, "onDownloadPrepare", videoTaskItem.getUrl());
            super.e(videoTaskItem);
            if (videoTaskItem.isPaused()) {
                return;
            }
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
        }

        @Override
        public void f(VideoTaskItem videoTaskItem) {
            super.f(videoTaskItem);
            if (videoTaskItem.isPaused()) {
                return;
            }
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
        }

        @Override
        public void g(VideoTaskItem videoTaskItem) {
            LogUtils.j(M3U8DownloadTask.TAG, "onDownloadStart", videoTaskItem.getUrl());
            super.g(videoTaskItem);
            if (videoTaskItem.isPaused()) {
                return;
            }
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
        }

        @Override
        public void h(VideoTaskItem videoTaskItem) {
            LogUtils.j(M3U8DownloadTask.TAG, "onDownloadSuccess", videoTaskItem.getUrl(), videoTaskItem.getDownloadSizeString());
            super.h(videoTaskItem);
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
        }

        @Override
        public void i(VideoTaskItem videoTaskItem, Exception exc) {
            LogUtils.m(M3U8DownloadTask.TAG, "onHLSMergeFailed:" + videoTaskItem.getUrl(), "error:" + exc.getMessage());
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2014;
            SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(videoTaskItem.getUrl()).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
        }

        @Override
        public void j(VideoTaskItem videoTaskItem, float f) {
            LogUtils.w(M3U8DownloadTask.TAG, "onHLSMergeProgress:" + f);
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
        }

        @Override
        public void k(VideoTaskItem videoTaskItem) {
            LogUtils.j(M3U8DownloadTask.TAG, "onHLSMergeSuccess", videoTaskItem.getUrl(), videoTaskItem.getDownloadSizeString(), videoTaskItem.getFilePath(), yx2.h, videoTaskItem.getFinalFileName());
            super.k(videoTaskItem);
            M3U8DownloadTask.OnDownloadStateChange(videoTaskItem);
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2013;
            SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(videoTaskItem.getUrl()).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
        }
    }

    public class b implements RequestCallback.OnRequestDataListener {
        public final long a;

        public b(long j) {
            this.a = j;
        }

        @Override
        public void returnDataSuccess(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SniffResultBean sniffResultBean = (SniffResultBean) it.next();
                List<SniffResultBean.Video> videoList = sniffResultBean.getVideoList();
                if (videoList == null || videoList.size() == 0) {
                    M3U8DownloadTask m3U8DownloadTask = M3U8DownloadTask.this;
                    m3U8DownloadTask.postOnError(m3U8DownloadTask.progress, new Throwable("poll sniff data is failed!"));
                } else {
                    SniffResultBean.Video video = sniffResultBean.getVideoList().get(0);
                    M3U8DownloadTask.this.progress.url = video.getUrl();
                    M3U8DownloadTask.this.progress.request = fe7.b(video.getUrl());
                    M3U8DownloadTask.this.progress.uaAgent = sniffResultBean.userAgent;
                    M3U8DownloadTask.this.progress.cookie = sniffResultBean.cookie;
                    LogUtils.j(M3U8DownloadTask.TAG, "request_new_download_url:" + video.getUrl());
                    M3U8DownloadTask.this.start();
                }
            }
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2011;
            SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(M3U8DownloadTask.this.progress.sniffId).setDuration((int) (System.currentTimeMillis() - this.a)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
        }

        @Override
        public void returnDataFailed(String str, String str2) {
            M3U8DownloadTask m3U8DownloadTask = M3U8DownloadTask.this;
            m3U8DownloadTask.postOnError(m3U8DownloadTask.progress, new Throwable("poll sniff data is failed!"));
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2012;
            SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(M3U8DownloadTask.this.progress.sniffId).setDuration((int) (System.currentTimeMillis() - this.a)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
        }
    }

    public M3U8DownloadTask(Progress progress) {
        super(progress);
        this.retryRequestSniff = false;
        this.pauseByMobile = false;
        this.bUpdateCover = false;
        this.isWaitingCalled = false;
        this.mVideoTaskItem = createVideoItemTask(progress);
        setbM3U8Task(true);
        this.mM3U8TaskExtra = new M3U8TaskExtra();
    }

    public static void OnDownloadStateChange(VideoTaskItem videoTaskItem) {
        M3U8DownloadTask m3U8DownloadTask = (M3U8DownloadTask) GlobalDownloadManger.B().c(videoTaskItem.getUrl(), true);
        if (m3U8DownloadTask != null) {
            m3U8DownloadTask.videoTaskConvertToProgress(videoTaskItem);
            if (m3U8DownloadTask.progress.status == 2) {
                m3U8DownloadTask.postLoading(m3U8DownloadTask.progress);
                return;
            }
            if (m3U8DownloadTask.progress.status == 1) {
                m3U8DownloadTask.postWaiting(m3U8DownloadTask.progress);
                return;
            }
            if (m3U8DownloadTask.progress.status == 3) {
                m3U8DownloadTask.postPause(m3U8DownloadTask.progress, m3U8DownloadTask.pauseByMobile);
                return;
            }
            if (m3U8DownloadTask.progress.status != 4) {
                if (m3U8DownloadTask.progress.status == 5) {
                    m3U8DownloadTask.postOnFinish(m3U8DownloadTask.progress, new File(videoTaskItem.getFilePath()));
                    return;
                } else {
                    if (m3U8DownloadTask.progress.status == 0) {
                        m3U8DownloadTask.postOnStart(m3U8DownloadTask.progress);
                        return;
                    }
                    return;
                }
            }
            LogUtils.m(TAG, "download_task_failed:" + m3U8DownloadTask.progress.url, "error：" + videoTaskItem.getErrorCode());
            m3U8DownloadTask.postOnError(m3U8DownloadTask.progress, new Throwable(ty2.f(videoTaskItem.getErrorCode())));
        }
    }

    public static boolean isMergeFailed(Progress progress) {
        if (progress != null) {
            Serializable serializable = progress.extra1;
            if ((serializable instanceof M3U8TaskExtra) && ((M3U8TaskExtra) serializable).bMergeFailed) {
                return true;
            }
        }
        return false;
    }

    public void lambda$postOnError$4(Progress progress) {
        for (uz2 uz2Var : this.listeners.values()) {
            uz2Var.a(progress);
            uz2Var.c(progress);
        }
        stopNotification();
    }

    public void lambda$postOnFinish$1(Progress progress, File file) {
        boolean z = true;
        for (uz2 uz2Var : this.listeners.values()) {
            if ("visha_DownloadingAdapter".equals(uz2Var.a)) {
                z = false;
            }
            uz2Var.a(progress);
            uz2Var.b(file, progress);
            yv5.c().a(this.mVideoTaskItem, false);
        }
        if (z) {
            LiveEventBus.b().c("new_task_finished", Boolean.TRUE);
        }
        stopNotification();
    }

    public void lambda$postOnFinish$2(final Progress progress, final File file, String str, Uri uri) {
        r13.m(this, av3.n(str), str);
        Log.d(TAG, "m3u8 onScanCompleted:" + str + " uri:" + uri);
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnFinish$1(progress, file);
            }
        });
        updateOriginUrl(uri);
    }

    public void lambda$postOnRemove$3(Progress progress, boolean z) {
        Iterator<uz2> it = this.listeners.values().iterator();
        while (it.hasNext()) {
            it.next().e(progress, z);
        }
        this.listeners.clear();
        stopNotification();
    }

    public void lambda$updateCover$0(final Progress progress) throws Throwable {
        M3u8Extra m3u8Extra = SniffDataManager.getM3u8Extra(progress.url);
        if (m3u8Extra != null) {
            progress.imgUrl = m3u8Extra.getImg();
            progress.totalSize = m3u8Extra.getSize();
            this.mVideoTaskItem.setTotalSize(m3u8Extra.getSize());
            this.mVideoTaskItem.setCoverPath(m3u8Extra.getImg());
            ut4.k(new Runnable() {
                @Override
                public void run() {
                    Iterator<uz2> it = M3U8DownloadTask.this.listeners.values().iterator();
                    while (it.hasNext()) {
                        it.next().g(progress);
                    }
                }
            });
            save();
        }
    }

    private void postMergedCompete() {
    }

    private void postOnRemove(final Progress progress, final boolean z) {
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnRemove$3(progress, z);
            }
        });
    }

    private void retryServerSniffAsyncDownloadTask() {
        this.retryRequestSniff = true;
        this.progress.url = "";
        if (TextUtils.isEmpty(this.progress.sniffId) || !TextUtils.isEmpty(this.progress.url)) {
            return;
        }
        LogUtils.j(TAG, "task_failed_url_forbid,request_new_download_url_sniff_url:" + this.progress.sniffId);
        SniffGetResultReqBean sniffGetResultReqBean = new SniffGetResultReqBean();
        sniffGetResultReqBean.setSniffUrl(this.progress.sniffId);
        long jCurrentTimeMillis = System.currentTimeMillis();
        jq0<BaseResponse<List<SniffResultBean>>> sniffResultFromServer = ((APIService) APIServiceManager.getInstance().getApi(APIService.class)).getSniffResultFromServer(sniffGetResultReqBean);
        sniffResultFromServer.enqueue(new RetryCallbackWithDirectData(sniffResultFromServer, 3, 1000L, new b(jCurrentTimeMillis)));
    }

    public static void videoTaskConvertToProgress(Progress progress, VideoTaskItem videoTaskItem) {
        if (videoTaskItem == null || progress == null) {
            return;
        }
        switch (videoTaskItem.getTaskState()) {
            case 3:
            case 5:
            case 11:
                progress.status = 2;
                break;
            case 4:
            default:
                progress.status = 0;
                break;
            case 6:
            case 8:
            case 10:
                progress.status = GlobalDownloadManger.B().w().equals(GlobalDownloadManger.NetType.NO) ? 7 : 4;
                break;
            case 7:
                progress.status = 3;
                break;
            case 9:
                progress.status = 5;
                break;
        }
        progress.lastSize = progress.currentSize;
        progress.currentSize = videoTaskItem.getDownloadSize();
        progress.speed = (long) videoTaskItem.getSpeed();
        progress.fraction = videoTaskItem.getTransPeercent();
        long totalSize = videoTaskItem.getTotalSize();
        progress.totalSize = totalSize;
        if (totalSize <= 0) {
            progress.totalSize = videoTaskItem.getDownloadSize();
        }
        LogUtils.j(TAG, "videoTask:" + videoTaskItem, "progress:" + progress);
    }

    public VideoTaskItem createVideoItemTask(Progress progress) {
        VideoTaskItem videoTaskItem = new VideoTaskItem(progress.url);
        videoTaskItem.setTotalSize(progress.totalSize);
        videoTaskItem.setCoverPath(progress.imgUrl);
        videoTaskItem.setFileName(progress.fileName);
        videoTaskItem.setFinalFileName(progress.fileName);
        videoTaskItem.setSniffId(progress.sniffId);
        Serializable serializable = progress.extra2;
        if (serializable instanceof String) {
            videoTaskItem.setGroupName((String) serializable);
        }
        return videoTaskItem;
    }

    public long getDownloadedSize() {
        return this.mVideoTaskItem.getDownloadSize();
    }

    @Override
    public void pause(boolean z) {
        VideoTaskItem videoTaskItem = this.mVideoTaskItem;
        if (videoTaskItem == null || videoTaskItem.getTaskState() != 11) {
            this.isWaitingCalled = false;
            this.pauseByMobile = z;
            yv5.c().f(this.mVideoTaskItem);
            postPause(this.progress, z);
        }
    }

    @Override
    public void postLoading(final Progress progress) {
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = M3U8DownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().a(progress);
                }
                int i = (int) (progress.fraction * 100.0f);
                String str = String.format("%s/s", s44.d(jf.c(), progress.speed));
                String str2 = String.format("%s", s44.d(jf.c(), progress.totalSize));
                M3U8DownloadTask m3U8DownloadTask = M3U8DownloadTask.this;
                m3U8DownloadTask.updateNotification(i, str, str2, m3U8DownloadTask.simpleView, m3U8DownloadTask.complexView);
            }
        });
    }

    @Override
    public void postOnError(final Progress progress, Throwable th) {
        progress.speed = 0L;
        updateStatus(4);
        progress.exception = ty2.l(th);
        LogUtils.j(TAG, "postOnError:" + progress);
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnError$4(progress);
            }
        });
    }

    @Override
    public void postOnFinish(final Progress progress, final File file) {
        progress.speed = 0L;
        progress.fraction = 1.0f;
        updateStatus(5);
        e16.e(progress.url, progress.getOriginSite(), (file == null || TextUtils.isEmpty(av3.m(file))) ? "mp4" : av3.m(file), progress.downloadSource);
        if (file == null) {
            return;
        }
        MediaScannerConnection.scanFile(Utils.a(), new String[]{file.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() {
            @Override
            public final void onScanCompleted(String str, Uri uri) {
                this.a.lambda$postOnFinish$2(progress, file, str, uri);
            }
        });
    }

    @Override
    public void postOnStart(final Progress progress) {
        progress.speed = 0L;
        updateStatus(0);
        LogUtils.j(TAG, "postOnStart:" + progress.status);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = M3U8DownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().d(progress);
                }
                M3U8DownloadTask.this.startNotification(progress);
            }
        });
        updateCover(progress);
    }

    @Override
    public void postPause(final Progress progress, boolean z) {
        if (this.isWaitingCalled) {
            postWaiting(progress);
            return;
        }
        progress.speed = 0L;
        updateStatus(z ? 6 : 3);
        Log.i(TAG, "postPause-----" + progress.status);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = M3U8DownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().f(progress);
                }
                M3U8DownloadTask.this.stopNotification();
            }
        });
    }

    @Override
    public void postWaiting(final Progress progress) {
        progress.speed = 0L;
        updateStatus(1);
        LogUtils.j(TAG, "postWaiting", Integer.valueOf(progress.status));
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = M3U8DownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().h(progress);
                }
                M3U8DownloadTask.this.stopNotification();
            }
        });
        updateCover(progress);
    }

    @Override
    public void remove() {
        remove(false);
    }

    @Override
    public NewDownloadTask save() {
        VideoDownloadManager.E().V(this.mVideoTaskItem);
        return this;
    }

    @Override
    public void start() {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("start task:");
        sb.append(this.progress != null ? this.progress.toString() : "null");
        LogUtils.j(str, sb.toString());
        this.isWaitingCalled = false;
        if (this.progress.status == 0 || this.progress.status == 3 || this.progress.status == 4 || this.progress.status == 1 || this.progress.status == 6 || this.progress.status == 7) {
            postOnStart(this.progress);
            if (pp3.q()) {
                yv5.c().i(this.mVideoTaskItem, SniffHeaderInjector.buildHeadersFromProgress(this.progress));
                return;
            } else {
                yv5.c().h(this.mVideoTaskItem);
                return;
            }
        }
        ie7.c("the task with tag " + this.progress.tag + " is already in the download queue, current task status is " + this.progress.status);
    }

    public void updateCover(final Progress progress) {
        if (!r0a.g(progress.imgUrl) || this.bUpdateCover) {
            return;
        }
        this.bUpdateCover = true;
        iia.a(new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.lambda$updateCover$0(progress);
            }
        });
    }

    @Override
    public void waiting() {
        this.isWaitingCalled = true;
        yv5.c().f(this.mVideoTaskItem);
        postWaiting(this.progress);
    }

    public boolean isMergeFailed() {
        return this.mM3U8TaskExtra.bMergeFailed;
    }

    @Override
    public void remove(boolean z) {
        this.isWaitingCalled = false;
        boolean z2 = this.progress.status == 0 || this.progress.status == 2;
        pause(false);
        yv5.c().a(this.mVideoTaskItem, z);
        postOnRemove(this.progress, z2);
    }

    @Override
    public void postPause(Progress progress) {
        postPause(progress, false);
    }

    public M3U8DownloadTask(Progress progress, VideoTaskItem videoTaskItem) {
        super(progress);
        this.retryRequestSniff = false;
        this.pauseByMobile = false;
        this.bUpdateCover = false;
        this.isWaitingCalled = false;
        this.mVideoTaskItem = videoTaskItem;
        setbM3U8Task(true);
        this.mM3U8TaskExtra = new M3U8TaskExtra();
    }

    private void videoTaskConvertToProgress(VideoTaskItem videoTaskItem) {
        videoTaskConvertToProgress(this.progress, videoTaskItem);
        if (videoTaskItem != null) {
            if (videoTaskItem.getTaskState() == 11) {
                M3U8TaskExtra m3U8TaskExtra = this.mM3U8TaskExtra;
                m3U8TaskExtra.bConvert = true;
                m3U8TaskExtra.convertProgress = videoTaskItem.getPercent();
                this.progress.extra1 = this.mM3U8TaskExtra;
                return;
            }
            if (videoTaskItem.getTaskState() != 2 && videoTaskItem.getTaskState() != 6 && videoTaskItem.getTaskState() != 8) {
                if (videoTaskItem.getTaskState() == 10) {
                    this.mM3U8TaskExtra.bMergeFailed = true;
                    videoTaskItem.setIsCompleted(false);
                    M3U8TaskExtra m3U8TaskExtra2 = (M3U8TaskExtra) this.progress.extra1;
                    if (m3U8TaskExtra2 != null) {
                        m3U8TaskExtra2.bMergeFailed = true;
                        return;
                    } else {
                        this.progress.extra1 = this.mM3U8TaskExtra;
                        return;
                    }
                }
                return;
            }
            M3U8TaskExtra m3U8TaskExtra3 = this.mM3U8TaskExtra;
            m3U8TaskExtra3.bConvert = false;
            m3U8TaskExtra3.convertProgress = 0.0f;
            videoTaskItem.setIsCompleted(false);
            M3U8TaskExtra m3U8TaskExtra4 = (M3U8TaskExtra) this.progress.extra1;
            if (m3U8TaskExtra4 != null) {
                m3U8TaskExtra4.bConvert = false;
            } else {
                this.progress.extra1 = this.mM3U8TaskExtra;
            }
        }
    }
}
