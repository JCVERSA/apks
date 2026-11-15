package com.lzy.okserver.download;

import android.text.TextUtils;
import com.lzy.okgo.exception.HttpException;
import com.lzy.okgo.exception.OkGoException;
import com.lzy.okgo.exception.StorageException;
import com.lzy.okgo.model.Progress;
import com.lzy.okgo.request.base.Request;
import com.lzy.okserver.task.PriorityRunnable;
import defpackage.ee7;
import defpackage.ie7;
import defpackage.mv4;
import defpackage.r03;
import defpackage.ut4;
import defpackage.uz2;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import okhttp3.Response;
import okhttp3.ResponseBody;

public class DownloadTask implements Runnable {
    private static final int BUFFER_SIZE = 8192;
    private ThreadPoolExecutor executor;
    public Map<Object, uz2> listeners;
    private PriorityRunnable priorityRunnable;
    public Progress progress;

    public class a implements Progress.a {
        public a() {
        }

        @Override
        public void a(Progress progress) {
            DownloadTask.this.postLoading(progress);
        }
    }

    public DownloadTask(String str, Request<File, ? extends Request> request) {
        ut4.b(str, "tag == null");
        Progress progress = new Progress();
        this.progress = progress;
        progress.tag = str;
        progress.folder = ee7.b().a();
        this.progress.url = request.getBaseUrl();
        Progress progress2 = this.progress;
        progress2.status = 0;
        progress2.totalSize = -1L;
        progress2.request = request;
        this.executor = ee7.b().d().a();
        this.listeners = new HashMap();
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
                Progress.changeProgress(progress, i, progress.totalSize, new a());
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

    public void postLoading(final Progress progress) {
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = DownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().a(progress);
                }
            }
        });
    }

    private void postOnError(final Progress progress, Throwable th) {
        progress.speed = 0L;
        progress.status = 4;
        progress.exception = th;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                for (uz2 uz2Var : DownloadTask.this.listeners.values()) {
                    uz2Var.a(progress);
                    uz2Var.c(progress);
                }
            }
        });
    }

    private void postOnFinish(final Progress progress, final File file) {
        progress.speed = 0L;
        progress.fraction = 1.0f;
        progress.status = 5;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                for (uz2 uz2Var : DownloadTask.this.listeners.values()) {
                    uz2Var.a(progress);
                    uz2Var.b(file, progress);
                }
            }
        });
    }

    private void postOnRemove(final Progress progress, final boolean z) {
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = DownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().e(progress, z);
                }
                DownloadTask.this.listeners.clear();
            }
        });
    }

    private void postOnStart(final Progress progress) {
        progress.speed = 0L;
        progress.status = 0;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = DownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().d(progress);
                }
            }
        });
    }

    private void postPause(final Progress progress) {
        progress.speed = 0L;
        progress.status = 3;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = DownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().a(progress);
                }
            }
        });
    }

    private void postWaiting(final Progress progress) {
        progress.speed = 0L;
        progress.status = 1;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<uz2> it = DownloadTask.this.listeners.values().iterator();
                while (it.hasNext()) {
                    it.next().a(progress);
                }
            }
        });
    }

    private void updateDatabase(Progress progress) {
        r03.t().v(Progress.buildUpdateContentValues(progress), progress.tag);
    }

    public DownloadTask extra1(Serializable serializable) {
        this.progress.extra1 = serializable;
        return this;
    }

    public DownloadTask extra2(Serializable serializable) {
        this.progress.extra2 = serializable;
        return this;
    }

    public DownloadTask extra3(Serializable serializable) {
        this.progress.extra3 = serializable;
        return this;
    }

    public DownloadTask fileName(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            ie7.c("fileName is null, ignored!");
        } else {
            this.progress.fileName = str;
        }
        return this;
    }

    public DownloadTask folder(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            ie7.c("folder is null, ignored!");
        } else {
            this.progress.folder = str;
        }
        return this;
    }

    public void pause() {
        this.executor.remove(this.priorityRunnable);
        Progress progress = this.progress;
        int i = progress.status;
        if (i == 1) {
            postPause(progress);
            return;
        }
        if (i == 2) {
            progress.speed = 0L;
            progress.status = 3;
        } else {
            ie7.c("only the task with status WAITING(1) or LOADING(2) can pause, current status is " + this.progress.status);
        }
    }

    public DownloadTask priority(int i) {
        this.progress.priority = i;
        return this;
    }

    public DownloadTask register(uz2 uz2Var) {
        if (uz2Var != null) {
            this.listeners.put(uz2Var.a, uz2Var);
        }
        return this;
    }

    public void remove() {
        remove(false);
    }

    public void restart() {
        pause();
        mv4.e(this.progress.filePath);
        Progress progress = this.progress;
        progress.status = 0;
        progress.currentSize = 0L;
        progress.fraction = 0.0f;
        progress.speed = 0L;
        r03.t().k(this.progress);
        start();
    }

    @Override
    public void run() {
        File file;
        Progress progress = this.progress;
        long j = progress.currentSize;
        if (j < 0) {
            postOnError(progress, OkGoException.BREAKPOINT_EXPIRED());
            return;
        }
        if (j > 0 && !TextUtils.isEmpty(progress.filePath) && !new File(this.progress.filePath).exists()) {
            postOnError(this.progress, OkGoException.BREAKPOINT_NOT_EXIST());
            return;
        }
        try {
            Request<?, ? extends Request> request = this.progress.request;
            request.headers("Range", "bytes=" + j + "-");
            Response responseExecute = request.execute();
            int iCode = responseExecute.code();
            if (iCode == 404 || iCode >= 500) {
                postOnError(this.progress, HttpException.NET_ERROR());
                return;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null) {
                postOnError(this.progress, new HttpException("response body is null"));
                return;
            }
            Progress progress2 = this.progress;
            if (progress2.totalSize == -1) {
                progress2.totalSize = responseBodyBody.getContentLength();
            }
            String strH = this.progress.fileName;
            if (TextUtils.isEmpty(strH)) {
                strH = ut4.h(responseExecute, this.progress.url);
                this.progress.fileName = strH;
            }
            if (!mv4.c(this.progress.folder)) {
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
                postOnError(this.progress, OkGoException.BREAKPOINT_EXPIRED());
                return;
            }
            Progress progress3 = this.progress;
            if (j > progress3.totalSize) {
                postOnError(progress3, OkGoException.BREAKPOINT_EXPIRED());
                return;
            }
            if (j == 0 && file.exists()) {
                mv4.d(file);
            }
            if (j == this.progress.totalSize && j > 0) {
                if (file.exists() && j == file.length()) {
                    postOnFinish(this.progress, file);
                    return;
                } else {
                    postOnError(this.progress, OkGoException.BREAKPOINT_EXPIRED());
                    return;
                }
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                try {
                    randomAccessFile.seek(j);
                    this.progress.currentSize = j;
                    r03.t().k(this.progress);
                    download(responseBodyBody.byteStream(), randomAccessFile, this.progress);
                    randomAccessFile.close();
                    Progress progress4 = this.progress;
                    int i = progress4.status;
                    if (i == 3) {
                        postPause(progress4);
                        return;
                    }
                    if (i != 2) {
                        postOnError(progress4, OkGoException.UNKNOWN());
                        return;
                    }
                    long length = file.length();
                    Progress progress5 = this.progress;
                    if (length == progress5.totalSize) {
                        postOnFinish(progress5, file);
                    } else {
                        postOnError(progress5, OkGoException.BREAKPOINT_EXPIRED());
                    }
                } catch (Throwable th) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e) {
                postOnError(this.progress, e);
            }
        } catch (IOException e2) {
            postOnError(this.progress, e2);
        }
    }

    public DownloadTask save() {
        if (!TextUtils.isEmpty(this.progress.folder) && !TextUtils.isEmpty(this.progress.fileName)) {
            Progress progress = this.progress;
            Progress progress2 = this.progress;
            progress.filePath = new File(progress2.folder, progress2.fileName).getAbsolutePath();
        }
        r03.t().k(this.progress);
        return this;
    }

    public void start() {
        if (ee7.b().c(this.progress.tag) == null || r03.t().o(this.progress.tag) == null) {
            throw new IllegalStateException("you must call DownloadTask#save() before DownloadTask#start()！");
        }
        Progress progress = this.progress;
        int i = progress.status;
        if (i == 0 || i == 3 || i == 4) {
            postOnStart(progress);
            postWaiting(this.progress);
            PriorityRunnable priorityRunnable = new PriorityRunnable(this.progress.priority, this);
            this.priorityRunnable = priorityRunnable;
            this.executor.execute(priorityRunnable);
            return;
        }
        if (i != 5) {
            ie7.c("the task with tag " + this.progress.tag + " is already in the download queue, current task status is " + this.progress.status);
            return;
        }
        if (progress.filePath == null) {
            postOnError(progress, new StorageException("the file of the task with tag:" + this.progress.tag + " may be invalid or damaged, please call the method restart() to download again！"));
            return;
        }
        File file = new File(this.progress.filePath);
        if (file.exists()) {
            long length = file.length();
            Progress progress2 = this.progress;
            if (length == progress2.totalSize) {
                postOnFinish(progress2, new File(this.progress.filePath));
                return;
            }
        }
        postOnError(this.progress, new StorageException("the file " + this.progress.filePath + " may be invalid or damaged, please call the method restart() to download again！"));
    }

    public void unRegister(uz2 uz2Var) {
        ut4.b(uz2Var, "listener == null");
        this.listeners.remove(uz2Var.a);
    }

    public DownloadTask remove(boolean z) {
        int i = this.progress.status;
        boolean z2 = i == 0 || i == 2;
        pause();
        if (z) {
            mv4.e(this.progress.filePath);
        }
        r03.t().n(this.progress.tag);
        DownloadTask downloadTaskE = ee7.b().e(this.progress.tag);
        postOnRemove(this.progress, z2);
        return downloadTaskE;
    }

    public void unRegister(String str) {
        ut4.b(str, "tag == null");
        this.listeners.remove(str);
    }

    public DownloadTask(Progress progress) {
        ut4.b(progress, "progress == null");
        this.progress = progress;
        this.executor = ee7.b().d().a();
        this.listeners = new HashMap();
    }
}
