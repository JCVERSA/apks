package com.transsion.sniffer_load.okdownload;

import android.app.Application;
import android.app.Notification;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.lzy.okgo.exception.HttpException;
import com.lzy.okgo.exception.OkGoException;
import com.lzy.okgo.exception.StorageException;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.Progress;
import com.lzy.okgo.request.base.Request;
import com.lzy.okserver.task.PriorityRunnable;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.cloud.upload.task.UploadHeaderTask;
import com.transsion.dbdata.beans.sniff.SniffGetResultReqBean;
import com.transsion.dbdata.beans.sniff.SniffMarkPointBean;
import com.transsion.dbdata.beans.sniff.SniffResultBean;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.TransferNotificationHelper;
import com.transsion.playercommon.vishaapis.APIService;
import com.transsion.playercommon.vishaapis.APIServiceManager;
import com.transsion.retrofit.callback.RequestCallback;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.data.DownloadHistory;
import com.transsion.sniffer_load.database.BookmarkDatabase;
import com.transsion.sniffer_load.sniffservice.SniffMarkPointer;
import defpackage.fe7;
import defpackage.gu8;
import defpackage.ie7;
import defpackage.j07;
import defpackage.jf;
import defpackage.jq0;
import defpackage.mv4;
import defpackage.r03;
import defpackage.r0a;
import defpackage.r13;
import defpackage.s44;
import defpackage.se;
import defpackage.u03;
import defpackage.ut4;
import defpackage.uz2;
import defpackage.yv5;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

public class NewDownloadTask implements Runnable, MultiItemEntity {
    private static final int BUFFER_SIZE = 8192;
    public static final int NONE = 0;
    public static final String TAG = "visha_" + NewDownloadTask.class.getSimpleName();
    private static Notification mSummeryNotification;
    private boolean bM3U8Task;
    private final RequestCallback.OnRequestDataListener<List<SniffResultBean>> callback;
    protected RemoteViews complexView;
    private final ThreadPoolExecutor executor;
    private long lastNotificationUpdateTime;
    private int lastNotifiedProgress;
    public volatile Map<Object, uz2> listeners;
    private final int mNid;
    private Notification mNotification;
    private int notifyCount;
    private PriorityRunnable priorityRunnable;
    public volatile Progress progress;
    private final int retryCount;
    private final long retryInterval;
    protected RemoteViews simpleView;
    private long startTime;

    public static class DownloadTaskExtra implements Serializable {
        String sniffRequestBody;
    }

    public class a implements RequestCallback.OnRequestDataListener {
        public a() {
        }

        @Override
        public void returnDataSuccess(List list) {
            String str = NewDownloadTask.TAG;
            LogUtils.j(str, "polling server async response successfully");
            if (list == null) {
                LogUtils.j(str, "but response is empty");
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SniffResultBean sniffResultBean = (SniffResultBean) it.next();
                List<SniffResultBean.Video> videoList = sniffResultBean.getVideoList();
                if (videoList == null || videoList.size() == 0) {
                    LogUtils.j(NewDownloadTask.TAG, "but not get video url,so failed!");
                    NewDownloadTask newDownloadTask = NewDownloadTask.this;
                    newDownloadTask.postOnError(newDownloadTask.progress, new Throwable("poll sniff data is failed!"));
                    SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
                    SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2012;
                    SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(NewDownloadTask.this.progress.sniffId).setDuration((int) (System.currentTimeMillis() - NewDownloadTask.this.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                } else {
                    SniffResultBean.Video video = sniffResultBean.getVideoList().get(0);
                    String str2 = NewDownloadTask.TAG;
                    LogUtils.j(str2, "polling server async response startDownload:" + video);
                    NewDownloadTask.this.progress.url = video.getUrl();
                    NewDownloadTask.this.progress.totalSize = video.getSize() == null ? -1L : video.getSize().intValue();
                    NewDownloadTask.this.progress.request = fe7.b(video.getUrl());
                    NewDownloadTask.this.progress.uaAgent = sniffResultBean.userAgent;
                    NewDownloadTask.this.progress.imgUrl = sniffResultBean.resourceCover;
                    NewDownloadTask.this.progress.cookie = sniffResultBean.cookie;
                    NewDownloadTask.this.progress.mimeType = video.getMimeTypeString();
                    if (yv5.e(video.getUrl())) {
                        new M3U8DownloadTask(NewDownloadTask.this.progress).start();
                        r03.t().n(NewDownloadTask.this.progress.tag);
                    } else {
                        if (NewDownloadTask.this.progress.status != 2 && NewDownloadTask.this.progress.status != 0) {
                            LogUtils.j(str2, "async task pause, status: " + NewDownloadTask.this.progress.status);
                            return;
                        }
                        NewDownloadTask.this.saveFile();
                    }
                    SniffMarkPointBean.Builder builder2 = new SniffMarkPointBean.Builder();
                    SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint2 = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2011;
                    SniffMarkPointer.markPointSniffAsync(builder2.setCode(enum_sniff_markpoint2.code).setMsg(enum_sniff_markpoint2.msg).setMainUrl(NewDownloadTask.this.progress.sniffId).setDuration((int) (System.currentTimeMillis() - NewDownloadTask.this.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                }
            }
        }

        @Override
        public void returnDataFailed(String str, String str2) {
            LogUtils.j(NewDownloadTask.TAG, "polling server async task failed:" + str2);
            NewDownloadTask newDownloadTask = NewDownloadTask.this;
            newDownloadTask.postOnError(newDownloadTask.progress, new Throwable("poll sniff data is failed!"));
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2012;
            SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(NewDownloadTask.this.progress.sniffId).setDuration((int) (System.currentTimeMillis() - NewDownloadTask.this.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
        }
    }

    public class b implements RequestCallback.OnRequestDataListener {
        public b() {
        }

        @Override
        public void returnDataSuccess(SniffResultBean sniffResultBean) {
            SniffMarkPointer.endTime = System.currentTimeMillis();
            if (sniffResultBean != null && sniffResultBean.isSniffSuccess() && sniffResultBean.isSniffMedia()) {
                LogUtils.j(NewDownloadTask.TAG, "server async sniff task success,start save file:", sniffResultBean.toString());
                ArrayList arrayList = new ArrayList();
                arrayList.add(sniffResultBean);
                NewDownloadTask.this.callback.returnDataSuccess(arrayList);
                SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
                SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2009;
                SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(NewDownloadTask.this.progress.sniffId).setDuration((int) (SniffMarkPointer.endTime - SniffMarkPointer.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                return;
            }
            LogUtils.j(NewDownloadTask.TAG, "server async sniff task,but not get sniff video url,start polling server :" + NewDownloadTask.this.progress.sniffId);
            SniffGetResultReqBean sniffGetResultReqBean = new SniffGetResultReqBean();
            sniffGetResultReqBean.setSniffUrl(NewDownloadTask.this.progress.sniffId);
            NewDownloadTask.this.startTime = System.currentTimeMillis();
            jq0<BaseResponse<List<SniffResultBean>>> sniffResultFromServer = ((APIService) APIServiceManager.getInstance().getApi(APIService.class)).getSniffResultFromServer(sniffGetResultReqBean);
            if (sniffResultFromServer == null) {
                NewDownloadTask.this.callback.returnDataFailed("-1", "");
                return;
            }
            for (int i = 0; i < 5; i++) {
                try {
                    gu8 gu8VarExecute = sniffResultFromServer.clone().execute();
                    if (gu8VarExecute.a() != null && ((BaseResponse) gu8VarExecute.a()).getData() != null) {
                        LogUtils.j(NewDownloadTask.TAG, "polling server success:" + ((BaseResponse) gu8VarExecute.a()).getData());
                        NewDownloadTask.this.callback.returnDataSuccess((List) ((BaseResponse) gu8VarExecute.a()).getData());
                        return;
                    }
                    Thread.sleep(1000L);
                } catch (IOException | InterruptedException e) {
                    LogUtils.m(NewDownloadTask.TAG, "polling server failed:" + e.getMessage());
                }
            }
            LogUtils.j(NewDownloadTask.TAG, "server async sniff task, polling server over try time :" + NewDownloadTask.this.progress.sniffId);
            NewDownloadTask.this.callback.returnDataFailed("-2", "");
        }

        @Override
        public void returnDataFailed(String str, String str2) {
            LogUtils.j(NewDownloadTask.TAG, "get_sniff_result_failed_use_client_sniff:", str, str2);
            NewDownloadTask newDownloadTask = NewDownloadTask.this;
            newDownloadTask.postOnError(newDownloadTask.progress, new Throwable(str2));
            SniffMarkPointer.endTime = System.currentTimeMillis();
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2008;
            SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(NewDownloadTask.this.progress.sniffId).setDuration((int) (SniffMarkPointer.endTime - SniffMarkPointer.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
        }
    }

    public class c implements Progress.a {
        public c() {
        }

        @Override
        public void a(Progress progress) {
            NewDownloadTask.this.postLoading(progress);
        }
    }

    public NewDownloadTask(Progress progress) {
        this.notifyCount = 0;
        this.bM3U8Task = false;
        this.retryCount = 5;
        this.retryInterval = 1000L;
        this.startTime = System.currentTimeMillis();
        this.callback = new a();
        ut4.b(progress, "progress == null");
        this.progress = progress;
        this.executor = j07.a().b().a();
        this.listeners = Collections.synchronizedMap(new LinkedHashMap());
        this.mNid = u03.a(progress.tag);
    }

    private void download(InputStream inputStream, RandomAccessFile randomAccessFile, Progress progress) throws IOException {
        if (inputStream == null || randomAccessFile == null) {
            return;
        }
        progress.status = 2;
        byte[] bArr = new byte[8192];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 8192);
        while (true) {
            try {
                int i = bufferedInputStream.read(bArr, 0, 8192);
                if (i == -1 || progress.status != 2) {
                    break;
                }
                randomAccessFile.write(bArr, 0, i);
                Progress.changeProgress(progress, i, progress.totalSize, new c());
            } catch (Throwable th) {
                mv4.a(randomAccessFile);
                mv4.a(bufferedInputStream);
                mv4.a(inputStream);
                throw th;
            }
        }
        mv4.a(randomAccessFile);
        mv4.a(bufferedInputStream);
        mv4.a(inputStream);
    }

    private void getDownloadUrlFromServer(String str, String str2, RequestCallback.OnRequestDataListener<SniffResultBean> onRequestDataListener) {
        SniffMarkPointer.startTime = System.currentTimeMillis();
        jq0<BaseResponse<SniffResultBean>> jq0VarSubmitSniffInfo = ((APIService) APIServiceManager.getInstance().getApi(APIService.class)).submitSniffInfo(RequestBody.create(str, MediaType.parse("application/json; charset=utf-8")));
        if (jq0VarSubmitSniffInfo != null && onRequestDataListener != null) {
            try {
                gu8 gu8VarExecute = jq0VarSubmitSniffInfo.execute();
                if (gu8VarExecute.a() == null || ((BaseResponse) gu8VarExecute.a()).getData() == null) {
                    onRequestDataListener.returnDataFailed(String.valueOf(gu8VarExecute.b()), gu8VarExecute.f());
                } else {
                    onRequestDataListener.returnDataSuccess((SniffResultBean) ((BaseResponse) gu8VarExecute.a()).getData());
                }
            } catch (IOException e) {
                LogUtils.m(TAG, "getSniffInfo failed: " + e.getMessage());
                onRequestDataListener.returnDataFailed("2008", SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2008.msg);
            }
        }
        SniffMarkPointer.markPointSniffAsync(new SniffMarkPointBean.Builder().setMainUrl(str2).setEventName(SniffMarkPointer.SNIFF_EVENT_NAME_DL_BROWER_RP_C_S).Build());
    }

    public void lambda$updateOriginUrl$0(Uri uri) {
        if (uri != null) {
            String lastPathSegment = uri.getLastPathSegment();
            if (TextUtils.isEmpty(lastPathSegment)) {
                return;
            }
            DownloadHistory downloadHistory = new DownloadHistory();
            downloadHistory.setMediaId(lastPathSegment);
            downloadHistory.setOriginSite(this.progress.getOriginSite());
            downloadHistory.setVideoSite(this.progress.url);
            downloadHistory.setTimeStamp(System.currentTimeMillis());
            BookmarkDatabase.c(MainApp.f()).b().addDownloadHistory(downloadHistory);
        }
    }

    private void postOnFinish(final Progress progress, final File file) {
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = NewDownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().b(file, progress);
                }
                NewDownloadTask.this.stopNotification();
            }
        });
    }

    private void postOnRemove(final Progress progress, final boolean z) {
        updateDatabase(progress);
        Log.i(TAG, "postOnRemove-----" + progress.status);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = NewDownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().e(progress, z);
                }
                NewDownloadTask.this.listeners.clear();
                NewDownloadTask.this.stopNotification();
            }
        });
    }

    private boolean runServerAsyncSniffTask() {
        if (TextUtils.isEmpty(this.progress.sniffId) || !TextUtils.isEmpty(this.progress.url)) {
            return false;
        }
        String str = TAG;
        LogUtils.j(str, "start server async task:" + this.progress.sniffId);
        if (this.progress.extra1 != null && !r0a.g(((DownloadTaskExtra) this.progress.extra1).sniffRequestBody)) {
            getDownloadUrlFromServer(((DownloadTaskExtra) this.progress.extra1).sniffRequestBody, this.progress.sniffId, new b());
            return true;
        }
        LogUtils.m(str, "start server async task failed，no request body:" + this.progress.sniffId);
        postOnError(this.progress, new Throwable("server async sniff task failed,no request body"));
        SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
        SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2008;
        SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(this.progress.sniffId).setDuration(0).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
        return true;
    }

    public void saveFile() {
        File file;
        long j = this.progress.currentSize;
        if (j < 0) {
            LogUtils.m(TAG, "save file failed,error msg:breakpoint file has expired");
            postOnError(this.progress, OkGoException.BREAKPOINT_EXPIRED());
            return;
        }
        if (j > 0 && !TextUtils.isEmpty(this.progress.filePath) && !new File(this.progress.filePath).exists()) {
            if (this.progress.filePath.endsWith(".xdl")) {
                File file2 = new File(this.progress.filePath.substring(0, this.progress.filePath.length() - 4));
                if (file2.exists()) {
                    postOnFinish(this.progress, file2);
                    return;
                }
            }
            LogUtils.m(TAG, "save file failed,error msg:breakpoint file has expired");
            postOnError(this.progress, OkGoException.BREAKPOINT_NOT_EXIST());
            return;
        }
        try {
            Request<?, ? extends Request> request = this.progress.request;
            request.headers("Range", "bytes=" + j + "-");
            if (!r0a.g(this.progress.cookie)) {
                request.headers(HttpHeaders.HEAD_KEY_COOKIE, this.progress.cookie);
            }
            if (!TextUtils.isEmpty(this.progress.uaAgent)) {
                request.headers("User-Agent", this.progress.uaAgent);
            }
            if (!r0a.g(this.progress.acceptLanguage)) {
                request.headers(HttpHeaders.HEAD_KEY_ACCEPT_LANGUAGE, this.progress.acceptLanguage);
            }
            if (!r0a.g(this.progress.acceptType)) {
                request.headers("Accept", this.progress.acceptType);
            }
            if (!r0a.g(this.progress.origin)) {
                request.headers("Origin", this.progress.origin);
            }
            if (!r0a.g(this.progress.referer)) {
                request.headers("Referer", this.progress.referer);
            }
            Response responseExecute = request.execute();
            int iCode = responseExecute.code();
            if (iCode >= 400) {
                LogUtils.m(TAG, "save file failed,request failed error code:" + iCode);
                postOnError(this.progress, HttpException.NET_ERROR(iCode));
                return;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null) {
                LogUtils.m(TAG, "save file failed,request failed no body");
                postOnError(this.progress, new HttpException("response body is null"));
                return;
            }
            String str = TAG;
            Log.i(str, "totalSize:" + this.progress.totalSize + " body:" + responseBodyBody.getContentLength());
            if (this.progress.totalSize <= 0 || this.progress.totalSize < responseBodyBody.getContentLength()) {
                this.progress.totalSize = responseBodyBody.getContentLength();
            }
            String strH = this.progress.fileName;
            if (TextUtils.isEmpty(strH)) {
                strH = ut4.h(responseExecute, this.progress.url);
                this.progress.fileName = strH;
            }
            if (!mv4.c(this.progress.folder)) {
                LogUtils.m(str, "save file failed,create folder failed:" + this.progress.folder);
                postOnError(this.progress, StorageException.NOT_AVAILABLE());
                return;
            }
            if (TextUtils.isEmpty(this.progress.filePath)) {
                file = new File(this.progress.folder, strH);
                this.progress.filePath = file.getAbsolutePath();
            } else {
                file = new File(this.progress.filePath);
            }
            if (j > 0 && !file.exists()) {
                LogUtils.m(str, "save file failed: " + this.progress.folder);
                postOnError(this.progress, OkGoException.BREAKPOINT_EXPIRED());
                return;
            }
            if (j > this.progress.totalSize) {
                LogUtils.m(str, "save file failed: " + this.progress.folder);
                postOnError(this.progress, OkGoException.BREAKPOINT_EXPIRED());
                return;
            }
            if (j == 0 && file.exists()) {
                mv4.d(file);
            }
            if (j == this.progress.totalSize && j > 0) {
                if (file.exists() && j == file.length()) {
                    postOnFinish(this.progress, file);
                    return;
                }
                LogUtils.m(str, "save file failed: " + this.progress.folder);
                postOnError(this.progress, OkGoException.BREAKPOINT_EXPIRED());
                return;
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                try {
                    randomAccessFile.seek(j);
                    this.progress.currentSize = j;
                    r03.t().k(this.progress);
                    download(responseBodyBody.byteStream(), randomAccessFile, this.progress);
                    randomAccessFile.close();
                    if (this.progress.status == 3) {
                        postPause(this.progress);
                        return;
                    }
                    if (this.progress.status == 2) {
                        if (file.length() >= this.progress.totalSize) {
                            postOnFinish(this.progress, file);
                            return;
                        }
                        LogUtils.m(str, "save file failed: " + this.progress.folder);
                        postOnError(this.progress, OkGoException.BREAKPOINT_EXPIRED());
                        return;
                    }
                    if (this.progress.status == 1 || this.progress.status == 0) {
                        postWaiting(this.progress);
                        return;
                    }
                    LogUtils.m(str, "save file failed: " + this.progress.folder);
                    postOnError(this.progress, OkGoException.UNKNOWN());
                } catch (Throwable th) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e) {
                LogUtils.m(TAG, "save file failed: " + e.getMessage());
                postOnError(this.progress, e);
            }
        } catch (IOException | IllegalArgumentException e2) {
            LogUtils.m(TAG, "save file failed,error msg:" + e2.getMessage());
            postOnError(this.progress, e2);
        }
    }

    private void updateDatabase(Progress progress) {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.progress, ((NewDownloadTask) obj).progress);
    }

    public NewDownloadTask extra1(Serializable serializable) {
        this.progress.extra1 = serializable;
        return this;
    }

    public NewDownloadTask extra2(Serializable serializable) {
        this.progress.extra2 = serializable;
        return this;
    }

    public NewDownloadTask extra3(Serializable serializable) {
        this.progress.extra3 = serializable;
        return this;
    }

    public NewDownloadTask fileName(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            ie7.c("fileName is null, ignored!");
        } else {
            this.progress.fileName = str;
        }
        return this;
    }

    public NewDownloadTask folder(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            ie7.c("folder is null, ignored!");
        } else {
            this.progress.folder = str;
        }
        return this;
    }

    public int getItemType() {
        return 0;
    }

    public int hashCode() {
        return this.progress.hashCode();
    }

    public boolean isHLSConverting() {
        M3U8DownloadTask.M3U8TaskExtra m3U8TaskExtra = (M3U8DownloadTask.M3U8TaskExtra) this.progress.extra1;
        return m3U8TaskExtra != null && m3U8TaskExtra.bConvert;
    }

    public boolean isHeaderTask() {
        return getItemType() == 1;
    }

    public boolean isbM3U8Task() {
        return this.bM3U8Task;
    }

    public void noNetPause() {
        updateStatus(7);
        this.executor.remove(this.priorityRunnable);
        postNoNet(this.progress);
        LogUtils.j(TAG, "noNetPause:" + this.progress.fileName);
    }

    public void pause(boolean z) {
    }

    public void postLoading(final Progress progress) {
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = NewDownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().a(progress);
                }
                int i = (int) (progress.fraction * 100.0f);
                String str = String.format("%s/s", s44.d(jf.c(), progress.speed));
                String str2 = String.format("%s", s44.d(jf.c(), progress.totalSize));
                NewDownloadTask newDownloadTask = NewDownloadTask.this;
                newDownloadTask.updateNotification(i, str, str2, newDownloadTask.simpleView, newDownloadTask.complexView);
            }
        });
    }

    public void postNoNet(final Progress progress) {
        progress.speed = 0L;
        Log.i(TAG, "postNoNet-----" + progress.status);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = NewDownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().f(progress);
                }
                NewDownloadTask.this.stopNotification();
            }
        });
        updateDatabase(progress);
    }

    public void postOnError(final Progress progress, Throwable th) {
        progress.speed = 0L;
        updateStatus(GlobalDownloadManger.B().w().equals(GlobalDownloadManger.NetType.NO) ? 7 : 4);
        progress.exception = th;
        Log.i(TAG, "postOnError-----" + th.getMessage());
        ut4.k(new Runnable() {
            @Override
            public void run() {
                for (uz2 uz2Var : NewDownloadTask.this.listeners.values()) {
                    uz2Var.a(progress);
                    uz2Var.c(progress);
                }
                NewDownloadTask.this.stopNotification();
            }
        });
        updateDatabase(progress);
    }

    public void postOnStart(final Progress progress) {
        progress.speed = 0L;
        updateStatus(0);
        Log.i(TAG, "postOnStart-----" + progress.url);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = NewDownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().d(progress);
                }
                NewDownloadTask.this.startNotification(progress);
            }
        });
        updateDatabase(progress);
    }

    public void postPause(Progress progress) {
        postPause(progress, false);
    }

    public void postWaiting(final Progress progress) {
        progress.speed = 0L;
        updateStatus(1);
        Log.i(TAG, "postWaiting-----" + progress.status);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = NewDownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().h(progress);
                }
                NewDownloadTask.this.stopNotification();
            }
        });
        updateDatabase(progress);
    }

    public NewDownloadTask priority(int i) {
        this.progress.priority = i;
        return this;
    }

    public NewDownloadTask register(uz2 uz2Var) {
        if (uz2Var != null) {
            this.listeners.put(uz2Var.a, uz2Var);
        }
        return this;
    }

    public void remove() {
    }

    @Override
    public void run() {
    }

    public NewDownloadTask save() {
        if (!TextUtils.isEmpty(this.progress.folder) && !TextUtils.isEmpty(this.progress.fileName)) {
            this.progress.filePath = new File(this.progress.folder, this.progress.fileName).getAbsolutePath();
        }
        r03.t().k(this.progress);
        return this;
    }

    public void setbM3U8Task(boolean z) {
        this.bM3U8Task = z;
    }

    public void start() {
        if (GlobalDownloadManger.B().getTask(this.progress.tag) == null) {
            throw new IllegalStateException("you must call NewDownloadTask#save() before NewDownloadTask#start()！");
        }
        if (this.progress.status == 0 || this.progress.status == 3 || this.progress.status == 6 || this.progress.status == 7 || this.progress.status == 4 || this.progress.status == 1) {
            postOnStart(this.progress);
            PriorityRunnable priorityRunnable = new PriorityRunnable(this.progress.priority, this);
            this.priorityRunnable = priorityRunnable;
            this.executor.execute(priorityRunnable);
            return;
        }
        if (this.progress.status != 5) {
            ie7.c("the task with tag " + this.progress.tag + " is already in the download queue, current task status is " + this.progress.status);
            return;
        }
        if (this.progress.filePath == null) {
            postOnError(this.progress, new StorageException("the file of the task with tag:" + this.progress.tag + " may be invalid or damaged, please call the method restart() to download again！"));
            return;
        }
        File file = new File(this.progress.filePath);
        if (file.exists() && file.length() == this.progress.totalSize) {
            postOnFinish(this.progress, new File(this.progress.filePath));
            return;
        }
        postOnError(this.progress, new StorageException("the file " + this.progress.filePath + " may be invalid or damaged, please call the method restart() to download again！"));
    }

    public void startNotification(Progress progress) {
        this.simpleView = new RemoteViews(MainApp.f().getPackageName(), R.layout.notify_progress_layout_simple);
        this.complexView = new RemoteViews(MainApp.f().getPackageName(), R.layout.notify_progress_layout);
        String str = String.format("%s/s", s44.d(jf.c(), progress.speed));
        String str2 = String.format("%s", s44.d(jf.c(), progress.totalSize));
        int i = (int) (progress.fraction * 100.0f);
        String strH = r13.h(progress.fileName);
        RemoteViews remoteViews = this.complexView;
        int i2 = R.id.tv_name;
        remoteViews.setTextViewText(i2, strH);
        this.complexView.setTextViewText(R.id.tv_speed, str);
        this.complexView.setTextViewText(R.id.tv_size, str2);
        RemoteViews remoteViews2 = this.complexView;
        int i3 = R.id.tv_title;
        Application applicationA = se.a();
        int i4 = R.string.mv_download;
        remoteViews2.setTextViewText(i3, applicationA.getText(i4));
        RemoteViews remoteViews3 = this.complexView;
        int i5 = R.id.progressBar;
        remoteViews3.setProgressBar(i5, 100, i, false);
        this.simpleView.setTextViewText(i2, strH);
        this.simpleView.setProgressBar(i5, 100, i, false);
        this.simpleView.setTextViewText(i3, se.a().getText(i4));
        this.mNotification = TransferNotificationHelper.d(MainApp.f(), this.simpleView, this.complexView, strH, this.mNid);
        if (Build.VERSION.SDK_INT <= 33) {
            mSummeryNotification = u03.b(MainApp.f());
            GlobalDownloadManger.B().b(mSummeryNotification);
        }
    }

    public void stopNotification() {
        TransferNotificationHelper.a(MainApp.f(), this.mNid);
        if (TransferNotificationHelper.o(MainApp.f()) == 1) {
            GlobalDownloadManger.B().a(true);
            TransferNotificationHelper.a(MainApp.f(), 10000);
        }
        this.mNotification = null;
        this.simpleView = null;
        this.complexView = null;
    }

    public void unRegister(uz2 uz2Var) {
        ut4.b(uz2Var, "listener == null");
        this.listeners.remove(uz2Var.a);
    }

    public void updateNotification(int i, String str, String str2, RemoteViews remoteViews, RemoteViews remoteViews2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastNotificationUpdateTime >= 500 && Math.abs(i - this.lastNotifiedProgress) >= 1) {
            this.lastNotificationUpdateTime = jCurrentTimeMillis;
            this.lastNotifiedProgress = i;
            int i2 = this.notifyCount + 1;
            this.notifyCount = i2;
            if (i2 > 100) {
                startNotification(this.progress);
                this.notifyCount = 0;
            } else {
                if (this.mNotification == null) {
                    return;
                }
                TransferNotificationHelper.s(i, str, str2, remoteViews, remoteViews2);
                TransferNotificationHelper.t(jf.c(), this.mNid, this.mNotification);
            }
        }
    }

    public void updateOriginUrl(final Uri uri) {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateOriginUrl$0(uri);
            }
        });
    }

    public void updateStatus(int i) {
        this.progress.lastStatus = this.progress.status;
        this.progress.status = i;
    }

    public void waiting() {
    }

    public void postPause(final Progress progress, boolean z) {
        progress.speed = 0L;
        updateStatus(z ? 6 : 3);
        Log.i(TAG, "postPause-----" + progress.status);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = NewDownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().f(progress);
                }
                NewDownloadTask.this.stopNotification();
            }
        });
        updateDatabase(progress);
    }

    public void remove(boolean z) {
    }

    public void unRegister(String str) {
        ut4.b(str, "tag == null");
        this.listeners.remove(str);
    }

    public NewDownloadTask(UploadHeaderTask.HeaderType headerType) {
        this.notifyCount = 0;
        this.bM3U8Task = false;
        this.retryCount = 5;
        this.retryInterval = 1000L;
        this.startTime = System.currentTimeMillis();
        this.callback = new a();
        this.progress = new Progress();
        this.progress.tag = "headerType_" + headerType;
        this.executor = j07.a().b().a();
        this.listeners = Collections.synchronizedMap(new LinkedHashMap());
        this.mNid = 0;
    }
}
