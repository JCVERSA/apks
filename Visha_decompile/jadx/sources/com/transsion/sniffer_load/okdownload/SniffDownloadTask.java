package com.transsion.sniffer_load.okdownload;

import android.media.MediaScannerConnection;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.lzy.okgo.exception.HttpException;
import com.lzy.okgo.exception.OkGoException;
import com.lzy.okgo.exception.StorageException;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.Progress;
import com.lzy.okgo.request.base.Request;
import com.lzy.okserver.task.PriorityRunnable;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.sniff.SniffGetResultReqBean;
import com.transsion.dbdata.beans.sniff.SniffMarkPointBean;
import com.transsion.dbdata.beans.sniff.SniffResultBean;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaapis.APIService;
import com.transsion.playercommon.vishaapis.APIServiceManager;
import com.transsion.retrofit.callback.RequestCallback;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.data.DownloadHistory;
import com.transsion.sniffer_load.database.BookmarkDatabase;
import com.transsion.sniffer_load.okdownload.SniffDownloadTask;
import com.transsion.sniffer_load.sniffservice.SniffHeaderInjector;
import com.transsion.sniffer_load.sniffservice.SniffMarkPointer;
import defpackage.av3;
import defpackage.b23;
import defpackage.e16;
import defpackage.fe7;
import defpackage.gu8;
import defpackage.ie7;
import defpackage.jq0;
import defpackage.mv4;
import defpackage.pp3;
import defpackage.r03;
import defpackage.r0a;
import defpackage.r13;
import defpackage.ty2;
import defpackage.ut4;
import defpackage.uz2;
import defpackage.yv5;
import defpackage.zu3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
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
import java.util.concurrent.ThreadPoolExecutor;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

public class SniffDownloadTask extends NewDownloadTask {
    private static final int BUFFER_SIZE = 8192;
    private final RequestCallback.OnRequestDataListener<List<SniffResultBean>> callback;
    private final ThreadPoolExecutor executor;
    private PriorityRunnable priorityRunnable;
    private final int retryCount;
    private final long retryInterval;
    private long startTime;

    public class AnonymousClass4 implements MediaScannerConnection.OnScanCompletedListener {
        public final Progress a;
        public final File b;

        public AnonymousClass4(Progress progress, File file) {
            this.a = progress;
            this.b = file;
        }

        public static void b(Progress progress, String str) throws Throwable {
            String originSite = progress.getOriginSite();
            if (TextUtils.isEmpty(originSite) || TextUtils.isEmpty(str)) {
                return;
            }
            Iterator it = b23.b.iterator();
            while (it.hasNext()) {
                if (originSite.contains((String) it.next()) && str.endsWith(".zip")) {
                    File file = new File(str);
                    if (TextUtils.isEmpty(file.getName())) {
                        System.currentTimeMillis();
                    } else {
                        file.getName().replace(".zip", "");
                    }
                    String strC = av3.C(str, str.replace(".zip", ""), false);
                    Log.i(NewDownloadTask.TAG, "decompressGzip result " + strC);
                }
            }
        }

        @Override
        public void onScanCompleted(final String str, Uri uri) {
            Log.i(NewDownloadTask.TAG, "onScanCompleted:" + this.a.mimeType + StringUtils.COMMA + str);
            r13.m(SniffDownloadTask.this, zu3.t(str), str);
            ut4.k(new Runnable() {
                @Override
                public void run() {
                    for (uz2 uz2Var : SniffDownloadTask.this.listeners.values()) {
                        uz2Var.a(AnonymousClass4.this.a);
                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                        uz2Var.b(anonymousClass4.b, anonymousClass4.a);
                    }
                    SniffDownloadTask.this.stopNotification();
                }
            });
            SniffDownloadTask.this.updateOriginUrl(uri);
            final Progress progress = this.a;
            TaskExecutor.c(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    SniffDownloadTask.AnonymousClass4.b(progress, str);
                }
            });
        }
    }

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
                    SniffDownloadTask sniffDownloadTask = SniffDownloadTask.this;
                    sniffDownloadTask.postOnError(sniffDownloadTask.progress, new Throwable("poll sniff data is failed!"));
                    SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
                    SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2012;
                    SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(SniffDownloadTask.this.progress.sniffId).setDuration((int) (System.currentTimeMillis() - SniffDownloadTask.this.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                } else {
                    SniffResultBean.Video video = sniffResultBean.getVideoList().get(0);
                    String str2 = NewDownloadTask.TAG;
                    LogUtils.j(str2, "polling server async response startDownload:" + video);
                    SniffDownloadTask.this.progress.url = video.getUrl();
                    SniffDownloadTask.this.progress.totalSize = video.getSize() == null ? -1L : video.getSize().intValue();
                    SniffDownloadTask.this.progress.request = fe7.b(video.getUrl());
                    SniffDownloadTask.this.progress.uaAgent = sniffResultBean.userAgent;
                    SniffDownloadTask.this.progress.imgUrl = sniffResultBean.resourceCover;
                    SniffDownloadTask.this.progress.cookie = sniffResultBean.cookie;
                    SniffDownloadTask.this.progress.mimeType = video.getMimeTypeString();
                    if (yv5.e(video.getUrl())) {
                        new M3U8DownloadTask(SniffDownloadTask.this.progress).start();
                        r03.t().n(SniffDownloadTask.this.progress.tag);
                    } else {
                        if (SniffDownloadTask.this.progress.status != 2 && SniffDownloadTask.this.progress.status != 0) {
                            LogUtils.j(str2, "async task pause, status: " + SniffDownloadTask.this.progress.status);
                            return;
                        }
                        SniffDownloadTask.this.saveFile();
                    }
                    SniffMarkPointBean.Builder builder2 = new SniffMarkPointBean.Builder();
                    SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint2 = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2011;
                    SniffMarkPointer.markPointSniffAsync(builder2.setCode(enum_sniff_markpoint2.code).setMsg(enum_sniff_markpoint2.msg).setMainUrl(SniffDownloadTask.this.progress.sniffId).setDuration((int) (System.currentTimeMillis() - SniffDownloadTask.this.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                }
            }
        }

        @Override
        public void returnDataFailed(String str, String str2) {
            LogUtils.j(NewDownloadTask.TAG, "polling server async task failed:" + str2);
            SniffDownloadTask sniffDownloadTask = SniffDownloadTask.this;
            sniffDownloadTask.postOnError(sniffDownloadTask.progress, new Throwable("poll sniff data is failed!"));
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2012;
            SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(SniffDownloadTask.this.progress.sniffId).setDuration((int) (System.currentTimeMillis() - SniffDownloadTask.this.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
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
                SniffDownloadTask.this.callback.returnDataSuccess(arrayList);
                SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
                SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2009;
                SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(SniffDownloadTask.this.progress.sniffId).setDuration((int) (SniffMarkPointer.endTime - SniffMarkPointer.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                return;
            }
            LogUtils.j(NewDownloadTask.TAG, "server async sniff task,but not get sniff video url,start polling server :" + SniffDownloadTask.this.progress.sniffId);
            SniffGetResultReqBean sniffGetResultReqBean = new SniffGetResultReqBean();
            sniffGetResultReqBean.setSniffUrl(SniffDownloadTask.this.progress.sniffId);
            SniffDownloadTask.this.startTime = System.currentTimeMillis();
            jq0<BaseResponse<List<SniffResultBean>>> sniffResultFromServer = ((APIService) APIServiceManager.getInstance().getApi(APIService.class)).getSniffResultFromServer(sniffGetResultReqBean);
            if (sniffResultFromServer == null) {
                SniffDownloadTask.this.callback.returnDataFailed("-1", "");
                return;
            }
            for (int i = 0; i < 5; i++) {
                try {
                    gu8 gu8VarExecute = sniffResultFromServer.clone().execute();
                    if (gu8VarExecute.a() != null && ((BaseResponse) gu8VarExecute.a()).getData() != null) {
                        LogUtils.j(NewDownloadTask.TAG, "polling server success:" + ((BaseResponse) gu8VarExecute.a()).getData());
                        SniffDownloadTask.this.callback.returnDataSuccess((List) ((BaseResponse) gu8VarExecute.a()).getData());
                        return;
                    }
                    Thread.sleep(1000L);
                } catch (IOException | InterruptedException e) {
                    LogUtils.m(NewDownloadTask.TAG, "polling server failed:" + e.getMessage());
                }
            }
            LogUtils.j(NewDownloadTask.TAG, "server async sniff task, polling server over try time :" + SniffDownloadTask.this.progress.sniffId);
            SniffDownloadTask.this.callback.returnDataFailed("-2", "");
        }

        @Override
        public void returnDataFailed(String str, String str2) {
            LogUtils.j(NewDownloadTask.TAG, "get_sniff_result_failed_use_client_sniff:", str, str2);
            SniffDownloadTask sniffDownloadTask = SniffDownloadTask.this;
            sniffDownloadTask.postOnError(sniffDownloadTask.progress, new Throwable(str2));
            SniffMarkPointer.endTime = System.currentTimeMillis();
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2008;
            SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(SniffDownloadTask.this.progress.sniffId).setDuration((int) (SniffMarkPointer.endTime - SniffMarkPointer.startTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
        }
    }

    public class c implements Progress.a {
        public c() {
        }

        @Override
        public void a(Progress progress) {
            SniffDownloadTask.this.postLoading(progress);
        }
    }

    public SniffDownloadTask(Progress progress) {
        super(progress);
        this.retryCount = 5;
        this.retryInterval = 1000L;
        this.startTime = System.currentTimeMillis();
        this.callback = new a();
        this.executor = r13.e().i().a();
        this.listeners = Collections.synchronizedMap(new LinkedHashMap());
    }

    private void clearBreakpointState() {
        if (!TextUtils.isEmpty(this.progress.filePath)) {
            mv4.e(this.progress.filePath);
        }
        this.progress.currentSize = 0L;
        this.progress.lastSize = 0L;
        this.progress.fraction = 0.0f;
        this.progress.totalSize = -1L;
        r03.t().k(this.progress);
    }

    private void download(InputStream inputStream, RandomAccessFile randomAccessFile, Progress progress) throws IOException {
        if (inputStream == null || randomAccessFile == null) {
            return;
        }
        updateStatus(2);
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
                LogUtils.m(NewDownloadTask.TAG, "getSniffInfo failed: " + e.getMessage());
                onRequestDataListener.returnDataFailed("2008", SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2008.msg);
            }
        }
        SniffMarkPointer.markPointSniffAsync(new SniffMarkPointBean.Builder().setMainUrl(str2).setEventName(SniffMarkPointer.SNIFF_EVENT_NAME_DL_BROWER_RP_C_S).Build());
    }

    private void handleBreakpointFailure(Throwable th, String str) {
        if (tryResetBreakpointAndRetry(str)) {
            return;
        }
        postOnError(this.progress, th);
    }

    private boolean hasRetriedBreakpointReset() {
        return Boolean.TRUE.equals(this.progress.extra3);
    }

    public void lambda$postOnRemove$0(Progress progress, boolean z) {
        Iterator<uz2> it = this.listeners.values().iterator();
        while (it.hasNext()) {
            it.next().e(progress, z);
        }
        this.listeners.clear();
        stopNotification();
    }

    public void lambda$updateOriginUrl$1(Uri uri) {
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

    private void markBreakpointRetried() {
        this.progress.extra3 = Boolean.TRUE;
        r03.t().k(this.progress);
    }

    private void postOnRemove(final Progress progress, final boolean z) {
        updateDatabase(progress);
        Log.i(NewDownloadTask.TAG, "postOnRemove-----" + progress.status);
        ut4.k(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$postOnRemove$0(progress, z);
            }
        });
    }

    private boolean runServerAsyncSniffTask() {
        if (TextUtils.isEmpty(this.progress.sniffId) || !TextUtils.isEmpty(this.progress.url)) {
            return false;
        }
        String str = NewDownloadTask.TAG;
        LogUtils.j(str, "start server async task:" + this.progress.sniffId);
        if (this.progress.extra1 != null && !r0a.g(((NewDownloadTask.DownloadTaskExtra) this.progress.extra1).sniffRequestBody)) {
            getDownloadUrlFromServer(((NewDownloadTask.DownloadTaskExtra) this.progress.extra1).sniffRequestBody, this.progress.sniffId, new b());
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
        SniffHeaderInjector.injectProgress(this.progress);
        long j = this.progress.currentSize;
        if (j < 0) {
            LogUtils.m(NewDownloadTask.TAG, "save file failed,error msg:breakpoint file has expired");
            handleBreakpointFailure(OkGoException.BREAKPOINT_EXPIRED(), "negative_offset");
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
            LogUtils.m(NewDownloadTask.TAG, "save file failed,error msg:breakpoint file has expired");
            handleBreakpointFailure(OkGoException.BREAKPOINT_NOT_EXIST(), "breakpoint_not_exist");
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
            if (iCode == 416) {
                if (tryResetBreakpointAndRetry("http_416")) {
                    return;
                }
                LogUtils.m(NewDownloadTask.TAG, "save file failed,request failed error code:" + iCode);
                postOnError(this.progress, HttpException.NET_ERROR(iCode));
                return;
            }
            if (iCode >= 400) {
                LogUtils.m(NewDownloadTask.TAG, "save file failed,request failed error code:" + iCode);
                postOnError(this.progress, HttpException.NET_ERROR(iCode));
                return;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null) {
                LogUtils.m(NewDownloadTask.TAG, "save file failed,request failed no body");
                postOnError(this.progress, new HttpException("response body is null"));
                return;
            }
            String str = NewDownloadTask.TAG;
            Log.i(str, "totalSize:" + this.progress.totalSize + " body:" + responseBodyBody.getContentLength());
            if (this.progress.totalSize <= 0 || this.progress.totalSize < responseBodyBody.getContentLength()) {
                this.progress.totalSize = responseBodyBody.getContentLength();
            }
            String strA = this.progress.fileName;
            if (TextUtils.isEmpty(strA)) {
                strA = ut4.h(responseExecute, this.progress.url);
                this.progress.fileName = strA;
            } else if (strA.contains("&") || strA.contains("?")) {
                boolean zEndsWith = strA.endsWith(".xdl");
                if (zEndsWith) {
                    strA = strA.substring(0, strA.length() - 4);
                }
                strA = av3.a(b23.g(strA, this.progress.url));
                if (zEndsWith) {
                    strA = strA + ".xdl";
                }
                this.progress.fileName = strA;
                this.progress.filePath = null;
            }
            if (!mv4.c(this.progress.folder)) {
                LogUtils.m(str, "save file failed,create folder failed:" + this.progress.folder);
                postOnError(this.progress, StorageException.NOT_AVAILABLE());
                return;
            }
            if (TextUtils.isEmpty(this.progress.filePath)) {
                file = new File(this.progress.folder, strA);
                this.progress.filePath = file.getAbsolutePath();
            } else {
                file = new File(this.progress.filePath);
            }
            if (j > 0 && !file.exists()) {
                LogUtils.m(str, "save file failed: " + this.progress.folder);
                handleBreakpointFailure(OkGoException.BREAKPOINT_EXPIRED(), "file_missing");
                return;
            }
            if (j > this.progress.totalSize) {
                LogUtils.m(str, "save file failed: " + this.progress.folder);
                handleBreakpointFailure(OkGoException.BREAKPOINT_EXPIRED(), "offset_gt_total");
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
                handleBreakpointFailure(OkGoException.BREAKPOINT_EXPIRED(), "size_mismatch");
                return;
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                randomAccessFile.seek(j);
                this.progress.lastSize = this.progress.currentSize;
                this.progress.currentSize = j;
                try {
                    r03.t().k(this.progress);
                    download(responseBodyBody.byteStream(), randomAccessFile, this.progress);
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
                        handleBreakpointFailure(OkGoException.BREAKPOINT_EXPIRED(), "download_incomplete");
                        return;
                    }
                    if (this.progress.status == 1 || this.progress.status == 0) {
                        postWaiting(this.progress);
                        return;
                    }
                    LogUtils.m(str, "save file failed: " + this.progress.folder);
                    postOnError(this.progress, OkGoException.UNKNOWN());
                } catch (IOException e) {
                    LogUtils.m(NewDownloadTask.TAG, "save file failed: " + e.getMessage());
                    postOnError(this.progress, e);
                }
            } catch (Exception e2) {
                LogUtils.m(NewDownloadTask.TAG, "save file failed: " + this.progress.folder);
                postOnError(this.progress, e2);
            }
        } catch (IOException | IllegalArgumentException e3) {
            LogUtils.m(NewDownloadTask.TAG, "save file failed,error msg:" + e3.getMessage());
            postOnError(this.progress, e3);
        }
    }

    private boolean tryResetBreakpointAndRetry(String str) {
        if (!pp3.p() || hasRetriedBreakpointReset()) {
            return false;
        }
        LogUtils.P(NewDownloadTask.TAG, "breakpoint reset once, reason=" + str + ", url=" + this.progress.url);
        markBreakpointRetried();
        clearBreakpointState();
        saveFile();
        return true;
    }

    @Override
    public NewDownloadTask extra1(Serializable serializable) {
        this.progress.extra1 = serializable;
        return this;
    }

    @Override
    public NewDownloadTask extra2(Serializable serializable) {
        this.progress.extra2 = serializable;
        return this;
    }

    @Override
    public NewDownloadTask extra3(Serializable serializable) {
        this.progress.extra3 = serializable;
        return this;
    }

    @Override
    public NewDownloadTask fileName(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            ie7.c("fileName is null, ignored!");
        } else {
            this.progress.fileName = str;
        }
        return this;
    }

    @Override
    public NewDownloadTask folder(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            ie7.c("folder is null, ignored!");
        } else {
            this.progress.folder = str;
        }
        return this;
    }

    @Override
    public void noNetPause() {
        this.executor.remove(this.priorityRunnable);
        super.noNetPause();
    }

    @Override
    public void pause(boolean z) {
        this.executor.remove(this.priorityRunnable);
        postPause(this.progress, z);
    }

    @Override
    public void postOnError(Progress progress, Throwable th) {
        super.postOnError(progress, ty2.l(th));
    }

    public void postOnFinish(Progress progress, File file) {
        progress.speed = 0L;
        progress.fraction = 1.0f;
        updateStatus(5);
        Log.i(NewDownloadTask.TAG, "postOnFinish-----" + progress.fileName);
        updateDatabase(progress);
        String strK = zu3.k(file);
        String name = file.getName();
        String absolutePath = file.getAbsolutePath();
        if (name.endsWith(".xdl")) {
            String strSubstring = name.substring(0, name.length() - 4);
            if (zu3.G(file, strSubstring)) {
                absolutePath = strK + strSubstring;
            }
        }
        e16.e(progress.url, progress.getOriginSite(), zu3.n(absolutePath), progress.downloadSource);
        MediaScannerConnection.scanFile(Utils.a(), new String[]{absolutePath}, new String[]{b23.n(progress.mimeType)}, new AnonymousClass4(progress, file));
    }

    @Override
    public void postPause(Progress progress) {
        postPause(progress, false);
    }

    @Override
    public NewDownloadTask priority(int i) {
        this.progress.priority = i;
        return this;
    }

    @Override
    public NewDownloadTask register(uz2 uz2Var) {
        if (uz2Var != null) {
            this.listeners.put(uz2Var.a, uz2Var);
        }
        return this;
    }

    @Override
    public void remove() {
        remove(false);
    }

    @Override
    public void run() {
        if (runServerAsyncSniffTask()) {
            return;
        }
        saveFile();
    }

    @Override
    public NewDownloadTask save() {
        if (!TextUtils.isEmpty(this.progress.folder) && !TextUtils.isEmpty(this.progress.fileName)) {
            this.progress.filePath = new File(this.progress.folder, this.progress.fileName).getAbsolutePath();
        }
        r03.t().k(this.progress);
        return this;
    }

    @Override
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

    @Override
    public void unRegister(uz2 uz2Var) {
        ut4.b(uz2Var, "listener == null");
        this.listeners.remove(uz2Var.a);
    }

    public void updateDatabase(Progress progress) {
        r03.t().v(Progress.buildUpdateContentValues(progress), progress.tag);
    }

    @Override
    public void updateOriginUrl(final Uri uri) {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateOriginUrl$1(uri);
            }
        });
    }

    @Override
    public void waiting() {
        this.executor.remove(this.priorityRunnable);
        postWaiting(this.progress);
    }

    @Override
    public void remove(boolean z) {
        boolean z2 = this.progress.status == 0 || this.progress.status == 2;
        pause(false);
        if (z) {
            mv4.e(this.progress.filePath);
        }
        r03.t().n(this.progress.tag);
        postOnRemove(this.progress, z2);
    }

    @Override
    public void unRegister(String str) {
        ut4.b(str, "tag == null");
        this.listeners.remove(str);
    }
}
